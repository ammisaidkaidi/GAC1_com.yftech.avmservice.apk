package com.yftech.avmservice.windowutil;

import android.content.Context;
import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.yftech.avmservice.R;
import com.yftech.avmservice.avm.AvmControl;
import com.yftech.avmservice.common.CameraDataDef;
import com.yftech.avmservice.common.IRadarControl;
import com.yftech.avmservice.constant.Constant;
import com.yftech.avmservice.util.LogUtil;
import com.yftech.avmservice.util.SoundPoolPlayer;

/* JADX INFO: loaded from: classes.dex */
public class RadarWindow extends BaseWindow implements IRadarControl.IRadarListener {
    protected static final String REVERSING_RADAR_ALARM_TONE_STATE = "reversing_radar_alarm_tone_state";
    protected static final int REVERSING_RADAR_ALARM_TONE_STATE_CLOSE = 0;
    protected static final int REVERSING_RADAR_ALARM_TONE_STATE_OPEN = 1;
    private static final String TAG = "RadarWindow";
    Runnable errRunnable;
    Runnable errSoundRunnable;
    private String hintText;
    protected ImageView mCarView;
    ContentObserver mContentObserver;
    private Context mContext;
    private boolean mFrontRadarErr;
    private Handler mHandler;
    protected TextView mHintView;
    private boolean mIsAlreadyPlayRadarSound;
    private boolean mIsRadarProbeErr;
    private boolean mIsRadarSoundTimerRun;
    private boolean mIsRadarSystemErr;
    private boolean mIsRadarTimerRun;
    private boolean mIsRearRadarLevel1;
    private int mPAS_WarnTone;
    protected ImageView mRadarAlarmView;
    private IRadarControl mRadarControl;
    protected ImageView mRadarFrontLeftView;
    protected ImageView mRadarFrontMiddleLeftView;
    protected ImageView mRadarFrontMiddleRightView;
    protected ImageView mRadarFrontRightView;
    private CameraDataDef.RadarInfo mRadarInfo;
    protected ImageView mRadarRearLeftView;
    protected ImageView mRadarRearMiddleLeftView;
    protected ImageView mRadarRearMiddleRightView;
    protected ImageView mRadarRearRightView;
    protected int mRadarToneState;
    private boolean mRearRadarErr;
    private SoundPoolPlayer mSoundPoolPlayer;
    protected ImageView mView;

    public RadarWindow(Context context) {
        super(context);
        this.mContext = null;
        this.mFrontRadarErr = false;
        this.mRearRadarErr = false;
        this.mIsRadarSystemErr = false;
        this.mIsRadarProbeErr = false;
        this.mIsRadarTimerRun = false;
        this.mIsRadarSoundTimerRun = false;
        this.mIsAlreadyPlayRadarSound = false;
        this.mRadarInfo = new CameraDataDef.RadarInfo();
        this.mPAS_WarnTone = 0;
        this.hintText = new String();
        this.mHandler = new Handler();
        this.mSoundPoolPlayer = null;
        this.mRadarToneState = 1;
        this.mContentObserver = new ContentObserver(this.mHandler) { // from class: com.yftech.avmservice.windowutil.RadarWindow.1
            @Override // android.database.ContentObserver
            public void onChange(boolean z, Uri uri) {
                if (uri.toString().contains(RadarWindow.REVERSING_RADAR_ALARM_TONE_STATE)) {
                    int radarToneState = RadarWindow.this.getRadarToneState();
                    LogUtil.d(RadarWindow.TAG, "radar tone Change,new state: " + radarToneState, new Object[0]);
                    if (RadarWindow.this.mRadarToneState != radarToneState) {
                        RadarWindow.this.mRadarToneState = radarToneState;
                        if (RadarWindow.this.mRadarToneState == 1) {
                            RadarWindow.this.mRadarAlarmView.setImageResource(R.mipmap.autopark_btn_radar_sel);
                            RadarWindow.this.updateRadarSound(false);
                        } else {
                            RadarWindow.this.mRadarAlarmView.setImageResource(R.mipmap.autopark_btn_radar_nor);
                            RadarWindow.this.updateRadarSound(false);
                        }
                    }
                }
            }
        };
        this.errRunnable = new Runnable() { // from class: com.yftech.avmservice.windowutil.RadarWindow.2
            boolean isSystemErr = false;
            boolean isPorbeErr = false;

            @Override // java.lang.Runnable
            public void run() {
                LogUtil.d(RadarWindow.TAG, " blink runnable", new Object[0]);
                if (RadarWindow.this.mIsRadarSystemErr) {
                    RadarWindow.this.blinkRadarSystemErr(this.isSystemErr);
                    this.isSystemErr = !this.isSystemErr;
                    RadarWindow.this.mHandler.postDelayed(RadarWindow.this.errRunnable, 1000L);
                } else {
                    if (!RadarWindow.this.mIsRadarProbeErr) {
                        RadarWindow.this.mIsRadarTimerRun = false;
                        return;
                    }
                    RadarWindow.this.blinkRadarPorbeErr(this.isPorbeErr);
                    this.isPorbeErr = !this.isPorbeErr;
                    RadarWindow.this.mHandler.postDelayed(RadarWindow.this.errRunnable, 1000L);
                }
            }
        };
        this.errSoundRunnable = new Runnable() { // from class: com.yftech.avmservice.windowutil.RadarWindow.3
            @Override // java.lang.Runnable
            public void run() {
                LogUtil.d(RadarWindow.TAG, " stop err sound runnable", new Object[0]);
                RadarWindow.this.mSoundPoolPlayer.stopAllWarnTone();
                RadarWindow.this.mIsRadarSoundTimerRun = false;
                RadarWindow.this.updateRadarSound(true);
            }
        };
        this.mIsRearRadarLevel1 = false;
        this.mContext = context;
        this.mRadarControl = AvmControl.getInstance().getRadarControl();
        this.mRadarControl.setRadarListener(this);
        this.mSoundPoolPlayer = new SoundPoolPlayer(context);
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

    private void updataFrontRadar(CameraDataDef.RadarInfo radarInfo, boolean z) {
        if (this.mRadarInfo.leftFrontSensorFaultSts != radarInfo.leftFrontSensorFaultSts || z) {
            this.mRadarInfo.leftFrontSensorFaultSts = radarInfo.leftFrontSensorFaultSts;
            if (this.mRadarInfo.leftFrontSensorFaultSts == 1) {
                this.mRadarFrontLeftView.setImageResource(R.mipmap.autopark1_pic_redup_alert_11);
            } else {
                z = true;
            }
        }
        if (this.mRadarInfo.leftFrontSensorFaultSts != 1 && (this.mRadarInfo.leftFrontDis != radarInfo.leftFrontDis || z)) {
            this.mRadarInfo.leftFrontDis = radarInfo.leftFrontDis;
            switch (radarInfo.leftFrontDis) {
                case 0:
                    this.mRadarFrontLeftView.setImageResource(R.mipmap.h_radar_upleft1_bg);
                    break;
                case 1:
                    this.mRadarFrontLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_upleft1_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_redup_11)}));
                    break;
                case 2:
                    this.mRadarFrontLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_upleft1_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_redup_21)}));
                    break;
            }
        }
        if (this.mRadarInfo.leftCenterFrontDis != radarInfo.leftCenterFrontDis || z) {
            this.mRadarInfo.leftCenterFrontDis = radarInfo.leftCenterFrontDis;
            byte b = radarInfo.leftCenterFrontDis;
        }
        if (this.mRadarInfo.rightCenterFrontDis != radarInfo.rightCenterFrontDis || z) {
            this.mRadarInfo.rightCenterFrontDis = radarInfo.rightCenterFrontDis;
            byte b2 = radarInfo.rightCenterFrontDis;
        }
        if (this.mRadarInfo.rightFrontSensorFaultSts != radarInfo.rightFrontSensorFaultSts || z) {
            this.mRadarInfo.rightFrontSensorFaultSts = radarInfo.rightFrontSensorFaultSts;
            if (this.mRadarInfo.rightFrontSensorFaultSts == 1) {
                this.mRadarFrontRightView.setImageResource(R.mipmap.autopark1_pic_redup_alert_12);
            } else {
                z = true;
            }
        }
        if (this.mRadarInfo.rightFrontSensorFaultSts != 1) {
            if (this.mRadarInfo.rightFrontDis != radarInfo.rightFrontDis || z) {
                this.mRadarInfo.rightFrontDis = radarInfo.rightFrontDis;
                switch (radarInfo.rightFrontDis) {
                    case 0:
                        this.mRadarFrontRightView.setImageResource(R.mipmap.h_radar_upright2_bg);
                        break;
                    case 1:
                        this.mRadarFrontRightView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_upright2_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_redup_12)}));
                        break;
                    case 2:
                        this.mRadarFrontRightView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_upright2_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_redup_22)}));
                        break;
                }
            }
        }
    }

    private void updataRadar3Err1(CameraDataDef.RadarInfo radarInfo) {
        if (!(this.mAvmControl.getRadarType() == 3 && (radarInfo.leftFrontSensorFaultSts == 1 || radarInfo.rightFrontSensorFaultSts == 1)) && radarInfo.leftCenterBackSensorFaultSts != 1 && radarInfo.rightBackSensorFaultSts != 1 && radarInfo.leftBackSensorFaultSts != 1) {
            this.mHintView.setVisibility(4);
            this.hintText = "";
            this.mIsRadarProbeErr = false;
            return;
        }
        this.hintText = "";
        if (this.mAvmControl.getRadarType() == 3) {
            if (radarInfo.leftFrontSensorFaultSts == 1) {
                this.hintText = this.mContext.getResources().getString(R.string.radar_front_left);
            }
            if (radarInfo.rightFrontSensorFaultSts == 1) {
                this.hintText += this.mContext.getResources().getString(R.string.radar_front_right);
            }
        }
        if (radarInfo.leftBackSensorFaultSts == 1) {
            this.hintText += this.mContext.getResources().getString(R.string.radar_rear_left);
        }
        if (radarInfo.leftCenterBackSensorFaultSts == 1) {
            this.hintText += this.mContext.getResources().getString(R.string.radar_rear_left_mid);
        }
        if (radarInfo.rightBackSensorFaultSts == 1) {
            this.hintText += this.mContext.getResources().getString(R.string.radar_rear_right);
        }
        this.hintText += this.mContext.getResources().getString(R.string.radar_system_err);
        this.mHintView.setText(this.hintText);
        this.mHintView.setVisibility(0);
        this.mIsRadarProbeErr = true;
    }

    private void updataRadar4Err1(CameraDataDef.RadarInfo radarInfo) {
        if (!(this.mAvmControl.getRadarType() == 4 && (radarInfo.leftFrontSensorFaultSts == 1 || radarInfo.rightFrontSensorFaultSts == 1)) && radarInfo.rightCenterBackSensorFaultSts != 1 && radarInfo.leftCenterBackSensorFaultSts != 1 && radarInfo.rightBackSensorFaultSts != 1 && radarInfo.leftBackSensorFaultSts != 1) {
            this.mHintView.setVisibility(4);
            this.hintText = "";
            this.mIsRadarProbeErr = false;
            return;
        }
        this.hintText = "";
        if (this.mAvmControl.getRadarType() == 4) {
            if (radarInfo.leftFrontSensorFaultSts == 1) {
                this.hintText = this.mContext.getResources().getString(R.string.radar_front_left);
            }
            if (radarInfo.rightFrontSensorFaultSts == 1) {
                this.hintText += this.mContext.getResources().getString(R.string.radar_front_right);
            }
        }
        if (radarInfo.leftBackSensorFaultSts == 1) {
            this.hintText += this.mContext.getResources().getString(R.string.radar_rear_left);
        }
        if (radarInfo.leftCenterBackSensorFaultSts == 1) {
            this.hintText += this.mContext.getResources().getString(R.string.radar_rear_left_mid);
        }
        if (radarInfo.rightCenterBackSensorFaultSts == 1) {
            this.hintText += this.mContext.getResources().getString(R.string.radar_rear_right_mid);
        }
        if (radarInfo.rightBackSensorFaultSts == 1) {
            this.hintText += this.mContext.getResources().getString(R.string.radar_rear_right);
        }
        this.hintText += this.mContext.getResources().getString(R.string.radar_system_err);
        this.mHintView.setText(this.hintText);
        this.mHintView.setVisibility(0);
        this.mIsRadarProbeErr = true;
    }

    private void updataRadarErr(CameraDataDef.RadarInfo radarInfo) {
        boolean zIsFrontRadarErr = this.mRadarControl.isFrontRadarErr();
        boolean zIsRearRadarErr = this.mRadarControl.isRearRadarErr();
        boolean z = false;
        if (zIsFrontRadarErr || zIsRearRadarErr) {
            this.mHintView.setVisibility(0);
        } else {
            this.mHintView.setVisibility(4);
        }
        if (this.mFrontRadarErr != zIsFrontRadarErr) {
            this.mFrontRadarErr = zIsFrontRadarErr;
            z = true;
        }
        if (this.mRearRadarErr != zIsRearRadarErr) {
            this.mRearRadarErr = zIsRearRadarErr;
            z = true;
        }
        if (z) {
            if (this.mAvmControl.getRadarType() == 2) {
                if (zIsRearRadarErr) {
                    this.mHintView.setText(R.string.avm_radar_err);
                    return;
                } else {
                    this.mHintView.setText(R.string.avm_attention);
                    return;
                }
            }
            if (this.mAvmControl.getRadarType() == 4) {
                if (zIsFrontRadarErr && zIsRearRadarErr) {
                    this.mHintView.setText(R.string.avm_radar_err);
                    return;
                }
                if (zIsFrontRadarErr) {
                    this.mHintView.setText(R.string.avm_front_radar_err);
                    return;
                } else if (zIsRearRadarErr) {
                    this.mHintView.setText(R.string.avm_rear_radar_err);
                    return;
                } else {
                    this.mHintView.setText(R.string.avm_attention);
                    return;
                }
            }
            if (this.mAvmControl.getRadarType() != 5) {
                this.mHintView.setText(R.string.avm_attention);
                return;
            }
            if (zIsFrontRadarErr && zIsRearRadarErr) {
                this.mHintView.setText(R.string.avm_radar_err);
                return;
            }
            if (zIsFrontRadarErr) {
                this.mHintView.setText(R.string.avm_front_radar_err);
            } else if (zIsRearRadarErr) {
                this.mHintView.setText(R.string.avm_rear_radar_err);
            } else {
                this.mHintView.setText(R.string.avm_attention);
            }
        }
    }

    private void updataRadarErr1(CameraDataDef.RadarInfo radarInfo) {
        if (this.mAvmControl.getRadarType() == 1 || this.mAvmControl.getRadarType() == 3) {
            updataRadar3Err1(radarInfo);
        } else {
            updataRadar4Err1(radarInfo);
        }
    }

    private void updataRadarSystemErr(boolean z, boolean z2) {
        if (this.mIsRadarSystemErr != z || z2) {
            this.mIsRadarSystemErr = z;
            if (!z) {
                this.mCarView.setImageResource(R.mipmap.autopark_pic_car);
                this.mHintView.setVisibility(4);
                return;
            }
            Drawable[] drawableArr = new Drawable[2];
            if (AvmControl.getInstance().getCarType() == 2) {
                drawableArr[0] = this.mContext.getDrawable(R.mipmap.autopark_pic_car_a88);
                drawableArr[1] = this.mContext.getDrawable(R.mipmap.autopark_pic_warningcar_a88);
            } else {
                drawableArr[0] = this.mContext.getDrawable(R.mipmap.autopark_pic_car);
                drawableArr[1] = this.mContext.getDrawable(R.mipmap.autopark_pic_warningcar);
            }
            this.mCarView.setImageDrawable(new LayerDrawable(drawableArr));
            this.mHintView.setVisibility(0);
            this.mHintView.setText(R.string.radar_system_err);
        }
    }

    private void updataRear3Radar(CameraDataDef.RadarInfo radarInfo, boolean z) {
        if (this.mRadarInfo.leftBackSensorFaultSts != radarInfo.leftBackSensorFaultSts || z) {
            this.mRadarInfo.leftBackSensorFaultSts = radarInfo.leftBackSensorFaultSts;
            if (this.mRadarInfo.leftBackSensorFaultSts == 1) {
                this.mRadarRearLeftView.setImageResource(R.mipmap.autopark_pic_reddown_alert_1);
            } else {
                z = true;
            }
        }
        if (this.mRadarInfo.leftBackSensorFaultSts != 1 && (this.mRadarInfo.leftBackDis != radarInfo.leftBackDis || z)) {
            this.mRadarInfo.leftBackDis = radarInfo.leftBackDis;
            switch (radarInfo.leftBackDis) {
                case 0:
                    this.mRadarRearLeftView.setImageResource(R.mipmap.h_radar_downleft1_bg);
                    break;
                case 1:
                    this.mRadarRearLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downleft1_bg), this.mContext.getDrawable(R.mipmap.autopark_pic_reddown_11)}));
                    break;
                case 2:
                    this.mRadarRearLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downleft1_bg), this.mContext.getDrawable(R.mipmap.autopark_pic_reddown_21)}));
                    break;
                case 3:
                    this.mRadarRearLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downleft1_bg), this.mContext.getDrawable(R.mipmap.autopark_pic_reddown_31)}));
                    break;
                case 4:
                    this.mRadarRearLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downleft1_bg), this.mContext.getDrawable(R.mipmap.autopark_pic_reddown_41)}));
                    break;
            }
        }
        if (this.mRadarInfo.leftCenterBackSensorFaultSts != radarInfo.leftCenterBackSensorFaultSts || z) {
            this.mRadarInfo.leftCenterBackSensorFaultSts = radarInfo.leftCenterBackSensorFaultSts;
            if (this.mRadarInfo.leftCenterBackSensorFaultSts == 1) {
                this.mRadarRearMiddleLeftView.setImageResource(R.mipmap.autopark_pic_reddown_alert_2);
            } else {
                z = true;
            }
        }
        if (this.mRadarInfo.leftCenterBackSensorFaultSts != 1 && (this.mRadarInfo.leftCenterBackDis != radarInfo.leftCenterBackDis || z)) {
            this.mRadarInfo.leftCenterBackDis = radarInfo.leftCenterBackDis;
            switch (radarInfo.leftCenterBackDis) {
                case 0:
                    this.mRadarRearMiddleLeftView.setImageResource(R.mipmap.h_radar_downleft2_bg);
                    break;
                case 1:
                    this.mRadarRearMiddleLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downleft2_bg), this.mContext.getDrawable(R.mipmap.autopark_pic_reddown_12)}));
                    break;
                case 2:
                    this.mRadarRearMiddleLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downleft2_bg), this.mContext.getDrawable(R.mipmap.autopark_pic_reddown_22)}));
                    break;
                case 3:
                    this.mRadarRearMiddleLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downleft2_bg), this.mContext.getDrawable(R.mipmap.autopark_pic_reddown_32)}));
                    break;
                case 4:
                    this.mRadarRearMiddleLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downleft2_bg), this.mContext.getDrawable(R.mipmap.autopark_pic_reddown_42)}));
                    break;
            }
        }
        if (this.mRadarInfo.rightCenterBackSensorFaultSts != radarInfo.rightCenterBackSensorFaultSts || z) {
            this.mRadarInfo.rightCenterBackSensorFaultSts = radarInfo.rightCenterBackSensorFaultSts;
            if (this.mRadarInfo.rightCenterBackSensorFaultSts == 1) {
                this.mRadarRearMiddleRightView.setImageResource(R.mipmap.autopark1_pic_reddown_alert_13);
            } else {
                z = true;
            }
        }
        if (this.mRadarInfo.rightCenterBackSensorFaultSts != 1 && (this.mRadarInfo.rightCenterBackDis != radarInfo.rightCenterBackDis || z)) {
            this.mRadarInfo.rightCenterBackDis = radarInfo.rightCenterBackDis;
            if (radarInfo.rightCenterBackDis == 0) {
                this.mRadarRearMiddleRightView.setImageResource(R.mipmap.h_radar_downright1_bg);
            }
        }
        if (this.mRadarInfo.rightBackSensorFaultSts != radarInfo.rightBackSensorFaultSts || z) {
            this.mRadarInfo.rightBackSensorFaultSts = radarInfo.rightBackSensorFaultSts;
            if (this.mRadarInfo.rightBackSensorFaultSts == 1) {
                this.mRadarRearRightView.setImageResource(R.mipmap.autopark_pic_reddown_alert_3);
            } else {
                z = true;
            }
        }
        if (this.mRadarInfo.rightBackSensorFaultSts != 1) {
            if (this.mRadarInfo.rightBackDis != radarInfo.rightBackDis || z) {
                this.mRadarInfo.rightBackDis = radarInfo.rightBackDis;
                switch (radarInfo.rightBackDis) {
                    case 0:
                        this.mRadarRearRightView.setImageResource(R.mipmap.h_radar_downright2_bg);
                        break;
                    case 1:
                        this.mRadarRearRightView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downright2_bg), this.mContext.getDrawable(R.mipmap.autopark_pic_reddown_13)}));
                        break;
                    case 2:
                        this.mRadarRearRightView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downright2_bg), this.mContext.getDrawable(R.mipmap.autopark_pic_reddown_23)}));
                        break;
                    case 3:
                        this.mRadarRearRightView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downright2_bg), this.mContext.getDrawable(R.mipmap.autopark_pic_reddown_33)}));
                        break;
                    case 4:
                        this.mRadarRearRightView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downright2_bg), this.mContext.getDrawable(R.mipmap.autopark_pic_reddown_43)}));
                        break;
                }
            }
        }
    }

    private void updataRear4Radar(CameraDataDef.RadarInfo radarInfo, boolean z) {
        if (this.mRadarInfo.leftBackSensorFaultSts != radarInfo.leftBackSensorFaultSts || z) {
            this.mRadarInfo.leftBackSensorFaultSts = radarInfo.leftBackSensorFaultSts;
            if (this.mRadarInfo.leftBackSensorFaultSts == 1) {
                this.mRadarRearLeftView.setImageResource(R.mipmap.autopark1_pic_reddown_alert_11);
            } else {
                z = true;
            }
        }
        if (this.mRadarInfo.leftBackSensorFaultSts != 1 && (this.mRadarInfo.leftBackDis != radarInfo.leftBackDis || z)) {
            this.mRadarInfo.leftBackDis = radarInfo.leftBackDis;
            switch (radarInfo.leftBackDis) {
                case 0:
                    this.mRadarRearLeftView.setImageResource(R.mipmap.h_radar_downleft1_bg);
                    break;
                case 1:
                    this.mRadarRearLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downleft1_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_reddown_11)}));
                    break;
                case 2:
                    this.mRadarRearLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downleft1_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_reddown_21)}));
                    break;
                default:
                    this.mRadarRearLeftView.setImageResource(R.mipmap.h_radar_downleft1_bg);
                    break;
            }
        }
        if (this.mRadarInfo.leftCenterBackSensorFaultSts != radarInfo.leftCenterBackSensorFaultSts || z) {
            this.mRadarInfo.leftCenterBackSensorFaultSts = radarInfo.leftCenterBackSensorFaultSts;
            if (this.mRadarInfo.leftCenterBackSensorFaultSts == 1) {
                this.mRadarRearMiddleLeftView.setImageResource(R.mipmap.autopark1_pic_reddown_alert_12);
            } else {
                z = true;
            }
        }
        if (this.mRadarInfo.leftCenterBackSensorFaultSts != 1 && (this.mRadarInfo.leftCenterBackDis != radarInfo.leftCenterBackDis || z)) {
            this.mRadarInfo.leftCenterBackDis = radarInfo.leftCenterBackDis;
            switch (radarInfo.leftCenterBackDis) {
                case 0:
                    this.mRadarRearMiddleLeftView.setImageResource(R.mipmap.h_radar_downleft2_bg);
                    break;
                case 1:
                    this.mRadarRearMiddleLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downleft2_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_reddown_12)}));
                    break;
                case 2:
                    this.mRadarRearMiddleLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downleft2_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_reddown_22)}));
                    break;
                case 3:
                    this.mRadarRearMiddleLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downleft2_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_reddown_31)}));
                    break;
                case 4:
                    this.mRadarRearMiddleLeftView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downleft2_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_reddown_41)}));
                    break;
            }
        }
        if (this.mRadarInfo.rightCenterBackSensorFaultSts != radarInfo.rightCenterBackSensorFaultSts || z) {
            this.mRadarInfo.rightCenterBackSensorFaultSts = radarInfo.rightCenterBackSensorFaultSts;
            if (this.mRadarInfo.rightCenterBackSensorFaultSts == 1) {
                this.mRadarRearMiddleRightView.setImageResource(R.mipmap.autopark1_pic_reddown_alert_13);
            } else {
                z = true;
            }
        }
        if (this.mRadarInfo.rightCenterBackSensorFaultSts != 1 && (this.mRadarInfo.rightCenterBackDis != radarInfo.rightCenterBackDis || z)) {
            this.mRadarInfo.rightCenterBackDis = radarInfo.rightCenterBackDis;
            switch (radarInfo.rightCenterBackDis) {
                case 0:
                    this.mRadarRearMiddleRightView.setImageResource(R.mipmap.h_radar_downright1_bg);
                    break;
                case 1:
                    this.mRadarRearMiddleRightView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downright1_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_reddown_13)}));
                    break;
                case 2:
                    this.mRadarRearMiddleRightView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downright1_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_reddown_23)}));
                    break;
                case 3:
                    this.mRadarRearMiddleRightView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downright1_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_reddown_32)}));
                    break;
                case 4:
                    this.mRadarRearMiddleRightView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downright1_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_reddown_42)}));
                    break;
            }
        }
        if (this.mRadarInfo.rightBackSensorFaultSts != radarInfo.rightBackSensorFaultSts || z) {
            this.mRadarInfo.rightBackSensorFaultSts = radarInfo.rightBackSensorFaultSts;
            if (this.mRadarInfo.rightBackSensorFaultSts == 1) {
                this.mRadarRearRightView.setImageResource(R.mipmap.autopark1_pic_reddown_alert_14);
            } else {
                z = true;
            }
        }
        if (this.mRadarInfo.rightBackSensorFaultSts != 1) {
            if (this.mRadarInfo.rightBackDis != radarInfo.rightBackDis || z) {
                this.mRadarInfo.rightBackDis = radarInfo.rightBackDis;
                switch (radarInfo.rightBackDis) {
                    case 0:
                        this.mRadarRearRightView.setImageResource(R.mipmap.h_radar_downright2_bg);
                        break;
                    case 1:
                        this.mRadarRearRightView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downright2_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_reddown_14)}));
                        break;
                    case 2:
                        this.mRadarRearRightView.setImageDrawable(new LayerDrawable(new Drawable[]{this.mContext.getDrawable(R.mipmap.h_radar_downright2_bg), this.mContext.getDrawable(R.mipmap.autopark1_pic_reddown_24)}));
                        break;
                    default:
                        this.mRadarRearRightView.setImageResource(R.mipmap.h_radar_downright2_bg);
                        break;
                }
            }
        }
    }

    private void updataRearRadar(CameraDataDef.RadarInfo radarInfo, boolean z) {
        if (this.mAvmControl.getRadarType() == 1 || this.mAvmControl.getRadarType() == 3) {
            updataRear3Radar(radarInfo, z);
        } else {
            updataRear4Radar(radarInfo, z);
        }
    }

    void blinkRadar3PorbeErr(boolean z) {
        if (z) {
            if (this.mAvmControl.getRadarType() == 3) {
                if (this.mRadarInfo.leftFrontSensorFaultSts == 1) {
                    this.mRadarFrontLeftView.setImageResource(R.mipmap.autopark1_pic_redup_alert_11);
                }
                if (this.mRadarInfo.rightFrontSensorFaultSts == 1) {
                    this.mRadarFrontRightView.setImageResource(R.mipmap.autopark1_pic_redup_alert_12);
                }
            }
            if (this.mRadarInfo.leftBackSensorFaultSts == 1) {
                this.mRadarRearLeftView.setImageResource(R.mipmap.autopark_pic_reddown_alert_1);
            }
            if (this.mRadarInfo.leftCenterBackSensorFaultSts == 1) {
                this.mRadarRearMiddleLeftView.setImageResource(R.mipmap.autopark_pic_reddown_alert_2);
            }
            if (this.mRadarInfo.rightCenterBackSensorFaultSts == 1) {
                this.mRadarRearMiddleRightView.setImageResource(R.mipmap.autopark_pic_reddown_alert_2);
            }
            if (this.mRadarInfo.rightBackSensorFaultSts == 1) {
                this.mRadarRearRightView.setImageResource(R.mipmap.autopark_pic_reddown_alert_3);
                return;
            }
            return;
        }
        if (this.mAvmControl.getRadarType() == 3) {
            if (this.mRadarInfo.leftFrontSensorFaultSts == 1) {
                this.mRadarFrontLeftView.setImageDrawable(null);
            }
            if (this.mRadarInfo.rightFrontSensorFaultSts == 1) {
                this.mRadarFrontRightView.setImageDrawable(null);
            }
        }
        if (this.mRadarInfo.leftBackSensorFaultSts == 1) {
            this.mRadarRearLeftView.setImageDrawable(null);
        }
        if (this.mRadarInfo.leftCenterBackSensorFaultSts == 1) {
            this.mRadarRearMiddleLeftView.setImageDrawable(null);
        }
        if (this.mRadarInfo.rightCenterBackSensorFaultSts == 1) {
            this.mRadarRearMiddleRightView.setImageDrawable(null);
        }
        if (this.mRadarInfo.rightBackSensorFaultSts == 1) {
            this.mRadarRearRightView.setImageDrawable(null);
        }
    }

    void blinkRadar4PorbeErr(boolean z) {
        if (z) {
            if (this.mAvmControl.getRadarType() == 4) {
                if (this.mRadarInfo.leftFrontSensorFaultSts == 1) {
                    this.mRadarFrontLeftView.setImageResource(R.mipmap.autopark1_pic_redup_alert_11);
                }
                if (this.mRadarInfo.rightFrontSensorFaultSts == 1) {
                    this.mRadarFrontRightView.setImageResource(R.mipmap.autopark1_pic_redup_alert_12);
                }
            }
            if (this.mRadarInfo.leftBackSensorFaultSts == 1) {
                this.mRadarRearLeftView.setImageResource(R.mipmap.autopark1_pic_reddown_alert_11);
            }
            if (this.mRadarInfo.leftCenterBackSensorFaultSts == 1) {
                this.mRadarRearMiddleLeftView.setImageResource(R.mipmap.autopark1_pic_reddown_alert_12);
            }
            if (this.mRadarInfo.rightCenterBackSensorFaultSts == 1) {
                this.mRadarRearMiddleRightView.setImageResource(R.mipmap.autopark1_pic_reddown_alert_13);
            }
            if (this.mRadarInfo.rightBackSensorFaultSts == 1) {
                this.mRadarRearRightView.setImageResource(R.mipmap.autopark1_pic_reddown_alert_14);
                return;
            }
            return;
        }
        if (this.mAvmControl.getRadarType() == 4) {
            if (this.mRadarInfo.leftFrontSensorFaultSts == 1) {
                this.mRadarFrontLeftView.setImageDrawable(null);
            }
            if (this.mRadarInfo.rightFrontSensorFaultSts == 1) {
                this.mRadarFrontRightView.setImageDrawable(null);
            }
        }
        if (this.mRadarInfo.leftBackSensorFaultSts == 1) {
            this.mRadarRearLeftView.setImageDrawable(null);
        }
        if (this.mRadarInfo.leftCenterBackSensorFaultSts == 1) {
            this.mRadarRearMiddleLeftView.setImageDrawable(null);
        }
        if (this.mRadarInfo.rightCenterBackSensorFaultSts == 1) {
            this.mRadarRearMiddleRightView.setImageDrawable(null);
        }
        if (this.mRadarInfo.rightBackSensorFaultSts == 1) {
            this.mRadarRearRightView.setImageDrawable(null);
        }
    }

    void blinkRadarPorbeErr(boolean z) {
        if (this.mAvmControl.getRadarType() == 1 || this.mAvmControl.getRadarType() == 3) {
            blinkRadar3PorbeErr(z);
        } else {
            blinkRadar4PorbeErr(z);
        }
    }

    void blinkRadarSystemErr(boolean z) {
        if (!z) {
            if (AvmControl.getInstance().getCarType() == 2) {
                this.mCarView.setImageResource(R.mipmap.autopark_pic_car_a88);
                return;
            } else {
                this.mCarView.setImageResource(R.mipmap.autopark_pic_car);
                return;
            }
        }
        Drawable[] drawableArr = new Drawable[2];
        if (AvmControl.getInstance().getCarType() == 2) {
            drawableArr[0] = this.mContext.getDrawable(R.mipmap.autopark_pic_car_a88);
            drawableArr[1] = this.mContext.getDrawable(R.mipmap.autopark_pic_warningcar_a88);
        } else {
            drawableArr[0] = this.mContext.getDrawable(R.mipmap.autopark_pic_car);
            drawableArr[1] = this.mContext.getDrawable(R.mipmap.autopark_pic_warningcar);
        }
        this.mCarView.setImageDrawable(new LayerDrawable(drawableArr));
    }

    public void closeRadarSound() {
        if (this.mIsRadarTimerRun) {
            this.mHandler.removeCallbacks(this.errRunnable);
            this.mIsRadarTimerRun = false;
        }
        stopErrSound();
    }

    @Override // com.yftech.avmservice.windowutil.BaseWindow, com.yftech.avmservice.util.DistributedHandler.HandlerPart
    public boolean dispatchHandleMessage(Message message) {
        LogUtil.d(TAG, "dispatchHandleMessage msg:" + message.what, new Object[0]);
        if (message.what == 210) {
            updataRadar(false);
            updateRadarSound(false);
        }
        return super.dispatchHandleMessage(message);
    }

    int getNewPASWarnTone(int i, int i2) {
        if (i > 0) {
            return i2 > 0 ? Math.min(i2, i) : i;
        }
        return i2;
    }

    int getPasWarnTone() {
        int newPASWarnTone;
        int newPASWarnTone2;
        int newPASWarnTone3;
        CameraDataDef.RadarInfo radarInfo = this.mRadarControl.getRadarInfo();
        if (this.mRadarAlarmView.getVisibility() == 0 && this.mRadarToneState == 1) {
            newPASWarnTone = getNewPASWarnTone(radarInfo.rightFrontDis, getNewPASWarnTone(radarInfo.leftFrontDis, 0));
        } else {
            newPASWarnTone = 0;
        }
        if (this.mAvmControl.getRadarType() == 1 || this.mAvmControl.getRadarType() == 3) {
            newPASWarnTone2 = getNewPASWarnTone(radarInfo.rightBackDis, getNewPASWarnTone(radarInfo.leftCenterBackDis, getNewPASWarnTone(radarInfo.leftBackDis, 0)));
        } else {
            if (AvmControl.getInstance().getCarType() == 2) {
                byte b = radarInfo.leftBackDis;
                byte b2 = radarInfo.rightBackDis;
                if (b >= 3) {
                    b = 0;
                }
                if (b2 >= 3) {
                    b2 = 0;
                }
                newPASWarnTone3 = getNewPASWarnTone(b2, getNewPASWarnTone(b, 0));
            } else {
                newPASWarnTone3 = getNewPASWarnTone(radarInfo.rightBackDis, getNewPASWarnTone(radarInfo.leftBackDis, 0));
            }
            newPASWarnTone2 = getNewPASWarnTone(radarInfo.rightCenterBackDis, getNewPASWarnTone(radarInfo.leftCenterBackDis, newPASWarnTone3));
        }
        LogUtil.d(TAG, "getPasWarnTone frontPASWarnTone:" + newPASWarnTone + ",rearPASWarnTone:" + newPASWarnTone2, new Object[0]);
        if (newPASWarnTone2 == 1) {
            this.mIsRearRadarLevel1 = true;
        } else {
            this.mIsRearRadarLevel1 = false;
        }
        return getNewPASWarnTone(newPASWarnTone2, getNewPASWarnTone(newPASWarnTone, 0));
    }

    public int getRadarToneState() {
        int i = Settings.System.getInt(this.mContext.getContentResolver(), REVERSING_RADAR_ALARM_TONE_STATE, 1);
        LogUtil.d(TAG, "get  radar tone state: " + i, new Object[0]);
        return i;
    }

    public void initRadarView(View view) {
        this.mCarView = (ImageView) view.findViewById(R.id.img_car);
        if (AvmControl.getInstance().getCarType() == 2) {
            this.mCarView.setImageResource(R.mipmap.autopark_pic_car_a88);
        } else {
            this.mCarView.setImageResource(R.mipmap.autopark_pic_car);
        }
        this.mRadarFrontLeftView = (ImageView) view.findViewById(R.id.radar_front_left);
        this.mRadarFrontMiddleLeftView = (ImageView) view.findViewById(R.id.radar_front_middle_left);
        this.mRadarFrontMiddleRightView = (ImageView) view.findViewById(R.id.radar_front_middle_right);
        this.mRadarFrontRightView = (ImageView) view.findViewById(R.id.radar_front_right);
        this.mRadarRearLeftView = (ImageView) view.findViewById(R.id.radar_rear_left);
        this.mRadarRearMiddleLeftView = (ImageView) view.findViewById(R.id.radar_rear_middle_left);
        this.mRadarRearMiddleRightView = (ImageView) view.findViewById(R.id.radar_rear_middle_right);
        this.mRadarRearRightView = (ImageView) view.findViewById(R.id.radar_rear_right);
        updateRadarVisibility();
        this.mRadarFrontLeftView.setImageResource(R.mipmap.h_radar_upleft1_bg);
        this.mRadarFrontRightView.setImageResource(R.mipmap.h_radar_upright2_bg);
        this.mRadarRearLeftView.setImageResource(R.mipmap.h_radar_downleft1_bg);
        this.mRadarRearMiddleLeftView.setImageResource(R.mipmap.h_radar_downleft2_bg);
        this.mRadarRearMiddleRightView.setImageResource(R.mipmap.h_radar_downright1_bg);
        this.mRadarRearRightView.setImageResource(R.mipmap.h_radar_downright2_bg);
    }

    @Override // com.yftech.avmservice.common.IRadarControl.IRadarListener
    public void onRadarInfo(CameraDataDef.RadarInfo radarInfo) {
        LogUtil.d(TAG, "onRadarInfo", new Object[0]);
        this.mAvmControl.getMainHandler().sendEmptyMessage(Constant.HANDLE_UPDATE_RADAR);
    }

    public boolean setRadarTone(int i) {
        boolean zPutInt = Settings.System.putInt(this.mContext.getContentResolver(), REVERSING_RADAR_ALARM_TONE_STATE, i);
        LogUtil.d(TAG, "set radar tone value:" + i + ",ret: " + zPutInt, new Object[0]);
        return zPutInt;
    }

    public void updataRadar(boolean z) {
        if (!isShow() || this.mHintView == null || this.mRadarFrontLeftView == null || this.mRadarFrontMiddleLeftView == null || this.mRadarFrontMiddleRightView == null || this.mRadarFrontRightView == null || this.mRadarRearLeftView == null || this.mRadarRearMiddleLeftView == null || this.mRadarRearMiddleRightView == null || this.mRadarRearRightView == null) {
            return;
        }
        CameraDataDef.RadarInfo radarInfo = this.mRadarControl.getRadarInfo();
        updataRadarSystemErr(radarInfo.PAS_BattVoltErrFlag == 1 || radarInfo.PAS_CtrlModulerrFlag == 1, z);
        if (this.mIsRadarSystemErr) {
            updataFrontRadar(radarInfo, z);
            updataRearRadar(radarInfo, z);
            this.mIsRadarProbeErr = false;
        } else {
            updataFrontRadar(radarInfo, z);
            updataRearRadar(radarInfo, z);
            updataRadarErr1(radarInfo);
        }
        if (this.mIsRadarSystemErr || this.mIsRadarProbeErr) {
            if (!this.mIsRadarTimerRun) {
                this.mHandler.postDelayed(this.errRunnable, 1000L);
                this.mIsRadarTimerRun = true;
            }
        } else if (this.mIsRadarTimerRun) {
            this.mHandler.removeCallbacks(this.errRunnable);
            this.mIsRadarTimerRun = false;
        }
        if (!this.mIsRadarProbeErr) {
            stopErrSound();
            return;
        }
        if (this.mIsAlreadyPlayRadarSound || this.mIsRadarSoundTimerRun) {
            return;
        }
        this.mSoundPoolPlayer.stopAllWarnTone();
        this.mSoundPoolPlayer.playWarnTone(3);
        this.mHandler.postDelayed(this.errSoundRunnable, 3000L);
        this.mIsRadarSoundTimerRun = true;
        this.mIsAlreadyPlayRadarSound = true;
    }

    protected void updateRadarSound(boolean z) {
        CameraDataDef.RadarInfo radarInfo = this.mRadarControl.getRadarInfo();
        if (this.mIsRadarSoundTimerRun) {
        }
        if (this.mRadarInfo.PAS_WarnTone != radarInfo.PAS_WarnTone || z) {
            LogUtil.d(TAG, "mRadarInfo.PAS_WarnTone:" + ((int) this.mRadarInfo.PAS_WarnTone) + ",info.PAS_WarnTone:" + ((int) radarInfo.PAS_WarnTone), new Object[0]);
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

    public void updateRadarVisibility() {
        if (this.mAvmControl.getRadarType() == 1) {
            this.mRadarFrontLeftView.setVisibility(4);
            this.mRadarFrontMiddleLeftView.setVisibility(4);
            this.mRadarFrontMiddleRightView.setVisibility(4);
            this.mRadarFrontRightView.setVisibility(4);
            this.mRadarRearLeftView.setVisibility(0);
            this.mRadarRearMiddleLeftView.setVisibility(0);
            this.mRadarRearMiddleRightView.setVisibility(4);
            this.mRadarRearRightView.setVisibility(0);
            return;
        }
        if (this.mAvmControl.getRadarType() == 2) {
            this.mRadarFrontLeftView.setVisibility(4);
            this.mRadarFrontMiddleLeftView.setVisibility(4);
            this.mRadarFrontMiddleRightView.setVisibility(4);
            this.mRadarFrontRightView.setVisibility(4);
            this.mRadarRearLeftView.setVisibility(0);
            this.mRadarRearMiddleLeftView.setVisibility(0);
            this.mRadarRearMiddleRightView.setVisibility(0);
            this.mRadarRearRightView.setVisibility(0);
            return;
        }
        if (this.mAvmControl.getRadarType() == 3) {
            this.mRadarFrontLeftView.setVisibility(0);
            this.mRadarFrontMiddleLeftView.setVisibility(4);
            this.mRadarFrontMiddleRightView.setVisibility(4);
            this.mRadarFrontRightView.setVisibility(0);
            this.mRadarRearLeftView.setVisibility(0);
            this.mRadarRearMiddleLeftView.setVisibility(0);
            this.mRadarRearMiddleRightView.setVisibility(4);
            this.mRadarRearRightView.setVisibility(0);
            return;
        }
        if (this.mAvmControl.getRadarType() == 4) {
            this.mRadarFrontLeftView.setVisibility(0);
            this.mRadarFrontMiddleLeftView.setVisibility(4);
            this.mRadarFrontMiddleRightView.setVisibility(4);
            this.mRadarFrontRightView.setVisibility(0);
            this.mRadarRearLeftView.setVisibility(0);
            this.mRadarRearMiddleLeftView.setVisibility(0);
            this.mRadarRearMiddleRightView.setVisibility(0);
            this.mRadarRearRightView.setVisibility(0);
            return;
        }
        if (this.mAvmControl.getRadarType() == 5) {
            this.mRadarFrontLeftView.setVisibility(0);
            this.mRadarFrontMiddleLeftView.setVisibility(0);
            this.mRadarFrontMiddleRightView.setVisibility(0);
            this.mRadarFrontRightView.setVisibility(0);
            this.mRadarRearLeftView.setVisibility(0);
            this.mRadarRearMiddleLeftView.setVisibility(0);
            this.mRadarRearMiddleRightView.setVisibility(0);
            this.mRadarRearRightView.setVisibility(0);
            return;
        }
        this.mRadarFrontLeftView.setVisibility(4);
        this.mRadarFrontMiddleLeftView.setVisibility(4);
        this.mRadarFrontMiddleRightView.setVisibility(4);
        this.mRadarFrontRightView.setVisibility(4);
        this.mRadarRearLeftView.setVisibility(4);
        this.mRadarRearMiddleLeftView.setVisibility(4);
        this.mRadarRearMiddleRightView.setVisibility(4);
        this.mRadarRearRightView.setVisibility(4);
    }
}
