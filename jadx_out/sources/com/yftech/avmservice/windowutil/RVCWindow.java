package com.yftech.avmservice.windowutil;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.v4.text.TextUtilsCompat;
import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yftech.avmservice.R;
import com.yftech.avmservice.avm.AudioFocus;
import com.yftech.avmservice.common.ICameraControl;
import com.yftech.avmservice.util.LogUtil;
import com.yftech.vehicle.internal.adapter.ICarConfig;
import com.yftech.vehicle.sdk.CarConfig;

/* JADX INFO: loaded from: classes.dex */
public class RVCWindow extends RadarWindow implements View.OnClickListener {
    public static final int SURFACE_VIEW_HIGHT = 720;
    public static final int SURFACE_VIEW_WIDTH = 1240;
    public static final int SURFACE_VIEW_X = 680;
    public static final int SURFACE_VIEW_Y = 0;
    private static final String TAG = "RVCWindow";
    Runnable hideOsAvmRunnable;
    private int leftTrackLineIndex;
    int[] leftTrackLineResID;
    private Button mBackView;
    private TextView mBtnAngel;
    WindowManager.LayoutParams mCameraParams;
    private Context mContext;
    RelativeLayout mErrLayout;
    Handler mHandler;
    private boolean mIsCameraSystemErr;
    private ImageView mIvLine;
    private RelativeLayout mLeftLayoutView;
    private View mOverLayView;
    WindowManager.LayoutParams mParams;
    private ImageView mRearMirrorView;
    private ICameraControl mRvcProcotol;
    private CameraPreview mSurfaceView;
    ICarConfig.VehiclePlatform mVehiclePlatform;
    private WindowManager mWindowManager;
    int[] rightTrackLineResID;
    private int rithtTrackLineIndex;
    CustomRelativeLayout rootLayout;
    Runnable showSurefaceViewRunnable;

    public RVCWindow(Context context) {
        super(context);
        this.mContext = null;
        this.mSurfaceView = null;
        this.mOverLayView = null;
        this.mWindowManager = null;
        this.mIvLine = null;
        this.mBackView = null;
        this.mBtnAngel = null;
        this.mIsCameraSystemErr = true;
        this.mParams = null;
        this.leftTrackLineResID = new int[]{R.drawable.center, R.drawable.left_00001, R.drawable.left_00002, R.drawable.left_00003, R.drawable.left_00004, R.drawable.left_00005, R.drawable.left_00006, R.drawable.left_00007, R.drawable.left_00008, R.drawable.left_00009, R.drawable.left_00010, R.drawable.left_00011, R.drawable.left_00012, R.drawable.left_00013, R.drawable.left_00014, R.drawable.left_00015, R.drawable.left_00016, R.drawable.left_00017, R.drawable.left_00018, R.drawable.left_00019, R.drawable.left_00020, R.drawable.left_00021, R.drawable.left_00022, R.drawable.left_00023, R.drawable.left_00024, R.drawable.left_00025, R.drawable.left_00026, R.drawable.left_00027, R.drawable.left_00028, R.drawable.left_00029, R.drawable.left_00030, R.drawable.left_00031, R.drawable.left_00032, R.drawable.left_00033, R.drawable.left_00034, R.drawable.left_00035, R.drawable.left_00036, R.drawable.left_00037, R.drawable.left_00038, R.drawable.left_00039, R.drawable.left_00040, R.drawable.left_00041, R.drawable.left_00042, R.drawable.left_00043, R.drawable.left_00044, R.drawable.left_00045, R.drawable.left_00046, R.drawable.left_00047, R.drawable.left_00048, R.drawable.left_00049, R.drawable.left_00050, R.drawable.left_00051, R.drawable.left_00052, R.drawable.left_00053, R.drawable.left_00054, R.drawable.left_00055, R.drawable.left_00056, R.drawable.left_00057, R.drawable.left_00058, R.drawable.left_00059, R.drawable.left_00060, R.drawable.left_00061, R.drawable.left_00062, R.drawable.left_00063, R.drawable.left_00064, R.drawable.left_00065, R.drawable.left_00066, R.drawable.left_00067, R.drawable.left_00068, R.drawable.left_00069, R.drawable.left_00070, R.drawable.left_00071, R.drawable.left_00072, R.drawable.left_00073, R.drawable.left_00074, R.drawable.left_00075, R.drawable.left_00076, R.drawable.left_00077, R.drawable.left_00078, R.drawable.left_00079, R.drawable.left_00080, R.drawable.left_00081, R.drawable.left_00082, R.drawable.left_00083, R.drawable.left_00084, R.drawable.left_00085, R.drawable.left_00086, R.drawable.left_00087, R.drawable.left_00088, R.drawable.left_00089, R.drawable.left_00090, R.drawable.left_00091, R.drawable.left_00092, R.drawable.left_00093, R.drawable.left_00094, R.drawable.left_00095, R.drawable.left_00096, R.drawable.left_00097, R.drawable.left_00098, R.drawable.left_00099, R.drawable.left_00100, R.drawable.left_00101, R.drawable.left_00102, R.drawable.left_00103, R.drawable.left_00104, R.drawable.left_00105, R.drawable.left_00106, R.drawable.left_00107, R.drawable.left_00108, R.drawable.left_00109, R.drawable.left_00110, R.drawable.left_00111, R.drawable.left_00112, R.drawable.left_00113, R.drawable.left_00114, R.drawable.left_00115, R.drawable.left_00116, R.drawable.left_00117, R.drawable.left_00118, R.drawable.left_00119, R.drawable.left_00120, R.drawable.left_00121, R.drawable.left_00122};
        this.rightTrackLineResID = new int[]{R.drawable.center, R.drawable.right_00001, R.drawable.right_00002, R.drawable.right_00003, R.drawable.right_00004, R.drawable.right_00005, R.drawable.right_00006, R.drawable.right_00007, R.drawable.right_00008, R.drawable.right_00009, R.drawable.right_00010, R.drawable.right_00011, R.drawable.right_00012, R.drawable.right_00013, R.drawable.right_00014, R.drawable.right_00015, R.drawable.right_00016, R.drawable.right_00017, R.drawable.right_00018, R.drawable.right_00019, R.drawable.right_00020, R.drawable.right_00021, R.drawable.right_00022, R.drawable.right_00023, R.drawable.right_00024, R.drawable.right_00025, R.drawable.right_00026, R.drawable.right_00027, R.drawable.right_00028, R.drawable.right_00029, R.drawable.right_00030, R.drawable.right_00031, R.drawable.right_00032, R.drawable.right_00033, R.drawable.right_00034, R.drawable.right_00035, R.drawable.right_00036, R.drawable.right_00037, R.drawable.right_00038, R.drawable.right_00039, R.drawable.right_00040, R.drawable.right_00041, R.drawable.right_00042, R.drawable.right_00043, R.drawable.right_00044, R.drawable.right_00045, R.drawable.right_00046, R.drawable.right_00047, R.drawable.right_00048, R.drawable.right_00049, R.drawable.right_00050, R.drawable.right_00051, R.drawable.right_00052, R.drawable.right_00053, R.drawable.right_00054, R.drawable.right_00055, R.drawable.right_00056, R.drawable.right_00057, R.drawable.right_00058, R.drawable.right_00059, R.drawable.right_00060, R.drawable.right_00061, R.drawable.right_00062, R.drawable.right_00063, R.drawable.right_00064, R.drawable.right_00065, R.drawable.right_00066, R.drawable.right_00067, R.drawable.right_00068, R.drawable.right_00069, R.drawable.right_00070, R.drawable.right_00071, R.drawable.right_00072, R.drawable.right_00073, R.drawable.right_00074, R.drawable.right_00075, R.drawable.right_00076, R.drawable.right_00077, R.drawable.right_00078, R.drawable.right_00079, R.drawable.right_00080, R.drawable.right_00081, R.drawable.right_00082, R.drawable.right_00083, R.drawable.right_00084, R.drawable.right_00085, R.drawable.right_00086, R.drawable.right_00087, R.drawable.right_00088, R.drawable.right_00089, R.drawable.right_00090, R.drawable.right_00091, R.drawable.right_00092, R.drawable.right_00093, R.drawable.right_00094, R.drawable.right_00095, R.drawable.right_00096, R.drawable.right_00097, R.drawable.right_00098, R.drawable.right_00099, R.drawable.right_00100, R.drawable.right_00101, R.drawable.right_00102, R.drawable.right_00103, R.drawable.right_00104, R.drawable.right_00105, R.drawable.right_00106, R.drawable.right_00107, R.drawable.right_00108, R.drawable.right_00109, R.drawable.right_00110, R.drawable.right_00111, R.drawable.right_00112, R.drawable.right_00113, R.drawable.right_00114, R.drawable.right_00115, R.drawable.right_00116, R.drawable.right_00117, R.drawable.right_00118, R.drawable.right_00119, R.drawable.right_00120, R.drawable.right_00121, R.drawable.right_00122, R.drawable.right_00123, R.drawable.right_00124, R.drawable.right_00125, R.drawable.right_00126};
        this.mHandler = new Handler();
        this.showSurefaceViewRunnable = new Runnable() { // from class: com.yftech.avmservice.windowutil.RVCWindow.1
            @Override // java.lang.Runnable
            public void run() {
                LogUtil.d(RVCWindow.TAG, "show sureface view  runnable", new Object[0]);
                RVCWindow.this.mSurfaceView.setVisibility(0);
                RVCWindow.this.mHandler.postDelayed(RVCWindow.this.hideOsAvmRunnable, 500L);
            }
        };
        this.hideOsAvmRunnable = new Runnable() { // from class: com.yftech.avmservice.windowutil.RVCWindow.2
            @Override // java.lang.Runnable
            public void run() {
                LogUtil.d(RVCWindow.TAG, "hide os avm  runnable", new Object[0]);
            }
        };
        this.leftTrackLineIndex = -1;
        this.rithtTrackLineIndex = -1;
        LogUtil.d(TAG, "RVCWindow", new Object[0]);
        this.mContext = context;
        this.mSurfaceView = new CameraPreview(context, this.mAvmControl);
        this.mRvcProcotol = this.mAvmControl.getCameraControl();
        this.mWindowManager = (WindowManager) this.mContext.getSystemService("window");
        setCameraWindowPara();
        initView();
    }

    private void A79TrajectoryLineHandler(boolean z) {
        float steerWheelAngle = this.mRvcProcotol.getSteerWheelAngle();
        LogUtil.d(TAG, "angel:" + steerWheelAngle, new Object[0]);
        boolean z2 = steerWheelAngle > 0.0f;
        float fAbs = Math.abs(steerWheelAngle);
        if (!z2) {
            this.mBtnAngel.setText("left： " + fAbs);
            int length = ((int) fAbs) / 4;
            if (length >= this.leftTrackLineResID.length) {
                length = this.leftTrackLineResID.length - 1;
            }
            if (this.leftTrackLineIndex != length || z) {
                this.mIvLine.setImageResource(this.leftTrackLineResID[length]);
                this.leftTrackLineIndex = length;
                LogUtil.d(TAG, "leftTrackLineIndex:" + length, new Object[0]);
                return;
            }
            return;
        }
        if (z2) {
            this.mBtnAngel.setText("right： " + fAbs);
            int length2 = ((int) fAbs) / 4;
            if (length2 >= this.rightTrackLineResID.length) {
                length2 = this.rightTrackLineResID.length - 1;
            }
            if (this.rithtTrackLineIndex != length2 || z) {
                this.mIvLine.setImageResource(this.rightTrackLineResID[length2]);
                this.rithtTrackLineIndex = length2;
                LogUtil.d(TAG, "rithtTrackLineIndex:" + length2, new Object[0]);
            }
        }
    }

    private boolean isRtl() {
        int layoutDirectionFromLocale = TextUtilsCompat.getLayoutDirectionFromLocale(this.mContext.getResources().getConfiguration().getLocales().get(0));
        LogUtil.d(TAG, "cur layout direction:," + layoutDirectionFromLocale + "rtl:1", new Object[0]);
        return layoutDirectionFromLocale == 1;
    }

    private void trajectoryLineHandler(boolean z) {
        if (this.mIvLine.getVisibility() != 0) {
            return;
        }
        A79TrajectoryLineHandler(z);
    }

    @Override // com.yftech.avmservice.windowutil.RadarWindow, com.yftech.avmservice.windowutil.BaseWindow, com.yftech.avmservice.util.DistributedHandler.HandlerPart
    public boolean dispatchHandleMessage(Message message) {
        if (message.what == 260) {
            trajectoryLineHandler(false);
        }
        return super.dispatchHandleMessage(message);
    }

    public SurfaceView getSurface() {
        return this.mSurfaceView;
    }

    @Override // com.yftech.avmservice.windowutil.BaseWindow
    public void hideWindow() {
        LogUtil.d(TAG, "hideWindow", new Object[0]);
        if (isShow()) {
            try {
                Thread.sleep(500L);
                LogUtil.d(TAG, "hideWindow delay 500ms", new Object[0]);
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
            closeRadarSound();
            AudioFocus.getInstance().abondRvcFocus();
            BroadcastWindow(1, false);
            restoreScreenBackLight();
            this.mWindowManager.removeViewImmediate(this.rootLayout);
            super.hideWindow();
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void initView() {
        this.mOverLayView = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.rvc_main, (ViewGroup) null);
        this.mLeftLayoutView = (RelativeLayout) this.mOverLayView.findViewById(R.id.left_area);
        this.mRearMirrorView = (ImageView) this.mOverLayView.findViewById(R.id.img_rearMirror);
        this.mRearMirrorView.setOnClickListener(this);
        this.mRadarAlarmView = (ImageView) this.mOverLayView.findViewById(R.id.img_radarAlarm);
        this.mRadarAlarmView.setOnClickListener(this);
        this.mBtnAngel = (TextView) this.mOverLayView.findViewById(R.id.txt_angel);
        if (this.mRadarToneState == 1) {
            this.mRadarAlarmView.setImageResource(R.mipmap.autopark_btn_radar_sel);
        } else {
            this.mRadarAlarmView.setImageResource(R.mipmap.autopark_btn_radar_nor);
        }
        this.mVehiclePlatform = CarConfig.getVehiclePlatform();
        LogUtil.d(TAG, "mVehiclePlatform:" + this.mVehiclePlatform, new Object[0]);
        if (this.mVehiclePlatform == ICarConfig.VehiclePlatform.A88) {
            this.mRearMirrorView.setVisibility(8);
        } else {
            this.mRearMirrorView.setVisibility(8);
        }
        if (this.mAvmControl.getRadarType() == 3 || this.mAvmControl.getRadarType() == 4 || this.mAvmControl.getRadarType() == 5) {
            this.mRadarAlarmView.setVisibility(0);
        } else {
            this.mRadarAlarmView.setVisibility(8);
        }
        this.mErrLayout = (RelativeLayout) this.mOverLayView.findViewById(R.id.layout_c);
        this.mErrLayout.setVisibility(4);
        this.mHintView = (TextView) this.mOverLayView.findViewById(R.id.txt_err);
        this.mIvLine = (ImageView) this.mOverLayView.findViewById(R.id.view_track);
        this.mBackView = (Button) this.mOverLayView.findViewById(R.id.img_back);
        this.mBackView.setOnClickListener(this);
        initRadarView(this.mOverLayView);
        this.mIvLine.setVisibility(0);
        this.rootLayout = new CustomRelativeLayout(this.mContext);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(20);
        layoutParams.addRule(10);
        layoutParams.addRule(14);
        this.rootLayout.setLayoutParams(layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(SURFACE_VIEW_WIDTH, 720);
        layoutParams.addRule(20);
        layoutParams.addRule(10);
        layoutParams2.setMarginStart(SURFACE_VIEW_X);
        layoutParams2.topMargin = 0;
        this.mSurfaceView.setLayoutParams(layoutParams2);
        this.rootLayout.addView(this.mSurfaceView);
        this.rootLayout.addView(this.mOverLayView);
        this.rootLayout.setLayoutDirection(isRtl() ? 1 : 0);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        LogUtil.d(TAG, "onClick view id:" + view.getId(), new Object[0]);
        switch (view.getId()) {
            case R.id.img_back /* 2131165283 */:
                hideWindow();
                this.mAvmControl.onCameraReqHide();
                this.mAvmControl.userRequestHideAvm();
                break;
            case R.id.img_radarAlarm /* 2131165285 */:
                if (this.mRadarToneState != 1) {
                    setRadarTone(1);
                } else {
                    setRadarTone(0);
                }
                break;
        }
    }

    public void setCameraWindowPara() {
        if (this.mCameraParams == null) {
            this.mCameraParams = new WindowManager.LayoutParams();
        }
        this.mCameraParams.type = 2054;
        this.mCameraParams.format = -3;
        this.mCameraParams.width = SURFACE_VIEW_WIDTH;
        this.mCameraParams.height = 720;
        this.mCameraParams.x = SURFACE_VIEW_X;
        this.mCameraParams.y = 0;
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

    public WindowManager.LayoutParams setUpWindowQuitPara(WindowManager.LayoutParams layoutParams) {
        layoutParams.type = 2052;
        layoutParams.systemUiVisibility = 8704;
        return layoutParams;
    }

    @Override // com.yftech.avmservice.windowutil.BaseWindow
    public boolean setWindowVisibility(boolean z) {
        LogUtil.d(TAG, "setWindowVisibility" + z, new Object[0]);
        if (this.rootLayout != null) {
            if (z) {
                this.rootLayout.setScaleX(1.0f);
                this.rootLayout.setScaleY(1.0f);
                updataRadar(true);
                updateRadarSound(false);
            } else {
                this.rootLayout.setScaleX(0.0f);
                this.rootLayout.setScaleY(0.0f);
            }
            super.setWindowVisibility(z);
        }
        return true;
    }

    @Override // com.yftech.avmservice.windowutil.BaseWindow
    public void showWindow() {
        LogUtil.d(TAG, "showWindow", new Object[0]);
        if (isShow()) {
            return;
        }
        super.showWindow();
        this.mParams = setUpWindowPara(new WindowManager.LayoutParams());
        updateWindow();
        if (this.mAvmControl.isIOBackCar()) {
            AudioFocus.getInstance().requestRvcFocus();
        }
        openScreenBackLight();
        BroadcastWindow(1, true);
        this.mWindowManager.addView(this.rootLayout, this.mParams);
        setWindowVisibility(false);
        LogUtil.d(TAG, "add view", new Object[0]);
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.yftech.avmservice.windowutil.BaseWindow
    public void updateWindow() {
        LogUtil.d(TAG, "updateWindow", new Object[0]);
        if (isShow()) {
            this.rootLayout.setLayoutDirection(isRtl() ? 1 : 0);
            if (this.mAvmControl.isAvmSignalErr()) {
                LogUtil.d(TAG, "updateWindow signal err", new Object[0]);
                this.mErrLayout.setVisibility(0);
                this.mIsCameraSystemErr = true;
            } else if (this.mAvmControl.isShowLoading()) {
                LogUtil.d(TAG, "updateWindow signal loading", new Object[0]);
                this.mErrLayout.setVisibility(0);
                this.mIsCameraSystemErr = true;
            } else {
                LogUtil.d(TAG, "updateWindow normal", new Object[0]);
                this.mErrLayout.setVisibility(4);
                this.mIsCameraSystemErr = false;
            }
            LogUtil.d(TAG, "mIsCameraSystemErr:" + this.mIsCameraSystemErr, new Object[0]);
            if (!this.mIsCameraSystemErr) {
                trajectoryLineHandler(true);
            }
            updateRadarSound(false);
            updataRadar(false);
            if ((this.mAvmControl.getAvmReqOnOff() & 2) == 2) {
                this.mBackView.setVisibility(0);
            } else {
                this.mBackView.setVisibility(4);
            }
        }
    }
}
