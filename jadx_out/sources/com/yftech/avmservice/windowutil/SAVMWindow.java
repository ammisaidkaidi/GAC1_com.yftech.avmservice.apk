package com.yftech.avmservice.windowutil;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yftech.avmservice.R;
import com.yftech.avmservice.avm.AudioFocus;
import com.yftech.avmservice.avm.AvmControl;
import com.yftech.avmservice.common.CameraDataDef;
import com.yftech.avmservice.common.IRadarControl;
import com.yftech.avmservice.common.ISAVMControl;
import com.yftech.avmservice.constant.Constant;
import com.yftech.avmservice.util.APASoundPool;
import com.yftech.avmservice.util.LogUtil;
import com.yftech.avmservice.util.SoundPoolPlayer;

/* JADX INFO: loaded from: classes.dex */
public class SAVMWindow extends BaseWindow implements ISAVMControl.ISAVMControlListener, View.OnClickListener, View.OnTouchListener, IRadarControl.IRadarListener {
    private static final boolean DEBUG = true;
    public static final int SURFACE_VIEW_HIGHT = 720;
    public static final int SURFACE_VIEW_WIDTH = 1920;
    public static final int SURFACE_VIEW_X = 0;
    public static final int SURFACE_VIEW_Y = 0;
    private static final String TAG = "SAVMWindow";
    Runnable errSoundRunnable;
    Runnable hideOsAvmRunnable;
    private Boolean isShown_nosig;
    long last_t;
    private CameraDataDef.APAInfo mAPADrvReq;
    private APASoundPool mAPASoundPool;
    private Context mContext;
    private RelativeLayout mErrLayout;
    private TextView mErrView;
    Handler mHandler;
    private TextView mHintView;
    private boolean mIsAlreadyPlayRadarSound;
    boolean mIsCameraAllInputErr;
    private boolean mIsCameraSystemErr;
    private boolean mIsNeedWaitCarplayShow;
    private boolean mIsRadarSensorErr;
    private boolean mIsRadarSoundTimerRun;
    private View mOverLayView;
    private IRadarControl mRadarControl;
    private CameraDataDef.RadarInfo mRadarInfo;
    private ISAVMControl mSAVMControl;
    private SoundPoolPlayer mSoundPoolPlayer;
    private CameraPreview mSurfaceView;
    private WindowManager mWindowManager;
    long now_t;
    CustomRelativeLayout rootLayout;
    Runnable showSurefaceViewRunnable;
    private SurfaceView surfaceView;

    public SAVMWindow(Context context) {
        super(context);
        this.mSurfaceView = null;
        this.mOverLayView = null;
        this.surfaceView = null;
        this.mWindowManager = null;
        this.mContext = null;
        this.isShown_nosig = false;
        this.mIsCameraAllInputErr = false;
        this.mRadarInfo = new CameraDataDef.RadarInfo();
        this.mSoundPoolPlayer = null;
        this.mAPASoundPool = null;
        this.mAPADrvReq = new CameraDataDef.APAInfo();
        this.mIsAlreadyPlayRadarSound = false;
        this.mIsRadarSoundTimerRun = false;
        this.mIsNeedWaitCarplayShow = false;
        this.mIsRadarSensorErr = false;
        this.now_t = 0L;
        this.last_t = 0L;
        this.mIsCameraSystemErr = true;
        this.mHandler = new Handler();
        this.showSurefaceViewRunnable = new Runnable() { // from class: com.yftech.avmservice.windowutil.SAVMWindow.1
            @Override // java.lang.Runnable
            public void run() {
                LogUtil.d(SAVMWindow.TAG, "show sureface view  runnable", new Object[0]);
                SAVMWindow.this.mSurfaceView.setVisibility(0);
                SAVMWindow.this.mHandler.postDelayed(SAVMWindow.this.hideOsAvmRunnable, 500L);
            }
        };
        this.hideOsAvmRunnable = new Runnable() { // from class: com.yftech.avmservice.windowutil.SAVMWindow.2
            @Override // java.lang.Runnable
            public void run() {
                LogUtil.d(SAVMWindow.TAG, "hide os avm  runnable", new Object[0]);
                SAVMWindow.this.mAvmControl.setAvmMode(3);
            }
        };
        this.errSoundRunnable = new Runnable() { // from class: com.yftech.avmservice.windowutil.SAVMWindow.3
            @Override // java.lang.Runnable
            public void run() {
                LogUtil.d(SAVMWindow.TAG, " stop err sound runnable", new Object[0]);
                SAVMWindow.this.mSoundPoolPlayer.stopAllWarnTone();
                SAVMWindow.this.mIsRadarSoundTimerRun = false;
                SAVMWindow.this.updateRadarSound(true);
            }
        };
        LogUtil.d(TAG, "MainWindow", new Object[0]);
        this.mContext = context;
        this.mRadarControl = AvmControl.getInstance().getSAVMRadarControl();
        this.mRadarControl.setRadarListener(this);
        this.mSoundPoolPlayer = new SoundPoolPlayer(context);
        this.mAPASoundPool = new APASoundPool(context);
        this.mSurfaceView = new CameraPreview(context, this.mAvmControl);
        AvmControl avmControl = this.mAvmControl;
        this.mSAVMControl = AvmControl.getInstance().getSAVMControl();
        this.mSAVMControl.setSAVMControlListener(this);
        this.mWindowManager = (WindowManager) this.mContext.getSystemService("window");
        initView();
    }

    private void stopErrSound() {
        LogUtil.d(TAG, "stopErrSound，mIsRadarSoundTimerRun:" + this.mIsRadarSoundTimerRun, new Object[0]);
        if (this.mIsRadarSoundTimerRun) {
            this.mHandler.removeCallbacks(this.errSoundRunnable);
            this.mSoundPoolPlayer.stopAllWarnTone();
            this.mIsRadarSoundTimerRun = false;
            updateRadarSound(true);
        }
    }

    public void closeRadarSound() {
        stopErrSound();
    }

    @Override // com.yftech.avmservice.windowutil.BaseWindow, com.yftech.avmservice.util.DistributedHandler.HandlerPart
    public boolean dispatchHandleMessage(Message message) {
        LogUtil.d(TAG, "dispatchHandleMessage msg:" + message.what, new Object[0]);
        int i = message.what;
        if (i == 210) {
            if (isShow()) {
                updateErrSound(false);
            }
            updateRadarSound(false);
        } else if (i != 261) {
            if (i == 263) {
                updateAPASound(false);
            }
        } else if (isShow()) {
            if (AvmControl.getInstance().isBackCar()) {
                this.mIsNeedWaitCarplayShow = true;
                AudioFocus.getInstance().requestAvmFocus();
            } else {
                AudioFocus.getInstance().abondAvmFocus();
            }
        }
        return super.dispatchHandleMessage(message);
    }

    public SurfaceView getSurface() {
        return this.mSurfaceView;
    }

    @Override // com.yftech.avmservice.windowutil.BaseWindow
    public void hideWindow() {
        if (isShow() || this.rootLayout.getParent() != null) {
            LogUtil.d(TAG, "hidePopupWindow,mIsNeedWaitCarplayShow:" + this.mIsNeedWaitCarplayShow + "isBackCar:" + AvmControl.getInstance().isBackCar(), new Object[0]);
            if (this.mIsNeedWaitCarplayShow) {
                if (AvmControl.getInstance().isBackCar()) {
                    try {
                        Thread.sleep(50L);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                if (!AvmControl.getInstance().isBackCar()) {
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    long jNoRearElapsedRealtime = AvmControl.getInstance().noRearElapsedRealtime();
                    String str = TAG;
                    StringBuilder sb = new StringBuilder();
                    sb.append("wait for capley show,sleep ms:");
                    long j = jElapsedRealtime - jNoRearElapsedRealtime;
                    sb.append(600 - j);
                    LogUtil.d(str, sb.toString(), new Object[0]);
                    if (j < 500) {
                        try {
                            Thread.sleep(500 - j);
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            }
            this.mIsNeedWaitCarplayShow = false;
            closeRadarSound();
            restoreScreenBackLight();
            AudioFocus.getInstance().abondAvmFocus();
            BroadcastWindow(2, false);
            this.mWindowManager.removeViewImmediate(this.rootLayout);
            super.hideWindow();
        }
    }

    public void initView() {
        this.mOverLayView = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.savm_main, (ViewGroup) null);
        this.mErrLayout = (RelativeLayout) this.mOverLayView.findViewById(R.id.layout_c);
        this.mErrLayout.setVisibility(4);
        this.mErrView = (TextView) this.mOverLayView.findViewById(R.id.txt_err);
        this.rootLayout = new CustomRelativeLayout(this.mContext);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(9);
        layoutParams.addRule(10);
        layoutParams.addRule(14);
        this.rootLayout.setLayoutParams(layoutParams);
        this.rootLayout.setOnTouchListener(this);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(SURFACE_VIEW_WIDTH, 720);
        layoutParams2.addRule(9);
        layoutParams2.addRule(10);
        layoutParams2.setMarginStart(0);
        layoutParams2.topMargin = 0;
        this.mSurfaceView.setLayoutParams(layoutParams2);
        this.mSurfaceView.setFixedSize(1280, 720);
        this.rootLayout.addView(this.mSurfaceView);
        this.rootLayout.addView(this.mOverLayView);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        LogUtil.d(TAG, "onClick:" + view.getId(), new Object[0]);
        view.getId();
    }

    @Override // com.yftech.avmservice.common.IRadarControl.IRadarListener
    public void onRadarInfo(CameraDataDef.RadarInfo radarInfo) {
        LogUtil.d(TAG, "onRadarInfo", new Object[0]);
        this.mAvmControl.getMainHandler().sendEmptyMessage(Constant.HANDLE_UPDATE_RADAR);
    }

    @Override // com.yftech.avmservice.common.ISAVMControl.ISAVMControlListener
    public void onSAvmCameraInputErr(int i) {
        LogUtil.d(TAG, "onSAvmCameraInputErr:" + i, new Object[0]);
        this.mAvmControl.getMainHandler().sendEmptyMessage(Constant.HANDLE_SHOW_CAMERA_INPUT_ERR);
    }

    @Override // com.yftech.avmservice.common.ISAVMControl.ISAVMControlListener
    public void onSAvmEOLTestModeChange(boolean z) {
        LogUtil.d(TAG, "onSAvmEOLTestModeChange:" + z, new Object[0]);
        this.mAvmControl.getMainHandler().sendEmptyMessage(Constant.HANDLE_EOL_TEST_CHANGE);
    }

    @Override // com.yftech.avmservice.common.ISAVMControl.ISAVMControlListener
    public void onSAvmGuideLineChange(int i) {
        LogUtil.d(TAG, "onSAvmGuideLineChange:" + i, new Object[0]);
        this.mAvmControl.getMainHandler().sendEmptyMessage(Constant.HANDLE_GUIDE_LINE_MODE_CHANGE);
    }

    @Override // com.yftech.avmservice.common.ISAVMControl.ISAVMControlListener
    public void onSAvmGuideLineErr(boolean z) {
        LogUtil.d(TAG, "onSAvmGuideLineErr:" + z, new Object[0]);
        this.mAvmControl.getMainHandler().sendEmptyMessage(Constant.HANDLE_OVERLAY_OP_ERR);
    }

    @Override // com.yftech.avmservice.common.ISAVMControl.ISAVMControlListener
    public void onSAvmRadarErr(boolean z) {
    }

    @Override // com.yftech.avmservice.common.ISAVMControl.ISAVMControlListener
    public void onSAvmSingleViewChange(int i) {
        LogUtil.d(TAG, "onSAvmSingleViewChange:" + i, new Object[0]);
        this.mAvmControl.getMainHandler().sendEmptyMessage(Constant.HANDLE_SINGEL_VIEW_CHANGE);
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
                sendTouchToAVM(motionEvent.getX(), motionEvent.getY(), 1);
                break;
            case 1:
                sendTouchToAVM(motionEvent.getX(), motionEvent.getY(), 2);
                break;
            case 2:
                sendTouchToAVM(motionEvent.getX(), motionEvent.getY(), 3);
                break;
        }
        return false;
    }

    public boolean sendTouchToAVM(float f, float f2, int i) {
        this.mSAVMControl.sendTouchToAVM(f, f2, i);
        return false;
    }

    public WindowManager.LayoutParams setUpWindowPara(WindowManager.LayoutParams layoutParams) {
        layoutParams.type = 2052;
        layoutParams.flags |= 808;
        layoutParams.format = -3;
        layoutParams.width = -1;
        layoutParams.height = -1;
        layoutParams.gravity = 17;
        return layoutParams;
    }

    @Override // com.yftech.avmservice.windowutil.BaseWindow
    public boolean setWindowVisibility(boolean z) {
        LogUtil.d(TAG, "setWindowVisibility" + z, new Object[0]);
        if (this.rootLayout != null) {
            if (z) {
                this.rootLayout.setScaleX(1.0f);
                this.rootLayout.setScaleY(1.0f);
                updateErrSound(true);
                updateAPASound(true);
            } else {
                this.rootLayout.setScaleX(0.0f);
                this.rootLayout.setScaleY(0.0f);
            }
        }
        return true;
    }

    @Override // com.yftech.avmservice.windowutil.BaseWindow
    public void showWindow() {
        if (isShow()) {
            LogUtil.d(TAG, "return cause already shown", new Object[0]);
            return;
        }
        super.showWindow();
        LogUtil.d(TAG, "showPopupWindow", new Object[0]);
        WindowManager.LayoutParams upWindowPara = setUpWindowPara(new WindowManager.LayoutParams());
        updateWindow();
        if (AvmControl.getInstance().isBackCar()) {
            AudioFocus.getInstance().requestAvmFocus();
            this.mIsNeedWaitCarplayShow = true;
        }
        openScreenBackLight();
        BroadcastWindow(2, true);
        this.mWindowManager.addView(this.rootLayout, upWindowPara);
        setWindowVisibility(false);
        LogUtil.d(TAG, "add view", new Object[0]);
    }

    protected void updateAPASound(boolean z) {
        if (isShow()) {
            CameraDataDef.APAInfo aPADrvReq = this.mAvmControl.getAPADrvReq();
            LogUtil.d(TAG, "updateAPASound APA_VoiceReminder:(" + this.mAPADrvReq.APA_VoiceReminder + "," + aPADrvReq.APA_VoiceReminder + ")", new Object[0]);
            if (this.mAPADrvReq.APA_VoiceReminder != aPADrvReq.APA_VoiceReminder || z) {
                this.mAPADrvReq.APA_VoiceReminder = aPADrvReq.APA_VoiceReminder;
                if (this.mAPADrvReq.APA_VoiceReminder == 1) {
                    this.mAPASoundPool.playReverseEffectAPA1();
                } else if (this.mAPADrvReq.APA_VoiceReminder == 2) {
                    this.mAPASoundPool.playReverseEffectAPA2();
                }
            }
        }
    }

    protected void updateErrSound(boolean z) {
        CameraDataDef.RadarInfo radarInfo = this.mRadarControl.getRadarInfo();
        boolean z2 = radarInfo.leftBackSensorFaultSts == 1 || radarInfo.leftCenterBackSensorFaultSts == 1 || radarInfo.rightCenterBackSensorFaultSts == 1 || radarInfo.rightBackSensorFaultSts == 1;
        LogUtil.d(TAG, "updateErrSound mIsRadarSensorErr:" + this.mIsRadarSensorErr + ",isRadarSensorErr:" + z2, new Object[0]);
        if (this.mIsRadarSensorErr != z2 || z) {
            this.mIsRadarSensorErr = z2;
            if (!this.mIsRadarSensorErr) {
                stopErrSound();
                return;
            }
            if (this.mIsAlreadyPlayRadarSound) {
                return;
            }
            this.mSoundPoolPlayer.stopAllWarnTone();
            this.mSoundPoolPlayer.playWarnTone(3);
            this.mHandler.postDelayed(this.errSoundRunnable, 3000L);
            this.mIsAlreadyPlayRadarSound = true;
            this.mIsRadarSoundTimerRun = true;
        }
    }

    protected void updateRadarSound(boolean z) {
        CameraDataDef.RadarInfo radarInfo = this.mRadarControl.getRadarInfo();
        if (this.mIsRadarSoundTimerRun) {
        }
        if (this.mRadarInfo.PAS_WarnTone != radarInfo.PAS_WarnTone || z) {
            this.mRadarInfo.PAS_WarnTone = radarInfo.PAS_WarnTone;
            switch (this.mRadarInfo.PAS_WarnTone) {
                case 0:
                case 5:
                    this.mSoundPoolPlayer.stopAllWarnTone();
                    break;
                case 1:
                    this.mSoundPoolPlayer.stopAllWarnTone();
                    this.mSoundPoolPlayer.playWarnTone(4);
                    break;
                case 2:
                    this.mSoundPoolPlayer.stopAllWarnTone();
                    this.mSoundPoolPlayer.playWarnTone(2);
                    break;
                case 3:
                    this.mSoundPoolPlayer.stopAllWarnTone();
                    this.mSoundPoolPlayer.playWarnTone(1);
                    break;
                case 4:
                    this.mSoundPoolPlayer.stopAllWarnTone();
                    break;
                default:
                    this.mSoundPoolPlayer.stopAllWarnTone();
                    break;
            }
        }
    }

    @Override // com.yftech.avmservice.windowutil.BaseWindow
    public void updateWindow() {
        if (isShow()) {
            if (this.mAvmControl.isAvmSignalErr()) {
                LogUtil.d(TAG, "updateWindow no Signal Err ", new Object[0]);
                this.mErrView.setText(R.string.avm_no_signal);
                this.mErrLayout.setVisibility(0);
                this.mIsCameraSystemErr = true;
            } else {
                LogUtil.d(TAG, "updateWindow no Err ", new Object[0]);
                this.mErrLayout.setVisibility(4);
                this.mIsCameraSystemErr = false;
            }
            LogUtil.d(TAG, "mIsCameraSystemErr:" + this.mIsCameraSystemErr, new Object[0]);
            boolean z = this.mIsCameraSystemErr;
        }
    }
}
