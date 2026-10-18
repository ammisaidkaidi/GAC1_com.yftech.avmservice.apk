package com.yftech.avmservice.procotol;

import com.yftech.avmservice.avm.AvmControl;
import com.yftech.avmservice.common.CameraDataDef;
import com.yftech.avmservice.common.ICameraControl;
import com.yftech.avmservice.common.IMcuCommListener;
import com.yftech.avmservice.common.ISAVMControl;
import com.yftech.avmservice.util.LogUtil;
import com.yftech.vehicle.internal.adapter.ICarMisc;
import com.yftech.vehicle.sdk.CarMiscManager;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class SAVMProcotol extends RadarProcotol implements IMcuCommListener, ISAVMControl {
    public static final byte CAN_GID = 96;
    public static final byte CAN_SID = 0;
    private static final boolean DEBUG = true;
    public static final int D_TX_ACU_PCS_SVM_FunctionCmd = 626;
    public static final int D_TX_ACU_PCS_ScreenCoordX = 613;
    public static final int D_TX_ACU_PCS_ScreenCoordY = 614;
    public static final int D_TX_ACU_PCS_ScreenTouchSt = 615;
    public static final int D_TX_ACU_SVM_Button = 224;
    public static final int D_TX_PCS_ACU_DisplayReq = 420;
    public static final byte HU_CTRL_AVM_GID = -32;
    public static final byte HU_CTRL_AVM_LENGTH = 12;
    public static final byte HU_CTRL_AVM_SID = 0;
    public static final byte HU_CTRL_TOUCH_EVENT_GID = -122;
    public static final byte HU_CTRL_TOUCH_EVENT_LENGTH = 8;
    public static final byte HU_CTRL_TOUCH_EVENT_SID = 19;
    private static final String TAG = "SAVMProcotol";
    private static ByteBuffer buffer = ByteBuffer.allocateDirect(56);
    private ICameraControl.ICameraControlListener mCameraControlListener;
    private ISAVMControl.ISAVMControlListener mSAVMControlListener;
    private int mAvmDisplayRequest = 0;
    private CameraDataDef.APAInfo mAPAInfo = new CameraDataDef.APAInfo();
    private int avmOpState = 1;
    private boolean isCameraSystemErr = false;
    private boolean isCommTimeOut = false;
    private boolean isCommTimeOutTmp = false;
    private int mNoPacketCount = 0;
    private MyCarMiscListener mCarMiscListener = null;
    private boolean mIsAvmConn = true;
    private boolean mIsApaConn = true;

    public class MyCarMiscListener extends CarMiscManager.CarMiscListener {
        public MyCarMiscListener() {
        }

        public void onDeviceNodeStateChanged(ICarMisc.DeviceNode deviceNode) {
            LogUtil.d(SAVMProcotol.TAG, "onDeviceNodeStateChanged avmconn:" + deviceNode.avmConn + ",apaConn:" + deviceNode.avmConn, new Object[0]);
            LogUtil.d(SAVMProcotol.TAG, "onDeviceNodeStateChanged mIsAvmConn:" + SAVMProcotol.this.mIsAvmConn + ",mIsApaConn:" + SAVMProcotol.this.mIsApaConn, new Object[0]);
            if (SAVMProcotol.this.mIsAvmConn != deviceNode.avmConn) {
                SAVMProcotol.this.mIsAvmConn = deviceNode.avmConn;
                if (!AvmControl.getInstance().isFAPA()) {
                    if (SAVMProcotol.this.mIsAvmConn) {
                        if (SAVMProcotol.this.mCameraControlListener != null) {
                            SAVMProcotol.this.mCameraControlListener.onDisplayState(SAVMProcotol.this.mAvmDisplayRequest == 1);
                        }
                    } else if (SAVMProcotol.this.mCameraControlListener != null) {
                        SAVMProcotol.this.mCameraControlListener.onDisplayState(false);
                    }
                }
            }
            if (SAVMProcotol.this.mIsApaConn != deviceNode.apaConn) {
                SAVMProcotol.this.mIsApaConn = deviceNode.apaConn;
                if (AvmControl.getInstance().isFAPA()) {
                    if (SAVMProcotol.this.mIsApaConn) {
                        if (SAVMProcotol.this.mCameraControlListener != null) {
                            SAVMProcotol.this.mCameraControlListener.onDisplayState(SAVMProcotol.this.mAvmDisplayRequest == 1);
                        }
                    } else if (SAVMProcotol.this.mCameraControlListener != null) {
                        SAVMProcotol.this.mCameraControlListener.onDisplayState(false);
                    }
                }
            }
        }
    }

    class MyCheckTime extends Thread {
        MyCheckTime() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                Thread.sleep(2000L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }

    class MyThread extends Thread {
        MyThread() {
        }

        /* JADX INFO: Infinite loop detected, blocks: 17, insns: 0 */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    Thread.sleep(400L);
                    SAVMProcotol.access$508(SAVMProcotol.this);
                    if (SAVMProcotol.this.mNoPacketCount > 10) {
                        SAVMProcotol.this.setCommTimeOut(true);
                    }
                    if (SAVMProcotol.this.isCommTimeOut != SAVMProcotol.this.isCommTimeOutTmp) {
                        LogUtil.d(SAVMProcotol.TAG, "Avm Comm Time out,old state:" + SAVMProcotol.this.isCommTimeOutTmp + ",new state:" + SAVMProcotol.this.isCommTimeOut + ",mAvmDisplayRequest:" + SAVMProcotol.this.mAvmDisplayRequest, new Object[0]);
                        SAVMProcotol.this.isCommTimeOut = SAVMProcotol.this.isCommTimeOutTmp;
                        boolean unused = SAVMProcotol.this.isCommTimeOut;
                    }
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private static class SingletonFactory {
        private static SAVMProcotol instance = new SAVMProcotol();

        private SingletonFactory() {
        }
    }

    static /* synthetic */ int access$508(SAVMProcotol sAVMProcotol) {
        int i = sAVMProcotol.mNoPacketCount;
        sAVMProcotol.mNoPacketCount = i + 1;
        return i;
    }

    public static SAVMProcotol getInstance() {
        return SingletonFactory.instance;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void setCommTimeOut(boolean z) {
        if (z) {
            try {
                LogUtil.d(TAG, "setCommTimeOut:" + z, new Object[0]);
            } catch (Throwable th) {
                throw th;
            }
        }
        this.isCommTimeOutTmp = z;
        this.mNoPacketCount = 0;
    }

    @Override // com.yftech.avmservice.common.ICameraControl
    public float getSteerWheelAngle() {
        return 0.0f;
    }

    public void init() {
        this.mCarMiscListener = new MyCarMiscListener();
        ICarMisc.DeviceNode deviceNodeState = CarMiscManager.get().getDeviceNodeState();
        LogUtil.d(TAG, "avmconn:" + deviceNodeState.avmConn + ",apaConn:" + deviceNodeState.avmConn, new Object[0]);
        this.mCarMiscListener.onDeviceNodeStateChanged(deviceNodeState);
        CarMiscManager.get().registerListener(this.mCarMiscListener);
    }

    public boolean isCameraErr() {
        return this.isCameraSystemErr;
    }

    @Override // com.yftech.avmservice.common.ICameraControl
    public boolean isCameraOpErr() {
        return this.avmOpState == 0;
    }

    @Override // com.yftech.avmservice.common.ICameraControl
    public boolean isCommTimeOut() {
        return this.isCommTimeOut;
    }

    @Override // com.yftech.avmservice.procotol.RadarProcotol, com.yftech.avmservice.common.IMcuCommListener
    public void onMcuMessageCallBack(ByteBuffer byteBuffer, int i) {
        onMcuProcotol(byteBuffer, i);
    }

    @Override // com.yftech.avmservice.procotol.RadarProcotol
    public void onMcuProcotol(ByteBuffer byteBuffer, int i) {
        byteBuffer.position(0);
        byteBuffer.get();
        byte b = byteBuffer.get();
        byte b2 = byteBuffer.get();
        if (b == 96 && b2 == 0) {
            long j = ((long) ((byteBuffer.get() & 255) << 24)) + ((long) ((byteBuffer.get() & 255) << 16)) + ((long) ((byteBuffer.get() & 255) << 8)) + ((long) (byteBuffer.get() & 255));
            byteBuffer.get();
            if (j == 836 && !AvmControl.getInstance().isFAPA()) {
                byteBuffer.position(byteBuffer.position() + 7);
                this.mAvmDisplayRequest = byteBuffer.get() & 1;
                LogUtil.d(TAG, "onMcuProcotol mAvmDisplayRequest:" + this.mAvmDisplayRequest, new Object[0]);
                if (this.mCameraControlListener != null) {
                    this.mCameraControlListener.onDisplayState(this.mAvmDisplayRequest == 1);
                }
            } else if (j == 837 && AvmControl.getInstance().isFAPA()) {
                byteBuffer.position(byteBuffer.position() + 7);
                this.mAvmDisplayRequest = byteBuffer.get() & 1;
                LogUtil.d(TAG, "onMcuProcotol PCS_ACU_DisplayReq:" + this.mAvmDisplayRequest, new Object[0]);
                if (this.mCameraControlListener != null) {
                    this.mCameraControlListener.onDisplayState(this.mAvmDisplayRequest == 1);
                }
            } else if (j == 824) {
                int i2 = (byteBuffer.get() & 255) >> 4;
                if (this.mCameraControlListener != null) {
                    this.mCameraControlListener.onGearStateChange(i2);
                }
            } else if (j == 179) {
                byteBuffer.position(byteBuffer.position() + 2);
                int i3 = byteBuffer.get() & 255;
                int i4 = byteBuffer.get() & 240;
                this.mAPAInfo.APA_VoiceReminder = (i3 << 4) + (i4 >> 4);
                LogUtil.d(TAG, "onMcuProcotol val1:" + i3 + ",val2:" + i4 + ", APA_VoiceReminder:" + this.mAPAInfo.APA_VoiceReminder, new Object[0]);
                if (this.mCameraControlListener != null) {
                    this.mCameraControlListener.onAPADrvReq(this.mAPAInfo);
                }
            }
        }
        super.onMcuProcotol(byteBuffer, i);
    }

    @Override // com.yftech.avmservice.common.ISAVMControl
    public boolean replyAPAShowState(boolean z) {
        buffer.clear();
        buffer.put(HU_CTRL_AVM_GID);
        buffer.put((byte) 0);
        buffer.put((byte) 1);
        buffer.put((byte) -92);
        buffer.put(z ? (byte) 1 : (byte) 0);
        return MCUComm.getInstance().SendData(buffer, 12) > 0;
    }

    @Override // com.yftech.avmservice.common.ICameraControl
    public boolean requestCanSync() {
        LogUtil.d(TAG, "requestCanSync", new Object[0]);
        buffer.clear();
        buffer.put((byte) -126);
        buffer.put((byte) 3);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        return MCUComm.getInstance().SendData(buffer, 8) > 0;
    }

    @Override // com.yftech.avmservice.common.ICameraControl
    public boolean requestHide() {
        buffer.clear();
        buffer.put(HU_CTRL_AVM_GID);
        buffer.put((byte) 0);
        buffer.put((byte) 2);
        buffer.put((byte) 114);
        buffer.put((byte) 15);
        return MCUComm.getInstance().SendData(buffer, 12) > 0;
    }

    @Override // com.yftech.avmservice.common.ICameraControl
    public boolean requestShow() {
        buffer.clear();
        buffer.put(HU_CTRL_AVM_GID);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put(HU_CTRL_AVM_GID);
        buffer.put((byte) 1);
        return MCUComm.getInstance().SendData(buffer, 12) > 0;
    }

    @Override // com.yftech.avmservice.common.ISAVMControl
    public boolean sendTouchToAVM(float f, float f2, int i) {
        String str = TAG;
        StringBuilder sb = new StringBuilder();
        sb.append("sendTouchToAVM (");
        int i2 = (int) f;
        sb.append(i2);
        sb.append(",");
        int i3 = (int) f2;
        sb.append(i3);
        sb.append("),action:");
        sb.append(i);
        LogUtil.i(str, sb.toString(), new Object[0]);
        buffer.clear();
        buffer.put(HU_CTRL_TOUCH_EVENT_GID);
        buffer.put(HU_CTRL_TOUCH_EVENT_SID);
        buffer.put((byte) ((i2 >> 8) & 255));
        buffer.put((byte) (i2 & 255));
        buffer.put((byte) ((i3 >> 8) & 255));
        buffer.put((byte) (i3 & 255));
        buffer.put((byte) (i & 255));
        buffer.put((byte) 0);
        return MCUComm.getInstance().SendData(buffer, 8) > 0;
    }

    @Override // com.yftech.avmservice.common.ICameraControl
    public void setCameraControlListener(ICameraControl.ICameraControlListener iCameraControlListener) {
        this.mCameraControlListener = iCameraControlListener;
    }

    @Override // com.yftech.avmservice.common.ISAVMControl
    public void setSAVMControlListener(ISAVMControl.ISAVMControlListener iSAVMControlListener) {
        this.mSAVMControlListener = iSAVMControlListener;
    }
}
