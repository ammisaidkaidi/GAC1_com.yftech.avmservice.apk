package com.yftech.avmservice.activity;

import android.app.Activity;
import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.yftech.avmservice.App;
import com.yftech.avmservice.ICameraService;
import com.yftech.avmservice.ICameraServiceCallback;
import com.yftech.avmservice.util.DVRConst;
import com.yftech.avmservice.util.LogUtil;

/* JADX INFO: loaded from: classes.dex */
public class EmptyActivity extends Activity {
    private static final String TAG = "EmptyActivity";
    private String mCameraId;
    private ICameraService mCameraService;
    private ServiceConnection mCameraServiceConnection = new ServiceConnection() { // from class: com.yftech.avmservice.activity.EmptyActivity.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            LogUtil.i(EmptyActivity.TAG, "onServiceConnected - ComponentName:" + componentName, new Object[0]);
            EmptyActivity.this.mCameraService = ICameraService.Stub.asInterface(iBinder);
            try {
                EmptyActivity.this.mCameraService.registerCameraServiceCallback(EmptyActivity.this.mCameraId, EmptyActivity.this.mCallback);
            } catch (RemoteException e) {
                LogUtil.e(EmptyActivity.TAG, "onServiceConnected ", e);
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            LogUtil.i(EmptyActivity.TAG, "onServiceDisconnected + ComponentName:" + componentName, new Object[0]);
            EmptyActivity.this.mCameraService = null;
        }
    };
    private ICameraServiceCallback.Stub mCallback = new ICameraServiceCallback.Stub() { // from class: com.yftech.avmservice.activity.EmptyActivity.2
        @Override // com.yftech.avmservice.ICameraServiceCallback
        public String getCameraId() {
            return EmptyActivity.this.mCameraId;
        }

        @Override // com.yftech.avmservice.ICameraServiceCallback
        public void onErrorOccurred(String str, int i, int i2) throws RemoteException {
            LogUtil.i(EmptyActivity.TAG, "ICameraServiceCallback.onErrorOccurred - cameraId : " + str + " message : " + i + " error:" + i2, new Object[0]);
        }

        @Override // com.yftech.avmservice.ICameraServiceCallback
        public void onStatusChanged(String str, int i) {
            LogUtil.i(EmptyActivity.TAG, "ICameraServiceCallback.onStatusChanged - cameraId : " + str + " message : " + i, new Object[0]);
            if (i == 101) {
                if (EmptyActivity.this.mCameraService != null) {
                    try {
                        EmptyActivity.this.mCameraService.unregisterCameraServiceCallback(EmptyActivity.this.mCameraId, EmptyActivity.this.mCallback);
                    } catch (RemoteException unused) {
                    }
                }
                EmptyActivity.this.finish();
            }
        }
    };

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ((App) getApplicationContext()).add(this);
        LogUtil.d(TAG, "onCreate", new Object[0]);
        requestWindowFeature(1);
        getWindow().setFlags(1024, 1024);
        getWindow().getDecorView().setSystemUiVisibility(23074566);
        this.mCameraId = getIntent().getStringExtra(DVRConst.BACKCAR_TYPE);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        LogUtil.d(TAG, "onDestroy", new Object[0]);
        unbindService(this.mCameraServiceConnection);
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        LogUtil.d(TAG, "onPause", new Object[0]);
        overridePendingTransition(0, 0);
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        LogUtil.d(TAG, "onResume", new Object[0]);
    }

    @Override // android.app.Activity
    protected void onStart() {
        super.onStart();
        LogUtil.d(TAG, "onStart", new Object[0]);
    }

    @Override // android.app.Activity
    protected void onStop() {
        super.onStop();
        LogUtil.d(TAG, "onStop", new Object[0]);
    }
}
