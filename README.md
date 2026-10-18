# GAC1_com.yftech.avmservice.apk

> Decompiled source repository for `com.yftech.avmservice.apk`.

## Summary

- **APK file name**: `com.yftech.avmservice.apk`
- **Package name**: `com.yftech.avmservice`
- **Version**: `?` (versionCode `?`)
- **Min SDK**: `26`  |  **Target SDK**: `28`
- **Total decompiled classes**: `603`
- **Decompiled on**: 2026-10-18 12:15:15 UTC
- **Source repo**: [ammisaidkaidi/yftech-apks](https://github.com/ammisaidkaidi/yftech-apks)

## What this app does (inferred)

- Background service component
- Around View Monitoring (360° camera system for vehicles)
- Location access (GPS)
- Camera access
- Microphone / audio recording
- Overlay / system alert window
- Wake lock (keep device awake)
- Boot-time startup (auto-starts on device boot)

Inference is based on the APK file name, package name, declared permissions, registered services/receivers, and top-level Java package structure. Manual review of the source under `jadx_out/sources/` is recommended for definitive behavior.

## Permissions

- `android.permission.ACCESS_FINE_LOCATION`  (ACCESS_FINE_LOCATION)
- `android.permission.BROADCAST_STICKY`  (BROADCAST_STICKY)
- `android.permission.CAMERA`  (CAMERA)
- `android.permission.EXPAND_STATUS_BAR`  (EXPAND_STATUS_BAR)
- `android.permission.FORCE_STOP_PACKAGES`  (FORCE_STOP_PACKAGES)
- `android.permission.FOREGROUND_SERVICE`  (FOREGROUND_SERVICE)
- `android.permission.GET_TASKS`  (GET_TASKS)
- `android.permission.INTERACT_ACROSS_USERS`  (INTERACT_ACROSS_USERS)
- `android.permission.INTERACT_ACROSS_USERS_FULL`  (INTERACT_ACROSS_USERS_FULL)
- `android.permission.INTERNAL_SYSTEM_WINDOW`  (INTERNAL_SYSTEM_WINDOW)
- `android.permission.RECEIVE_BOOT_COMPLETED`  (RECEIVE_BOOT_COMPLETED)
- `android.permission.RECORD_AUDIO`  (RECORD_AUDIO)
- `android.permission.REORDER_TASKS`  (REORDER_TASKS)
- `android.permission.STATUS_BAR`  (STATUS_BAR)
- `android.permission.STOP_APP_SWITCHES`  (STOP_APP_SWITCHES)
- `android.permission.SYSTEM_ALERT_WINDOW`  (SYSTEM_ALERT_WINDOW)
- `android.permission.WAKE_LOCK`  (WAKE_LOCK)
- `com.yftech.permission.service.main.screen`
- `com.yftech.permission.service.vehicle.COMMON`

## App components (from AndroidManifest.xml)

**Application class**: `com.yftech.avmservice.App`
**Launcher activity**: `com.yftech.avmservice.activity.MIPIDVRActivity`

### Activities (2)

- `com.yftech.avmservice.activity.MIPIDVRActivity`
- `com.yftech.avmservice.activity.EmptyActivity`

### Services (1)

- `com.yftech.avmservice.CameraService`

### Broadcast receivers (1)

- `com.yftech.avmservice.BootCompletedReceiver`

### Content providers (0)

- (none)

## Java package structure

**Top-level packages**: `android`, `androidx`, `com`

**Detected third-party libraries**:

- Android framework (system)  (1 top-level entries)
- Android Jetpack (AndroidX libraries)  (1 top-level entries)

**Custom (non-library) packages — depth 2**:

- `com.yftech`
- `com.yftech.avmservice`
- `com.yftech.avmservice.activity`
- `com.yftech.avmservice.avm`
- `com.yftech.avmservice.common`
- `com.yftech.avmservice.constant`
- `com.yftech.avmservice.procotol`
- `com.yftech.avmservice.util`
- `com.yftech.avmservice.windowutil`

## Key classes & method signatures

Per custom package, the top-level classes (up to 8 each) and their first few public method signatures.

### `com.yftech`  (0 class files in this folder)

(no top-level classes in this package)

### `com.yftech.avmservice`  (18 class files in this folder)

- **class `App`**  (`App.java`, ~28 lines)
  - `void add(...)`
  - `void exitActivity(...)`
  - `void remove(...)`

- **class `BackcarSurfaceCallback`**  (`BackcarSurfaceCallback.java`, ~33 lines)
  - `void surfaceChanged(...)`
  - `void surfaceCreated(...)`
  - `void surfaceDestroyed(...)`

- **class `BootCompletedReceiver`**  (`BootCompletedReceiver.java`, ~32 lines)
  - `void onReceive(...)`

- **class `BuildConfig`**  (`BuildConfig.java`, ~12 lines)

- **class `CameraOperation`**  (`CameraOperation.java`, ~1478 lines)
  - `void onClosed(...)`
  - `void onDisconnected(...)`
  - `void onError(...)`
  - `void onOpened(...)`
  - `void onCaptureCompleted(...)`
  - `void onCaptureProgressed(...)`
  - `void run(...)`
  - `void run(...)`
  - `void run(...)`
  - `void onImageAvailable(...)`
  - `void onError(...)`
  - `void onInfo(...)`
  - `Void doInBackground(...)`
  - `void run(...)`
  - `void run(...)`

- **class `CameraService`**  (`CameraService.java`, ~519 lines)
  - `void onEvent(...)`
  - `void onAudioFocusChange(...)`
  - `void onForegroundProfileSwitch(...)`
  - `void onLockedBootComplete(...)`
  - `void onUserSwitchComplete(...)`
  - `void run(...)`
  - `void run(...)`
  - `void onUserSwitching(...)`
  - `void run(...)`
  - `void onReceive(...)`
  - `void onReceive(...)`
  - `void onUEvent(...)`
  - `void run(...)`
  - `void run(...)`
  - `CameraService getInstance(...)`

- **class `CameraServiceImpl`**  (`CameraServiceImpl.java`, ~658 lines)
  - `boolean onTouchEvent(...)`
  - `CameraServiceImpl getInstance(...)`
  - `void onClick(...)`
  - `void onClick(...)`
  - `void cameraready(...)`
  - `int getDuration(...)`
  - `boolean getMicState(...)`
  - `List<Resolution> getResolutions(...)`
  - `boolean getWatermarkState(...)`
  - `boolean isArm2Exit(...)`
  - `boolean isBackCar(...)`
  - `boolean isNormalRecordStarted(...)`
  - `boolean isPreviewStarted(...)`
  - `boolean isUrgentRecordStarted(...)`
  - `void linkToDeath(...)`

- **class `CameraStateMachine`**  (`CameraStateMachine.java`, ~1404 lines)
  - `void enter(...)`
  - `boolean processMessage(...)`
  - `void enter(...)`
  - `boolean processMessage(...)`
  - `void enter(...)`
  - `boolean processMessage(...)`
  - `void enter(...)`
  - `boolean processMessage(...)`
  - `void enter(...)`
  - `boolean processMessage(...)`
  - `void enter(...)`
  - `boolean processMessage(...)`
  - `void enter(...)`
  - `boolean processMessage(...)`
  - `void enter(...)`

### `com.yftech.avmservice.activity`  (5 class files in this folder)

- **class `ArmTwoActivity`**  (`ArmTwoActivity.java`, ~108 lines)
  - `void onServiceConnected(...)`
  - `void onServiceDisconnected(...)`
  - `String getCameraId(...)`
  - `void onErrorOccurred(...)`
  - `void onStatusChanged(...)`

- **class `EmptyActivity`**  (`EmptyActivity.java`, ~107 lines)
  - `void onServiceConnected(...)`
  - `void onServiceDisconnected(...)`
  - `String getCameraId(...)`
  - `void onErrorOccurred(...)`
  - `void onStatusChanged(...)`

- **class `MIPIDVRActivity`**  (`MIPIDVRActivity.java`, ~974 lines)
  - `void onServiceConnected(...)`
  - `void onServiceDisconnected(...)`
  - `void handleMessage(...)`
  - `void run(...)`
  - `String getCameraId(...)`
  - `void onErrorOccurred(...)`
  - `void onStatusChanged(...)`
  - `void onSurfaceTextureAvailable(...)`
  - `boolean onSurfaceTextureDestroyed(...)`
  - `void onSurfaceTextureSizeChanged(...)`
  - `void onSurfaceTextureUpdated(...)`
  - `boolean checkIfCameraResourceInitialized(...)`
  - `void setTextureViewVisible(...)`
  - `void udpateButtonState(...)`
  - `void updateParamButtons(...)`

- **class `RecordSettingsView`**  (`RecordSettingsView.java`, ~130 lines)
  - `void onItemSelected(...)`
  - `void onNothingSelected(...)`
  - `void onItemSelected(...)`
  - `void onNothingSelected(...)`
  - `void registerRecordSettingsListener(...)`
  - `void unregisterRecordSettingsListener(...)`
  - `void updateResolution(...)`

- **class `WatermarkSettingsView`**  (`WatermarkSettingsView.java`, ~325 lines)
  - `void onClick(...)`
  - `void registerWatermarkSettingsListener(...)`
  - `void unregisterWatermarkSettingsListener(...)`

### `com.yftech.avmservice.avm`  (4 class files in this folder)

- **class `AVMMonitor`**  (`AVMMonitor.java`, ~20 lines)

- **class `AudioFocus`**  (`AudioFocus.java`, ~314 lines)
  - `void onAudioFocusChange(...)`
  - `void onAudioFocusChange(...)`
  - `void onAudioFocusChange(...)`
  - `void onAudioFocusChange(...)`
  - `void onCarDataChanged(...)`
  - `void onKeepMuteWarningStateChanged(...)`
  - `AudioFocus getInstance(...)`
  - `void abandonCanActiveFocus(...)`
  - `void abandonRadarFocus(...)`
  - `void abondAvmFocus(...)`
  - `void abondRvcFocus(...)`
  - `int requestAvmFocus(...)`
  - `int requestCanActiveFocus(...)`
  - `int requestRadarFocus(...)`
  - `int requestRvcFocus(...)`

- **class `AvmControl`**  (`AvmControl.java`, ~725 lines)
  - `void run(...)`
  - `AvmControl getInstance(...)`
  - `void init(...)`
  - `int avmInit(...)`
  - `boolean canShow(...)`
  - `void dispSurfaceInit(...)`
  - `void dispSurfaceRelease(...)`
  - `int getAvmHardwareState(...)`
  - `int getAvmMode(...)`
  - `int getAvmReqOnOff(...)`
  - `int getAvmSignal(...)`
  - `int getBackCarCameraID(...)`
  - `ICameraControl getCameraControl(...)`
  - `int getCarSpeed(...)`
  - `int getCarType(...)`

- **class `StaticBroadcastReceiver`**  (`StaticBroadcastReceiver.java`, ~31 lines)
  - `void onReceive(...)`

### `com.yftech.avmservice.common`  (7 class files in this folder)

- **class `Archiver`**  (`Archiver.java`, ~34 lines)
  - `int decodeIntForKey(...)`
  - `boolean encodeIntForKey(...)`
  - `boolean isContains(...)`

- **class `BaseActivity`**  (`BaseActivity.java`, ~96 lines)
  - `void removeFromUiThread(...)`
  - `void runOnUiThread(...)`

- **class `CameraDataDef`**  (`CameraDataDef.java`, ~144 lines)

- **interface `ICameraControl`**  (`ICameraControl.java`, ~40 lines)

- **interface `IMcuCommListener`**  (`IMcuCommListener.java`, ~9 lines)

- **interface `IRadarControl`**  (`IRadarControl.java`, ~22 lines)

- **interface `ISAVMControl`**  (`ISAVMControl.java`, ~26 lines)

### `com.yftech.avmservice.constant`  (1 class file in this folder)

- **class `Constant`**  (`Constant.java`, ~62 lines)

### `com.yftech.avmservice.procotol`  (5 class files in this folder)

- **class `MCUComm`**  (`MCUComm.java`, ~36 lines)
  - `MCUComm getInstance(...)`
  - `int SendData(...)`
  - `int init(...)`
  - `void setAvmListener(...)`

- **class `MCUCommNative`**  (`MCUCommNative.java`, ~54 lines)
  - `MCUCommNative getInstance(...)`
  - `int mcuCommInit(...)`
  - `int registerMcuCommCallback(...)`
  - `int sendDataToMcu(...)`

- **class `RVCProcotol`**  (`RVCProcotol.java`, ~271 lines)
  - `void run(...)`
  - `RVCProcotol getInstance(...)`
  - `float getSteerWheelAngle(...)`
  - `boolean isCameraOpErr(...)`
  - `boolean isCommTimeOut(...)`
  - `void onMcuProcotol(...)`
  - `boolean requestCanSync(...)`
  - `boolean requestHide(...)`
  - `boolean requestShow(...)`
  - `boolean resetRvcCamera(...)`
  - `boolean sendResetPaket(...)`
  - `boolean sendResetPaket1(...)`
  - `boolean sendTestPaket(...)`
  - `boolean sendTestPaket1(...)`
  - `void setCameraControlListener(...)`

- **class `RadarProcotol`**  (`RadarProcotol.java`, ~170 lines)
  - `void run(...)`
  - `boolean isFrontRadarErr(...)`
  - `boolean isRearRadarErr(...)`
  - `void onMcuMessageCallBack(...)`
  - `void onMcuProcotol(...)`
  - `void onRadarChange(...)`
  - `boolean requestRadarClose(...)`
  - `boolean requestRadarOpen(...)`
  - `void setRadarListener(...)`

- **class `SAVMProcotol`**  (`SAVMProcotol.java`, ~302 lines)
  - `void onDeviceNodeStateChanged(...)`
  - `void run(...)`
  - `void run(...)`
  - `SAVMProcotol getInstance(...)`
  - `void setCommTimeOut(...)`
  - `float getSteerWheelAngle(...)`
  - `void init(...)`
  - `boolean isCameraErr(...)`
  - `boolean isCameraOpErr(...)`
  - `boolean isCommTimeOut(...)`
  - `void onMcuMessageCallBack(...)`
  - `void onMcuProcotol(...)`
  - `boolean replyAPAShowState(...)`
  - `boolean requestCanSync(...)`
  - `boolean requestHide(...)`

### `com.yftech.avmservice.util`  (11 class files in this folder)

- **class `APASoundPool`**  (`APASoundPool.java`, ~44 lines)
  - `void InitSound(...)`
  - `void onLoadComplete(...)`
  - `void playReverseEffectAPA1(...)`
  - `void playReverseEffectAPA2(...)`

- **class `AudioTrackManager`**  (`AudioTrackManager.java`, ~122 lines)
  - `void run(...)`
  - `AudioTrackManager getInstance(...)`
  - `void startPlay(...)`
  - `void stopPlay(...)`

- **class `DVRConst`**  (`DVRConst.java`, ~102 lines)

- **class `DistributedHandler`**  (`DistributedHandler.java`, ~52 lines)
  - `void addHandlerPart(...)`
  - `void handleMessage(...)`
  - `void removeHandlerPart(...)`

- **class `HandlerThreadHandler`**  (`HandlerThreadHandler.java`, ~39 lines)
  - `HandlerThreadHandler createHandler(...)`
  - `HandlerThreadHandler createHandler(...)`
  - `HandlerThreadHandler createHandler(...)`
  - `HandlerThreadHandler createHandler(...)`

- **class `LogUtil`**  (`LogUtil.java`, ~62 lines)
  - `void d(...)`
  - `void e(...)`
  - `void e(...)`
  - `void i(...)`
  - `void v(...)`
  - `void w(...)`

- **class `MySoundPool`**  (`MySoundPool.java`, ~37 lines)
  - `void InitSound(...)`
  - `void onLoadComplete(...)`
  - `void playReverseEffect(...)`

- **class `SoundPoolPlayer`**  (`SoundPoolPlayer.java`, ~117 lines)
  - `void InitSound(...)`
  - `void StopWarnTone(...)`
  - `boolean isWarnTonePlay(...)`
  - `boolean iswarnTonePlay(...)`
  - `void onLoadComplete(...)`
  - `void playWarnTone(...)`
  - `void stopAllWarnTone(...)`

### `com.yftech.avmservice.windowutil`  (8 class files in this folder)

- **class `BaseWindow`**  (`BaseWindow.java`, ~356 lines)
  - `void run(...)`
  - `void run(...)`
  - `void onRvcHideWindow(...)`
  - `void BroadcastWindow(...)`
  - `boolean dispatchHandleMessage(...)`
  - `AvmControl getAvmControl(...)`
  - `void hideWindow(...)`
  - `boolean isShow(...)`
  - `void playReverseEffect(...)`
  - `boolean setCameraState(...)`
  - `boolean setWindowVisibility(...)`
  - `void showWindow(...)`
  - `void updateWindow(...)`

- **class `CameraPreview`**  (`CameraPreview.java`, ~49 lines)
  - `void setFixedSize(...)`
  - `void surfaceChanged(...)`
  - `void surfaceCreated(...)`
  - `void surfaceDestroyed(...)`

- **class `CameraSelView`**  (`CameraSelView.java`, ~27 lines)

- **class `CustomRelativeLayout`**  (`CustomRelativeLayout.java`, ~47 lines)
  - `boolean dispatchKeyEvent(...)`
  - `void setOnKeyEventListener(...)`

- **class `RVCWindow`**  (`RVCWindow.java`, ~356 lines)
  - `void run(...)`
  - `void run(...)`
  - `boolean dispatchHandleMessage(...)`
  - `SurfaceView getSurface(...)`
  - `void hideWindow(...)`
  - `void initView(...)`
  - `void onClick(...)`
  - `void setCameraWindowPara(...)`
  - `boolean setWindowVisibility(...)`
  - `void showWindow(...)`
  - `void updateWindow(...)`

- **class `RadarShowWindow`**  (`RadarShowWindow.java`, ~164 lines)
  - `boolean dispatchHandleMessage(...)`
  - `void hideWindow(...)`
  - `void initView(...)`
  - `void onClick(...)`
  - `boolean setWindowVisibility(...)`
  - `void showWindow(...)`
  - `void updateWindow(...)`

- **class `RadarWindow`**  (`RadarWindow.java`, ~943 lines)
  - `void onChange(...)`
  - `void run(...)`
  - `void run(...)`
  - `void closeRadarSound(...)`
  - `boolean dispatchHandleMessage(...)`
  - `int getRadarToneState(...)`
  - `void initRadarView(...)`
  - `void onRadarInfo(...)`
  - `boolean setRadarTone(...)`
  - `void updataRadar(...)`
  - `void updateRadarVisibility(...)`

- **class `SAVMWindow`**  (`SAVMWindow.java`, ~429 lines)
  - `void run(...)`
  - `void run(...)`
  - `void run(...)`
  - `void closeRadarSound(...)`
  - `boolean dispatchHandleMessage(...)`
  - `SurfaceView getSurface(...)`
  - `void hideWindow(...)`
  - `void initView(...)`
  - `void onClick(...)`
  - `void onRadarInfo(...)`
  - `void onSAvmCameraInputErr(...)`
  - `void onSAvmEOLTestModeChange(...)`
  - `void onSAvmGuideLineChange(...)`
  - `void onSAvmGuideLineErr(...)`
  - `void onSAvmRadarErr(...)`

## Decompilation methodology

This repo was produced by the following pipeline:

1. **APK download** — raw file fetched via the GitHub raw URL (no repo clone).
2. **apktool d** — decoded `AndroidManifest.xml`, resources (`res/`), `assets/`, native libs (`lib/`), and produced `apktool.yml` metadata.
3. **jadx -d** — produced Java-readable decompiled sources under `jadx_out/sources/`.
4. **Static analysis pass** — parsed manifest + walked `jadx_out/sources/` to enumerate packages, classes, methods, and detect known third-party libraries.
5. **README auto-generation** — produced this file with the static analysis results.

### Reproducing

```bash
# 1) download the APK (raw, no clone)
curl -L -o com.yftech.avmservice.apk \
  'https://raw.githubusercontent.com/ammisaidkaidi/yftech-apks/main/com.yftech.avmservice.apk'

# 2) decode resources + manifest
apktool d -f -o apktool_out com.yftech.avmservice.apk

# 3) decompile to Java-readable sources
jadx -d jadx_out --no-res com.yftech.avmservice.apk
```

> Note: `--no-res` is passed to jadx because apktool already decoded resources.

## Directory layout

``
GAC1_com.yftech.avmservice.apk/
├── README.md                  <- this file
├── com.yftech.avmservice.apk                 <- original APK binary
├── apktool_out/               <- apktool output (resources, manifest, smali)
└── jadx_out/                  <- jadx output (Java-readable sources)
```

### apktool_out/
```
├── AndroidManifest.xml
├── apktool.yml
├── lib/
│   ├── arm64-v8a/
│   └── armeabi-v7a/
├── original/
│   ├── AndroidManifest.xml
│   └── META-INF/
├── res/
│   ├── anim/
│   ├── color/
│   ├── drawable/
│   ├── drawable-hdpi/
│   ├── drawable-ldrtl-hdpi/
│   ├── drawable-ldrtl-mdpi/
│   ├── drawable-ldrtl-xhdpi/
│   ├── drawable-ldrtl-xxhdpi/
│   ├── drawable-ldrtl-xxxhdpi/
│   ├── drawable-mdpi/
│   ├── drawable-watch/
│   ├── drawable-xhdpi/
│   ├── drawable-xxhdpi/
│   ├── drawable-xxxhdpi/
│   ├── layout/
│   ├── layout-land/
│   ├── layout-port/
│   ├── layout-watch/
│   ├── mipmap-anydpi/
│   └── mipmap-hdpi/
│   └── ... (102 more entries)
├── smali/
│   ├── android/
│   ├── androidx/
│   └── com/
└── unknown/
    └── META-INF/
```

### jadx_out/
```
├── resources/
└── sources/
    ├── android/
    ├── androidx/
    └── com/
```

## Disclaimer

This repository contains decompiled (reverse-engineered) Java source code and resources derived from a binary APK. Decompilation was performed for research, interoperability, and educational purposes.

- The decompiled code is **not** the original source — variable names, comments, generics, and some control flow may have been lost or simplified during compilation/decompilation.
- All trademarks, copyrights, and IP belong to their respective owners (YF Tech / 御驾 (YF) Automotive).
- The author of this repo does not host the original APK on this repo's remote — only the decompiled artifacts. The original APK is publicly listed at the source repository cited above.
- This repository is for **analysis only**. Do not use it to redistribute or rebuild the original application.