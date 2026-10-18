.class public Lcom/yftech/avmservice/CameraServiceImpl;
.super Lcom/yftech/avmservice/ICameraService$Stub;
.source "CameraServiceImpl.java"

# interfaces
.implements Lcom/yftech/avmservice/CameraStateMachine$StateMachineCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;
    }
.end annotation


# static fields
.field private static final BRIGHTNESS_ADDR:I = 0x10018

.field private static final CONTRAST_ADDR:I = 0x1001a

.field private static final HUE_ADDR:I = 0x10017

.field private static final H_ADDR:I = 0x1000f

.field private static final ROTATION_OF_SCREEN:Ljava/lang/String; = "persist.sf.hwrotation"

.field private static final SATURATION_ADDR:I = 0x10019

.field private static final TAG:Ljava/lang/String; = "CameraServiceImpl"

.field private static final W_ADDR:I = 0x1000e

.field private static final X_ADDR:I = 0x1000c

.field private static final Y_ADDR:I = 0x1000d

.field private static gInst:Lcom/yftech/avmservice/CameraServiceImpl;


# instance fields
.field private cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAudioManager:Lcom/autochips/atcaudiomanager/ATCAudioManager;

.field private mBackCar:Lcom/autochips/backcar/BackCar;

.field private mBackcarViewRect:Landroid/graphics/Rect;

.field private mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/yftech/avmservice/ICameraServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mCameraStateMachineMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/yftech/avmservice/CameraStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentBackCamerId:Ljava/lang/String;

.field private mFilterView:Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;

.field private mHandler:Landroid/os/Handler;

.field private mIsArm2Exit:Z

.field private mIsArm2RvcOn:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mRotation:I

.field public mSignalOn:Z

.field private mSurfaceCallback:Lcom/yftech/avmservice/BackcarSurfaceCallback;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field public mUserPreviewOn:Z

.field private mWM:Landroid/view/WindowManager;

.field private mWindowHeight:I

.field private mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 121
    invoke-direct {p0}, Lcom/yftech/avmservice/ICameraService$Stub;-><init>()V

    .line 63
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSignalOn:Z

    .line 77
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mUserPreviewOn:Z

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mHandler:Landroid/os/Handler;

    .line 122
    sput-object p0, Lcom/yftech/avmservice/CameraServiceImpl;->gInst:Lcom/yftech/avmservice/CameraServiceImpl;

    .line 123
    iput-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mContext:Landroid/content/Context;

    .line 124
    new-instance v0, Lcom/autochips/atcaudiomanager/ATCAudioManager;

    invoke-direct {v0, p1}, Lcom/autochips/atcaudiomanager/ATCAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mAudioManager:Lcom/autochips/atcaudiomanager/ATCAudioManager;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCameraStateMachineMap:Ljava/util/Map;

    .line 126
    new-instance v0, Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;

    invoke-direct {v0, p1}, Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mFilterView:Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;

    .line 127
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getWindowInfo(Landroid/content/Context;)V

    .line 129
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraServiceImpl;->initBarcarView()V

    .line 130
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->initAlertDialog(Landroid/content/Context;)V

    .line 131
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraServiceImpl;->initCameraStateMachines()V

    .line 132
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/avm/AvmControl;->setAvmServiceRun(Z)V

    .line 133
    invoke-static {p1}, Lcom/yftech/avmservice/avm/AvmControl;->init(Landroid/content/Context;)V

    .line 134
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getSurface()Landroid/view/SurfaceView;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    .line 135
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->setCameraMonitorListener(Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;)V

    return-void
.end method

.method private collapsePanels()V
    .locals 1

    .line 583
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 584
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    return-void
.end method

.method private disableBackcarAudio()V
    .locals 1

    .line 592
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mAudioManager:Lcom/autochips/atcaudiomanager/ATCAudioManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autochips/atcaudiomanager/ATCAudioManager;->enableBackcarVolumePolicy(Z)Z

    return-void
.end method

.method private disableStatusBarExpand(Z)V
    .locals 1

    .line 574
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    if-eqz p1, :cond_0

    const/high16 p1, 0x1010000

    .line 576
    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 578
    invoke-virtual {p0, p1}, Landroid/app/StatusBarManager;->disable(I)V

    :goto_0
    return-void
.end method

.method private enableBackcarAudio()V
    .locals 1

    .line 588
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mAudioManager:Lcom/autochips/atcaudiomanager/ATCAudioManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/autochips/atcaudiomanager/ATCAudioManager;->enableBackcarVolumePolicy(Z)Z

    return-void
.end method

.method private filterRecordTooSlowMsg(Ljava/lang/String;II)Z
    .locals 0

    const/16 p1, 0xe

    if-ne p2, p1, :cond_1

    const/16 p1, 0x11

    if-ne p3, p1, :cond_1

    .line 698
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 699
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCameraStateMachineMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/avmservice/CameraStateMachine;

    if-nez v0, :cond_0

    .line 147
    new-instance v0, Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/yftech/avmservice/CameraStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCameraStateMachineMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/CameraStateMachine;->registerCallback(Lcom/yftech/avmservice/CameraStateMachine$StateMachineCallback;)V

    .line 150
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraStateMachine;->start()V

    :cond_0
    return-object v0
.end method

.method public static getInstance()Lcom/yftech/avmservice/CameraServiceImpl;
    .locals 1

    .line 111
    sget-object v0, Lcom/yftech/avmservice/CameraServiceImpl;->gInst:Lcom/yftech/avmservice/CameraServiceImpl;

    return-object v0
.end method

.method private getWindowInfo(Landroid/content/Context;)V
    .locals 3

    .line 156
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    const-string v1, "window"

    .line 157
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 158
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 159
    iget p1, v0, Landroid/graphics/Point;->x:I

    iput p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowWidth:I

    .line 160
    iget p1, v0, Landroid/graphics/Point;->y:I

    iput p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowHeight:I

    const-string p1, "persist.sf.hwrotation"

    const/4 v0, 0x0

    .line 161
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mRotation:I

    const-string p1, "CameraServiceImpl"

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWindowWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mWindowHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRotation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mRotation:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private initAlertDialog(Landroid/content/Context;)V
    .locals 2

    .line 197
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0c0003

    .line 198
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0c0002

    .line 199
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/yftech/avmservice/CameraServiceImpl$2;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraServiceImpl$2;-><init>(Lcom/yftech/avmservice/CameraServiceImpl;)V

    const v1, 0x7f0c0001

    .line 200
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/yftech/avmservice/CameraServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraServiceImpl$1;-><init>(Lcom/yftech/avmservice/CameraServiceImpl;)V

    const/high16 v1, 0x7f0c0000

    .line 210
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mAlertDialog:Landroid/app/AlertDialog;

    .line 216
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 p1, 0x7d3

    invoke-virtual {p0, p1}, Landroid/view/Window;->setType(I)V

    return-void
.end method

.method private initBarcarView()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWM:Landroid/view/WindowManager;

    const-string v0, "persist.sf.hwrotation"

    const/4 v1, 0x0

    .line 192
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 193
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    return-void
.end method

.method private initCameraStateMachines()V
    .locals 1

    const-string v0, "10"

    .line 140
    invoke-direct {p0, v0}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    const-string v0, "0"

    .line 141
    invoke-direct {p0, v0}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    return-void
.end method

.method private synthetic lambda$startBackcar$1(Ljava/lang/String;)V
    .locals 3

    .line 535
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/yftech/avmservice/activity/EmptyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.yftech.avmservice.BACKCAR_TYPE"

    .line 536
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 537
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 538
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private synthetic lambda$startUserPreview$0(Ljava/lang/String;)V
    .locals 3

    .line 463
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mContext:Landroid/content/Context;

    const-class v2, Lcom/yftech/avmservice/activity/EmptyActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.yftech.avmservice.BACKCAR_TYPE"

    .line 464
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 465
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 466
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showBackcarInfo(I)V
    .locals 1

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 677
    :pswitch_0
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    if-eqz p1, :cond_1

    .line 678
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    invoke-interface {p1}, Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;->onCameraMonitorNoSignal()V

    .line 679
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    invoke-interface {p0}, Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;->onCameraMonitorReady()V

    goto :goto_0

    .line 687
    :cond_0
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    if-eqz p1, :cond_1

    .line 688
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    invoke-interface {p1}, Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;->onCameraMonitorResumeSignal()V

    .line 689
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    invoke-interface {p0}, Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;->onCameraMonitorReady()V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateDisplayInfoFromMetazone()V
    .locals 8

    const/4 v0, 0x4

    .line 166
    new-array v0, v0, [I

    const v1, 0x1000c

    .line 167
    invoke-static {v1, v0}, Lcom/autochips/metazone/AtcMetazone;->readval(I[I)I

    const/4 v1, 0x0

    .line 168
    aget v2, v0, v1

    const v3, 0x1000d

    .line 169
    invoke-static {v3, v0}, Lcom/autochips/metazone/AtcMetazone;->readval(I[I)I

    .line 170
    aget v3, v0, v1

    const v4, 0x1000e

    .line 171
    invoke-static {v4, v0}, Lcom/autochips/metazone/AtcMetazone;->readval(I[I)I

    .line 172
    aget v4, v0, v1

    const v5, 0x1000f

    .line 173
    invoke-static {v5, v0}, Lcom/autochips/metazone/AtcMetazone;->readval(I[I)I

    .line 174
    aget v0, v0, v1

    const-string v5, "CameraServiceImpl"

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "x="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", y="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", w="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", h="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz v4, :cond_0

    if-ltz v0, :cond_0

    if-lez v4, :cond_0

    if-lez v0, :cond_0

    add-int/2addr v4, v2

    .line 176
    iget v5, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowWidth:I

    if-gt v4, v5, :cond_0

    add-int/2addr v0, v3

    iget v5, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowHeight:I

    if-gt v0, v5, :cond_0

    .line 177
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mBackcarViewRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 179
    :cond_0
    iget v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowWidth:I

    iget v2, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowHeight:I

    if-ge v0, v2, :cond_1

    .line 180
    iget v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowWidth:I

    .line 181
    iget v2, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowWidth:I

    iget v3, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowWidth:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowHeight:I

    div-int/2addr v2, v3

    .line 182
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowHeight:I

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v1, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mBackcarViewRect:Landroid/graphics/Rect;

    goto :goto_0

    .line 184
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    iget v2, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowWidth:I

    iget v3, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWindowHeight:I

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mBackcarViewRect:Landroid/graphics/Rect;

    :goto_0
    return-void
.end method

.method private updateError(Ljava/lang/String;II)V
    .locals 4

    .line 627
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 628
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 629
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_2

    const/4 v2, 0x0

    .line 633
    :try_start_0
    iget-object v3, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/yftech/avmservice/ICameraServiceCallback;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    goto :goto_2

    .line 637
    :cond_0
    :try_start_1
    invoke-interface {v3}, Lcom/yftech/avmservice/ICameraServiceCallback;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 638
    invoke-interface {v3, p1, p2, p3}, Lcom/yftech/avmservice/ICameraServiceCallback;->onErrorOccurred(Ljava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception v2

    .line 644
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :catch_2
    :goto_1
    if-eqz v2, :cond_1

    .line 642
    iget-object v3, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    :cond_2
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    :cond_3
    const-string p0, "CameraServiceImpl"

    const-string p1, "updateError - Callbacks map no such camera id"

    .line 649
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method

.method private updateStatus(Ljava/lang/String;I)V
    .locals 4

    .line 596
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 597
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 598
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_3

    const/4 v2, 0x0

    .line 602
    :try_start_0
    iget-object v3, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/yftech/avmservice/ICameraServiceCallback;
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    if-nez p1, :cond_1

    goto :goto_2

    .line 609
    :cond_1
    :try_start_1
    invoke-interface {v3}, Lcom/yftech/avmservice/ICameraServiceCallback;->getCameraId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    invoke-interface {v3, p1, p2}, Lcom/yftech/avmservice/ICameraServiceCallback;->onStatusChanged(Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_0
    move-object v2, v3

    goto :goto_1

    :catch_1
    move-exception v2

    .line 616
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :catch_2
    :goto_1
    if-eqz v2, :cond_2

    .line 614
    iget-object v3, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    :cond_3
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    goto :goto_3

    :cond_4
    const-string p0, "CameraServiceImpl"

    const-string p1, "updateStatus - Callbacks map no such camera id"

    .line 621
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public cameraready()V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    if-eqz v0, :cond_0

    .line 116
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    invoke-interface {p0}, Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;->onCameraMonitorReady()V

    :cond_0
    return-void
.end method

.method cancelTouchInputFilterView()V
    .locals 3

    const-string v0, "CameraServiceImpl"

    const-string v1, "cancelTouchInputFilterView"

    const/4 v2, 0x0

    .line 424
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 425
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mFilterView:Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 426
    iput-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mFilterView:Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;

    .line 427
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 429
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 430
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public getDuration(Ljava/lang/String;)I
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDuration - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->getDuration(Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x3e8

    .line 331
    div-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method

.method public getMicState(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMicState - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->getMicState(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getResolutions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/yftech/avmservice/Resolution;",
            ">;"
        }
    .end annotation

    const-string v0, "CameraServiceImpl"

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getResolution - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->getResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 313
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 314
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Size;

    .line 315
    new-instance v1, Lcom/yftech/avmservice/Resolution;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lcom/yftech/avmservice/Resolution;-><init>(II)V

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getWatermarkState(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWatermarkState - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->getWatermarkState(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isArm2Exit()Z
    .locals 0

    .line 378
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mIsArm2Exit:Z

    return p0
.end method

.method public isBackCar()Z
    .locals 0

    .line 497
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSignalOn:Z

    return p0
.end method

.method public isNormalRecordStarted(Ljava/lang/String;)Z
    .locals 4

    const-string v0, "CameraServiceImpl"

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNormalRecordStarted - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Lcom/yftech/avmservice/CameraStateMachine;->getRecordingState(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isPreviewStarted(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isPreviewStarted - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->getPreviewState(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isUrgentRecordStarted(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUrgentRecordStarted - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/yftech/avmservice/CameraStateMachine;->getRecordingState(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    .locals 0

    .line 731
    invoke-super {p0, p1, p2}, Lcom/yftech/avmservice/ICameraService$Stub;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    return-void
.end method

.method public notifyExitArm2()V
    .locals 1

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mIsArm2Exit:Z

    return-void
.end method

.method public onOperationFail(Ljava/lang/String;II)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOperationFail -id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " operation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/avmservice/CameraServiceImpl;->filterRecordTooSlowMsg(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0xe

    if-ne p2, v0, :cond_1

    .line 720
    iget-boolean v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSignalOn:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceCallback:Lcom/yftech/avmservice/BackcarSurfaceCallback;

    iget-object v1, v1, Lcom/yftech/avmservice/BackcarSurfaceCallback;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 721
    invoke-direct {p0, p3}, Lcom/yftech/avmservice/CameraServiceImpl;->showBackcarInfo(I)V

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_2

    .line 722
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mUserPreviewOn:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceCallback:Lcom/yftech/avmservice/BackcarSurfaceCallback;

    iget-object v0, v0, Lcom/yftech/avmservice/BackcarSurfaceCallback;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 723
    invoke-direct {p0, p3}, Lcom/yftech/avmservice/CameraServiceImpl;->showBackcarInfo(I)V

    .line 726
    :cond_2
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/avmservice/CameraServiceImpl;->updateError(Ljava/lang/String;II)V

    return-void
.end method

.method public onOperationSuccess(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 709
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOperationSuccess -id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " operation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    invoke-direct {p0, p1, p2}, Lcom/yftech/avmservice/CameraServiceImpl;->updateStatus(Ljava/lang/String;I)V

    return-void
.end method

.method public registerCameraServiceCallback(Ljava/lang/String;Lcom/yftech/avmservice/ICameraServiceCallback;)V
    .locals 4

    const-string v0, "CameraServiceImpl"

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCameraServiceCallback - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 385
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 386
    iget-boolean p2, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSignalOn:Z

    if-nez p2, :cond_0

    const/16 p2, 0x65

    .line 387
    invoke-direct {p0, p1, p2}, Lcom/yftech/avmservice/CameraServiceImpl;->updateStatus(Ljava/lang/String;I)V

    .line 389
    :cond_0
    iget-boolean p2, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mIsArm2RvcOn:Z

    if-nez p2, :cond_1

    const-string p2, "CameraServiceImpl"

    const-string v0, "notify arm2 rvc exit"

    .line 390
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p2, 0x69

    .line 391
    invoke-direct {p0, p1, p2}, Lcom/yftech/avmservice/CameraServiceImpl;->updateStatus(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public resetSettings(Ljava/lang/String;)V
    .locals 0

    .line 337
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->resetSettings(Ljava/lang/String;)V

    return-void
.end method

.method public sendMediaMountedAndEjectedMessage(Z)V
    .locals 2

    .line 220
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCameraStateMachineMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 221
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 222
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/avmservice/CameraStateMachine;

    if-eqz p1, :cond_0

    const/16 v1, -0x11

    goto :goto_1

    :cond_0
    const/16 v1, 0x11

    :goto_1
    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public sendQBMessage(Z)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendQBMessage, isQbOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCameraStateMachineMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 229
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yftech/avmservice/CameraStateMachine;

    if-eqz p1, :cond_0

    const/16 v1, 0x10

    goto :goto_1

    :cond_0
    const/16 v1, -0x10

    :goto_1
    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCameraMonitorListener(Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;)V
    .locals 0

    .line 735
    iput-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    return-void
.end method

.method public setDuration(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "CameraServiceImpl"

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDuration - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "(s)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 324
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1, v0, v1}, Lcom/yftech/avmservice/CameraStateMachine;->setDuration(Ljava/lang/String;J)V

    return-void
.end method

.method public setMicState(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMicState - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " micOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yftech/avmservice/CameraStateMachine;->setMic(Ljava/lang/String;Z)V

    return-void
.end method

.method public setResolution(Ljava/lang/String;II)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResolution - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/avmservice/CameraStateMachine;->setResolution(Ljava/lang/String;II)V

    return-void
.end method

.method public setWatermarkHeight(Ljava/lang/String;II)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWatermarkHeight - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/avmservice/CameraStateMachine;->setWatermarkHeight(Ljava/lang/String;II)V

    return-void
.end method

.method public setWatermarkStartX(Ljava/lang/String;II)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWatermarkStartX - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/avmservice/CameraStateMachine;->setWatermarkStartX(Ljava/lang/String;II)V

    return-void
.end method

.method public setWatermarkStartY(Ljava/lang/String;II)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWatermarkStartY - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/avmservice/CameraStateMachine;->setWatermarkStartY(Ljava/lang/String;II)V

    return-void
.end method

.method public setWatermarkState(Ljava/lang/String;IZ)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWatermarkState - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " watermarkOn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/avmservice/CameraStateMachine;->setWaterMark(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setWatermarkWidth(Ljava/lang/String;II)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWatermarkWidth - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/yftech/avmservice/CameraStateMachine;->setWatermarkWidth(Ljava/lang/String;II)V

    return-void
.end method

.method showTouchInputFilterView()V
    .locals 3

    const-string v0, "CameraServiceImpl"

    const-string v1, "filterTouchInputForArm2"

    const/4 v2, 0x0

    .line 415
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mFilterView:Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;->setGravity(I)V

    .line 417
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mFilterView:Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;->setTextSize(F)V

    .line 418
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mFilterView:Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;->setTextColor(I)V

    .line 419
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mFilterView:Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;

    const v1, 0x7f0c0052

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;->setText(I)V

    .line 420
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mFilterView:Lcom/yftech/avmservice/CameraServiceImpl$TouchInputFilterView;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public snapShot(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "snapShot - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->snapshot(Ljava/lang/String;)V

    return-void
.end method

.method public startBackcar(Ljava/lang/String;)V
    .locals 6

    .line 501
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSignalOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "CameraServiceImpl"

    const-string p1, "startBackcar when has not stop it"

    .line 502
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 505
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSignalOn:Z

    .line 506
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraServiceImpl;->enableBackcarAudio()V

    .line 508
    iget-boolean v2, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mUserPreviewOn:Z

    const/16 v3, 0x64

    if-eqz v2, :cond_1

    const-string v0, "CameraServiceImpl"

    const-string v2, "startBackcar when user preview has not stop it"

    .line 509
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    invoke-direct {p0, p1, v3}, Lcom/yftech/avmservice/CameraServiceImpl;->updateStatus(Ljava/lang/String;I)V

    return-void

    .line 513
    :cond_1
    iput-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCurrentBackCamerId:Ljava/lang/String;

    .line 514
    iget-object v2, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    if-eqz v2, :cond_2

    .line 515
    iget-object v2, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    invoke-interface {v2}, Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;->onCameraMonitorReqShow()V

    :cond_2
    const-string v2, "CameraServiceImpl"

    .line 519
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startBackcar, backcar camera id is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    iget-object v2, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "CameraServiceImpl"

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startBackcar, backcar camera id is11 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v4, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceCallback:Lcom/yftech/avmservice/BackcarSurfaceCallback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 523
    new-instance v1, Lcom/yftech/avmservice/BackcarSurfaceCallback;

    invoke-direct {v1, p1, p0}, Lcom/yftech/avmservice/BackcarSurfaceCallback;-><init>(Ljava/lang/String;Lcom/yftech/avmservice/CameraServiceImpl;)V

    iput-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceCallback:Lcom/yftech/avmservice/BackcarSurfaceCallback;

    .line 524
    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceCallback:Lcom/yftech/avmservice/BackcarSurfaceCallback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 525
    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/yftech/avmservice/CameraServiceImpl;->startPreview(Ljava/lang/String;Landroid/view/Surface;Z)V

    goto :goto_0

    :cond_3
    const-string v0, "CameraServiceImpl"

    .line 527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startBackcar, backcar camera id is22 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 528
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceCallback:Lcom/yftech/avmservice/BackcarSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 529
    new-instance v0, Lcom/yftech/avmservice/BackcarSurfaceCallback;

    invoke-direct {v0, p1, p0}, Lcom/yftech/avmservice/BackcarSurfaceCallback;-><init>(Ljava/lang/String;Lcom/yftech/avmservice/CameraServiceImpl;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceCallback:Lcom/yftech/avmservice/BackcarSurfaceCallback;

    .line 530
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceCallback:Lcom/yftech/avmservice/BackcarSurfaceCallback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 541
    :goto_0
    invoke-direct {p0, p1, v3}, Lcom/yftech/avmservice/CameraServiceImpl;->updateStatus(Ljava/lang/String;I)V

    return-void
.end method

.method public startPreview(Ljava/lang/String;Landroid/view/Surface;Z)V
    .locals 4

    const-string v0, "CameraServiceImpl"

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startPreview - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p3, :cond_0

    .line 241
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSignalOn:Z

    if-eqz v0, :cond_0

    const-string p0, "CameraServiceImpl"

    const-string p1, "do not start preview when backcar started"

    .line 242
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 245
    :cond_0
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    new-instance v0, Lcom/yftech/avmservice/WrappedSurface;

    invoke-direct {v0, p2, p3}, Lcom/yftech/avmservice/WrappedSurface;-><init>(Landroid/view/Surface;Z)V

    invoke-virtual {p0, p1, v0}, Lcom/yftech/avmservice/CameraStateMachine;->startPreview(Ljava/lang/String;Lcom/yftech/avmservice/WrappedSurface;)V

    return-void
.end method

.method public startRecord(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yftech/avmservice/CameraStateMachine;->startRecord(Ljava/lang/String;Z)V

    return-void
.end method

.method public startUserPreview(Ljava/lang/String;)V
    .locals 4

    .line 438
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSignalOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p0, "CameraServiceImpl"

    const-string p1, "userStartPreivew but Backcar has not stop it"

    .line 439
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 442
    :cond_0
    iput-boolean v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSignalOn:Z

    const/4 v0, 0x1

    .line 443
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mUserPreviewOn:Z

    .line 444
    iput-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCurrentBackCamerId:Ljava/lang/String;

    .line 445
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    if-eqz v0, :cond_1

    .line 446
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    invoke-interface {v0}, Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;->onCameraMonitorReqShow()V

    :cond_1
    const-string v0, "CameraServiceImpl"

    .line 450
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userStartPreivew, backcar camera id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceCallback:Lcom/yftech/avmservice/BackcarSurfaceCallback;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 452
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CameraServiceImpl"

    .line 453
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userStartPreivew, backcar camera id is11 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    iget-boolean v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSignalOn:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/yftech/avmservice/CameraServiceImpl;->startPreview(Ljava/lang/String;Landroid/view/Surface;Z)V

    goto :goto_0

    :cond_2
    const-string v0, "CameraServiceImpl"

    .line 456
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userStartPreivew, backcar camera id is22 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    new-instance v0, Lcom/yftech/avmservice/BackcarSurfaceCallback;

    invoke-direct {v0, p1, p0}, Lcom/yftech/avmservice/BackcarSurfaceCallback;-><init>(Ljava/lang/String;Lcom/yftech/avmservice/CameraServiceImpl;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceCallback:Lcom/yftech/avmservice/BackcarSurfaceCallback;

    .line 458
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceCallback:Lcom/yftech/avmservice/BackcarSurfaceCallback;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :goto_0
    return-void
.end method

.method public stopBackcar(Ljava/lang/String;)V
    .locals 5

    .line 545
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSignalOn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "CameraServiceImpl"

    const-string p1, "stop backcar when has not start it"

    .line 546
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 549
    :cond_0
    iput-boolean v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSignalOn:Z

    .line 551
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mUserPreviewOn:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x65

    .line 552
    invoke-direct {p0, p1, v0}, Lcom/yftech/avmservice/CameraServiceImpl;->updateStatus(Ljava/lang/String;I)V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 555
    iput-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCurrentBackCamerId:Ljava/lang/String;

    const-string v2, "CameraServiceImpl"

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopBackcar, backcar camera id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 558
    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 559
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    const/4 v0, 0x1

    .line 560
    invoke-virtual {p0, p1, v0}, Lcom/yftech/avmservice/CameraServiceImpl;->stopPreview(Ljava/lang/String;Z)V

    .line 562
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    if-eqz p1, :cond_2

    .line 563
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    invoke-interface {p1}, Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;->onCameraMonitorReqHide()V

    .line 565
    :cond_2
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceCallback:Lcom/yftech/avmservice/BackcarSurfaceCallback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 566
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraServiceImpl;->disableBackcarAudio()V

    return-void
.end method

.method public stopPreview(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreview - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/yftech/avmservice/CameraStateMachine;->stopPreview(Ljava/lang/String;Z)V

    return-void
.end method

.method public stopRecord(Ljava/lang/String;)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopRecord - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->getCameraStateMachine(Ljava/lang/String;)Lcom/yftech/avmservice/CameraStateMachine;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->stopRecord(Ljava/lang/String;)V

    return-void
.end method

.method public stopUserPreview(Ljava/lang/String;)V
    .locals 5

    .line 473
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mUserPreviewOn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "CameraServiceImpl"

    const-string p1, "stop user preview when has not start it"

    .line 474
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 477
    :cond_0
    iput-boolean v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mUserPreviewOn:Z

    .line 479
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSignalOn:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 482
    iput-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCurrentBackCamerId:Ljava/lang/String;

    const-string v2, "CameraServiceImpl"

    .line 483
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopUserPreview, backcar camera id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1, v0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 485
    iget-object v1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 487
    iget-object v0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 488
    invoke-virtual {p0, p1, v0}, Lcom/yftech/avmservice/CameraServiceImpl;->stopPreview(Ljava/lang/String;Z)V

    .line 490
    :cond_2
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    if-eqz p1, :cond_3

    .line 491
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->cameraMonitorListener:Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;

    invoke-interface {p1}, Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;->onCameraMonitorReqHide()V

    .line 493
    :cond_3
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mSurfaceCallback:Lcom/yftech/avmservice/BackcarSurfaceCallback;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    return-void
.end method

.method public unregisterCameraServiceCallback(Ljava/lang/String;Lcom/yftech/avmservice/ICameraServiceCallback;)V
    .locals 3

    const-string v0, "CameraServiceImpl"

    .line 398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterCameraServiceCallback - cameraId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 400
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p2}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    return-void
.end method

.method public updateBackcarUi()V
    .locals 0

    return-void
.end method
