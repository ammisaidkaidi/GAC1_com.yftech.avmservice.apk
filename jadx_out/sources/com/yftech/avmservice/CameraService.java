package com.yftech.avmservice;

import android.app.ActivityManagerNative;
import android.app.IUserSwitchObserver;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.media.AudioAttributes;
import android.media.AudioManager;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.IRemoteCallback;
import android.os.SystemProperties;
import android.os.UEventObserver;
import android.os.UserHandle;
import android.support.v4.app.NotificationCompat;
import com.autochips.backcar.BackCar;
import com.autochips.metazone.AtcMetazone;
import com.yftech.avmservice.avm.AudioFocus;
import com.yftech.avmservice.avm.AvmControl;
import com.yftech.avmservice.util.DVRConst;
import com.yftech.avmservice.util.LogUtil;
import com.yftech.avmservice.util.StorageUtil;
import java.util.ArrayList;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class CameraService extends Service {
    private static final String ACTION_PREQB_OFF = "autochips.intent.action.PREQB_POWEROFF";
    private static final String ACTION_PREQB_ON = "autochips.intent.action.PREQB_POWERON";
    private static final String ACTION_QB_OFF = "autochips.intent.action.QB_POWEROFF";
    private static final String ACTION_QB_ON = "autochips.intent.action.QB_POWERON";
    private static final int ADDR_RVC_CAMERA_ID = 65581;
    private static final int BC_TYPE_ADDR = 65545;
    private static final String NOTIFICATION_CHANNEL_ID_SERVICE = "com.yftech.avmservice.CameraService";
    private static final int NOTIFICATION_ID = 105;
    private static final String TAG = "CameraService";
    private static final int TYPE_RVC = 0;
    private static CameraService gInst;
    private AudioManager mAudioManager;
    private BackCar mBackcar;
    private CameraServiceImpl mCameraServiceImpl;
    private String mCurrentBackcarCameraId;
    private boolean mHasShownTouchInputFilterView;
    private boolean mIsArm2Exited;
    private boolean mNeedStartBackcarAfterQBOn;
    private MyUEventObserver mUEventObserver;
    private boolean mIsQBOn = true;
    private boolean mIsBackcarOn = false;
    private boolean mIsRVCMode = false;
    private int mCurrentUserId = UserHandle.myUserId();
    private final Thread.UncaughtExceptionHandler mDefaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler();
    private Handler mHandler = new Handler();
    private String mDevPath = "DEVPATH=/devices/platform/soc/11071000.i2c/i2c-1/1-006a";
    private boolean isReopenCamera = false;
    private int resetCameraCount = 0;
    private boolean isMetalogoRun = false;
    private BackCar.Listener mListenerSignal = new BackCar.Listener() { // from class: com.yftech.avmservice.CameraService.1
        public void onEvent(int i, int i2, int i3) {
            LogUtil.d(CameraService.TAG, "onSignal - event:" + i, new Object[0]);
            if (1 != i) {
                if (i != 0) {
                    if (3 != i) {
                        LogUtil.i(CameraService.TAG, "do nothing", new Object[0]);
                        return;
                    }
                    LogUtil.i(CameraService.TAG, "param2 =" + i3, new Object[0]);
                    if (i3 != 0) {
                        LogUtil.i(CameraService.TAG, "handle ARM2 start backcar", new Object[0]);
                        return;
                    } else {
                        LogUtil.i(CameraService.TAG, "handle ARM2 stop backcar", new Object[0]);
                        return;
                    }
                }
                CameraService.this.mIsArm2Exited = true;
                SystemProperties.set("sys.avmservice.run.state", "1");
                LogUtil.d(CameraService.TAG, "set sys.avmservice.run.state 1", new Object[0]);
                if (CameraService.this.mHasShownTouchInputFilterView) {
                    AudioFocus.getInstance().abondRvcFocus();
                    CameraService.this.mHasShownTouchInputFilterView = false;
                    CameraService.this.mAudioFocusChangeListener = null;
                    CameraService.this.mAudioManager = null;
                }
                CameraService.this.mCameraServiceImpl.notifyExitArm2();
                if (AvmControl.getInstance().getDeviceType() == 2 || AvmControl.getInstance().getDeviceType() == 1) {
                    AvmControl.getInstance().onCameraReqShow();
                }
                LogUtil.i(CameraService.TAG, "exit arm2 backcar", new Object[0]);
                return;
            }
            if (i2 == 0) {
                LogUtil.i(CameraService.TAG, "onSignal():BACKCAR_STOP", new Object[0]);
                if (CameraService.this.mNeedStartBackcarAfterQBOn) {
                    CameraService.this.mNeedStartBackcarAfterQBOn = false;
                    LogUtil.d(CameraService.TAG, "cancel stop backcar", new Object[0]);
                    return;
                }
                AvmControl.getInstance().setIoBackCar(false);
                if (AvmControl.getInstance().getDeviceType() != 2 && AvmControl.getInstance().getDeviceType() != 1) {
                    AvmControl.getInstance().onCameraReqHide();
                }
                CameraService.this.mIsBackcarOn = false;
                if (AvmControl.getInstance().getDeviceType() == 2) {
                    return;
                }
                AvmControl.getInstance().onBackcarChange(false);
                return;
            }
            LogUtil.i(CameraService.TAG, "onSignal():BACKCAR_START", new Object[0]);
            if (!CameraService.this.mIsArm2Exited) {
                AudioFocus.getInstance().requestRvcFocus();
                CameraService.this.mHasShownTouchInputFilterView = true;
                return;
            }
            if (!CameraService.this.mIsQBOn) {
                CameraService.this.mNeedStartBackcarAfterQBOn = true;
                LogUtil.d(CameraService.TAG, "start backcar later after qb on", new Object[0]);
                return;
            }
            AvmControl.getInstance().setIoBackCar(true);
            CameraService.this.isReopenCamera = false;
            CameraService.this.resetCameraCount = 0;
            if (AvmControl.getInstance().getDeviceType() != 2 && AvmControl.getInstance().getDeviceType() != 1) {
                AvmControl.getInstance().onCameraReqShow();
            }
            CameraService.this.mIsBackcarOn = true;
            if (AvmControl.getInstance().getDeviceType() == 2) {
                return;
            }
            AvmControl.getInstance().playReverseEffect();
            AvmControl.getInstance().onBackcarChange(true);
        }
    };
    AudioManager.OnAudioFocusChangeListener mAudioFocusChangeListener = new AudioManager.OnAudioFocusChangeListener() { // from class: com.yftech.avmservice.CameraService.2
        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            LogUtil.d(CameraService.TAG, "onAudioFocusChange, focus = " + i, new Object[0]);
        }
    };
    IUserSwitchObserver mUserSwitchObserver = new IUserSwitchObserver.Stub() { // from class: com.yftech.avmservice.CameraService.3
        public void onForegroundProfileSwitch(int i) {
        }

        public void onLockedBootComplete(int i) {
        }

        public void onUserSwitchComplete(int i) {
            LogUtil.d(CameraService.TAG, "onUserSwitchComplete newUserId = " + i, new Object[0]);
            CameraService.this.mCurrentUserId = i;
            LogUtil.d(CameraService.TAG, "onUserSwitchComplete mIsBackcarOn = " + CameraService.this.mIsBackcarOn, new Object[0]);
            if (CameraService.this.mCurrentBackcarCameraId != null && CameraService.this.mCurrentUserId != UserHandle.myUserId() && CameraService.this.mIsBackcarOn) {
                LogUtil.d(CameraService.TAG, "stopBackcar because user switch", new Object[0]);
                CameraService.this.mHandler.post(new Runnable() { // from class: com.yftech.avmservice.CameraService.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CameraService.this.mCameraServiceImpl.stopBackcar(CameraService.this.mCurrentBackcarCameraId);
                    }
                });
            }
            if (CameraService.this.mCurrentUserId == UserHandle.myUserId() && CameraService.this.mCurrentBackcarCameraId != null && CameraService.this.mIsBackcarOn) {
                LogUtil.d(CameraService.TAG, "startBackcar after user switch", new Object[0]);
                CameraService.this.mHandler.post(new Runnable() { // from class: com.yftech.avmservice.CameraService.3.2
                    @Override // java.lang.Runnable
                    public void run() {
                        CameraService.this.mCameraServiceImpl.startBackcar(CameraService.this.mCurrentBackcarCameraId);
                    }
                });
            }
        }

        public void onUserSwitching(int i, IRemoteCallback iRemoteCallback) {
            LogUtil.d(CameraService.TAG, "onUserSwitching  newUserId = " + i, new Object[0]);
            CameraService.this.mCurrentUserId = i;
        }
    };
    Runnable metaZoneCheckRunnable = new Runnable() { // from class: com.yftech.avmservice.CameraService.5
        @Override // java.lang.Runnable
        public void run() {
            LogUtil.d(CameraService.TAG, "metaZoneCheckRunnable in", new Object[0]);
            while (true) {
                LogUtil.d(CameraService.TAG, "nit.svc.metalogo_daemon:" + SystemProperties.get("init.svc.metalogo_daemon"), new Object[0]);
                boolean zEquals = SystemProperties.get("init.svc.metalogo_daemon").equals("running");
                if (CameraService.this.isMetalogoRun != zEquals) {
                    LogUtil.d(CameraService.TAG, "init.svc.metalogo_daemon changed state:" + zEquals, new Object[0]);
                    CameraService.this.isMetalogoRun = zEquals;
                    CameraService.this.mBackcar = new BackCar();
                    CameraService.this.mBackcar.sendReadyToArm2();
                    LogUtil.d(CameraService.TAG, "metaZoneCheckRunnable out", new Object[0]);
                    return;
                }
                try {
                    Thread.sleep(500L);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
            }
        }
    };
    private BroadcastReceiver mMountUnmountBroadcastReceiver = new BroadcastReceiver() { // from class: com.yftech.avmservice.CameraService.6
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            Uri data = intent.getData();
            String path = data != null ? data.getPath() : null;
            LogUtil.i(CameraService.TAG, "mMountUnmountBroadcastReceiver - onReceive:" + action + " mountPoint:" + path, new Object[0]);
            if (path == null || StorageUtil.sCurrentPath == null || !path.equals(StorageUtil.toPublicPath(StorageUtil.sCurrentPath))) {
                return;
            }
            if ("android.intent.action.MEDIA_MOUNTED".equals(action)) {
                CameraService.this.mCameraServiceImpl.sendMediaMountedAndEjectedMessage(true);
            } else if ("android.intent.action.MEDIA_EJECT".equals(action)) {
                CameraService.this.mCameraServiceImpl.sendMediaMountedAndEjectedMessage(false);
            }
        }
    };
    BroadcastReceiver mQBReceiver = new BroadcastReceiver() { // from class: com.yftech.avmservice.CameraService.7
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            LogUtil.i(CameraService.TAG, "mQBReceiver - onReceive:" + action, new Object[0]);
            if (CameraService.ACTION_PREQB_ON.equals(action)) {
                CameraService.this.mCameraServiceImpl.sendQBMessage(true);
                CameraService.this.mIsQBOn = true;
                if (CameraService.this.mNeedStartBackcarAfterQBOn) {
                    CameraService.this.mCameraServiceImpl.startBackcar("0");
                    CameraService.this.mNeedStartBackcarAfterQBOn = false;
                    return;
                }
                return;
            }
            if (CameraService.ACTION_QB_OFF.equals(action)) {
                if (!CameraService.this.mIsArm2Exited && CameraService.this.mIsRVCMode) {
                    CameraService.this.mBackcar.sendForceExitToArm2();
                }
                CameraService.this.mCameraServiceImpl.sendQBMessage(false);
                CameraService.this.mIsQBOn = false;
                return;
            }
            if ("android.intent.action.ACTION_SHUTDOWN".equals(action)) {
                if (!CameraService.this.mIsArm2Exited && CameraService.this.mIsRVCMode) {
                    CameraService.this.mBackcar.sendForceExitToArm2();
                }
                CameraService.this.mCameraServiceImpl.sendQBMessage(false);
            }
        }
    };

    public class MyUEventObserver extends UEventObserver {
        private static final String TAG = "MyUEventObserver";

        public MyUEventObserver() {
        }

        public void onUEvent(UEventObserver.UEvent uEvent) {
            String str = uEvent.get("DEVPATH");
            String str2 = uEvent.get("ACTION");
            String str3 = uEvent.get("max96714_erro_reopen");
            String str4 = uEvent.get("max96714_erro_mask");
            LogUtil.d(TAG, "Device path: " + str + ", Action: " + str2 + ",reopen_camera:" + str3 + ",reset_camera" + str4, new Object[0]);
            if (str == null || str2 == null || !"change".equals(str2)) {
                return;
            }
            if (str3 != null && str3.equals("1")) {
                LogUtil.d(TAG, "drive reopen Camera msg!!!,isReopenCamera:" + CameraService.this.isReopenCamera, new Object[0]);
                CameraService.this.mHandler.post(new Runnable() { // from class: com.yftech.avmservice.CameraService.MyUEventObserver.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!AvmControl.getInstance().isIOBackCar()) {
                            AvmControl.getInstance().onCameraReqHide();
                        } else {
                            if (CameraService.this.isReopenCamera) {
                                return;
                            }
                            AvmControl.getInstance().onCameraReqHide();
                            AvmControl.getInstance().onCameraReqShow();
                            CameraService.this.isReopenCamera = true;
                        }
                    }
                });
                return;
            }
            if (str4 == null || !str4.equals("1")) {
                return;
            }
            LogUtil.d(TAG, "drive reset Camera msg!!!resetCameraCount:" + CameraService.this.resetCameraCount, new Object[0]);
            CameraService.this.mHandler.post(new Runnable() { // from class: com.yftech.avmservice.CameraService.MyUEventObserver.2
                @Override // java.lang.Runnable
                public void run() {
                    int unused = CameraService.this.resetCameraCount;
                    AvmControl.getInstance().resetRvcCamera();
                    CameraService.access$208(CameraService.this);
                }
            });
        }
    }

    private void abandonAudioFocusWhenArm2Exit() {
        this.mAudioManager.abandonAudioFocus(this.mAudioFocusChangeListener, new AudioAttributes.Builder().setContentType(6).build());
    }

    static /* synthetic */ int access$208(CameraService cameraService) {
        int i = cameraService.resetCameraCount;
        cameraService.resetCameraCount = i + 1;
        return i;
    }

    private boolean getBackcarCameraId() {
        if (this.mCurrentBackcarCameraId != null) {
            return true;
        }
        if (!AvmControl.getInstance().isRvcMode()) {
            LogUtil.w(TAG, "not ARM1 RVC,skip", new Object[0]);
            return false;
        }
        int backCarCameraID = AvmControl.getInstance().getBackCarCameraID();
        if (backCarCameraID < 0) {
            this.mCurrentBackcarCameraId = null;
            return false;
        }
        this.mCurrentBackcarCameraId = String.valueOf(backCarCameraID);
        return true;
    }

    private String getCameraId() {
        AtcMetazone.readval(BC_TYPE_ADDR, new int[4]);
        return DVRConst.UNKOWN_CAMERA_ID;
    }

    public static CameraService getInstance() {
        return gInst;
    }

    private void initChannel() {
        ((NotificationManager) getSystemService("notification")).createNotificationChannel(new NotificationChannel(NOTIFICATION_CHANNEL_ID_SERVICE, TAG, 1));
    }

    private boolean isRVCMode() {
        if (AvmControl.getInstance().isRvcMode()) {
            this.mIsRVCMode = true;
            return true;
        }
        LogUtil.w(TAG, "not ARM1 RVC!", new Object[0]);
        return false;
    }

    private void registerMountUnmountReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.MEDIA_BAD_REMOVAL");
        intentFilter.addAction("android.intent.action.MEDIA_CHECKING");
        intentFilter.addAction("android.intent.action.MEDIA_MOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_NOFS");
        intentFilter.addAction("android.intent.action.MEDIA_REMOVED");
        intentFilter.addAction("android.intent.action.MEDIA_SHARED");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTABLE");
        intentFilter.addAction("android.intent.action.MEDIA_UNMOUNTED");
        intentFilter.addAction("android.intent.action.MEDIA_EJECT");
        intentFilter.addDataScheme("file");
        registerReceiver(this.mMountUnmountBroadcastReceiver, intentFilter);
    }

    private void registerQBReceiver() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(ACTION_QB_OFF);
        intentFilter.addAction(ACTION_QB_ON);
        intentFilter.addAction(ACTION_PREQB_OFF);
        intentFilter.addAction(ACTION_PREQB_ON);
        intentFilter.addAction("android.intent.action.ACTION_SHUTDOWN");
        registerReceiver(this.mQBReceiver, intentFilter);
    }

    private void requestBackcarAudioFocusForArm2() {
        LogUtil.d(TAG, "requestBackcarAudioFocusForArm2, " + this.mAudioManager.requestAudioFocus(this.mAudioFocusChangeListener, new AudioAttributes.Builder().setContentType(6).build(), 4, 0), new Object[0]);
    }

    private void setUncaughtExceptionHandler() {
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() { // from class: com.yftech.avmservice.CameraService.4
            @Override // java.lang.Thread.UncaughtExceptionHandler
            public void uncaughtException(Thread thread, Throwable th) {
                LogUtil.d(CameraService.TAG, "thread name=" + thread.getName() + "------------" + th.getMessage(), new Object[0]);
                if (thread.getName().equals("FinalizerWatchdogDaemon") && (th instanceof TimeoutException)) {
                    LogUtil.d(CameraService.TAG, "skip the exception", new Object[0]);
                } else {
                    CameraService.this.mDefaultUncaughtExceptionHandler.uncaughtException(thread, th);
                }
            }
        });
    }

    private void startForegroundNotification() {
        initChannel();
        NotificationCompat.Builder builder = new NotificationCompat.Builder(this, NOTIFICATION_CHANNEL_ID_SERVICE);
        builder.setContentTitle(TAG);
        builder.setContentText("CameraService is running");
        builder.setSmallIcon(R.mipmap.ic_launcher);
        startForeground(105, builder.build());
    }

    private void unRegisterMountUnmountReceiver() {
        unregisterReceiver(this.mMountUnmountBroadcastReceiver);
    }

    private void unregisterQBReceiver() {
        unregisterReceiver(this.mQBReceiver);
    }

    public boolean isPreviewStarted() {
        if (this.mCurrentBackcarCameraId != null) {
            return this.mCameraServiceImpl.isPreviewStarted(this.mCurrentBackcarCameraId);
        }
        return false;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        LogUtil.d(TAG, "onBind", new Object[0]);
        return this.mCameraServiceImpl;
    }

    @Override // android.app.Service, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        getResources().updateConfiguration(configuration, null);
        this.mCameraServiceImpl.updateBackcarUi();
    }

    @Override // android.app.Service
    public void onCreate() {
        LogUtil.d(TAG, "onCreate", new Object[0]);
        super.onCreate();
        gInst = this;
        this.mCameraServiceImpl = new CameraServiceImpl(this);
        this.mAudioManager = (AudioManager) getSystemService("audio");
        startForegroundNotification();
        registerMountUnmountReceiver();
        registerQBReceiver();
        setUncaughtExceptionHandler();
        if (isRVCMode()) {
            this.mBackcar = new BackCar();
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(0);
            arrayList.add(1);
            arrayList.add(3);
            this.mBackcar.setListener(this.mListenerSignal, arrayList);
            new Thread(this.metaZoneCheckRunnable).start();
            if (AvmControl.getInstance().getDeviceType() == 1) {
                this.mUEventObserver = new MyUEventObserver();
                this.mUEventObserver.startObserving(this.mDevPath);
                LogUtil.d(TAG, "startObserving", new Object[0]);
            }
        } else {
            this.mBackcar = new BackCar();
            this.mBackcar.sendReadyToArm2();
        }
        try {
            ActivityManagerNative.getDefault().registerUserSwitchObserver(this.mUserSwitchObserver, BuildConfig.APPLICATION_ID);
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Service
    public void onDestroy() {
        LogUtil.d(TAG, "onDestroy", new Object[0]);
        super.onDestroy();
        this.mCameraServiceImpl.release();
        unRegisterMountUnmountReceiver();
        unregisterQBReceiver();
        try {
            ActivityManagerNative.getDefault().unregisterUserSwitchObserver(this.mUserSwitchObserver);
        } catch (Exception unused) {
        }
        if (this.mIsRVCMode) {
            this.mBackcar.setListener((BackCar.Listener) null, (ArrayList) null);
        }
        Thread.setDefaultUncaughtExceptionHandler(this.mDefaultUncaughtExceptionHandler);
        this.mCameraServiceImpl = null;
        stopForeground(true);
        this.mUEventObserver.startObserving(this.mDevPath);
        SystemProperties.set("sys.avmservice.run.state", "0");
        LogUtil.d(TAG, "set sys.avmservice.run.state 0", new Object[0]);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        LogUtil.d(TAG, "onStartCommand", new Object[0]);
        return 1;
    }

    public void startBackCar() {
        if (this.mCurrentUserId == UserHandle.myUserId() && getBackcarCameraId()) {
            this.mCameraServiceImpl.startBackcar(this.mCurrentBackcarCameraId);
        }
    }

    public void startUserPreview() {
        if (this.mCurrentUserId == UserHandle.myUserId() && getBackcarCameraId()) {
            this.mCameraServiceImpl.startUserPreview(this.mCurrentBackcarCameraId);
        }
    }

    public void stopBackCar() {
        if (this.mCurrentBackcarCameraId != null) {
            this.mCameraServiceImpl.stopBackcar(this.mCurrentBackcarCameraId);
        }
    }

    public void stopUserPreview() {
        if (this.mCurrentBackcarCameraId != null) {
            this.mCameraServiceImpl.stopUserPreview(this.mCurrentBackcarCameraId);
        }
    }
}
