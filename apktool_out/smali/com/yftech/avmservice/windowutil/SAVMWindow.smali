.class public Lcom/yftech/avmservice/windowutil/SAVMWindow;
.super Lcom/yftech/avmservice/windowutil/BaseWindow;
.source "SAVMWindow.java"

# interfaces
.implements Lcom/yftech/avmservice/common/ISAVMControl$ISAVMControlListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;


# static fields
.field private static final DEBUG:Z = true

.field public static final SURFACE_VIEW_HIGHT:I = 0x2d0

.field public static final SURFACE_VIEW_WIDTH:I = 0x780

.field public static final SURFACE_VIEW_X:I = 0x0

.field public static final SURFACE_VIEW_Y:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SAVMWindow"


# instance fields
.field errSoundRunnable:Ljava/lang/Runnable;

.field hideOsAvmRunnable:Ljava/lang/Runnable;

.field private isShown_nosig:Ljava/lang/Boolean;

.field last_t:J

.field private mAPADrvReq:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

.field private mAPASoundPool:Lcom/yftech/avmservice/util/APASoundPool;

.field private mContext:Landroid/content/Context;

.field private mErrLayout:Landroid/widget/RelativeLayout;

.field private mErrView:Landroid/widget/TextView;

.field mHandler:Landroid/os/Handler;

.field private mHintView:Landroid/widget/TextView;

.field private mIsAlreadyPlayRadarSound:Z

.field mIsCameraAllInputErr:Z

.field private mIsCameraSystemErr:Z

.field private mIsNeedWaitCarplayShow:Z

.field private mIsRadarSensorErr:Z

.field private mIsRadarSoundTimerRun:Z

.field private mOverLayView:Landroid/view/View;

.field private mRadarControl:Lcom/yftech/avmservice/common/IRadarControl;

.field private mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

.field private mSAVMControl:Lcom/yftech/avmservice/common/ISAVMControl;

.field private mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

.field private mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

.field private mWindowManager:Landroid/view/WindowManager;

.field now_t:J

.field rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

.field showSurefaceViewRunnable:Ljava/lang/Runnable;

.field private surfaceView:Landroid/view/SurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 118
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/windowutil/BaseWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

    .line 58
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mOverLayView:Landroid/view/View;

    .line 59
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->surfaceView:Landroid/view/SurfaceView;

    .line 60
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 61
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->isShown_nosig:Ljava/lang/Boolean;

    .line 76
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsCameraAllInputErr:Z

    .line 79
    new-instance v2, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-direct {v2}, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;-><init>()V

    iput-object v2, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    .line 80
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    .line 81
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAPASoundPool:Lcom/yftech/avmservice/util/APASoundPool;

    .line 82
    new-instance v0, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    invoke-direct {v0}, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAPADrvReq:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    .line 85
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsAlreadyPlayRadarSound:Z

    .line 86
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsRadarSoundTimerRun:Z

    .line 89
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsNeedWaitCarplayShow:Z

    .line 92
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsRadarSensorErr:Z

    const-wide/16 v2, 0x0

    .line 94
    iput-wide v2, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->now_t:J

    iput-wide v2, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->last_t:J

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsCameraSystemErr:Z

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mHandler:Landroid/os/Handler;

    .line 99
    new-instance v0, Lcom/yftech/avmservice/windowutil/SAVMWindow$1;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow$1;-><init>(Lcom/yftech/avmservice/windowutil/SAVMWindow;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->showSurefaceViewRunnable:Ljava/lang/Runnable;

    .line 109
    new-instance v0, Lcom/yftech/avmservice/windowutil/SAVMWindow$2;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow$2;-><init>(Lcom/yftech/avmservice/windowutil/SAVMWindow;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->hideOsAvmRunnable:Ljava/lang/Runnable;

    .line 388
    new-instance v0, Lcom/yftech/avmservice/windowutil/SAVMWindow$3;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow$3;-><init>(Lcom/yftech/avmservice/windowutil/SAVMWindow;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->errSoundRunnable:Ljava/lang/Runnable;

    .line 119
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    const-string v2, "MainWindow"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mContext:Landroid/content/Context;

    .line 121
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getSAVMRadarControl()Lcom/yftech/avmservice/common/IRadarControl;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mRadarControl:Lcom/yftech/avmservice/common/IRadarControl;

    .line 122
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mRadarControl:Lcom/yftech/avmservice/common/IRadarControl;

    invoke-interface {v0, p0}, Lcom/yftech/avmservice/common/IRadarControl;->setRadarListener(Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;)V

    .line 123
    new-instance v0, Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-direct {v0, p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    .line 124
    new-instance v0, Lcom/yftech/avmservice/util/APASoundPool;

    invoke-direct {v0, p1}, Lcom/yftech/avmservice/util/APASoundPool;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAPASoundPool:Lcom/yftech/avmservice/util/APASoundPool;

    .line 126
    new-instance v0, Lcom/yftech/avmservice/windowutil/CameraPreview;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-direct {v0, p1, v1}, Lcom/yftech/avmservice/windowutil/CameraPreview;-><init>(Landroid/content/Context;Lcom/yftech/avmservice/avm/AvmControl;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

    .line 127
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getSAVMControl()Lcom/yftech/avmservice/common/ISAVMControl;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSAVMControl:Lcom/yftech/avmservice/common/ISAVMControl;

    .line 128
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSAVMControl:Lcom/yftech/avmservice/common/ISAVMControl;

    invoke-interface {p1, p0}, Lcom/yftech/avmservice/common/ISAVMControl;->setSAVMControlListener(Lcom/yftech/avmservice/common/ISAVMControl$ISAVMControlListener;)V

    .line 129
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 130
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->initView()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 46
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/avmservice/windowutil/SAVMWindow;)Lcom/yftech/avmservice/windowutil/CameraPreview;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/avmservice/windowutil/SAVMWindow;)Lcom/yftech/avmservice/util/SoundPoolPlayer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/yftech/avmservice/windowutil/SAVMWindow;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsRadarSoundTimerRun:Z

    return p1
.end method

.method private stopErrSound()V
    .locals 4

    .line 374
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopErrSound\uff0cmIsRadarSoundTimerRun:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsRadarSoundTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    iget-boolean v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsRadarSoundTimerRun:Z

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->errSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 377
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {v0}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    .line 378
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsRadarSoundTimerRun:Z

    const/4 v0, 0x1

    .line 379
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->updateRadarSound(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public closeRadarSound()V
    .locals 0

    .line 385
    invoke-direct {p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->stopErrSound()V

    return-void
.end method

.method public dispatchHandleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 470
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

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

    .line 471
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_3

    const/16 v1, 0x105

    if-eq v0, v1, :cond_1

    const/16 v1, 0x107

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 487
    :cond_0
    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->updateAPASound(Z)V

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->isShow()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 474
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->isBackCar()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 475
    iput-boolean v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsNeedWaitCarplayShow:Z

    .line 476
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AudioFocus;->requestAvmFocus()I

    goto :goto_0

    .line 478
    :cond_2
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AudioFocus;->abondAvmFocus()V

    goto :goto_0

    .line 483
    :cond_3
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->isShow()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->updateErrSound(Z)V

    .line 484
    :cond_4
    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->updateRadarSound(Z)V

    .line 491
    :cond_5
    :goto_0
    invoke-super {p0, p1}, Lcom/yftech/avmservice/windowutil/BaseWindow;->dispatchHandleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public getSurface()Landroid/view/SurfaceView;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

    return-object p0
.end method

.method public hideWindow()V
    .locals 9

    .line 222
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-virtual {v0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 223
    :cond_0
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hidePopupWindow,mIsNeedWaitCarplayShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsNeedWaitCarplayShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "isBackCar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/avmservice/avm/AvmControl;->isBackCar()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-boolean v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsNeedWaitCarplayShow:Z

    if-eqz v0, :cond_2

    .line 225
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->isBackCar()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x32

    .line 227
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 229
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 232
    :cond_1
    :goto_0
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->isBackCar()Z

    move-result v0

    if-nez v0, :cond_2

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 234
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/avmservice/avm/AvmControl;->noRearElapsedRealtime()J

    move-result-wide v3

    .line 235
    sget-object v5, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "wait for capley show,sleep ms:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v7, 0x258

    sub-long/2addr v0, v3

    sub-long/2addr v7, v0

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v5, v3, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v3, 0x1f4

    cmp-long v5, v0, v3

    if-gez v5, :cond_2

    sub-long/2addr v3, v0

    .line 238
    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 245
    :cond_2
    :goto_1
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsNeedWaitCarplayShow:Z

    .line 246
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->closeRadarSound()V

    .line 247
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->restoreScreenBackLight()V

    .line 248
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AudioFocus;->abondAvmFocus()V

    const/4 v0, 0x2

    .line 249
    invoke-virtual {p0, v0, v2}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->BroadcastWindow(IZ)V

    .line 251
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 252
    invoke-super {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->hideWindow()V

    :cond_3
    return-void
.end method

.method public initView()V
    .locals 5

    .line 134
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f09002a

    const/4 v2, 0x0

    .line 135
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mOverLayView:Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mOverLayView:Landroid/view/View;

    const v1, 0x7f070069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mErrLayout:Landroid/widget/RelativeLayout;

    .line 138
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mErrLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mOverLayView:Landroid/view/View;

    const v1, 0x7f0700f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mErrView:Landroid/widget/TextView;

    .line 142
    new-instance v0, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    .line 143
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v2, 0xa

    .line 145
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xe

    .line 147
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 148
    iget-object v3, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-virtual {v3, v0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x2d0

    const/16 v4, 0x780

    invoke-direct {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 153
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x0

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 156
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 157
    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

    invoke-virtual {v1, v0}, Lcom/yftech/avmservice/windowutil/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

    const/16 v1, 0x500

    invoke-virtual {v0, v1, v3}, Lcom/yftech/avmservice/windowutil/CameraPreview;->setFixedSize(II)V

    .line 159
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->addView(Landroid/view/View;)V

    .line 160
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mOverLayView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 275
    sget-object p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    return-void
.end method

.method public onRadarInfo(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;)V
    .locals 2

    .line 523
    sget-object p1, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    const-string v0, "onRadarInfo"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getMainHandler()Lcom/yftech/avmservice/util/DistributedHandler;

    move-result-object p0

    const/16 p1, 0xd2

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSAvmCameraInputErr(I)V
    .locals 3

    .line 335
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSAvmCameraInputErr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getMainHandler()Lcom/yftech/avmservice/util/DistributedHandler;

    move-result-object p0

    const/16 p1, 0xd0

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSAvmEOLTestModeChange(Z)V
    .locals 3

    .line 329
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSAvmEOLTestModeChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 330
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getMainHandler()Lcom/yftech/avmservice/util/DistributedHandler;

    move-result-object p0

    const/16 p1, 0xd5

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSAvmGuideLineChange(I)V
    .locals 3

    .line 322
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSAvmGuideLineChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getMainHandler()Lcom/yftech/avmservice/util/DistributedHandler;

    move-result-object p0

    const/16 p1, 0xd7

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSAvmGuideLineErr(Z)V
    .locals 3

    .line 341
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSAvmGuideLineErr:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getMainHandler()Lcom/yftech/avmservice/util/DistributedHandler;

    move-result-object p0

    const/16 p1, 0xd1

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onSAvmRadarErr(Z)V
    .locals 0

    return-void
.end method

.method public onSAvmSingleViewChange(I)V
    .locals 3

    .line 316
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSAvmSingleViewChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 317
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getMainHandler()Lcom/yftech/avmservice/util/DistributedHandler;

    move-result-object p0

    const/16 p1, 0xd6

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 497
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 503
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/4 v0, 0x3

    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->sendTouchToAVM(FFI)Z

    goto :goto_0

    .line 507
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->sendTouchToAVM(FFI)Z

    goto :goto_0

    .line 499
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->sendTouchToAVM(FFI)Z

    :goto_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public sendTouchToAVM(FFI)Z
    .locals 0

    .line 517
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSAVMControl:Lcom/yftech/avmservice/common/ISAVMControl;

    invoke-interface {p0, p1, p2, p3}, Lcom/yftech/avmservice/common/ISAVMControl;->sendTouchToAVM(FFI)Z

    const/4 p0, 0x0

    return p0
.end method

.method public setUpWindowPara(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    const/16 p0, 0x804

    .line 284
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 291
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p0, p0, 0x328

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p0, -0x3

    .line 305
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 p0, -0x1

    .line 306
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 307
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p0, 0x11

    .line 308
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object p1
.end method

.method public setWindowVisibility(Z)Z
    .locals 3

    .line 258
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowVisibility"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 261
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setScaleX(F)V

    .line 262
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setScaleY(F)V

    .line 263
    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->updateErrSound(Z)V

    .line 264
    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->updateAPASound(Z)V

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setScaleX(F)V

    .line 267
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setScaleY(F)V

    :cond_1
    :goto_0
    return v1
.end method

.method public showWindow()V
    .locals 4

    .line 197
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->isShow()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 198
    sget-object p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    const-string v0, "return cause already shown"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 201
    :cond_0
    invoke-super {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->showWindow()V

    .line 202
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    const-string v2, "showPopupWindow"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->setUpWindowPara(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 204
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->updateWindow()V

    .line 206
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/avmservice/avm/AvmControl;->isBackCar()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 207
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/avmservice/avm/AudioFocus;->requestAvmFocus()I

    .line 208
    iput-boolean v3, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsNeedWaitCarplayShow:Z

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->openScreenBackLight()V

    const/4 v2, 0x2

    .line 211
    invoke-virtual {p0, v2, v3}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->BroadcastWindow(IZ)V

    .line 214
    iget-object v2, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->setWindowVisibility(Z)Z

    .line 218
    sget-object p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    const-string v0, "add view"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected updateAPASound(Z)V
    .locals 4

    .line 355
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 356
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getAPADrvReq()Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    move-result-object v0

    .line 357
    sget-object v1, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAPASound APA_VoiceReminder:("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAPADrvReq:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    iget v3, v3, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;->APA_VoiceReminder:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;->APA_VoiceReminder:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 361
    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAPADrvReq:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    iget v1, v1, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;->APA_VoiceReminder:I

    iget v2, v0, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;->APA_VoiceReminder:I

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_3

    .line 362
    :cond_1
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAPADrvReq:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    iget v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;->APA_VoiceReminder:I

    iput v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;->APA_VoiceReminder:I

    .line 363
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAPADrvReq:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    iget p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;->APA_VoiceReminder:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 364
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAPASoundPool:Lcom/yftech/avmservice/util/APASoundPool;

    invoke-virtual {p0}, Lcom/yftech/avmservice/util/APASoundPool;->playReverseEffectAPA1()V

    goto :goto_0

    .line 365
    :cond_2
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAPADrvReq:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    iget p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;->APA_VoiceReminder:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 366
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAPASoundPool:Lcom/yftech/avmservice/util/APASoundPool;

    invoke-virtual {p0}, Lcom/yftech/avmservice/util/APASoundPool;->playReverseEffectAPA2()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected updateErrSound(Z)V
    .locals 6

    .line 400
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mRadarControl:Lcom/yftech/avmservice/common/IRadarControl;

    invoke-interface {v0}, Lcom/yftech/avmservice/common/IRadarControl;->getRadarInfo()Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object v0

    .line 401
    iget-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    iget-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    if-eq v1, v3, :cond_1

    iget-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    if-eq v1, v3, :cond_1

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    .line 403
    :goto_1
    sget-object v1, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateErrSound mIsRadarSensorErr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsRadarSensorErr:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isRadarSensorErr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v4, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsRadarSensorErr:Z

    if-ne v1, v0, :cond_2

    if-eqz p1, :cond_4

    .line 405
    :cond_2
    iput-boolean v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsRadarSensorErr:Z

    .line 406
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsRadarSensorErr:Z

    if-eqz p1, :cond_3

    .line 408
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsAlreadyPlayRadarSound:Z

    if-nez p1, :cond_4

    .line 409
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    .line 410
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->playWarnTone(I)V

    .line 411
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->errSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 412
    iput-boolean v3, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsAlreadyPlayRadarSound:Z

    .line 413
    iput-boolean v3, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsRadarSoundTimerRun:Z

    goto :goto_2

    .line 416
    :cond_3
    invoke-direct {p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->stopErrSound()V

    :cond_4
    :goto_2
    return-void
.end method

.method protected updateRadarSound(Z)V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mRadarControl:Lcom/yftech/avmservice/common/IRadarControl;

    invoke-interface {v0}, Lcom/yftech/avmservice/common/IRadarControl;->getRadarInfo()Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object v0

    .line 428
    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsRadarSoundTimerRun:Z

    if-eqz v1, :cond_0

    return-void

    .line 430
    :cond_0
    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v1, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_WarnTone:B

    iget-byte v2, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_WarnTone:B

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_2

    .line 431
    :cond_1
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_WarnTone:B

    iput-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_WarnTone:B

    .line 432
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_WarnTone:B

    packed-switch p1, :pswitch_data_0

    .line 463
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {p0}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    goto :goto_0

    .line 460
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {p0}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    goto :goto_0

    .line 456
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    .line 457
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->playWarnTone(I)V

    goto :goto_0

    .line 451
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    .line 452
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->playWarnTone(I)V

    goto :goto_0

    .line 439
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    .line 441
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->playWarnTone(I)V

    goto :goto_0

    .line 435
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {p0}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public updateWindow()V
    .locals 4

    .line 173
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->isAvmSignalErr()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 176
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    const-string v2, "updateWindow no Signal Err "

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mErrView:Landroid/widget/TextView;

    const v2, 0x7f0c0056

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 178
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mErrLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsCameraSystemErr:Z

    goto :goto_0

    .line 181
    :cond_1
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    const-string v2, "updateWindow no Err "

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mErrLayout:Landroid/widget/RelativeLayout;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 183
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsCameraSystemErr:Z

    .line 186
    :goto_0
    sget-object v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mIsCameraSystemErr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsCameraSystemErr:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iget-boolean p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mIsCameraSystemErr:Z

    return-void
.end method
