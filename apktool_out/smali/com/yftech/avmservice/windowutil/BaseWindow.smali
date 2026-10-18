.class public Lcom/yftech/avmservice/windowutil/BaseWindow;
.super Ljava/lang/Object;
.source "BaseWindow.java"

# interfaces
.implements Lcom/yftech/avmservice/util/DistributedHandler$HandlerPart;


# static fields
.field protected static final RVC_CAMERA_SIGNAL_STATE:Ljava/lang/String; = "rvc_camera_signal_state"

.field protected static final RVC_CAMERA_SIGNAL_STATE_ERR:I = 0x0

.field protected static final RVC_CAMERA_SIGNAL_STATE_OK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BaseWindow"


# instance fields
.field exitAvmFirstShow:Ljava/lang/Runnable;

.field private isAvmRequestCameraOpen:Z

.field private isFirstOpenCamera:Z

.field private isNeedRetryOPenCamera:Z

.field private isOnFirstOpenCameraState:Z

.field private isShown:Ljava/lang/Boolean;

.field private isUpdateVisibility:Z

.field protected mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

.field private mCameraState:I

.field private mCarHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mIsRestoreScreenBackLight:Z

.field private mIsVisibility:Ljava/lang/Boolean;

.field private mMySoundPool:Lcom/yftech/avmservice/util/MySoundPool;

.field updateVisibilityRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 50
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isShown:Ljava/lang/Boolean;

    .line 51
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mIsVisibility:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mContext:Landroid/content/Context;

    .line 54
    iput-boolean v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isUpdateVisibility:Z

    .line 55
    iput-boolean v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mIsRestoreScreenBackLight:Z

    .line 56
    iput-object v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mMySoundPool:Lcom/yftech/avmservice/util/MySoundPool;

    const/4 v1, 0x1

    .line 58
    iput v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCameraState:I

    .line 60
    iput-boolean v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isNeedRetryOPenCamera:Z

    .line 62
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    .line 125
    new-instance v2, Lcom/yftech/avmservice/windowutil/BaseWindow$1;

    invoke-direct {v2, p0}, Lcom/yftech/avmservice/windowutil/BaseWindow$1;-><init>(Lcom/yftech/avmservice/windowutil/BaseWindow;)V

    iput-object v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateVisibilityRunnable:Ljava/lang/Runnable;

    .line 154
    new-instance v2, Lcom/yftech/avmservice/windowutil/BaseWindow$2;

    invoke-direct {v2, p0}, Lcom/yftech/avmservice/windowutil/BaseWindow$2;-><init>(Lcom/yftech/avmservice/windowutil/BaseWindow;)V

    iput-object v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->exitAvmFirstShow:Ljava/lang/Runnable;

    .line 249
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isFirstOpenCamera:Z

    .line 250
    iput-boolean v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    .line 251
    iput-boolean v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isAvmRequestCameraOpen:Z

    .line 65
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mContext:Landroid/content/Context;

    .line 66
    new-instance p1, Lcom/yftech/avmservice/util/MySoundPool;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/yftech/avmservice/util/MySoundPool;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mMySoundPool:Lcom/yftech/avmservice/util/MySoundPool;

    .line 67
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    .line 68
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getMainHandler()Lcom/yftech/avmservice/util/DistributedHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/util/DistributedHandler;->addHandlerPart(Lcom/yftech/avmservice/util/DistributedHandler$HandlerPart;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 42
    sget-object v0, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/avmservice/windowutil/BaseWindow;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isUpdateVisibility:Z

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/avmservice/windowutil/BaseWindow;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isUpdateVisibility:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/avmservice/windowutil/BaseWindow;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->onRvcHideWindow()V

    return-void
.end method

.method static synthetic access$300(Lcom/yftech/avmservice/windowutil/BaseWindow;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isNeedRetryOPenCamera:Z

    return p0
.end method

.method static synthetic access$302(Lcom/yftech/avmservice/windowutil/BaseWindow;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isNeedRetryOPenCamera:Z

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/avmservice/windowutil/BaseWindow;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/avmservice/windowutil/BaseWindow;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/avmservice/windowutil/BaseWindow;)I
    .locals 0

    .line 42
    iget p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCameraState:I

    return p0
.end method

.method static synthetic access$600(Lcom/yftech/avmservice/windowutil/BaseWindow;)Landroid/os/Handler;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private onAvmHideWindow()V
    .locals 3

    .line 233
    sget-object v0, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvmHideWindow mCameraState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    iget v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCameraState:I

    if-nez v0, :cond_0

    .line 237
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqHide()V

    .line 243
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->hideWindow()V

    goto :goto_0

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->hideWindow()V

    :goto_0
    return-void
.end method

.method private onRvcHideWindow()V
    .locals 3

    .line 220
    sget-object v0, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRvcHideWindow mCameraState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCameraState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iget v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCameraState:I

    if-nez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqHide()V

    .line 225
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->hideWindow()V

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->hideWindow()V

    :goto_0
    return-void
.end method

.method private sendHXBroadCast(IZ)V
    .locals 7

    .line 487
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.yftech.avmservice.SHOW_STATE"

    .line 488
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "type"

    .line 489
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "isShow"

    .line 490
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 491
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    .line 493
    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 494
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 495
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 496
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 497
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    sget-object v4, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packageName "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",Receiver:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, p2, [Ljava/lang/Object;

    invoke-static {v4, v1, v5}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 501
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 502
    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 505
    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method public BroadcastWindow(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "sys.avmservice.show.state"

    const-string v1, "1"

    .line 510
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "sys.avmservice.show.state"

    const-string v1, "0"

    .line 512
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/yftech/avmservice/windowutil/BaseWindow;->sendHXBroadCast(IZ)V

    return-void
.end method

.method public dispatchHandleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 254
    sget-object v0, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchHandleMessage msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd4

    if-eq v0, v1, :cond_1e

    const/16 v1, 0xd8

    if-eq v0, v1, :cond_1d

    const/16 v1, 0xfa

    if-eq v0, v1, :cond_1f

    const/16 v1, 0xff

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_15

    const/16 v1, 0x106

    const-wide/16 v5, 0x1388

    if-eq v0, v1, :cond_a

    const/16 v1, 0x10a

    if-eq v0, v1, :cond_3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 462
    :pswitch_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateWindow()V

    .line 464
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0xcc

    if-ne p1, v0, :cond_0

    .line 465
    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/windowutil/BaseWindow;->setCameraState(I)Z

    goto/16 :goto_5

    .line 467
    :cond_0
    invoke-virtual {p0, v4}, Lcom/yftech/avmservice/windowutil/BaseWindow;->setCameraState(I)Z

    goto/16 :goto_5

    .line 258
    :pswitch_1
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p1

    if-ne p1, v3, :cond_1

    .line 260
    sget-object p1, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFirstOpenCamera :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isFirstOpenCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isFirstOpenCamera:Z

    if-eqz p1, :cond_1f

    .line 262
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->showWindow()V

    .line 263
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->exitAvmFirstShow:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isFirstOpenCamera:Z

    .line 265
    iput-boolean v4, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    goto/16 :goto_5

    .line 268
    :cond_1
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p1

    if-ne p1, v4, :cond_2

    .line 269
    sget-object p1, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rvc show window,backcar io state is:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v1}, Lcom/yftech/avmservice/avm/AvmControl;->isIOBackCar()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :cond_2
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->showWindow()V

    .line 272
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isUpdateVisibility:Z

    .line 274
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 276
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 398
    :pswitch_2
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->hideWindow()V

    goto/16 :goto_5

    .line 355
    :cond_3
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_7

    .line 356
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v4, v2

    :goto_0
    if-nez v4, :cond_5

    .line 362
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqShow()V

    .line 363
    sget-object p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    const-string p1, "backcar,no open camera,restart open camera!!!"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 368
    :cond_5
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->isShow()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 369
    sget-object p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    const-string p1, "nothing to do, cause already shown"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 371
    :cond_6
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->showWindow()V

    .line 372
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isUpdateVisibility:Z

    .line 374
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 376
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 382
    :cond_7
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    move v4, v2

    .line 383
    :goto_1
    invoke-static {}, Lcom/yftech/avmservice/CameraService;->getInstance()Lcom/yftech/avmservice/CameraService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/CameraService;->isPreviewStarted()Z

    move-result p1

    .line 384
    sget-object v0, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBackcarStart:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",isCamaraPreviewStarted:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_9

    if-nez p1, :cond_9

    .line 387
    sget-object p1, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRvcTryAlwayOpenCamera ture,nothing to do.mIsVisibility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mIsVisibility:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mIsVisibility:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 389
    invoke-direct {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->onRvcHideWindow()V

    goto/16 :goto_5

    .line 393
    :cond_9
    invoke-direct {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->onRvcHideWindow()V

    goto/16 :goto_5

    .line 281
    :cond_a
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result v0

    if-ne v0, v3, :cond_1f

    .line 282
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v4, :cond_11

    .line 285
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result p1

    if-eqz p1, :cond_b

    move p1, v4

    goto :goto_2

    :cond_b
    move p1, v2

    .line 286
    :goto_2
    sget-object v0, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Avm request show isPreviewStarted:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_e

    .line 289
    sget-object p1, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOnFirstOpenCameraState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isFirstOpenCamera :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isFirstOpenCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", arm1 is not exit!!!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isFirstOpenCamera:Z

    if-eqz p1, :cond_c

    goto/16 :goto_5

    .line 295
    :cond_c
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    if-nez p1, :cond_d

    .line 296
    iput-boolean v4, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isFirstOpenCamera:Z

    .line 297
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqHide()V

    .line 298
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqShow()V

    .line 299
    iput-boolean v4, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isAvmRequestCameraOpen:Z

    .line 300
    sget-object p1, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCameraReqShow(),isOnFirstOpenCameraState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 302
    :cond_d
    sget-object p1, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "11Avm request show, isOnFirstOpenCameraState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 308
    :cond_e
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    if-eqz p1, :cond_f

    .line 309
    sget-object p1, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "22Avm request show, isOnFirstOpenCameraState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 316
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isUpdateVisibility:Z

    .line 318
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 324
    :cond_f
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->isShow()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 325
    sget-object p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    const-string p1, "noting to do, cause already shown"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 327
    :cond_10
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->showWindow()V

    .line 328
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isUpdateVisibility:Z

    .line 330
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 332
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    .line 339
    :cond_11
    sget-object p1, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Avm request hide,isFirstOpenCamera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isFirstOpenCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isOnFirstOpenCameraState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isAvmRequestCameraOpen:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isAvmRequestCameraOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mIsVisibility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mIsVisibility:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 341
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isFirstOpenCamera:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    if-eqz p1, :cond_12

    goto :goto_3

    .line 349
    :cond_12
    invoke-direct {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->onAvmHideWindow()V

    goto/16 :goto_5

    .line 343
    :cond_13
    :goto_3
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isAvmRequestCameraOpen:Z

    if-eqz p1, :cond_14

    .line 344
    invoke-direct {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->onAvmHideWindow()V

    goto/16 :goto_5

    .line 345
    :cond_14
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mIsVisibility:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 346
    invoke-direct {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->onAvmHideWindow()V

    goto/16 :goto_5

    .line 403
    :cond_15
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p1

    if-ne p1, v3, :cond_19

    .line 404
    sget-object p1, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isOnFirstOpenCameraState :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 406
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    if-eqz p1, :cond_18

    .line 407
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isOnFirstOpenCameraState:Z

    .line 408
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->exitAvmFirstShow:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 409
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->isAvmDisplay()Z

    move-result p1

    if-nez p1, :cond_17

    .line 410
    iget p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCameraState:I

    if-nez p1, :cond_16

    .line 411
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqHide()V

    .line 413
    :cond_16
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->hideWindow()V

    goto :goto_5

    .line 416
    :cond_17
    invoke-virtual {p0, v4}, Lcom/yftech/avmservice/windowutil/BaseWindow;->setWindowVisibility(Z)Z

    .line 417
    iput-boolean v4, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isUpdateVisibility:Z

    .line 419
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 423
    :cond_18
    invoke-virtual {p0, v4}, Lcom/yftech/avmservice/windowutil/BaseWindow;->setWindowVisibility(Z)Z

    .line 424
    iput-boolean v4, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isUpdateVisibility:Z

    .line 426
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 428
    :cond_19
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p1

    if-ne p1, v4, :cond_1c

    .line 429
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->isIOBackCar()Z

    move-result p1

    if-nez p1, :cond_1a

    .line 430
    invoke-direct {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->onRvcHideWindow()V

    .line 432
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isNeedRetryOPenCamera:Z

    if-eqz p1, :cond_1b

    .line 433
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isNeedRetryOPenCamera:Z

    .line 434
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqHide()V

    .line 435
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqShow()V

    goto :goto_4

    .line 438
    :cond_1a
    invoke-virtual {p0, v4}, Lcom/yftech/avmservice/windowutil/BaseWindow;->setWindowVisibility(Z)Z

    .line 440
    :cond_1b
    :goto_4
    iput-boolean v4, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isUpdateVisibility:Z

    .line 442
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 445
    :cond_1c
    invoke-virtual {p0, v4}, Lcom/yftech/avmservice/windowutil/BaseWindow;->setWindowVisibility(Z)Z

    .line 446
    iput-boolean v4, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isUpdateVisibility:Z

    .line 448
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCarHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 472
    :cond_1d
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateWindow()V

    goto :goto_5

    .line 456
    :cond_1e
    :pswitch_3
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateWindow()V

    :cond_1f
    :goto_5
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xc9
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getAvmControl()Lcom/yftech/avmservice/avm/AvmControl;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    return-object p0
.end method

.method public hideWindow()V
    .locals 2

    const/4 v0, 0x0

    .line 95
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mIsVisibility:Ljava/lang/Boolean;

    .line 96
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isShown:Ljava/lang/Boolean;

    return-void
.end method

.method public isShow()Z
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isShown:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method openScreenBackLight()V
    .locals 5

    .line 179
    sget-object v0, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    const-string v1, "openScreenBackLight"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/yftech/car/screen/CarScreenManager;->isOpenScreenBrightness()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    sget-object v1, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOpenScreenBrightness:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/yftech/car/screen/CarScreenManager;->isOpenScreenBrightness()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual {v0, v2}, Lcom/yftech/car/screen/CarScreenManager;->openScreenBrightness(I)Z

    const/4 v0, 0x1

    .line 184
    iput-boolean v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mIsRestoreScreenBackLight:Z

    goto :goto_0

    .line 186
    :cond_0
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mIsRestoreScreenBackLight:Z

    :goto_0
    return-void
.end method

.method public playReverseEffect()V
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mMySoundPool:Lcom/yftech/avmservice/util/MySoundPool;

    invoke-virtual {p0}, Lcom/yftech/avmservice/util/MySoundPool;->playReverseEffect()V

    return-void
.end method

.method restoreScreenBackLight()V
    .locals 4

    .line 194
    sget-object v0, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreScreenBackLight,mIsRestoreScreenBackLight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mIsRestoreScreenBackLight:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-static {}, Lcom/yftech/car/screen/CarScreenManager;->getInstance()Lcom/yftech/car/screen/CarScreenManager;

    move-result-object v0

    .line 196
    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mIsRestoreScreenBackLight:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    const-string v1, "no closeScreenBrightness"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v0, 0x14

    .line 200
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 205
    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mIsRestoreScreenBackLight:Z

    return-void
.end method

.method public setCameraState(I)Z
    .locals 4

    .line 211
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "rvc_camera_signal_state"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 212
    sget-object v1, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set rvc camera value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",ret: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    iput p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mCameraState:I

    return v0
.end method

.method public setWindowVisibility(Z)Z
    .locals 3

    .line 110
    sget-object v0, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowVisibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mIsVisibility:Ljava/lang/Boolean;

    const/4 p0, 0x1

    return p0
.end method

.method public showWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->isShown:Ljava/lang/Boolean;

    return-void
.end method

.method public updateWindow()V
    .locals 2

    .line 122
    sget-object p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->TAG:Ljava/lang/String;

    const-string v0, "updateWindow"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
