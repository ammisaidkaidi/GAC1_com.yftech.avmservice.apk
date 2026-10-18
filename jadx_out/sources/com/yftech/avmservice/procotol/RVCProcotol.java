package com.yftech.avmservice.procotol;

import com.yftech.avmservice.common.ICameraControl;
import com.yftech.avmservice.util.LogUtil;
import com.yftech.vehicle.sdk.CarSwcManager;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class RVCProcotol extends RadarProcotol implements ICameraControl {
    public static final int RVC_OP_STATE_CALIBRATION = 3;
    public static final int RVC_OP_STATE_NOT_AVAILABLE = 2;
    public static final int RVC_OP_STATE_OPERATION = 1;
    public static final int RVC_OP_STATE_STANDY = 0;
    public static final int RVC_OP_STATE_WARNING = 4;
    private static final String TAG = "RVCProcotol";
    private static ByteBuffer buffer = ByteBuffer.allocateDirect(56);
    private ICameraControl.ICameraControlListener mCameraControlListener;
    private float mSteerWheelAngle;
    private int PASWorkCmd = 0;
    private int rvcOpState = 1;
    private boolean isCommTimeOut = false;
    private int mNoPacketCount = 0;

    class MyThread extends Thread {
        private boolean isCommTimeOutTmp = false;
        private boolean isReset = false;

        MyThread() {
        }

        /* JADX INFO: Infinite loop detected, blocks: 21, insns: 0 */
        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                try {
                    Thread.sleep(3000L);
                    RVCProcotol.access$008(RVCProcotol.this);
                    if (RVCProcotol.this.mNoPacketCount > 5) {
                        this.isCommTimeOutTmp = true;
                        RVCProcotol.this.mNoPacketCount = 5;
                    } else {
                        this.isCommTimeOutTmp = false;
                    }
                    if (RVCProcotol.this.isCommTimeOut != this.isCommTimeOutTmp) {
                        RVCProcotol.this.isCommTimeOut = this.isCommTimeOutTmp;
                        ICameraControl.ICameraControlListener unused = RVCProcotol.this.mCameraControlListener;
                    }
                    if (this.isReset) {
                        RVCProcotol.this.sendResetPaket1();
                    } else {
                        RVCProcotol.this.sendTestPaket1();
                    }
                    this.isReset = !this.isReset;
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    }

    private static class SingletonFactory {
        private static RVCProcotol instance = new RVCProcotol();

        private SingletonFactory() {
        }
    }

    public RVCProcotol() {
        this.mSteerWheelAngle = 0.0f;
        this.mSteerWheelAngle = CarSwcManager.get().getSwcAngle();
        LogUtil.d(TAG, "RVCProcotol mSteerWheelAngle:" + this.mSteerWheelAngle, new Object[0]);
    }

    static /* synthetic */ int access$008(RVCProcotol rVCProcotol) {
        int i = rVCProcotol.mNoPacketCount;
        rVCProcotol.mNoPacketCount = i + 1;
        return i;
    }

    public static RVCProcotol getInstance() {
        return SingletonFactory.instance;
    }

    private void onRvcRunState(ByteBuffer byteBuffer) {
        byteBuffer.position(3);
        byte b = byteBuffer.get();
        if (this.rvcOpState != b) {
            this.rvcOpState = b;
            if (this.mCameraControlListener != null) {
                this.mCameraControlListener.onCameraOpStateErr(this.rvcOpState == 0 || this.rvcOpState == 2);
            }
        }
    }

    @Override // com.yftech.avmservice.common.ICameraControl
    public float getSteerWheelAngle() {
        return this.mSteerWheelAngle;
    }

    @Override // com.yftech.avmservice.common.ICameraControl
    public boolean isCameraOpErr() {
        return this.rvcOpState == 0 || this.rvcOpState == 2;
    }

    @Override // com.yftech.avmservice.common.ICameraControl
    public boolean isCommTimeOut() {
        return this.isCommTimeOut;
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
            if (j == 1459) {
                byteBuffer.get();
                byteBuffer.get();
            } else if (j == 1146) {
                byteBuffer.get();
                byteBuffer.get();
                byteBuffer.get();
            } else if (j == 829) {
                byteBuffer.position(byteBuffer.position() + 1);
                if ((byteBuffer.get() & 1) == 1) {
                    byteBuffer.position(byteBuffer.position() + 1);
                    int i2 = byteBuffer.get() & 255;
                    LogUtil.d(TAG, "onMcuProcotol mSteerWheelAngle1:" + i2, new Object[0]);
                    int i3 = byteBuffer.get() & 255;
                    LogUtil.d(TAG, "onMcuProcotol mSteerWheelAngle2:" + i3, new Object[0]);
                    this.mSteerWheelAngle = (((float) ((i2 << 8) + i3)) * 0.1f) - 780.0f;
                    if (this.mCameraControlListener != null) {
                        this.mCameraControlListener.onSteerWheelAngel(this.mSteerWheelAngle);
                    }
                }
            }
        }
        super.onMcuProcotol(byteBuffer, i);
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
        return false;
    }

    @Override // com.yftech.avmservice.common.ICameraControl
    public boolean requestShow() {
        return false;
    }

    public boolean resetRvcCamera() {
        LogUtil.d(TAG, "resetRvcCamera", new Object[0]);
        buffer.clear();
        buffer.put((byte) 22);
        buffer.put((byte) 6);
        buffer.put((byte) 3);
        buffer.put((byte) 1);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        return MCUComm.getInstance().SendData(buffer, 8) > 0;
    }

    public boolean sendResetPaket() {
        buffer.clear();
        buffer.put((byte) 1);
        buffer.put((byte) 96);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 3);
        buffer.put((byte) 67);
        buffer.put((byte) 8);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        onMcuProcotol(buffer, 18);
        return true;
    }

    public boolean sendResetPaket1() {
        buffer.clear();
        buffer.put((byte) 1);
        buffer.put((byte) 96);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 3);
        buffer.put((byte) 71);
        buffer.put((byte) 8);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        onMcuProcotol(buffer, 18);
        return true;
    }

    public boolean sendTestPaket() {
        buffer.clear();
        buffer.put((byte) 1);
        buffer.put((byte) 96);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 3);
        buffer.put((byte) 67);
        buffer.put((byte) 8);
        buffer.put((byte) 4);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        onMcuProcotol(buffer, 18);
        return true;
    }

    public boolean sendTestPaket1() {
        buffer.clear();
        buffer.put((byte) 1);
        buffer.put((byte) 96);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 3);
        buffer.put((byte) 71);
        buffer.put((byte) 8);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 0);
        buffer.put((byte) 16);
        buffer.put((byte) 0);
        onMcuProcotol(buffer, 18);
        return true;
    }

    @Override // com.yftech.avmservice.common.ICameraControl
    public void setCameraControlListener(ICameraControl.ICameraControlListener iCameraControlListener) {
        this.mCameraControlListener = iCameraControlListener;
    }
}
