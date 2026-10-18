package com.yftech.avmservice.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.graphics.Matrix;
import android.graphics.SurfaceTexture;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.os.UserHandle;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.widget.Button;
import com.yftech.avmservice.CameraService;
import com.yftech.avmservice.ICameraService;
import com.yftech.avmservice.ICameraServiceCallback;
import com.yftech.avmservice.PermissionsManager;
import com.yftech.avmservice.R;
import com.yftech.avmservice.Resolution;
import com.yftech.avmservice.util.DVRConst;
import com.yftech.avmservice.util.LogUtil;
import com.yftech.avmservice.util.ToastUtil;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class MIPIDVRActivity extends Activity implements View.OnClickListener, WatermarkSettingsView.WatermarkSettingsListener, RecordSettingsView.RecordSettingsListener {
    private static final int CAMERA_STATUS_MSG = 1;
    private static final int ERROR_STATUS_MSG = 2;
    private static final String TAG = "MIPIDVRActivity";
    private CameraServiceCallback mBackCallback;
    private int mBackDuration;
    private RecordSettingsView mBackRecordSettingsView;
    private Resolution mBackResolution;
    private TextureView mBackTextureView;
    private int mBackTextureViewHeight;
    private int mBackTextureViewWidth;
    private WatermarkSettingsView mBackWatermarkSettingsView;
    private Button mBtnBackMic;
    private Button mBtnBackNormalRecord;
    private Button mBtnBackRecordSettings;
    private Button mBtnBackSnapshot;
    private Button mBtnBackUrgentRecord;
    private Button mBtnBackWatermark;
    private Button mBtnFrontMic;
    private Button mBtnFrontNormalRecord;
    private Button mBtnFrontRecordSettings;
    private Button mBtnFrontSnapshot;
    private Button mBtnFrontUrgentRecord;
    private Button mBtnFrontWatermark;
    private ICameraService mCameraService;
    private CameraServiceCallback mFrontCallback;
    private int mFrontDuration;
    private RecordSettingsView mFrontRecordSettingsView;
    private Resolution mFrontResolution;
    private TextureView mFrontTextureView;
    private int mFrontTextureViewHeight;
    private int mFrontTextureViewWidth;
    private WatermarkSettingsView mFrontWatermarkSettingsView;
    private boolean mIsBackTextureViewAvailable;
    private boolean mIsBackcarOn;
    private boolean mIsChangingBackDuration;
    private boolean mIsChangingBackMic;
    private boolean mIsChangingBackWatermark;
    private boolean mIsChangingFrontDuration;
    private boolean mIsChangingFrontMic;
    private boolean mIsChangingFrontWatermark;
    private boolean mIsFrontTextureViewAvailable;
    private boolean mIsQbOff;
    private String mFrontMIPICameraId = DVRConst.MIPI_CAMERA_ID_FRONT;
    private String mBackMIPICameraId = "0";
    private boolean mIsBoundService = false;
    private boolean isOpenPreview = false;
    private ServiceConnection mCameraServiceConnection = new ServiceConnection() { // from class: com.yftech.avmservice.activity.MIPIDVRActivity.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            LogUtil.i(MIPIDVRActivity.TAG, "onServiceConnected - ComponentName:" + componentName, new Object[0]);
            MIPIDVRActivity.this.mCameraService = ICameraService.Stub.asInterface(iBinder);
            MIPIDVRActivity.this.mIsBoundService = true;
            if (!MIPIDVRActivity.this.checkIfCameraResourceInitialized()) {
                MIPIDVRActivity.this.mCameraService = null;
                return;
            }
            MIPIDVRActivity.this.udpateButtonState();
            if (MIPIDVRActivity.this.isOpenPreview) {
                MIPIDVRActivity.this.mFrontCallback = MIPIDVRActivity.this.new CameraServiceCallback(MIPIDVRActivity.this.mFrontMIPICameraId);
                MIPIDVRActivity.this.mBackCallback = MIPIDVRActivity.this.new CameraServiceCallback(MIPIDVRActivity.this.mBackMIPICameraId);
                try {
                    MIPIDVRActivity.this.mCameraService.registerCameraServiceCallback(MIPIDVRActivity.this.mFrontMIPICameraId, MIPIDVRActivity.this.mFrontCallback);
                    MIPIDVRActivity.this.mCameraService.registerCameraServiceCallback(MIPIDVRActivity.this.mBackMIPICameraId, MIPIDVRActivity.this.mBackCallback);
                    if (MIPIDVRActivity.this.mIsFrontTextureViewAvailable) {
                        MIPIDVRActivity.this.configureTransform(MIPIDVRActivity.this.mFrontMIPICameraId);
                        SurfaceTexture surfaceTexture = MIPIDVRActivity.this.mFrontTextureView.getSurfaceTexture();
                        if (surfaceTexture != null) {
                            MIPIDVRActivity.this.mCameraService.startPreview(MIPIDVRActivity.this.mFrontMIPICameraId, new Surface(surfaceTexture), false);
                        }
                    }
                    if (MIPIDVRActivity.this.mIsBackTextureViewAvailable) {
                        MIPIDVRActivity.this.configureTransform(MIPIDVRActivity.this.mBackMIPICameraId);
                        SurfaceTexture surfaceTexture2 = MIPIDVRActivity.this.mBackTextureView.getSurfaceTexture();
                        if (surfaceTexture2 != null) {
                            MIPIDVRActivity.this.mCameraService.startPreview(MIPIDVRActivity.this.mBackMIPICameraId, new Surface(surfaceTexture2), false);
                        }
                    }
                } catch (RemoteException e) {
                    LogUtil.e(MIPIDVRActivity.TAG, "onServiceConnected ", e);
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            LogUtil.i(MIPIDVRActivity.TAG, "onServiceDisconnected + ComponentName:" + componentName, new Object[0]);
            MIPIDVRActivity.this.mCameraService = null;
            MIPIDVRActivity.this.mIsBoundService = false;
            MIPIDVRActivity.this.mFrontCallback = null;
            MIPIDVRActivity.this.mBackCallback = null;
        }
    };
    private Handler mHandler = new AnonymousClass2();

    /* JADX INFO: renamed from: com.yftech.avmservice.activity.MIPIDVRActivity$2, reason: invalid class name */
    class AnonymousClass2 extends Handler {
        AnonymousClass2() {
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            LogUtil.d(MIPIDVRActivity.TAG, "Handler - handleMessage:" + message.what + " " + message.arg1, new Object[0]);
            final String str = (String) message.obj;
            Button button = str.equals(MIPIDVRActivity.this.mFrontMIPICameraId) ? MIPIDVRActivity.this.mBtnFrontNormalRecord : MIPIDVRActivity.this.mBtnBackNormalRecord;
            if (message.what == 1) {
                int i = message.arg1;
                if (i == 100) {
                    MIPIDVRActivity.this.mIsBackcarOn = true;
                    return;
                }
                if (i == 103) {
                    MIPIDVRActivity.this.mIsQbOff = true;
                    return;
                }
                switch (i) {
                    case 2:
                        MIPIDVRActivity.this.setTextureViewVisible(str, false);
                        button.setText(R.string.strStartRecord);
                        MIPIDVRActivity.this.updateUrgentUI(str, false);
                        break;
                    case 3:
                        MIPIDVRActivity.this.mHandler.postDelayed(new Runnable() { // from class: com.yftech.avmservice.activity.-$$Lambda$MIPIDVRActivity$2$RHUggAHtS9qdpekvcBEsKktpZGA
                            @Override // java.lang.Runnable
                            public final void run() {
                                MIPIDVRActivity.this.setTextureViewVisible(str, true);
                            }
                        }, 600L);
                        break;
                    case 4:
                        button.setText(R.string.strStopRecord);
                        MIPIDVRActivity.this.updateParamButtons(str);
                        break;
                    case 5:
                        MIPIDVRActivity.this.updateUrgentUI(str, true);
                        button.setText(R.string.strStopRecord);
                        break;
                    case 6:
                        MIPIDVRActivity.this.setTextureViewVisible(str, false);
                        break;
                    case 7:
                        button.setText(R.string.strStartRecord);
                        MIPIDVRActivity.this.updateUrgentUI(str, false);
                        break;
                    case 8:
                        button.setText(R.string.strStartRecord);
                        MIPIDVRActivity.this.updateUrgentUI(str, false);
                        break;
                    case 9:
                        ToastUtil.showToast(MIPIDVRActivity.this, MIPIDVRActivity.this.getString(R.string.TIP_TAKEPICTURE));
                        break;
                    case 10:
                    case 11:
                    case 12:
                        MIPIDVRActivity.this.updateParamButtons(str);
                        break;
                }
            }
            if (message.what == 2) {
                switch (message.arg1) {
                    case 1:
                        MIPIDVRActivity.this.setTextureViewVisible(str, false);
                        button.setText(R.string.strStartRecord);
                        MIPIDVRActivity.this.updateUrgentUI(str, false);
                        break;
                    case 3:
                        MIPIDVRActivity.this.setTextureViewVisible(str, false);
                        break;
                    case 4:
                        button.setText(R.string.strStartRecord);
                        MIPIDVRActivity.this.updateParamButtons(str);
                        break;
                    case 5:
                        MIPIDVRActivity.this.updateUrgentUI(str, false);
                        break;
                    case 6:
                        MIPIDVRActivity.this.setTextureViewVisible(str, false);
                        break;
                    case 7:
                        button.setText(R.string.strStartRecord);
                        break;
                    case 8:
                        MIPIDVRActivity.this.updateUrgentUI(str, false);
                        button.setText(R.string.strStartRecord);
                        break;
                    case 10:
                    case 12:
                    case 13:
                        MIPIDVRActivity.this.updateParamButtons(str);
                        break;
                }
                switch (message.arg2) {
                    case 1:
                        ToastUtil.showToast(MIPIDVRActivity.this, MIPIDVRActivity.this.getString(R.string.TIP_MEMCARD_FULL));
                        break;
                    case 2:
                        ToastUtil.showToast(MIPIDVRActivity.this, MIPIDVRActivity.this.getString(R.string.TIP_NO_MEMCARD));
                        break;
                    case 3:
                        ToastUtil.showToast(MIPIDVRActivity.this, MIPIDVRActivity.this.getString(R.string.TIP_NO_MEMCARD));
                        break;
                    case 6:
                        if (!str.equals(MIPIDVRActivity.this.mFrontMIPICameraId)) {
                            ToastUtil.showToast(MIPIDVRActivity.this, MIPIDVRActivity.this.getString(R.string.STR_NO_SIGNAL));
                        } else {
                            ToastUtil.showToast(MIPIDVRActivity.this, MIPIDVRActivity.this.getString(R.string.TIP_NO_CAMERA));
                        }
                        break;
                    case 7:
                        if (!str.equals(MIPIDVRActivity.this.mFrontMIPICameraId)) {
                            ToastUtil.showToast(MIPIDVRActivity.this, MIPIDVRActivity.this.getString(R.string.STR_NO_SIGNAL));
                        } else {
                            ToastUtil.showToast(MIPIDVRActivity.this, MIPIDVRActivity.this.getString(R.string.TIP_NO_CAMERA));
                        }
                        break;
                    case 10:
                        ToastUtil.showToast(MIPIDVRActivity.this, MIPIDVRActivity.this.getString(R.string.TIP_RES_NOT_SUPPORTED));
                        break;
                    case 11:
                        ToastUtil.showToast(MIPIDVRActivity.this, MIPIDVRActivity.this.getString(R.string.TIP_FILE_ALREADY_EXISTS));
                        break;
                    case 15:
                        if (!str.equals(MIPIDVRActivity.this.mFrontMIPICameraId)) {
                            ToastUtil.showToast(MIPIDVRActivity.this, MIPIDVRActivity.this.getString(R.string.STR_NO_SIGNAL));
                        } else {
                            ToastUtil.showToast(MIPIDVRActivity.this, MIPIDVRActivity.this.getString(R.string.TIP_NO_CAMERA));
                        }
                        break;
                    case 16:
                        ToastUtil.showToast(MIPIDVRActivity.this, MIPIDVRActivity.this.getString(R.string.TIP_SD_TOO_SLOWLY));
                        break;
                }
            }
        }
    }

    private class CameraServiceCallback extends ICameraServiceCallback.Stub {
        private String mCameraId;

        public CameraServiceCallback(String str) {
            this.mCameraId = str;
        }

        @Override // com.yftech.avmservice.ICameraServiceCallback
        public String getCameraId() {
            return this.mCameraId;
        }

        @Override // com.yftech.avmservice.ICameraServiceCallback
        public void onErrorOccurred(String str, int i, int i2) throws RemoteException {
            LogUtil.i(MIPIDVRActivity.TAG, "ICameraServiceCallback.onErrorOccurred - cameraId : " + str + " message : " + i + " error:" + i2, new Object[0]);
            if (!str.equals(this.mCameraId)) {
                LogUtil.w(MIPIDVRActivity.TAG, "ICameraServiceCallback.onErrorOccurred - unkown camera id callback: " + str, new Object[0]);
                return;
            }
            Message messageObtainMessage = MIPIDVRActivity.this.mHandler.obtainMessage();
            messageObtainMessage.what = 2;
            messageObtainMessage.arg1 = i;
            messageObtainMessage.arg2 = i2;
            messageObtainMessage.obj = str;
            MIPIDVRActivity.this.mHandler.sendMessage(messageObtainMessage);
        }

        @Override // com.yftech.avmservice.ICameraServiceCallback
        public void onStatusChanged(String str, int i) {
            LogUtil.i(MIPIDVRActivity.TAG, "ICameraServiceCallback.onStatusChanged - cameraId : " + str + " message : " + i, new Object[0]);
            if (!str.equals(this.mCameraId)) {
                LogUtil.w(MIPIDVRActivity.TAG, "ICameraServiceCallback.onStatusChanged - unkown camera id callback: " + str, new Object[0]);
                return;
            }
            Message messageObtainMessage = MIPIDVRActivity.this.mHandler.obtainMessage();
            messageObtainMessage.what = 1;
            messageObtainMessage.arg1 = i;
            messageObtainMessage.obj = str;
            MIPIDVRActivity.this.mHandler.sendMessage(messageObtainMessage);
        }
    }

    private class SurfaceTextureListener implements TextureView.SurfaceTextureListener {
        private String mCameraId;
        private boolean mIsFrontCamera;

        public SurfaceTextureListener(String str) {
            this.mCameraId = str;
            this.mIsFrontCamera = str.equals(MIPIDVRActivity.this.mFrontMIPICameraId);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
            TextureView textureView;
            LogUtil.d(MIPIDVRActivity.TAG, "SurfaceTextureListener - onSurfaceTextureAvailable", new Object[0]);
            if (this.mIsFrontCamera) {
                MIPIDVRActivity.this.mFrontTextureViewWidth = i;
                MIPIDVRActivity.this.mFrontTextureViewHeight = i2;
                MIPIDVRActivity.this.mIsFrontTextureViewAvailable = true;
                Resolution unused = MIPIDVRActivity.this.mFrontResolution;
                textureView = MIPIDVRActivity.this.mFrontTextureView;
                MIPIDVRActivity.this.configureTransform(this.mCameraId);
            } else {
                MIPIDVRActivity.this.mBackTextureViewWidth = i;
                MIPIDVRActivity.this.mBackTextureViewHeight = i2;
                MIPIDVRActivity.this.mIsBackTextureViewAvailable = true;
                Resolution unused2 = MIPIDVRActivity.this.mBackResolution;
                textureView = MIPIDVRActivity.this.mBackTextureView;
                MIPIDVRActivity.this.configureTransform(this.mCameraId);
            }
            Surface surface = new Surface(textureView.getSurfaceTexture());
            try {
                if (MIPIDVRActivity.this.mCameraService != null) {
                    MIPIDVRActivity.this.mCameraService.startPreview(this.mCameraId, surface, false);
                } else {
                    LogUtil.w(MIPIDVRActivity.TAG, "snapshotBtnClicked - mCameraService is null!", new Object[0]);
                }
            } catch (RemoteException e) {
                LogUtil.e(MIPIDVRActivity.TAG, "onSurfaceTextureAvailable ", e);
            }
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
            LogUtil.d(MIPIDVRActivity.TAG, "onSurfaceTextureDestroyed, camera " + this.mCameraId, new Object[0]);
            if (this.mIsFrontCamera) {
                MIPIDVRActivity.this.mIsFrontTextureViewAvailable = false;
            } else {
                MIPIDVRActivity.this.mIsBackTextureViewAvailable = false;
            }
            return false;
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            LogUtil.d(MIPIDVRActivity.TAG, "onSurfaceTextureSizeChanged, camera + " + this.mCameraId + ", width = " + i + ", height = " + i2, new Object[0]);
        }

        @Override // android.view.TextureView.SurfaceTextureListener
        public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkIfCameraResourceInitialized() {
        boolean zIsArm2Exit;
        try {
            zIsArm2Exit = this.mCameraService.isArm2Exit();
        } catch (Exception unused) {
            zIsArm2Exit = false;
        }
        if (!zIsArm2Exit) {
            finish();
        }
        return zIsArm2Exit;
    }

    private void durationBtnClicked(String str) {
        if (str.equals(this.mFrontMIPICameraId)) {
            this.mFrontWatermarkSettingsView.setVisibility(4);
            if (this.mFrontRecordSettingsView.getVisibility() == 0) {
                this.mFrontRecordSettingsView.setVisibility(4);
                return;
            } else {
                this.mFrontRecordSettingsView.setVisibility(0);
                return;
            }
        }
        this.mBackWatermarkSettingsView.setVisibility(4);
        if (this.mBackRecordSettingsView.getVisibility() == 0) {
            this.mBackRecordSettingsView.setVisibility(4);
        } else {
            this.mBackRecordSettingsView.setVisibility(0);
        }
    }

    private void enableButtons(String str, boolean z) {
        Button button = this.mBtnBackMic;
        Button button2 = this.mBtnBackWatermark;
        Button button3 = this.mBtnBackRecordSettings;
        Button button4 = this.mBtnBackNormalRecord;
        Button button5 = this.mBtnBackUrgentRecord;
        Button button6 = this.mBtnBackSnapshot;
        if (str.equals(this.mFrontMIPICameraId)) {
            button = this.mBtnFrontMic;
            button2 = this.mBtnFrontWatermark;
            button3 = this.mBtnFrontRecordSettings;
            button4 = this.mBtnFrontNormalRecord;
            button5 = this.mBtnFrontUrgentRecord;
            button6 = this.mBtnFrontSnapshot;
        }
        button.setEnabled(z);
        button2.setEnabled(z);
        button3.setEnabled(z);
        button4.setEnabled(z);
        button5.setEnabled(z);
        button6.setEnabled(z);
    }

    private void initView() {
        this.mFrontTextureView = (TextureView) findViewById(R.id.tv_front_camera);
        this.mBtnFrontNormalRecord = (Button) findViewById(R.id.btn_front_normal_record);
        this.mBtnFrontUrgentRecord = (Button) findViewById(R.id.btn_front_urgent_record);
        this.mBtnFrontMic = (Button) findViewById(R.id.btn_front_mic);
        this.mBtnFrontSnapshot = (Button) findViewById(R.id.btn_front_snapshot);
        this.mBtnFrontWatermark = (Button) findViewById(R.id.btn_front_watermark);
        this.mBtnFrontRecordSettings = (Button) findViewById(R.id.btn_front_record_settings);
        this.mFrontWatermarkSettingsView = (WatermarkSettingsView) findViewById(R.id.front_watermark_settings);
        this.mFrontRecordSettingsView = (RecordSettingsView) findViewById(R.id.front_record_settings);
        this.mBackTextureView = (TextureView) findViewById(R.id.tv_back_camera);
        this.mBtnBackNormalRecord = (Button) findViewById(R.id.btn_back_normal_record);
        this.mBtnBackUrgentRecord = (Button) findViewById(R.id.btn_back_urgent_record);
        this.mBtnBackMic = (Button) findViewById(R.id.btn_back_mic);
        this.mBtnBackSnapshot = (Button) findViewById(R.id.btn_back_snapshot);
        this.mBtnBackWatermark = (Button) findViewById(R.id.btn_back_watermark);
        this.mBtnBackRecordSettings = (Button) findViewById(R.id.btn_back_record_settings);
        this.mBackWatermarkSettingsView = (WatermarkSettingsView) findViewById(R.id.back_watermark_settings);
        this.mBackRecordSettingsView = (RecordSettingsView) findViewById(R.id.back_record_settings);
        this.mBtnFrontNormalRecord.setOnClickListener(this);
        this.mBtnFrontUrgentRecord.setOnClickListener(this);
        this.mBtnFrontMic.setOnClickListener(this);
        this.mBtnFrontSnapshot.setOnClickListener(this);
        this.mBtnFrontWatermark.setOnClickListener(this);
        this.mBtnFrontRecordSettings.setOnClickListener(this);
        this.mFrontWatermarkSettingsView.registerWatermarkSettingsListener(this);
        this.mFrontRecordSettingsView.registerRecordSettingsListener(this);
        this.mBtnBackNormalRecord.setOnClickListener(this);
        this.mBtnBackUrgentRecord.setOnClickListener(this);
        this.mBtnBackMic.setOnClickListener(this);
        this.mBtnBackSnapshot.setOnClickListener(this);
        this.mBtnBackWatermark.setOnClickListener(this);
        this.mBtnBackRecordSettings.setOnClickListener(this);
        this.mBackWatermarkSettingsView.registerWatermarkSettingsListener(this);
        this.mBackRecordSettingsView.registerRecordSettingsListener(this);
    }

    private void micBtnClicked(String str) {
        sendHXBroadCast();
    }

    private void previewBtnClicked(String str) {
        TextureView textureView = str.equals(this.mFrontMIPICameraId) ? this.mFrontTextureView : this.mBackTextureView;
        try {
            if (this.mCameraService == null) {
                LogUtil.w(TAG, "recordBtnClicked - mCameraService is null!", new Object[0]);
                return;
            }
            if (this.mCameraService.isPreviewStarted(str)) {
                this.mCameraService.stopPreview(str, false);
                setTextureViewVisible(str, false);
            } else {
                if (textureView == null || !textureView.isAvailable()) {
                    return;
                }
                this.mCameraService.startPreview(str, new Surface(textureView.getSurfaceTexture()), false);
                setTextureViewVisible(str, true);
            }
        } catch (RemoteException e) {
            LogUtil.e(TAG, "recordBtnClicked ", e);
        }
    }

    private void recordBtnClicked(String str) {
        try {
            if (this.mCameraService == null) {
                LogUtil.w(TAG, "recordBtnClicked - mCameraService is null!", new Object[0]);
                return;
            }
            if (this.mCameraService.isNormalRecordStarted(str)) {
                this.mCameraService.stopRecord(str);
                return;
            }
            boolean zEquals = this.mFrontMIPICameraId.equals(str);
            if (zEquals) {
                this.mFrontTextureView.getSurfaceTexture();
            } else {
                this.mBackTextureView.getSurfaceTexture();
            }
            if (zEquals) {
                Resolution resolution = this.mFrontResolution;
            } else {
                Resolution resolution2 = this.mBackResolution;
            }
            this.mCameraService.startRecord(str, false);
            enableButtons(str, false);
        } catch (RemoteException e) {
            LogUtil.e(TAG, "recordBtnClicked ", e);
        }
    }

    private void sendHXBroadCast() {
        Intent intent = new Intent();
        intent.setAction("com.yftech.avmservice.AVM_SHOW");
        List<ResolveInfo> listQueryBroadcastReceivers = getPackageManager().queryBroadcastReceivers(intent, 0);
        if (listQueryBroadcastReceivers == null || listQueryBroadcastReceivers.size() < 1) {
            return;
        }
        for (ResolveInfo resolveInfo : listQueryBroadcastReceivers) {
            Intent intent2 = new Intent(intent);
            ComponentName componentName = new ComponentName(resolveInfo.activityInfo.applicationInfo.packageName, resolveInfo.activityInfo.name);
            LogUtil.e(TAG, "packageName " + resolveInfo.activityInfo.applicationInfo.packageName + ",Receiver:" + resolveInfo.activityInfo.name, new Object[0]);
            intent2.setComponent(componentName);
            sendBroadcastAsUser(intent2, UserHandle.ALL);
        }
    }

    private void setDuration(String str, int i) {
        try {
            if (this.mCameraService != null) {
                this.mCameraService.setDuration(str, i * 60);
            } else {
                LogUtil.w(TAG, "durationBtnClicked - mCameraService is null!", new Object[0]);
            }
        } catch (RemoteException e) {
            LogUtil.e(TAG, "durationBtnClicked ", e);
        }
    }

    private void setResolution(String str, int i, int i2) {
        try {
            if (this.mCameraService != null) {
                this.mCameraService.setResolution(str, i, i2);
            } else {
                LogUtil.w(TAG, "durationBtnClicked - mCameraService is null!", new Object[0]);
            }
        } catch (RemoteException e) {
            LogUtil.e(TAG, "durationBtnClicked ", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTextureViewVisible(String str, boolean z) {
        if (str.equals(this.mFrontMIPICameraId) && this.mIsFrontTextureViewAvailable) {
            this.mFrontTextureView.setVisibility(z ? 0 : 4);
        } else if (str.equals(this.mBackMIPICameraId) && this.mIsBackTextureViewAvailable) {
            this.mBackTextureView.setVisibility(z ? 0 : 4);
        }
    }

    private void snapshotBtnClicked(String str) {
        try {
            if (this.mCameraService != null) {
                this.mCameraService.snapShot(str);
            } else {
                LogUtil.w(TAG, "snapshotBtnClicked - mCameraService is null!", new Object[0]);
            }
        } catch (RemoteException e) {
            LogUtil.e(TAG, "snapshotBtnClicked ", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void udpateButtonState() {
        updateNormalRecordState(this.mFrontMIPICameraId);
        updateUrgentRecordState(this.mFrontMIPICameraId);
        updateMicState(this.mFrontMIPICameraId);
        updateWatermark(this.mFrontMIPICameraId);
        updateDuration(this.mFrontMIPICameraId);
        updateResolution(this.mFrontMIPICameraId);
        updateNormalRecordState(this.mBackMIPICameraId);
        updateUrgentRecordState(this.mBackMIPICameraId);
        updateMicState(this.mBackMIPICameraId);
        updateWatermark(this.mBackMIPICameraId);
        updateDuration(this.mBackMIPICameraId);
        updateResolution(this.mBackMIPICameraId);
    }

    private void updateDuration(String str) {
        if (this.mCameraService != null) {
            try {
                this.mCameraService.getDuration(str);
            } catch (RemoteException unused) {
            }
        }
    }

    private void updateMicState(String str) {
        if (this.mCameraService != null) {
            try {
                boolean micState = this.mCameraService.getMicState(str);
                Button button = str.equals(this.mFrontMIPICameraId) ? this.mBtnFrontMic : this.mBtnBackMic;
                if (micState) {
                    button.setText(R.string.strMicOn);
                } else {
                    button.setText(R.string.strMicOff);
                }
            } catch (RemoteException unused) {
            }
        }
    }

    private void updateNormalRecordState(String str) {
        if (this.mCameraService != null) {
            try {
                boolean zIsNormalRecordStarted = this.mCameraService.isNormalRecordStarted(str);
                Button button = str.equals(this.mFrontMIPICameraId) ? this.mBtnFrontNormalRecord : this.mBtnBackNormalRecord;
                if (zIsNormalRecordStarted) {
                    button.setText(R.string.strStopRecord);
                } else {
                    button.setText(R.string.strStartRecord);
                }
            } catch (RemoteException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateParamButtons(String str) {
        if (str.equals(this.mFrontMIPICameraId)) {
            if (this.mIsChangingFrontDuration) {
                updateDuration(str);
                this.mIsChangingFrontDuration = false;
            }
            if (this.mIsChangingFrontMic) {
                updateMicState(str);
                this.mIsChangingFrontMic = false;
            }
            if (this.mIsChangingFrontWatermark) {
                updateWatermark(str);
                this.mIsChangingFrontWatermark = false;
            }
        } else {
            if (this.mIsChangingBackDuration) {
                updateDuration(str);
                this.mIsChangingBackDuration = false;
            }
            if (this.mIsChangingBackMic) {
                updateMicState(str);
                this.mIsChangingBackMic = false;
            }
            if (this.mIsChangingBackWatermark) {
                updateWatermark(str);
                this.mIsChangingBackWatermark = false;
            }
        }
        enableButtons(str, true);
    }

    private void updateResolution(String str) {
        if (this.mCameraService != null) {
            try {
                List<Resolution> resolutions = this.mCameraService.getResolutions(str);
                if (str.equals(this.mFrontMIPICameraId)) {
                    this.mFrontRecordSettingsView.updateResolution(resolutions);
                } else {
                    this.mBackRecordSettingsView.updateResolution(resolutions);
                }
            } catch (RemoteException unused) {
            }
        }
    }

    private void updateUrgentRecordState(String str) {
        if (this.mCameraService != null) {
            try {
                updateUrgentUI(str, this.mCameraService.isUrgentRecordStarted(str));
            } catch (RemoteException unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateUrgentUI(String str, boolean z) {
        if (str.equals(this.mFrontMIPICameraId)) {
            this.mBtnFrontUrgentRecord.setEnabled(!z);
            this.mBtnFrontMic.setEnabled(!z);
            this.mBtnFrontWatermark.setEnabled(!z);
            this.mBtnFrontRecordSettings.setEnabled(!z);
            this.mBtnFrontNormalRecord.setEnabled(true);
            this.mBtnFrontSnapshot.setEnabled(true);
            return;
        }
        this.mBtnBackUrgentRecord.setEnabled(!z);
        this.mBtnBackMic.setEnabled(!z);
        this.mBtnBackWatermark.setEnabled(!z);
        this.mBtnBackRecordSettings.setEnabled(!z);
        this.mBtnBackNormalRecord.setEnabled(true);
        this.mBtnBackSnapshot.setEnabled(true);
    }

    private void updateWatermark(String str) {
    }

    private void urgentBtnClicked(String str) {
        try {
            if (this.mCameraService == null) {
                LogUtil.w(TAG, "urgentBtnClicked - mCameraService is null!", new Object[0]);
            } else if (!this.mCameraService.isUrgentRecordStarted(str)) {
                this.mCameraService.startRecord(str, true);
                enableButtons(str, false);
            }
        } catch (RemoteException e) {
            LogUtil.e(TAG, "urgentBtnClicked ", e);
        }
    }

    private void watermarkBtnClicked(String str) {
        if (str.equals(this.mFrontMIPICameraId)) {
            if (this.mFrontWatermarkSettingsView.getVisibility() == 0) {
                this.mFrontWatermarkSettingsView.setVisibility(8);
                return;
            } else {
                this.mFrontWatermarkSettingsView.setVisibility(0);
                this.mBackWatermarkSettingsView.setVisibility(8);
                return;
            }
        }
        if (this.mBackWatermarkSettingsView.getVisibility() == 0) {
            this.mBackWatermarkSettingsView.setVisibility(8);
        } else {
            this.mBackWatermarkSettingsView.setVisibility(0);
            this.mFrontWatermarkSettingsView.setVisibility(8);
        }
    }

    public void configureTransform(String str) {
        int i;
        int i2;
        boolean zEquals = str.equals(this.mFrontMIPICameraId);
        Resolution resolution = zEquals ? this.mFrontResolution : this.mBackResolution;
        int i3 = zEquals ? this.mFrontTextureViewWidth : this.mBackTextureViewWidth;
        int i4 = zEquals ? this.mFrontTextureViewHeight : this.mBackTextureViewHeight;
        TextureView textureView = zEquals ? this.mFrontTextureView : this.mBackTextureView;
        int width = resolution.getWidth();
        int height = resolution.getHeight();
        LogUtil.d(TAG, "configureTransform(), resolution( " + width + "," + height + ")", new Object[0]);
        StringBuilder sb = new StringBuilder();
        sb.append("viewWidth = ");
        sb.append(i3);
        sb.append(", viewHeight = ");
        sb.append(i4);
        LogUtil.d(TAG, sb.toString(), new Object[0]);
        double d = ((double) height) / ((double) width);
        int i5 = (int) (((double) i3) * d);
        if (i4 > i5) {
            i2 = i5;
            i = i3;
        } else {
            i = (int) (((double) i4) / d);
            i2 = i4;
        }
        int i6 = (i3 - i) / 2;
        int i7 = (i4 - i2) / 2;
        LogUtil.d(TAG, "xoff=" + i6 + ", yoff=" + i7 + ", newWidth=" + i + ", newHeight=" + i2, new Object[0]);
        Matrix matrix = new Matrix();
        textureView.getTransform(matrix);
        matrix.setScale(((float) i) / ((float) i3), ((float) i2) / ((float) i4));
        matrix.postTranslate((float) i6, (float) i7);
        textureView.setTransform(matrix);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        LogUtil.w(TAG, "can not ust click!!!", new Object[0]);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        LogUtil.d(TAG, "onConfigurationChanged, newConfig.locale.language=" + configuration.locale.getLanguage(), new Object[0]);
        super.onConfigurationChanged(configuration);
        getResources().updateConfiguration(configuration, null);
        udpateButtonState();
        this.mBtnFrontSnapshot.setText(R.string.strSnapshot);
        this.mBtnFrontUrgentRecord.setText(R.string.strUrgent);
        this.mBtnBackSnapshot.setText(R.string.strSnapshot);
        this.mBtnBackUrgentRecord.setText(R.string.strUrgent);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        LogUtil.i(TAG, "onCreate ", new Object[0]);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        setContentView(R.layout.activity_mipidvr);
        this.mFrontResolution = new Resolution(1280, 720);
        this.mBackResolution = new Resolution(1280, 720);
        initView();
        Intent intent = new Intent(this, (Class<?>) CameraService.class);
        startForegroundService(intent);
        bindService(intent, this.mCameraServiceConnection, 1);
        if (this.isOpenPreview) {
            PermissionsManager.checkVideoRecordPermission(this);
            if (this.mFrontTextureView.isAvailable()) {
                this.mFrontTextureViewWidth = this.mFrontTextureView.getWidth();
                this.mFrontTextureViewHeight = this.mFrontTextureView.getHeight();
                this.mIsFrontTextureViewAvailable = true;
            } else {
                this.mFrontTextureView.setSurfaceTextureListener(new SurfaceTextureListener(this.mFrontMIPICameraId));
            }
            if (!this.mBackTextureView.isAvailable()) {
                this.mBackTextureView.setSurfaceTextureListener(new SurfaceTextureListener(this.mBackMIPICameraId));
                return;
            }
            this.mBackTextureViewWidth = this.mBackTextureView.getWidth();
            this.mBackTextureViewHeight = this.mBackTextureView.getHeight();
            this.mIsBackTextureViewAvailable = true;
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        LogUtil.i(TAG, "onDestroy ", new Object[0]);
        setTextureViewVisible(this.mFrontMIPICameraId, false);
        setTextureViewVisible(this.mBackMIPICameraId, false);
        if (this.mIsBoundService && this.mCameraService != null) {
            try {
                if (this.mCameraService.isNormalRecordStarted(this.mFrontMIPICameraId) || this.mCameraService.isUrgentRecordStarted(this.mFrontMIPICameraId)) {
                    this.mCameraService.stopRecord(this.mFrontMIPICameraId);
                }
                if (this.mCameraService.isPreviewStarted(this.mFrontMIPICameraId)) {
                    this.mCameraService.stopPreview(this.mFrontMIPICameraId, false);
                }
                this.mCameraService.resetSettings(this.mFrontMIPICameraId);
                this.mCameraService.unregisterCameraServiceCallback(this.mFrontMIPICameraId, this.mFrontCallback);
                if (this.mCameraService.isNormalRecordStarted(this.mBackMIPICameraId) || this.mCameraService.isUrgentRecordStarted(this.mBackMIPICameraId)) {
                    this.mCameraService.stopRecord(this.mBackMIPICameraId);
                }
                if (this.mCameraService.isPreviewStarted(this.mBackMIPICameraId)) {
                    this.mCameraService.stopPreview(this.mBackMIPICameraId, false);
                }
                this.mCameraService.resetSettings(this.mBackMIPICameraId);
                this.mCameraService.unregisterCameraServiceCallback(this.mBackMIPICameraId, this.mBackCallback);
            } catch (RemoteException e) {
                LogUtil.e(TAG, "onDestroy ", e);
            }
            unbindService(this.mCameraServiceConnection);
            this.mIsBoundService = false;
        }
        if (this.mIsBoundService) {
            unbindService(this.mCameraServiceConnection);
            this.mIsBoundService = false;
        }
        this.mHandler.removeMessages(1);
        this.mHandler.removeMessages(2);
    }

    @Override // com.yftech.avmservice.activity.RecordSettingsView.RecordSettingsListener
    public void onDurationChanged(View view, int i) {
        if (view == this.mFrontRecordSettingsView) {
            setDuration(this.mFrontMIPICameraId, i);
        } else {
            setDuration(this.mBackMIPICameraId, i);
        }
    }

    @Override // com.yftech.avmservice.activity.WatermarkSettingsView.WatermarkSettingsListener
    public void onHeightChanged(View view, WatermarkSettingsView.ActionType actionType, int i) {
        String str = this.mFrontMIPICameraId;
        if (view.getId() == R.id.back_watermark_settings) {
            str = this.mBackMIPICameraId;
        }
        try {
            this.mCameraService.setWatermarkHeight(str, actionType.ordinal(), i);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        LogUtil.i(TAG, "onPause ", new Object[0]);
    }

    @Override // com.yftech.avmservice.activity.RecordSettingsView.RecordSettingsListener
    public void onResolutionChanged(View view, int i, int i2) {
        if (view == this.mFrontRecordSettingsView) {
            setResolution(this.mFrontMIPICameraId, i, i2);
        } else {
            setResolution(this.mBackMIPICameraId, i, i2);
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        LogUtil.i(TAG, "onResume ", new Object[0]);
        this.mIsQbOff = false;
        this.mIsBackcarOn = false;
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        LogUtil.d(TAG, "onStart", new Object[0]);
    }

    @Override // com.yftech.avmservice.activity.WatermarkSettingsView.WatermarkSettingsListener
    public void onStartXChanged(View view, WatermarkSettingsView.ActionType actionType, int i) {
        String str = this.mFrontMIPICameraId;
        if (view.getId() == R.id.back_watermark_settings) {
            str = this.mBackMIPICameraId;
        }
        try {
            this.mCameraService.setWatermarkStartX(str, actionType.ordinal(), i);
        } catch (Exception unused) {
        }
    }

    @Override // com.yftech.avmservice.activity.WatermarkSettingsView.WatermarkSettingsListener
    public void onStartYChanged(View view, WatermarkSettingsView.ActionType actionType, int i) {
        String str = this.mFrontMIPICameraId;
        if (view.getId() == R.id.back_watermark_settings) {
            str = this.mBackMIPICameraId;
        }
        try {
            this.mCameraService.setWatermarkStartY(str, actionType.ordinal(), i);
        } catch (Exception unused) {
        }
    }

    @Override // com.yftech.avmservice.activity.WatermarkSettingsView.WatermarkSettingsListener
    public void onStateChanged(View view, WatermarkSettingsView.ActionType actionType, boolean z) {
        String str = this.mFrontMIPICameraId;
        if (view.getId() == R.id.back_watermark_settings) {
            str = this.mBackMIPICameraId;
        }
        try {
            this.mCameraService.setWatermarkState(str, actionType.ordinal(), z);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Activity
    protected void onStop() {
        setTextureViewVisible(this.mFrontMIPICameraId, false);
        setTextureViewVisible(this.mBackMIPICameraId, false);
        super.onStop();
        LogUtil.d(TAG, "onStop", new Object[0]);
    }

    @Override // com.yftech.avmservice.activity.WatermarkSettingsView.WatermarkSettingsListener
    public void onWidthChanged(View view, WatermarkSettingsView.ActionType actionType, int i) {
        String str = this.mFrontMIPICameraId;
        if (view.getId() == R.id.back_watermark_settings) {
            str = this.mBackMIPICameraId;
        }
        try {
            this.mCameraService.setWatermarkWidth(str, actionType.ordinal(), i);
        } catch (Exception unused) {
        }
    }
}
