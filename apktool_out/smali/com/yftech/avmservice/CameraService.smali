.class public Lcom/yftech/avmservice/CameraService;
.super Landroid/app/Service;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/avmservice/CameraService$MyUEventObserver;
    }
.end annotation


# static fields
.field private static final ACTION_PREQB_OFF:Ljava/lang/String; = "autochips.intent.action.PREQB_POWEROFF"

.field private static final ACTION_PREQB_ON:Ljava/lang/String; = "autochips.intent.action.PREQB_POWERON"

.field private static final ACTION_QB_OFF:Ljava/lang/String; = "autochips.intent.action.QB_POWEROFF"

.field private static final ACTION_QB_ON:Ljava/lang/String; = "autochips.intent.action.QB_POWERON"

.field private static final ADDR_RVC_CAMERA_ID:I = 0x1002d

.field private static final BC_TYPE_ADDR:I = 0x10009

.field private static final NOTIFICATION_CHANNEL_ID_SERVICE:Ljava/lang/String; = "com.yftech.avmservice.CameraService"

.field private static final NOTIFICATION_ID:I = 0x69

.field private static final TAG:Ljava/lang/String; = "CameraService"

.field private static final TYPE_RVC:I

.field private static gInst:Lcom/yftech/avmservice/CameraService;


# instance fields
.field private isMetalogoRun:Z

.field private isReopenCamera:Z

.field mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackcar:Lcom/autochips/backcar/BackCar;

.field private mCameraServiceImpl:Lcom/yftech/avmservice/CameraServiceImpl;

.field private mCurrentBackcarCameraId:Ljava/lang/String;

.field private mCurrentUserId:I

.field private final mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mDevPath:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHasShownTouchInputFilterView:Z

.field private mIsArm2Exited:Z

.field private mIsBackcarOn:Z

.field private mIsQBOn:Z

.field private mIsRVCMode:Z

.field private mListenerSignal:Lcom/autochips/backcar/BackCar$Listener;

.field private mMountUnmountBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mNeedStartBackcarAfterQBOn:Z

.field mQBReceiver:Landroid/content/BroadcastReceiver;

.field private mUEventObserver:Lcom/yftech/avmservice/CameraService$MyUEventObserver;

.field mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

.field metaZoneCheckRunnable:Ljava/lang/Runnable;

.field private resetCameraCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraService;->mIsQBOn:Z

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraService;->mIsBackcarOn:Z

    .line 70
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraService;->mIsRVCMode:Z

    .line 71
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/yftech/avmservice/CameraService;->mCurrentUserId:I

    .line 72
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/avmservice/CameraService;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 73
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/yftech/avmservice/CameraService;->mHandler:Landroid/os/Handler;

    const-string v1, "DEVPATH=/devices/platform/soc/11071000.i2c/i2c-1/1-006a"

    .line 76
    iput-object v1, p0, Lcom/yftech/avmservice/CameraService;->mDevPath:Ljava/lang/String;

    .line 78
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraService;->isReopenCamera:Z

    .line 79
    iput v0, p0, Lcom/yftech/avmservice/CameraService;->resetCameraCount:I

    .line 137
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraService;->isMetalogoRun:Z

    .line 139
    new-instance v0, Lcom/yftech/avmservice/CameraService$1;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraService$1;-><init>(Lcom/yftech/avmservice/CameraService;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraService;->mListenerSignal:Lcom/autochips/backcar/BackCar$Listener;

    .line 284
    new-instance v0, Lcom/yftech/avmservice/CameraService$2;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraService$2;-><init>(Lcom/yftech/avmservice/CameraService;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 290
    new-instance v0, Lcom/yftech/avmservice/CameraService$3;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraService$3;-><init>(Lcom/yftech/avmservice/CameraService;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraService;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    .line 459
    new-instance v0, Lcom/yftech/avmservice/CameraService$5;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraService$5;-><init>(Lcom/yftech/avmservice/CameraService;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraService;->metaZoneCheckRunnable:Ljava/lang/Runnable;

    .line 606
    new-instance v0, Lcom/yftech/avmservice/CameraService$6;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraService$6;-><init>(Lcom/yftech/avmservice/CameraService;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraService;->mMountUnmountBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 644
    new-instance v0, Lcom/yftech/avmservice/CameraService$7;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraService$7;-><init>(Lcom/yftech/avmservice/CameraService;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraService;->mQBReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private abandonAudioFocusWhenArm2Exit()V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x6

    .line 338
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    .line 337
    invoke-virtual {v0, p0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;)I

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/avmservice/CameraService;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraService;->isReopenCamera:Z

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/avmservice/CameraService;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraService;->isReopenCamera:Z

    return p1
.end method

.method static synthetic access$100(Lcom/yftech/avmservice/CameraService;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/avmservice/CameraService;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentUserId:I

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/avmservice/CameraService;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/yftech/avmservice/CameraService;->mCurrentUserId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/yftech/avmservice/CameraService;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentBackcarCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/avmservice/CameraService;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/yftech/avmservice/CameraService;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraService;->isMetalogoRun:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/yftech/avmservice/CameraService;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraService;->isMetalogoRun:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/yftech/avmservice/CameraService;)Lcom/autochips/backcar/BackCar;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mBackcar:Lcom/autochips/backcar/BackCar;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/yftech/avmservice/CameraService;Lcom/autochips/backcar/BackCar;)Lcom/autochips/backcar/BackCar;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/yftech/avmservice/CameraService;->mBackcar:Lcom/autochips/backcar/BackCar;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/yftech/avmservice/CameraService;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraService;->mIsRVCMode:Z

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/avmservice/CameraService;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/yftech/avmservice/CameraService;->resetCameraCount:I

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/avmservice/CameraService;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/yftech/avmservice/CameraService;->resetCameraCount:I

    return p1
.end method

.method static synthetic access$208(Lcom/yftech/avmservice/CameraService;)I
    .locals 2

    .line 47
    iget v0, p0, Lcom/yftech/avmservice/CameraService;->resetCameraCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/avmservice/CameraService;->resetCameraCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/yftech/avmservice/CameraService;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraService;->mIsArm2Exited:Z

    return p0
.end method

.method static synthetic access$302(Lcom/yftech/avmservice/CameraService;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraService;->mIsArm2Exited:Z

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/avmservice/CameraService;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraService;->mHasShownTouchInputFilterView:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/avmservice/CameraService;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraService;->mHasShownTouchInputFilterView:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/avmservice/CameraService;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraService;->mIsQBOn:Z

    return p0
.end method

.method static synthetic access$502(Lcom/yftech/avmservice/CameraService;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraService;->mIsQBOn:Z

    return p1
.end method

.method static synthetic access$600(Lcom/yftech/avmservice/CameraService;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraService;->mNeedStartBackcarAfterQBOn:Z

    return p0
.end method

.method static synthetic access$602(Lcom/yftech/avmservice/CameraService;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraService;->mNeedStartBackcarAfterQBOn:Z

    return p1
.end method

.method static synthetic access$700(Lcom/yftech/avmservice/CameraService;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraService;->mIsBackcarOn:Z

    return p0
.end method

.method static synthetic access$702(Lcom/yftech/avmservice/CameraService;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraService;->mIsBackcarOn:Z

    return p1
.end method

.method static synthetic access$802(Lcom/yftech/avmservice/CameraService;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/yftech/avmservice/CameraService;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$900(Lcom/yftech/avmservice/CameraService;)Lcom/yftech/avmservice/CameraServiceImpl;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mCameraServiceImpl:Lcom/yftech/avmservice/CameraServiceImpl;

    return-object p0
.end method

.method private getBackcarCameraId()Z
    .locals 3

    .line 370
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentBackcarCameraId:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 373
    :cond_0
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->isRvcMode()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string p0, "CameraService"

    const-string v0, "not ARM1 RVC,skip"

    .line 374
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 377
    :cond_1
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getBackCarCameraID()I

    move-result v0

    if-gez v0, :cond_2

    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentBackcarCameraId:Ljava/lang/String;

    return v2

    .line 382
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentBackcarCameraId:Ljava/lang/String;

    return v1
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 2

    const-string p0, "null"

    const/4 v0, 0x4

    .line 568
    new-array v0, v0, [I

    const v1, 0x10009

    .line 569
    invoke-static {v1, v0}, Lcom/autochips/metazone/AtcMetazone;->readval(I[I)I

    return-object p0
.end method

.method public static getInstance()Lcom/yftech/avmservice/CameraService;
    .locals 1

    .line 82
    sget-object v0, Lcom/yftech/avmservice/CameraService;->gInst:Lcom/yftech/avmservice/CameraService;

    return-object v0
.end method

.method private initChannel()V
    .locals 4

    const-string v0, "notification"

    .line 574
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/CameraService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 575
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "com.yftech.avmservice.CameraService"

    const-string v2, "CameraService"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private isRVCMode()Z
    .locals 3

    .line 408
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->isRvcMode()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "CameraService"

    const-string v0, "not ARM1 RVC!"

    const/4 v1, 0x0

    .line 410
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 413
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraService;->mIsRVCMode:Z

    return v0
.end method

.method private registerMountUnmountReceiver()V
    .locals 2

    .line 588
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    .line 589
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_CHECKING"

    .line 590
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 591
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_NOFS"

    .line 592
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_REMOVED"

    .line 593
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_SHARED"

    .line 594
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    .line 595
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    .line 596
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_EJECT"

    .line 597
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    .line 598
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/yftech/avmservice/CameraService;->mMountUnmountBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/avmservice/CameraService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerQBReceiver()V
    .locals 2

    .line 630
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "autochips.intent.action.QB_POWEROFF"

    .line 631
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "autochips.intent.action.QB_POWERON"

    .line 632
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "autochips.intent.action.PREQB_POWEROFF"

    .line 633
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "autochips.intent.action.PREQB_POWERON"

    .line 634
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    .line 635
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 636
    iget-object v1, p0, Lcom/yftech/avmservice/CameraService;->mQBReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/yftech/avmservice/CameraService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requestBackcarAudioFocusForArm2()V
    .locals 4

    .line 330
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mAudioManager:Landroid/media/AudioManager;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x6

    .line 331
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 332
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    .line 330
    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;Landroid/media/AudioAttributes;II)I

    move-result p0

    const-string v0, "CameraService"

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestBackcarAudioFocusForArm2, "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private setUncaughtExceptionHandler()V
    .locals 1

    .line 446
    new-instance v0, Lcom/yftech/avmservice/CameraService$4;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraService$4;-><init>(Lcom/yftech/avmservice/CameraService;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method private startForegroundNotification()V
    .locals 2

    .line 579
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraService;->initChannel()V

    .line 580
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "com.yftech.avmservice.CameraService"

    invoke-direct {v0, p0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "CameraService"

    .line 581
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "CameraService is running"

    .line 582
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    const v1, 0x7f0a0040

    .line 583
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 584
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x69

    invoke-virtual {p0, v1, v0}, Lcom/yftech/avmservice/CameraService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private unRegisterMountUnmountReceiver()V
    .locals 1

    .line 603
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mMountUnmountBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/CameraService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private unregisterQBReceiver()V
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mQBReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/CameraService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method


# virtual methods
.method public isPreviewStarted()Z
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentBackcarCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mCameraServiceImpl:Lcom/yftech/avmservice/CameraServiceImpl;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentBackcarCameraId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/CameraServiceImpl;->isPreviewStarted(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string p1, "CameraService"

    const-string v0, "onBind"

    const/4 v1, 0x0

    .line 555
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mCameraServiceImpl:Lcom/yftech/avmservice/CameraServiceImpl;

    return-object p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 561
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 562
    invoke-virtual {p0}, Lcom/yftech/avmservice/CameraService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 563
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mCameraServiceImpl:Lcom/yftech/avmservice/CameraServiceImpl;

    invoke-virtual {p0}, Lcom/yftech/avmservice/CameraServiceImpl;->updateBackcarUi()V

    return-void
.end method

.method public onCreate()V
    .locals 5

    const-string v0, "CameraService"

    const-string v1, "onCreate"

    const/4 v2, 0x0

    .line 488
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 489
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 490
    sput-object p0, Lcom/yftech/avmservice/CameraService;->gInst:Lcom/yftech/avmservice/CameraService;

    .line 491
    new-instance v0, Lcom/yftech/avmservice/CameraServiceImpl;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraService;->mCameraServiceImpl:Lcom/yftech/avmservice/CameraServiceImpl;

    const-string v0, "audio"

    .line 492
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/CameraService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/yftech/avmservice/CameraService;->mAudioManager:Landroid/media/AudioManager;

    .line 493
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraService;->startForegroundNotification()V

    .line 494
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraService;->registerMountUnmountReceiver()V

    .line 495
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraService;->registerQBReceiver()V

    .line 496
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraService;->setUncaughtExceptionHandler()V

    .line 497
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraService;->isRVCMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    new-instance v0, Lcom/autochips/backcar/BackCar;

    invoke-direct {v0}, Lcom/autochips/backcar/BackCar;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraService;->mBackcar:Lcom/autochips/backcar/BackCar;

    .line 499
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 500
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 501
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x3

    .line 502
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object v3, p0, Lcom/yftech/avmservice/CameraService;->mBackcar:Lcom/autochips/backcar/BackCar;

    iget-object v4, p0, Lcom/yftech/avmservice/CameraService;->mListenerSignal:Lcom/autochips/backcar/BackCar$Listener;

    invoke-virtual {v3, v4, v0}, Lcom/autochips/backcar/BackCar;->setListener(Lcom/autochips/backcar/BackCar$Listener;Ljava/util/ArrayList;)Z

    .line 505
    new-instance v0, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraService;->metaZoneCheckRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 506
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 508
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 509
    new-instance v0, Lcom/yftech/avmservice/CameraService$MyUEventObserver;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraService$MyUEventObserver;-><init>(Lcom/yftech/avmservice/CameraService;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraService;->mUEventObserver:Lcom/yftech/avmservice/CameraService$MyUEventObserver;

    .line 510
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mUEventObserver:Lcom/yftech/avmservice/CameraService$MyUEventObserver;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraService;->mDevPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraService$MyUEventObserver;->startObserving(Ljava/lang/String;)V

    const-string v0, "CameraService"

    const-string v1, "startObserving"

    .line 511
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 515
    :cond_0
    new-instance v0, Lcom/autochips/backcar/BackCar;

    invoke-direct {v0}, Lcom/autochips/backcar/BackCar;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraService;->mBackcar:Lcom/autochips/backcar/BackCar;

    .line 516
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mBackcar:Lcom/autochips/backcar/BackCar;

    invoke-virtual {v0}, Lcom/autochips/backcar/BackCar;->sendReadyToArm2()Z

    .line 520
    :cond_1
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    const-string v1, "com.yftech.avmservice"

    invoke-interface {v0, p0, v1}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "CameraService"

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    .line 533
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 535
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mCameraServiceImpl:Lcom/yftech/avmservice/CameraServiceImpl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraServiceImpl;->release()V

    .line 536
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraService;->unRegisterMountUnmountReceiver()V

    .line 537
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraService;->unregisterQBReceiver()V

    .line 539
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/avmservice/CameraService;->mUserSwitchObserver:Landroid/app/IUserSwitchObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 542
    :catch_0
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraService;->mIsRVCMode:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mBackcar:Lcom/autochips/backcar/BackCar;

    invoke-virtual {v0, v1, v1}, Lcom/autochips/backcar/BackCar;->setListener(Lcom/autochips/backcar/BackCar$Listener;Ljava/util/ArrayList;)Z

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mDefaultUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 546
    iput-object v1, p0, Lcom/yftech/avmservice/CameraService;->mCameraServiceImpl:Lcom/yftech/avmservice/CameraServiceImpl;

    const/4 v0, 0x1

    .line 547
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/CameraService;->stopForeground(Z)V

    .line 548
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mUEventObserver:Lcom/yftech/avmservice/CameraService$MyUEventObserver;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mDevPath:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/CameraService$MyUEventObserver;->startObserving(Ljava/lang/String;)V

    const-string p0, "sys.avmservice.run.state"

    const-string v0, "0"

    .line 549
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "CameraService"

    const-string v0, "set sys.avmservice.run.state 0"

    .line 550
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const-string p0, "CameraService"

    const-string p1, "onStartCommand"

    const/4 p2, 0x0

    .line 527
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public startBackCar()V
    .locals 2

    .line 264
    iget v0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/yftech/avmservice/CameraService;->getBackcarCameraId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mCameraServiceImpl:Lcom/yftech/avmservice/CameraServiceImpl;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentBackcarCameraId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/CameraServiceImpl;->startBackcar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startUserPreview()V
    .locals 2

    .line 249
    iget v0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/yftech/avmservice/CameraService;->getBackcarCameraId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mCameraServiceImpl:Lcom/yftech/avmservice/CameraServiceImpl;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentBackcarCameraId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/CameraServiceImpl;->startUserPreview(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stopBackCar()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentBackcarCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mCameraServiceImpl:Lcom/yftech/avmservice/CameraServiceImpl;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentBackcarCameraId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/CameraServiceImpl;->stopBackcar(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public stopUserPreview()V
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentBackcarCameraId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService;->mCameraServiceImpl:Lcom/yftech/avmservice/CameraServiceImpl;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraService;->mCurrentBackcarCameraId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/CameraServiceImpl;->stopUserPreview(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
