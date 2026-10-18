package com.yftech.avmservice.windowutil;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.yftech.avmservice.R;
import com.yftech.avmservice.avm.AudioFocus;
import com.yftech.avmservice.util.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class RadarShowWindow extends RadarWindow implements View.OnClickListener {
    private static final String TAG = "RadarShowWindow";
    private Button mBackView;
    private Context mContext;
    RelativeLayout mErrLayout;
    Handler mHandler;
    private ImageView mIvLine;
    private View mOverLayView;
    WindowManager.LayoutParams mParams;
    private ImageView mRearMirrorView;
    private WindowManager mWindowManager;
    CustomRelativeLayout rootLayout;

    public RadarShowWindow(Context context) {
        super(context);
        this.mContext = null;
        this.mOverLayView = null;
        this.mWindowManager = null;
        this.mIvLine = null;
        this.mBackView = null;
        this.mParams = null;
        this.mHandler = new Handler();
        LogUtil.d(TAG, "RadarShowWindow", new Object[0]);
        this.mContext = context;
        this.mWindowManager = (WindowManager) this.mContext.getSystemService("window");
        initView();
    }

    @Override // com.yftech.avmservice.windowutil.RadarWindow, com.yftech.avmservice.windowutil.BaseWindow, com.yftech.avmservice.util.DistributedHandler.HandlerPart
    public boolean dispatchHandleMessage(Message message) {
        int i = message.what;
        return super.dispatchHandleMessage(message);
    }

    @Override // com.yftech.avmservice.windowutil.BaseWindow
    public void hideWindow() {
        LogUtil.d(TAG, "hideWindow", new Object[0]);
        if (isShow()) {
            closeRadarSound();
            AudioFocus.getInstance().abondRvcFocus();
            BroadcastWindow(1, false);
            restoreScreenBackLight();
            this.mWindowManager.removeViewImmediate(this.rootLayout);
            super.hideWindow();
        }
    }

    public void initView() {
        this.mOverLayView = ((LayoutInflater) this.mContext.getSystemService("layout_inflater")).inflate(R.layout.radar_main, (ViewGroup) null);
        this.mRearMirrorView = (ImageView) this.mOverLayView.findViewById(R.id.img_rearMirror);
        this.mRearMirrorView.setOnClickListener(this);
        this.mRearMirrorView.setVisibility(4);
        this.mRadarAlarmView = (ImageView) this.mOverLayView.findViewById(R.id.img_radarAlarm);
        this.mRadarAlarmView.setOnClickListener(this);
        if (this.mAvmControl.getRadarType() == 3 || this.mAvmControl.getRadarType() == 4 || this.mAvmControl.getRadarType() == 5) {
            this.mRadarAlarmView.setVisibility(0);
        } else {
            this.mRadarAlarmView.setVisibility(8);
        }
        this.mHintView = (TextView) this.mOverLayView.findViewById(R.id.txt_err);
        this.mBackView = (Button) this.mOverLayView.findViewById(R.id.img_back);
        this.mBackView.setOnClickListener(this);
        initRadarView(this.mOverLayView);
        this.rootLayout = new CustomRelativeLayout(this.mContext);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(9);
        layoutParams.addRule(10);
        layoutParams.addRule(14);
        this.rootLayout.setLayoutParams(layoutParams);
        this.rootLayout.addView(this.mOverLayView);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        LogUtil.d(TAG, "onClick view id:" + view.getId(), new Object[0]);
        if (view.getId() != R.id.img_back) {
            return;
        }
        hideWindow();
        this.mAvmControl.onCameraReqHide();
        this.mAvmControl.userRequestHideAvm();
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
        AudioFocus.getInstance().requestRvcFocus();
        openScreenBackLight();
        BroadcastWindow(1, true);
        this.mWindowManager.addView(this.rootLayout, this.mParams);
        setWindowVisibility(false);
        LogUtil.d(TAG, "add view", new Object[0]);
    }

    @Override // com.yftech.avmservice.windowutil.BaseWindow
    public void updateWindow() {
        LogUtil.d(TAG, "updateWindow", new Object[0]);
        if (isShow()) {
            if ((this.mAvmControl.getAvmReqOnOff() & 2) == 2) {
                this.mBackView.setVisibility(0);
            } else {
                this.mBackView.setVisibility(4);
            }
        }
    }
}
