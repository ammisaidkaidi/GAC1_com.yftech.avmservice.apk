package com.yftech.avmservice.windowutil;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Handler;
import android.os.Message;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import com.yftech.avmservice.CameraService;
import com.yftech.avmservice.avm.AvmControl;
import com.yftech.avmservice.constant.Constant;
import com.yftech.avmservice.util.DistributedHandler;
import com.yftech.avmservice.util.LogUtil;
import com.yftech.avmservice.util.MySoundPool;
import com.yftech.car.screen.CarScreenManager;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BaseWindow implements DistributedHandler.HandlerPart {
    protected static final String RVC_CAMERA_SIGNAL_STATE = "rvc_camera_signal_state";
    protected static final int RVC_CAMERA_SIGNAL_STATE_ERR = 0;
    protected static final int RVC_CAMERA_SIGNAL_STATE_OK = 1;
    private static final String TAG = "BaseWindow";
    private Context mContext;
    private MySoundPool mMySoundPool;
    private Boolean isShown = false;
    private Boolean mIsVisibility = false;
    private boolean isUpdateVisibility = false;
    private boolean mIsRestoreScreenBackLight = false;
    private int mCameraState = 1;
    private boolean isNeedRetryOPenCamera = false;
    private Handler mCarHandler = new Handler();
    Runnable updateVisibilityRunnable = new Runnable() { // from class: com.yftech.avmservice.windowutil.BaseWindow.1
        @Override // java.lang.Runnable
        public void run() {
            LogUtil.d(BaseWindow.TAG, "update window Visibility  runnable,isUpdateVisibility:" + BaseWindow.this.isUpdateVisibility, new Object[0]);
            if (!BaseWindow.this.isShow() || BaseWindow.this.isUpdateVisibility) {
                return;
            }
            BaseWindow.this.setCameraState(0);
            if (BaseWindow.this.mAvmControl.getDeviceType() != 1) {
                BaseWindow.this.setWindowVisibility(true);
                BaseWindow.this.isUpdateVisibility = true;
            } else {
                if (BaseWindow.this.mAvmControl.isIOBackCar()) {
                    BaseWindow.this.setWindowVisibility(true);
                    BaseWindow.this.isUpdateVisibility = true;
                    return;
                }
                BaseWindow.this.onRvcHideWindow();
                if (BaseWindow.this.isNeedRetryOPenCamera) {
                    BaseWindow.this.isNeedRetryOPenCamera = false;
                    AvmControl.getInstance().onCameraReqHide();
                    AvmControl.getInstance().onCameraReqShow();
                }
            }
        }
    };
    Runnable exitAvmFirstShow = new Runnable() { // from class: com.yftech.avmservice.windowutil.BaseWindow.2
        @Override // java.lang.Runnable
        public void run() {
            LogUtil.d(BaseWindow.TAG, "exitAvmFirstShow ,isFirstOpenAvmCamera:" + BaseWindow.this.isOnFirstOpenCameraState, new Object[0]);
            if (BaseWindow.this.isOnFirstOpenCameraState) {
                BaseWindow.this.isOnFirstOpenCameraState = false;
                if (BaseWindow.this.mAvmControl.isAvmDisplay()) {
                    BaseWindow.this.setWindowVisibility(true);
                    BaseWindow.this.isUpdateVisibility = true;
                    BaseWindow.this.mCarHandler.removeCallbacks(BaseWindow.this.updateVisibilityRunnable);
                } else {
                    if (BaseWindow.this.mCameraState == 0) {
                        AvmControl.getInstance().onCameraReqHide();
                    }
                    BaseWindow.this.hideWindow();
                }
            }
        }
    };
    private boolean isFirstOpenCamera = true;
    private boolean isOnFirstOpenCameraState = false;
    private boolean isAvmRequestCameraOpen = false;
    protected AvmControl mAvmControl = AvmControl.getInstance();

    public BaseWindow(Context context) {
        this.mContext = null;
        this.mMySoundPool = null;
        this.mContext = context;
        this.mMySoundPool = new MySoundPool(this.mContext);
        this.mAvmControl.getMainHandler().addHandlerPart(this);
    }

    private void onAvmHideWindow() {
        LogUtil.d(TAG, "onAvmHideWindow mCameraState:" + this.mCameraState, new Object[0]);
        if (this.mCameraState != 0) {
            hideWindow();
        } else {
            AvmControl.getInstance().onCameraReqHide();
            hideWindow();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onRvcHideWindow() {
        LogUtil.d(TAG, "onRvcHideWindow mCameraState:" + this.mCameraState, new Object[0]);
        if (this.mCameraState != 0) {
            hideWindow();
        } else {
            AvmControl.getInstance().onCameraReqHide();
            hideWindow();
        }
    }

    private void sendHXBroadCast(int i, boolean z) {
        Intent intent = new Intent();
        intent.setAction("com.yftech.avmservice.SHOW_STATE");
        intent.putExtra("type", i);
        intent.putExtra("isShow", z);
        List<ResolveInfo> listQueryBroadcastReceivers = this.mContext.getPackageManager().queryBroadcastReceivers(intent, 0);
        if (listQueryBroadcastReceivers != null && listQueryBroadcastReceivers.size() >= 1) {
            for (ResolveInfo resolveInfo : listQueryBroadcastReceivers) {
                Intent intent2 = new Intent(intent);
                ComponentName componentName = new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name);
                LogUtil.e(TAG, "packageName " + resolveInfo.activityInfo.applicationInfo.packageName + ",Receiver:" + resolveInfo.activityInfo.name, new Object[0]);
                intent2.setComponent(componentName);
                this.mContext.sendBroadcastAsUser(intent2, UserHandle.ALL);
            }
        }
        this.mContext.sendBroadcastAsUser(intent, UserHandle.ALL);
    }

    public void BroadcastWindow(int i, boolean z) {
        if (z) {
            SystemProperties.set("sys.avmservice.show.state", "1");
        } else {
            SystemProperties.set("sys.avmservice.show.state", "0");
        }
        sendHXBroadCast(i, z);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.yftech.avmservice.util.DistributedHandler.HandlerPart
    public boolean dispatchHandleMessage(Message message) {
        LogUtil.d(TAG, "dispatchHandleMessage msg:" + message.what, new Object[0]);
        int i = message.what;
        if (i == 212 || i == 216) {
            updateWindow();
        } else if (i != 250) {
            if (i != 255) {
                if (i != 262) {
                    if (i != 266) {
                        switch (i) {
                            case Constant.HANDLE_HIDE_AVM /* 201 */:
                                hideWindow();
                                break;
                            case Constant.HANDLE_SHOW_AVM /* 202 */:
                                if (AvmControl.getInstance().getDeviceType() != 2) {
                                    if (this.mAvmControl.getDeviceType() == 1) {
                                        LogUtil.d(TAG, "rvc show window,backcar io state is:" + this.mAvmControl.isIOBackCar(), new Object[0]);
                                    }
                                    showWindow();
                                    this.isUpdateVisibility = false;
                                    this.mCarHandler.removeCallbacks(this.updateVisibilityRunnable);
                                    this.mCarHandler.postDelayed(this.updateVisibilityRunnable, 5000L);
                                } else {
                                    LogUtil.d(TAG, "isFirstOpenCamera :" + this.isFirstOpenCamera, new Object[0]);
                                    if (this.isFirstOpenCamera) {
                                        showWindow();
                                        this.mCarHandler.postDelayed(this.exitAvmFirstShow, 5000L);
                                        this.isFirstOpenCamera = false;
                                        this.isOnFirstOpenCameraState = true;
                                    }
                                }
                                break;
                            case Constant.HANDLE_HIDE_NO_SIG /* 203 */:
                            case Constant.HANDLE_SHOW_NO_SIG /* 204 */:
                                updateWindow();
                                if (message.what != 204) {
                                    setCameraState(1);
                                } else {
                                    setCameraState(0);
                                }
                                break;
                            case Constant.HANDLE_HIDE_SYSTEM_ERR /* 205 */:
                            case Constant.HANDLE_SHOW_SYSTEM_ERR /* 206 */:
                                updateWindow();
                                break;
                        }
                    } else if (message.arg1 != 1) {
                        boolean z = this.mAvmControl.getAvmReqOnOff() != 0;
                        boolean zIsPreviewStarted = CameraService.getInstance().isPreviewStarted();
                        LogUtil.d(TAG, "isBackcarStart:" + z + ",isCamaraPreviewStarted:" + zIsPreviewStarted, new Object[0]);
                        if (!z || zIsPreviewStarted) {
                            onRvcHideWindow();
                        } else {
                            LogUtil.d(TAG, "isRvcTryAlwayOpenCamera ture,nothing to do.mIsVisibility:" + this.mIsVisibility, new Object[0]);
                            if (this.mIsVisibility.booleanValue()) {
                                onRvcHideWindow();
                            }
                        }
                    } else if (!(this.mAvmControl.getAvmReqOnOff() != 0)) {
                        AvmControl.getInstance().onCameraReqShow();
                        LogUtil.d(TAG, "backcar,no open camera,restart open camera!!!", new Object[0]);
                    } else if (isShow()) {
                        LogUtil.d(TAG, "nothing to do, cause already shown", new Object[0]);
                    } else {
                        showWindow();
                        this.isUpdateVisibility = false;
                        this.mCarHandler.removeCallbacks(this.updateVisibilityRunnable);
                        this.mCarHandler.postDelayed(this.updateVisibilityRunnable, 5000L);
                    }
                } else if (AvmControl.getInstance().getDeviceType() == 2) {
                    if (message.arg1 == 1) {
                        boolean z2 = this.mAvmControl.getAvmReqOnOff() != 0;
                        LogUtil.d(TAG, "Avm request show isPreviewStarted:" + z2, new Object[0]);
                        if (!z2) {
                            LogUtil.d(TAG, "isOnFirstOpenCameraState:" + this.isOnFirstOpenCameraState + ",isFirstOpenCamera :" + this.isFirstOpenCamera + ", arm1 is not exit!!!", new Object[0]);
                            if (!this.isFirstOpenCamera) {
                                if (this.isOnFirstOpenCameraState) {
                                    LogUtil.d(TAG, "11Avm request show, isOnFirstOpenCameraState:" + this.isOnFirstOpenCameraState, new Object[0]);
                                } else {
                                    this.isFirstOpenCamera = true;
                                    AvmControl.getInstance().onCameraReqHide();
                                    AvmControl.getInstance().onCameraReqShow();
                                    this.isAvmRequestCameraOpen = true;
                                    LogUtil.d(TAG, "onCameraReqShow(),isOnFirstOpenCameraState:" + this.isOnFirstOpenCameraState, new Object[0]);
                                }
                            }
                        } else if (this.isOnFirstOpenCameraState) {
                            LogUtil.d(TAG, "22Avm request show, isOnFirstOpenCameraState:" + this.isOnFirstOpenCameraState, new Object[0]);
                            this.isUpdateVisibility = false;
                            this.mCarHandler.removeCallbacks(this.updateVisibilityRunnable);
                            this.mCarHandler.postDelayed(this.updateVisibilityRunnable, 5000L);
                        } else if (isShow()) {
                            LogUtil.d(TAG, "noting to do, cause already shown", new Object[0]);
                        } else {
                            showWindow();
                            this.isUpdateVisibility = false;
                            this.mCarHandler.removeCallbacks(this.updateVisibilityRunnable);
                            this.mCarHandler.postDelayed(this.updateVisibilityRunnable, 5000L);
                        }
                    } else {
                        LogUtil.d(TAG, "Avm request hide,isFirstOpenCamera:" + this.isFirstOpenCamera + ",isOnFirstOpenCameraState:" + this.isOnFirstOpenCameraState + ",isAvmRequestCameraOpen:" + this.isAvmRequestCameraOpen + ",mIsVisibility:" + this.mIsVisibility, new Object[0]);
                        if ((!this.isFirstOpenCamera && !this.isOnFirstOpenCameraState) || this.isAvmRequestCameraOpen || this.mIsVisibility.booleanValue()) {
                            onAvmHideWindow();
                        }
                    }
                }
            } else if (AvmControl.getInstance().getDeviceType() == 2) {
                LogUtil.d(TAG, "isOnFirstOpenCameraState :" + this.isOnFirstOpenCameraState, new Object[0]);
                if (this.isOnFirstOpenCameraState) {
                    this.isOnFirstOpenCameraState = false;
                    this.mCarHandler.removeCallbacks(this.exitAvmFirstShow);
                    if (this.mAvmControl.isAvmDisplay()) {
                        setWindowVisibility(true);
                        this.isUpdateVisibility = true;
                        this.mCarHandler.removeCallbacks(this.updateVisibilityRunnable);
                    } else {
                        if (this.mCameraState == 0) {
                            AvmControl.getInstance().onCameraReqHide();
                        }
                        hideWindow();
                    }
                } else {
                    setWindowVisibility(true);
                    this.isUpdateVisibility = true;
                    this.mCarHandler.removeCallbacks(this.updateVisibilityRunnable);
                }
            } else if (this.mAvmControl.getDeviceType() == 1) {
                if (AvmControl.getInstance().isIOBackCar()) {
                    setWindowVisibility(true);
                } else {
                    onRvcHideWindow();
                    if (this.isNeedRetryOPenCamera) {
                        this.isNeedRetryOPenCamera = false;
                        AvmControl.getInstance().onCameraReqHide();
                        AvmControl.getInstance().onCameraReqShow();
                    }
                }
                this.isUpdateVisibility = true;
                this.mCarHandler.removeCallbacks(this.updateVisibilityRunnable);
            } else {
                setWindowVisibility(true);
                this.isUpdateVisibility = true;
                this.mCarHandler.removeCallbacks(this.updateVisibilityRunnable);
            }
        }
        return false;
    }

    public AvmControl getAvmControl() {
        return this.mAvmControl;
    }

    public void hideWindow() {
        this.mIsVisibility = false;
        this.isShown = false;
    }

    public boolean isShow() {
        return this.isShown.booleanValue();
    }

    void openScreenBackLight() {
        LogUtil.d(TAG, "openScreenBackLight", new Object[0]);
        CarScreenManager carScreenManager = CarScreenManager.getInstance();
        if (carScreenManager == null || carScreenManager.isOpenScreenBrightness()) {
            this.mIsRestoreScreenBackLight = false;
            return;
        }
        LogUtil.d(TAG, "isOpenScreenBrightness:" + carScreenManager.isOpenScreenBrightness(), new Object[0]);
        carScreenManager.openScreenBrightness(0);
        this.mIsRestoreScreenBackLight = true;
    }

    public void playReverseEffect() {
        this.mMySoundPool.playReverseEffect();
    }

    void restoreScreenBackLight() {
        LogUtil.d(TAG, "restoreScreenBackLight,mIsRestoreScreenBackLight:" + this.mIsRestoreScreenBackLight, new Object[0]);
        CarScreenManager carScreenManager = CarScreenManager.getInstance();
        if (this.mIsRestoreScreenBackLight && carScreenManager != null) {
            LogUtil.d(TAG, "no closeScreenBrightness", new Object[0]);
            try {
                Thread.sleep(20L);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
        this.mIsRestoreScreenBackLight = false;
    }

    public boolean setCameraState(int i) {
        boolean zPutInt = Settings.System.putInt(this.mContext.getContentResolver(), RVC_CAMERA_SIGNAL_STATE, i);
        LogUtil.d(TAG, "set rvc camera value:" + i + ",ret: " + zPutInt, new Object[0]);
        this.mCameraState = i;
        return zPutInt;
    }

    public boolean setWindowVisibility(boolean z) {
        LogUtil.d(TAG, "setWindowVisibility:" + z, new Object[0]);
        this.mIsVisibility = Boolean.valueOf(z);
        return true;
    }

    public void showWindow() {
        this.isShown = true;
    }

    public void updateWindow() {
        LogUtil.d(TAG, "updateWindow", new Object[0]);
    }
}
