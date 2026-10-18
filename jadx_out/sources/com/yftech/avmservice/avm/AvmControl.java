package com.yftech.avmservice.avm;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.Surface;
import android.view.SurfaceView;
import com.yftech.avmservice.CameraService;
import com.yftech.avmservice.common.CameraDataDef;
import com.yftech.avmservice.common.ICameraControl;
import com.yftech.avmservice.common.IRadarControl;
import com.yftech.avmservice.common.ISAVMControl;
import com.yftech.avmservice.constant.Constant;
import com.yftech.avmservice.procotol.MCUComm;
import com.yftech.avmservice.procotol.RVCProcotol;
import com.yftech.avmservice.procotol.SAVMProcotol;
import com.yftech.avmservice.util.DistributedHandler;
import com.yftech.avmservice.util.LogUtil;
import com.yftech.avmservice.windowutil.BaseWindow;
import com.yftech.avmservice.windowutil.RVCWindow;
import com.yftech.avmservice.windowutil.RadarShowWindow;
import com.yftech.avmservice.windowutil.SAVMWindow;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.sdk.CarConfig;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class AvmControl implements ICameraControl.ICameraControlListener, AVMMonitor.ICameraMonitorListener {
    private static final int ADDR_RVC_CAMERA_ID = 65581;
    public static final int AVM_CAMERA_HIDE = 0;
    public static final int AVM_CAMERA_REQ_SHOW_BY_AVM_PROCOTOL = 1;
    public static final int AVM_CAMERA_REQ_SHOW_BY_USER_ACTION = 2;
    public static final int CAR_TYPE_A58 = 1;
    public static final int CAR_TYPE_A79 = 3;
    public static final int CAR_TYPE_A88 = 2;
    public static final int CAR_TYPE_UNKNOWN = 0;
    private static final boolean DEBUG = true;
    public static final int DEVICE_TYPE_360RVCSVC = 3;
    public static final int DEVICE_TYPE_AVM = 2;
    public static final int DEVICE_TYPE_HAVM = 4;
    public static final int DEVICE_TYPE_NONE = 0;
    public static final int DEVICE_TYPE_RADAR = 5;
    public static final int DEVICE_TYPE_RVC = 1;
    public static final int FRONT_0_REAR_3 = 1;
    public static final int FRONT_0_REAR_4 = 2;
    public static final int FRONT_2_REAR_3 = 3;
    public static final int FRONT_2_REAR_4 = 4;
    public static final int FRONT_4_REAR_4 = 5;
    public static final int RADAR_TYPE_NONE = 0;
    private static final String TAG = "AvmControl";
    private static volatile boolean isInit = false;
    int car_type;
    private WeakReference<Context> contextWeakReference;
    int device_type;
    private CameraDataDef.APAInfo mAPADrvReq;
    private boolean mAvmDisplayShowState;
    private boolean mAvmFrontRadarErr;
    private boolean mAvmRearRadarErr;
    private boolean mAvmSignalErr;
    private boolean mAvmSystemErr;
    private int mBackCarCameraId;
    private BaseWindow mBaseWindow;
    private int mCameraInputErr;
    private boolean mCarTrunkOpen;
    Handler mHandler;
    private boolean mIsAVMPlusFAPAMode;
    private boolean mIsAvmServiceRun;
    private boolean mIsBackcar;
    private boolean mIsGearState;
    private boolean mIsIoBackCar;
    private boolean mIsRvcMode;
    private DistributedHandler mMainHandler;
    private long mNoRearElapsedRealtime;
    CameraDataDef.RadarInfo mRadarInfo;
    private RVCProcotol mRvcProcotol;
    private RVCWindow mRvcWindow;
    private SAVMProcotol mSAVMProcotol;
    private boolean mShowLoading;
    private SAVMWindow mSvmWindow;
    Runnable r;
    int radar_type;
    private boolean testCmd;
    private static ByteBuffer buffer = ByteBuffer.allocateDirect(56);
    private static int avmReqOnOff = 0;

    private static class SingletonFactory {
        private static AvmControl instance = new AvmControl();

        private SingletonFactory() {
        }
    }

    private AvmControl() {
        this.mNoRearElapsedRealtime = 0L;
        this.mIsRvcMode = true;
        this.mBackCarCameraId = 0;
        this.mAvmDisplayShowState = false;
        this.mAPADrvReq = new CameraDataDef.APAInfo();
        this.device_type = 1;
        this.radar_type = 2;
        this.car_type = 0;
        this.mIsGearState = false;
        this.mBaseWindow = null;
        this.mRvcWindow = null;
        this.mSvmWindow = null;
        this.mAvmSystemErr = false;
        this.mCameraInputErr = 0;
        this.mAvmSignalErr = false;
        this.mAvmFrontRadarErr = false;
        this.mAvmRearRadarErr = false;
        this.mCarTrunkOpen = false;
        this.mShowLoading = false;
        this.mRadarInfo = new CameraDataDef.RadarInfo();
        this.mMainHandler = new DistributedHandler();
        this.mIsBackcar = false;
        this.mIsAvmServiceRun = false;
        this.mIsAVMPlusFAPAMode = false;
        this.mIsIoBackCar = false;
        this.testCmd = false;
        this.mHandler = new Handler();
        this.r = new Runnable() { // from class: com.yftech.avmservice.avm.AvmControl.1
            @Override // java.lang.Runnable
            public void run() {
                if (AvmControl.this.testCmd) {
                    AvmControl.this.onDisplayState(true);
                } else {
                    AvmControl.this.onDisplayState(false);
                }
                AvmControl.this.testCmd = true ^ AvmControl.this.testCmd;
                AvmControl.this.postDelayHandler(10000);
            }
        };
    }

    private void getDevice() {
        ICarConfig.VehiclePlatform vehiclePlatform = CarConfig.getVehiclePlatform();
        LogUtil.d(TAG, "getVehiclePlatform vehiclePlatform type:" + vehiclePlatform, new Object[0]);
        if (vehiclePlatform == ICarConfig.VehiclePlatform.A58) {
            this.car_type = 1;
        } else if (vehiclePlatform == ICarConfig.VehiclePlatform.A88) {
            this.car_type = 2;
        } else if (vehiclePlatform == ICarConfig.VehiclePlatform.A79) {
            this.car_type = 3;
        }
        this.car_type = 3;
        if (this.car_type == 3) {
            ICarConfig.CameraNumber cameraNumber = CarConfig.getCameraNumber();
            LogUtil.d(TAG, "getCameraNumber cameraNumber:" + cameraNumber, new Object[0]);
            if (cameraNumber == ICarConfig.CameraNumber.RVC) {
                this.mIsRvcMode = true;
                this.device_type = 1;
                this.mBackCarCameraId = 0;
            } else if (cameraNumber == ICarConfig.CameraNumber.EXTERNAL_AVM) {
                this.mIsRvcMode = true;
                this.device_type = 2;
                this.mBackCarCameraId = 5;
            } else if (cameraNumber == ICarConfig.CameraNumber.SVM_PLUSFAPA) {
                this.mIsRvcMode = true;
                this.device_type = 2;
                this.mBackCarCameraId = 5;
                this.mIsAVMPlusFAPAMode = true;
            } else if (cameraNumber != ICarConfig.CameraNumber.NONE) {
                this.mIsRvcMode = false;
                this.device_type = 0;
                this.mBackCarCameraId = 0;
            } else if (this.radar_type != 0) {
                this.mIsRvcMode = true;
                this.device_type = 5;
                this.mBackCarCameraId = 0;
            } else {
                this.mIsRvcMode = true;
                this.device_type = 0;
                this.mBackCarCameraId = 0;
            }
            boolean zIsSvmPresent = CarConfig.isSvmPresent();
            boolean zIsExternalSvmPresent = CarConfig.isExternalSvmPresent();
            LogUtil.d(TAG, "CarConfig isRvcPresent :" + this.mIsRvcMode + ",isSvmPresent:" + zIsSvmPresent + ",isExternalSvmPresent:" + zIsExternalSvmPresent, new Object[0]);
        } else {
            this.mIsRvcMode = true;
            this.device_type = 1;
            this.mBackCarCameraId = 0;
        }
        LogUtil.d(TAG, "device type11:" + this.device_type, new Object[0]);
    }

    public static AvmControl getInstance() {
        return SingletonFactory.instance;
    }

    private void getRadar() {
        ICarConfig.RadarNumber radarNumber = CarConfig.getRadarNumber();
        LogUtil.d(TAG, "getRadarNumber radar type:" + radarNumber, new Object[0]);
        if (radarNumber == ICarConfig.RadarNumber.FRONT_0_REAR_3) {
            this.radar_type = 1;
        } else if (radarNumber == ICarConfig.RadarNumber.NONE) {
            this.radar_type = 0;
        } else {
            this.radar_type = 1;
        }
    }

    public static void init(Context context) {
        if (isInit) {
            return;
        }
        isInit = true;
        getInstance().avmInit(context);
        getInstance().windowInit();
        AudioFocus.getInstance();
        LogUtil.d(TAG, "avmservice_init_end", new Object[0]);
    }

    private boolean isAvmSignalOk(int i) {
        int avmSignal = getAvmSignal();
        try {
            Thread.sleep(i);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
        int avmSignal2 = getAvmSignal();
        LogUtil.d(TAG, "avmSignal:" + avmSignal + ",tmp_avmSignal:" + avmSignal2, new Object[0]);
        return avmSignal != avmSignal2;
    }

    private void setAvmReqOnOff(int i) {
        avmReqOnOff = i;
        LogUtil.d(TAG, "set avmReqOnOff:" + avmReqOnOff, new Object[0]);
    }

    public synchronized int avmInit(Context context) {
        this.contextWeakReference = new WeakReference<>(context);
        getInstance().getRadar();
        getInstance().getDevice();
        if (getDeviceType() == 2) {
            this.mSAVMProcotol = SAVMProcotol.getInstance();
            MCUComm.getInstance().setAvmListener(this.mSAVMProcotol);
            this.mSAVMProcotol.setCameraControlListener(this);
            this.mSAVMProcotol.requestCanSync();
            this.mSAVMProcotol.init();
        } else if (getDeviceType() == 1 || getDeviceType() == 5) {
            this.mRvcProcotol = RVCProcotol.getInstance();
            MCUComm.getInstance().setAvmListener(this.mRvcProcotol);
            this.mRvcProcotol.setCameraControlListener(this);
            this.mRvcProcotol.requestCanSync();
        } else {
            LogUtil.d(TAG, "no set Proctol listener", new Object[0]);
        }
        return 0;
    }

    public boolean canShow() {
        return false;
    }

    public synchronized void dispSurfaceInit(int i, int i2, Surface surface) {
    }

    public synchronized void dispSurfaceRelease() {
    }

    public CameraDataDef.APAInfo getAPADrvReq() {
        return this.mAPADrvReq;
    }

    public int getAvmHardwareState() {
        return 0;
    }

    public int getAvmMode() {
        return 0;
    }

    public int getAvmReqOnOff() {
        return avmReqOnOff;
    }

    public int getAvmSignal() {
        return 0;
    }

    public int getBackCarCameraID() {
        return this.mBackCarCameraId;
    }

    public ICameraControl getCameraControl() {
        if (this.mRvcProcotol == null) {
            this.mRvcProcotol = RVCProcotol.getInstance();
        }
        return this.mRvcProcotol;
    }

    public int getCarSpeed() {
        return 1;
    }

    public int getCarType() {
        return this.car_type;
    }

    public int getDeviceType() {
        return this.device_type;
    }

    public DistributedHandler getMainHandler() {
        return this.mMainHandler;
    }

    public IRadarControl getRadarControl() {
        if (this.mRvcProcotol == null) {
            this.mRvcProcotol = RVCProcotol.getInstance();
        }
        return this.mRvcProcotol;
    }

    public int getRadarType() {
        return this.radar_type;
    }

    public ISAVMControl getSAVMControl() {
        if (this.mSAVMProcotol == null) {
            this.mSAVMProcotol = SAVMProcotol.getInstance();
        }
        return this.mSAVMProcotol;
    }

    public IRadarControl getSAVMRadarControl() {
        if (this.mSAVMProcotol == null) {
            this.mSAVMProcotol = SAVMProcotol.getInstance();
        }
        return this.mSAVMProcotol;
    }

    public synchronized SurfaceView getSurface() {
        SurfaceView surface;
        surface = null;
        switch (this.device_type) {
            case 1:
                if (this.mBaseWindow != null) {
                    surface = this.mRvcWindow.getSurface();
                }
                break;
            case 2:
                if (this.mSvmWindow != null) {
                    surface = this.mSvmWindow.getSurface();
                }
                break;
        }
        return surface;
    }

    public BaseWindow getWindow() {
        return this.mBaseWindow;
    }

    public synchronized void hideAvm() {
        this.mMainHandler.sendEmptyMessage(Constant.HANDLE_HIDE_AVM);
    }

    public boolean isAvmDisplay() {
        return this.mAvmDisplayShowState;
    }

    public boolean isAvmServiceRun() {
        LogUtil.d(TAG, "mIsAvmServiceRun: " + this.mIsAvmServiceRun, new Object[0]);
        return this.mIsAvmServiceRun;
    }

    public boolean isAvmSignalErr() {
        return this.mAvmSignalErr;
    }

    public synchronized boolean isBackCar() {
        return this.mIsBackcar;
    }

    public boolean isCarTrunkOpen() {
        return this.mCarTrunkOpen;
    }

    public boolean isFAPA() {
        return this.mIsAVMPlusFAPAMode;
    }

    public boolean isIOBackCar() {
        return this.mIsIoBackCar;
    }

    public boolean isRvcMode() {
        return this.mIsRvcMode;
    }

    public boolean isShowLoading() {
        return this.mShowLoading;
    }

    public boolean isSystemOpErr() {
        if (getDeviceType() == 2) {
            if (this.mSAVMProcotol != null) {
                return this.mSAVMProcotol.isCameraOpErr();
            }
            return false;
        }
        if (this.mRvcProcotol != null) {
            return this.mRvcProcotol.isCameraOpErr();
        }
        return false;
    }

    public long noRearElapsedRealtime() {
        return this.mNoRearElapsedRealtime;
    }

    @Override // com.yftech.avmservice.common.ICameraControl.ICameraControlListener
    public void onAPADrvReq(CameraDataDef.APAInfo aPAInfo) {
        this.mAPADrvReq = aPAInfo;
        this.mMainHandler.sendEmptyMessage(Constant.MSG_APA_SOUND_REQ);
    }

    public synchronized void onBackcarChange(boolean z) {
        this.mIsBackcar = z;
        if (!this.mIsBackcar) {
            this.mNoRearElapsedRealtime = SystemClock.elapsedRealtime();
        }
        this.mMainHandler.sendEmptyMessage(Constant.MSG_GEAR_STATE_CHANGE);
    }

    @Override // com.yftech.avmservice.common.ICameraControl.ICameraControlListener
    public void onCameraCommTimeOut(boolean z) {
        LogUtil.d(TAG, "onCameraCommTimeOut：" + z, new Object[0]);
        this.mMainHandler.sendEmptyMessage(Constant.HANDLE_COMM_TIMEOUT);
    }

    @Override // com.yftech.avmservice.avm.AVMMonitor.ICameraMonitorListener
    public void onCameraMonitorLoading(boolean z) {
        this.mShowLoading = z;
        if (this.mShowLoading) {
            this.mMainHandler.sendEmptyMessage(Constant.HANDLE_SHOW_AVM);
        } else {
            this.mMainHandler.sendEmptyMessage(Constant.HANDLE_HIDE_LOADING);
        }
    }

    @Override // com.yftech.avmservice.avm.AVMMonitor.ICameraMonitorListener
    public void onCameraMonitorNoSignal() {
        LogUtil.d(TAG, "onAvmMonitorNoSignal", new Object[0]);
        this.mShowLoading = false;
        this.mAvmSignalErr = true;
        this.mMainHandler.sendEmptyMessage(Constant.HANDLE_SHOW_NO_SIG);
    }

    @Override // com.yftech.avmservice.avm.AVMMonitor.ICameraMonitorListener
    public void onCameraMonitorReady() {
        this.mMainHandler.sendEmptyMessage(255);
    }

    @Override // com.yftech.avmservice.avm.AVMMonitor.ICameraMonitorListener
    public void onCameraMonitorReqHide() {
        LogUtil.d(TAG, "onAvmMonitorReqHide", new Object[0]);
        hideAvm();
    }

    @Override // com.yftech.avmservice.avm.AVMMonitor.ICameraMonitorListener
    public void onCameraMonitorReqShow() {
        LogUtil.d(TAG, "onAvmMonitorReqShow", new Object[0]);
        this.mShowLoading = false;
        showAvm();
    }

    @Override // com.yftech.avmservice.avm.AVMMonitor.ICameraMonitorListener
    public void onCameraMonitorResumeSignal() {
        this.mAvmSignalErr = false;
        this.mMainHandler.sendEmptyMessage(Constant.HANDLE_HIDE_NO_SIG);
    }

    @Override // com.yftech.avmservice.common.ICameraControl.ICameraControlListener
    public void onCameraOpStateErr(boolean z) {
        if (z) {
            this.mMainHandler.sendEmptyMessage(Constant.HANDLE_SHOW_SYSTEM_ERR);
        } else {
            this.mMainHandler.sendEmptyMessage(Constant.HANDLE_HIDE_SYSTEM_ERR);
        }
    }

    @Override // com.yftech.avmservice.common.ICameraControl.ICameraControlListener
    public void onCameraReqHide() {
        LogUtil.d(TAG, "onAvmProcotolReqHide:" + getAvmReqOnOff(), new Object[0]);
        if (this.device_type == 0) {
            AudioFocus.getInstance().abondRvcFocus();
            return;
        }
        if (this.device_type == 1 || this.device_type == 2) {
            if ((getAvmReqOnOff() & 1) == 1) {
                this.mShowLoading = false;
                setAvmReqOnOff(getAvmReqOnOff() & (-2));
                CameraService.getInstance().stopBackCar();
                return;
            }
            return;
        }
        if (this.device_type != 5) {
            LogUtil.d(TAG, "onCameraReqHide device_type:" + this.device_type, new Object[0]);
            return;
        }
        if ((getAvmReqOnOff() & 1) == 1) {
            setAvmReqOnOff(getAvmReqOnOff() & (-2));
            if (getAvmReqOnOff() == 0) {
                onCameraMonitorReqHide();
            }
        }
    }

    @Override // com.yftech.avmservice.common.ICameraControl.ICameraControlListener
    public void onCameraReqShow() {
        LogUtil.d(TAG, "onAvmProcotolReqShow:" + getAvmReqOnOff(), new Object[0]);
        if (this.device_type == 0) {
            AudioFocus.getInstance().requestRvcFocus();
            return;
        }
        if (this.device_type == 1 || this.device_type == 2) {
            if ((getAvmReqOnOff() & 1) != 1) {
                this.mAvmSignalErr = false;
                this.mShowLoading = false;
                setAvmReqOnOff(getAvmReqOnOff() + 1);
                CameraService.getInstance().startBackCar();
                return;
            }
            return;
        }
        if (this.device_type == 5) {
            setAvmReqOnOff(getAvmReqOnOff() + 1);
            if (getAvmReqOnOff() == 1) {
                onCameraMonitorReqShow();
                onCameraMonitorReady();
                return;
            }
            return;
        }
        LogUtil.d(TAG, "onCameraReqShow device_type:" + this.device_type, new Object[0]);
    }

    @Override // com.yftech.avmservice.common.ICameraControl.ICameraControlListener
    public void onCameraSystemErr(boolean z) {
        this.mAvmSystemErr = z;
        if (z) {
            this.mMainHandler.sendEmptyMessage(Constant.HANDLE_SHOW_SYSTEM_ERR);
        } else {
            this.mMainHandler.sendEmptyMessage(Constant.HANDLE_HIDE_SYSTEM_ERR);
        }
    }

    @Override // com.yftech.avmservice.common.ICameraControl.ICameraControlListener
    public void onDisplayState(boolean z) {
        this.mAvmDisplayShowState = z;
        Message message = new Message();
        message.what = Constant.MSG_AVM_REQUEST_STATE;
        message.arg1 = z ? 1 : 0;
        message.arg2 = 0;
        this.mMainHandler.sendMessage(message);
    }

    @Override // com.yftech.avmservice.common.ICameraControl.ICameraControlListener
    public void onGearStateChange(int i) {
        boolean z = i == 14;
        if (this.mIsGearState == z) {
            return;
        }
        this.mIsGearState = z;
        if (i != 14) {
            onBackcarChange(false);
        } else {
            playReverseEffect();
            onBackcarChange(true);
        }
    }

    @Override // com.yftech.avmservice.common.ICameraControl.ICameraControlListener
    public void onSteerWheelAngel(float f) {
        this.mMainHandler.sendEmptyMessage(Constant.MSG_STEER_WHEEL_ANGEL_CHANGE);
    }

    public void playReverseEffect() {
        if (this.mBaseWindow != null) {
            this.mBaseWindow.playReverseEffect();
        }
    }

    public void postDelayHandler(int i) {
        this.mHandler.postDelayed(this.r, i);
    }

    public Object readResolve() {
        return getInstance();
    }

    public boolean resetRvcCamera() {
        if (this.mRvcProcotol != null) {
            return this.mRvcProcotol.resetRvcCamera();
        }
        return false;
    }

    public void setAvmMode(int i) {
    }

    public void setAvmServiceRun(boolean z) {
        this.mIsAvmServiceRun = z;
    }

    public void setIoBackCar(boolean z) {
        LogUtil.d(TAG, "setIoBackCar,new BackCar:" + z + ",old BackCar:" + this.mIsIoBackCar, new Object[0]);
        if (this.mIsIoBackCar != z) {
            this.mIsIoBackCar = z;
            if (this.device_type == 1) {
                Message message = new Message();
                message.what = Constant.MSG_RVC_REQUEST_STATE;
                message.arg1 = z ? 1 : 0;
                message.arg2 = 0;
                this.mMainHandler.sendMessage(message);
            }
        }
    }

    public synchronized void showAvm() {
        this.mMainHandler.sendEmptyMessage(Constant.HANDLE_SHOW_AVM);
    }

    public boolean sourcePause(Bundle bundle) {
        LogUtil.d(TAG, "sourcePause", new Object[0]);
        if (getAvmHardwareState() == 1) {
            return true;
        }
        getInstance().hideAvm();
        return true;
    }

    public boolean sourceResume(Bundle bundle) {
        LogUtil.d(TAG, "sourceResume", new Object[0]);
        if (getAvmHardwareState() == 1) {
            return true;
        }
        getInstance().showAvm();
        return true;
    }

    public boolean sourceStart(Bundle bundle) {
        LogUtil.d(TAG, "sourceStart", new Object[0]);
        if (getAvmHardwareState() == 1) {
            return true;
        }
        getInstance().showAvm();
        return true;
    }

    public boolean sourceStop(Bundle bundle) {
        LogUtil.d(TAG, "sourceStop", new Object[0]);
        if (getAvmHardwareState() == 1) {
            return true;
        }
        getInstance().hideAvm();
        return true;
    }

    public synchronized void userRequestHideAvm() {
        LogUtil.d(TAG, "userRequestHideAvm:" + getAvmReqOnOff(), new Object[0]);
        if (this.device_type == 1 || this.device_type == 2) {
            if ((getAvmReqOnOff() & 2) == 2) {
                this.mShowLoading = false;
                setAvmReqOnOff(getAvmReqOnOff() & (-3));
                CameraService.getInstance().stopUserPreview();
            }
        } else if (this.device_type != 5) {
            LogUtil.d(TAG, "userRequestHideAvm device_type:" + this.device_type, new Object[0]);
        } else if ((getAvmReqOnOff() & 2) == 2) {
            setAvmReqOnOff(getAvmReqOnOff() & (-3));
            onCameraMonitorReqHide();
        }
    }

    public synchronized void userRequestShowAvm() {
        LogUtil.d(TAG, "userRequestShowAvm:" + getAvmReqOnOff(), new Object[0]);
        if (this.device_type == 0) {
            return;
        }
        if (getAvmReqOnOff() == 0) {
            this.mAvmSignalErr = false;
            this.mShowLoading = false;
            if (this.device_type == 1 || this.device_type == 2) {
                setAvmReqOnOff(2);
                CameraService.getInstance().startUserPreview();
            } else if (this.device_type == 5) {
                setAvmReqOnOff(2);
                onCameraMonitorReqShow();
                onCameraMonitorReady();
            } else {
                LogUtil.d(TAG, "userRequestShowAvm device_type:" + this.device_type, new Object[0]);
            }
        }
    }

    public synchronized void windowInit() {
        int i = this.device_type;
        if (i != 5) {
            switch (i) {
                case 1:
                    if (this.mBaseWindow == null && this.contextWeakReference.get() != null) {
                        this.mRvcWindow = new RVCWindow(this.contextWeakReference.get());
                        this.mBaseWindow = this.mRvcWindow;
                    }
                    break;
                case 2:
                    if (this.mBaseWindow == null && this.contextWeakReference.get() != null) {
                        this.mSvmWindow = new SAVMWindow(this.contextWeakReference.get());
                        this.mBaseWindow = this.mSvmWindow;
                    }
                    break;
            }
        } else if (this.mBaseWindow == null && this.contextWeakReference.get() != null) {
            this.mBaseWindow = new RadarShowWindow(this.contextWeakReference.get());
        }
    }
}
