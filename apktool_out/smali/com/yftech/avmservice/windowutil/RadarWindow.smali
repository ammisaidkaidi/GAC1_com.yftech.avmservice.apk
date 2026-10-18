.class public Lcom/yftech/avmservice/windowutil/RadarWindow;
.super Lcom/yftech/avmservice/windowutil/BaseWindow;
.source "RadarWindow.java"

# interfaces
.implements Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;


# static fields
.field protected static final REVERSING_RADAR_ALARM_TONE_STATE:Ljava/lang/String; = "reversing_radar_alarm_tone_state"

.field protected static final REVERSING_RADAR_ALARM_TONE_STATE_CLOSE:I = 0x0

.field protected static final REVERSING_RADAR_ALARM_TONE_STATE_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "RadarWindow"


# instance fields
.field errRunnable:Ljava/lang/Runnable;

.field errSoundRunnable:Ljava/lang/Runnable;

.field private hintText:Ljava/lang/String;

.field protected mCarView:Landroid/widget/ImageView;

.field mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mFrontRadarErr:Z

.field private mHandler:Landroid/os/Handler;

.field protected mHintView:Landroid/widget/TextView;

.field private mIsAlreadyPlayRadarSound:Z

.field private mIsRadarProbeErr:Z

.field private mIsRadarSoundTimerRun:Z

.field private mIsRadarSystemErr:Z

.field private mIsRadarTimerRun:Z

.field private mIsRearRadarLevel1:Z

.field private mPAS_WarnTone:I

.field protected mRadarAlarmView:Landroid/widget/ImageView;

.field private mRadarControl:Lcom/yftech/avmservice/common/IRadarControl;

.field protected mRadarFrontLeftView:Landroid/widget/ImageView;

.field protected mRadarFrontMiddleLeftView:Landroid/widget/ImageView;

.field protected mRadarFrontMiddleRightView:Landroid/widget/ImageView;

.field protected mRadarFrontRightView:Landroid/widget/ImageView;

.field private mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

.field protected mRadarRearLeftView:Landroid/widget/ImageView;

.field protected mRadarRearMiddleLeftView:Landroid/widget/ImageView;

.field protected mRadarRearMiddleRightView:Landroid/widget/ImageView;

.field protected mRadarRearRightView:Landroid/widget/ImageView;

.field protected mRadarToneState:I

.field private mRearRadarErr:Z

.field private mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

.field protected mView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 102
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/windowutil/BaseWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mFrontRadarErr:Z

    .line 45
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRearRadarErr:Z

    .line 46
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarSystemErr:Z

    .line 47
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarProbeErr:Z

    .line 48
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarTimerRun:Z

    .line 49
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarSoundTimerRun:Z

    .line 51
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsAlreadyPlayRadarSound:Z

    .line 53
    new-instance v2, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-direct {v2}, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;-><init>()V

    iput-object v2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    .line 54
    iput v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mPAS_WarnTone:I

    .line 56
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 57
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHandler:Landroid/os/Handler;

    .line 59
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    const/4 v0, 0x1

    .line 61
    iput v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarToneState:I

    .line 77
    new-instance v0, Lcom/yftech/avmservice/windowutil/RadarWindow$1;

    iget-object v2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2}, Lcom/yftech/avmservice/windowutil/RadarWindow$1;-><init>(Lcom/yftech/avmservice/windowutil/RadarWindow;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContentObserver:Landroid/database/ContentObserver;

    .line 278
    new-instance v0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/windowutil/RadarWindow$2;-><init>(Lcom/yftech/avmservice/windowutil/RadarWindow;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->errRunnable:Ljava/lang/Runnable;

    .line 298
    new-instance v0, Lcom/yftech/avmservice/windowutil/RadarWindow$3;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/windowutil/RadarWindow$3;-><init>(Lcom/yftech/avmservice/windowutil/RadarWindow;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->errSoundRunnable:Ljava/lang/Runnable;

    .line 1110
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRearRadarLevel1:Z

    .line 103
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    .line 104
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarControl()Lcom/yftech/avmservice/common/IRadarControl;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarControl:Lcom/yftech/avmservice/common/IRadarControl;

    .line 105
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarControl:Lcom/yftech/avmservice/common/IRadarControl;

    invoke-interface {v0, p0}, Lcom/yftech/avmservice/common/IRadarControl;->setRadarListener(Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;)V

    .line 106
    new-instance v0, Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-direct {v0, p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/yftech/avmservice/windowutil/RadarWindow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/avmservice/windowutil/RadarWindow;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarSystemErr:Z

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/avmservice/windowutil/RadarWindow;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/avmservice/windowutil/RadarWindow;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarProbeErr:Z

    return p0
.end method

.method static synthetic access$402(Lcom/yftech/avmservice/windowutil/RadarWindow;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarTimerRun:Z

    return p1
.end method

.method static synthetic access$500(Lcom/yftech/avmservice/windowutil/RadarWindow;)Lcom/yftech/avmservice/util/SoundPoolPlayer;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    return-object p0
.end method

.method static synthetic access$602(Lcom/yftech/avmservice/windowutil/RadarWindow;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarSoundTimerRun:Z

    return p1
.end method

.method private stopErrSound()V
    .locals 4

    .line 1207
    sget-object v0, Lcom/yftech/avmservice/windowutil/RadarWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopErrSound\uff0cmIsRadarSoundTimerRun:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarSoundTimerRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1208
    iget-boolean v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarSoundTimerRun:Z

    if-eqz v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->errSoundRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1210
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {v0}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    .line 1211
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarSoundTimerRun:Z

    const/4 v0, 0x1

    .line 1212
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updateRadarSound(Z)V

    :cond_0
    return-void
.end method

.method private updataFrontRadar(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;Z)V
    .locals 6

    .line 627
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    iget-byte v1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_2

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    .line 629
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    if-ne v0, v2, :cond_1

    .line 630
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    const v1, 0x7f0a0014

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move p2, v2

    .line 635
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-eq v0, v2, :cond_4

    .line 636
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontDis:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontDis:B

    if-ne v0, v4, :cond_3

    if-eqz p2, :cond_4

    .line 637
    :cond_3
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontDis:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontDis:B

    .line 638
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontDis:B

    const v4, 0x7f0a003c

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 652
    :pswitch_0
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 653
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 654
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0012

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 655
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 656
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 644
    :pswitch_1
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 645
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 646
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0010

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 647
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 648
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 640
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 664
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterFrontDis:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterFrontDis:B

    if-ne v0, v4, :cond_5

    if-eqz p2, :cond_6

    .line 665
    :cond_5
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterFrontDis:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterFrontDis:B

    .line 666
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterFrontDis:B

    .line 675
    :cond_6
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterFrontDis:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterFrontDis:B

    if-ne v0, v4, :cond_7

    if-eqz p2, :cond_8

    .line 676
    :cond_7
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterFrontDis:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterFrontDis:B

    .line 677
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterFrontDis:B

    .line 686
    :cond_8
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    if-ne v0, v4, :cond_9

    if-eqz p2, :cond_b

    .line 687
    :cond_9
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    .line 688
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    if-ne v0, v2, :cond_a

    .line 689
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    const v4, 0x7f0a0015

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_a
    move p2, v2

    .line 694
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    if-eq v0, v2, :cond_d

    .line 695
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontDis:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontDis:B

    if-ne v0, v4, :cond_c

    if-eqz p2, :cond_d

    .line 696
    :cond_c
    iget-object p2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontDis:B

    iput-byte v0, p2, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontDis:B

    .line 697
    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontDis:B

    const p2, 0x7f0a003f

    packed-switch p1, :pswitch_data_1

    goto :goto_3

    .line 711
    :pswitch_3
    new-array p1, v3, [Landroid/graphics/drawable/Drawable;

    .line 712
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v1

    .line 713
    iget-object p2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0013

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v2

    .line 714
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 715
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 703
    :pswitch_4
    new-array p1, v3, [Landroid/graphics/drawable/Drawable;

    .line 704
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v1

    .line 705
    iget-object p2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0011

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v2

    .line 706
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 707
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 699
    :pswitch_5
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_d
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private updataRadar3Err1(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;)V
    .locals 5

    .line 484
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 485
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    if-eq v0, v3, :cond_0

    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 489
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    if-eq v0, v3, :cond_3

    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-eq v0, v3, :cond_3

    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 514
    :cond_2
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, ""

    .line 515
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 516
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarProbeErr:Z

    goto/16 :goto_2

    :cond_3
    :goto_1
    const-string v0, ""

    .line 491
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 492
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 493
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    if-ne v0, v3, :cond_4

    .line 495
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 497
    :cond_4
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    if-ne v0, v3, :cond_5

    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0067

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 502
    :cond_5
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    if-ne v0, v3, :cond_6

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0069

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 504
    :cond_6
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    if-ne v0, v3, :cond_7

    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c006a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 506
    :cond_7
    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-ne p1, v3, :cond_8

    .line 507
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 509
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 510
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 511
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 512
    iput-boolean v3, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarProbeErr:Z

    :goto_2
    return-void
.end method

.method private updataRadar4Err1(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;)V
    .locals 5

    .line 524
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 525
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    if-eq v0, v3, :cond_0

    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 529
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    if-eq v0, v3, :cond_3

    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    if-eq v0, v3, :cond_3

    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-eq v0, v3, :cond_3

    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    if-ne v0, v3, :cond_2

    goto :goto_1

    .line 556
    :cond_2
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p1, ""

    .line 557
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 558
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarProbeErr:Z

    goto/16 :goto_2

    :cond_3
    :goto_1
    const-string v0, ""

    .line 531
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 532
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 533
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    if-ne v0, v3, :cond_4

    .line 535
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0065

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 537
    :cond_4
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    if-ne v0, v3, :cond_5

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0067

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 542
    :cond_5
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    if-ne v0, v3, :cond_6

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c0069

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 544
    :cond_6
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    if-ne v0, v3, :cond_7

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c006a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 546
    :cond_7
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    if-ne v0, v3, :cond_8

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0c006c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 548
    :cond_8
    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-ne p1, v3, :cond_9

    .line 549
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 551
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    .line 552
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->hintText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 554
    iput-boolean v3, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarProbeErr:Z

    :goto_2
    return-void
.end method

.method private updataRadarErr(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;)V
    .locals 7

    .line 572
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarControl:Lcom/yftech/avmservice/common/IRadarControl;

    invoke-interface {p1}, Lcom/yftech/avmservice/common/IRadarControl;->isFrontRadarErr()Z

    move-result p1

    .line 573
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarControl:Lcom/yftech/avmservice/common/IRadarControl;

    invoke-interface {v0}, Lcom/yftech/avmservice/common/IRadarControl;->isRearRadarErr()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 578
    :cond_0
    iget-object v3, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 576
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    :goto_1
    iget-boolean v3, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mFrontRadarErr:Z

    const/4 v4, 0x1

    if-eq v3, p1, :cond_2

    .line 584
    iput-boolean p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mFrontRadarErr:Z

    move v2, v4

    .line 587
    :cond_2
    iget-boolean v3, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRearRadarErr:Z

    if-eq v3, v0, :cond_3

    .line 589
    iput-boolean v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRearRadarErr:Z

    move v2, v4

    :cond_3
    if-eqz v2, :cond_e

    .line 592
    iget-object v2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v2}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v2

    const/4 v3, 0x2

    const v4, 0x7f0c0057

    const v5, 0x7f0c0053

    if-ne v2, v3, :cond_5

    if-eqz v0, :cond_4

    .line 594
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_2

    .line 596
    :cond_4
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 598
    :cond_5
    iget-object v2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v2}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v2

    const v3, 0x7f0c0058

    const v6, 0x7f0c0054

    if-ne v2, v1, :cond_9

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 600
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    .line 602
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    .line 604
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 606
    :cond_8
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 608
    :cond_9
    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v1}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_d

    if-eqz p1, :cond_a

    if-eqz v0, :cond_a

    .line 610
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_a
    if-eqz p1, :cond_b

    .line 612
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_b
    if-eqz v0, :cond_c

    .line 614
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 616
    :cond_c
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 620
    :cond_d
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setText(I)V

    :cond_e
    :goto_2
    return-void
.end method

.method private updataRadarErr1(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;)V
    .locals 2

    .line 473
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    .line 474
    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updataRadar4Err1(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;)V

    goto :goto_1

    .line 475
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updataRadar3Err1(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;)V

    :goto_1
    return-void
.end method

.method private updataRadarSystemErr(ZZ)V
    .locals 4

    .line 438
    iget-boolean v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarSystemErr:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_3

    .line 439
    :cond_0
    iput-boolean p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarSystemErr:Z

    const p2, 0x7f0a001d

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    .line 451
    new-array v0, p1, [Landroid/graphics/drawable/Drawable;

    .line 452
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/avmservice/avm/AvmControl;->getCarType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, p1, :cond_1

    .line 453
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const p2, 0x7f0a001e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v0, v3

    .line 454
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const p2, 0x7f0a002f

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v0, v2

    goto :goto_0

    .line 456
    :cond_1
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v0, v3

    .line 457
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const p2, 0x7f0a002e

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    aput-object p1, v0, v2

    .line 459
    :goto_0
    new-instance p1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p1, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 460
    iget-object p2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mCarView:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 462
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 463
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    const p1, 0x7f0c006d

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 466
    :cond_2
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mCarView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 467
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updataRear3Radar(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;Z)V
    .locals 6

    .line 734
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    iget-byte v1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_2

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    .line 736
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    if-ne v0, v2, :cond_1

    .line 737
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    const v1, 0x7f0a002b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move p2, v2

    .line 743
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-eq v0, v2, :cond_4

    .line 744
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    if-ne v0, v4, :cond_3

    if-eqz p2, :cond_4

    .line 745
    :cond_3
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    .line 746
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    const v4, 0x7f0a0034

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 775
    :pswitch_0
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 776
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 777
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0028

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 778
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 779
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 768
    :pswitch_1
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 769
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 770
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0025

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 771
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 772
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 760
    :pswitch_2
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 761
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 762
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0022

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 763
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 764
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 752
    :pswitch_3
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 753
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 754
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a001f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 755
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 756
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 748
    :pswitch_4
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 786
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    if-ne v0, v4, :cond_5

    if-eqz p2, :cond_7

    .line 787
    :cond_5
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    .line 788
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    if-ne v0, v2, :cond_6

    .line 789
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    const v4, 0x7f0a002c

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    move p2, v2

    .line 794
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    if-eq v0, v2, :cond_9

    .line 795
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackDis:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackDis:B

    if-ne v0, v4, :cond_8

    if-eqz p2, :cond_9

    .line 796
    :cond_8
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackDis:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackDis:B

    .line 797
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackDis:B

    const v4, 0x7f0a0035

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    .line 827
    :pswitch_5
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 828
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 829
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0029

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 830
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 831
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 819
    :pswitch_6
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 820
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 821
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0026

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 822
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 823
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 811
    :pswitch_7
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 812
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 813
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0023

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 814
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 815
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 803
    :pswitch_8
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 804
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 805
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0020

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 806
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 807
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 799
    :pswitch_9
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 839
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    if-ne v0, v4, :cond_a

    if-eqz p2, :cond_c

    .line 840
    :cond_a
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    .line 841
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    if-ne v0, v2, :cond_b

    .line 842
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    const v4, 0x7f0a000e

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_b
    move p2, v2

    .line 847
    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    if-eq v0, v2, :cond_f

    .line 848
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackDis:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackDis:B

    if-ne v0, v4, :cond_d

    if-eqz p2, :cond_f

    .line 849
    :cond_d
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackDis:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackDis:B

    .line 850
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackDis:B

    if-eqz v0, :cond_e

    goto :goto_5

    .line 852
    :cond_e
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    const v4, 0x7f0a0036

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 860
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-ne v0, v4, :cond_10

    if-eqz p2, :cond_12

    .line 861
    :cond_10
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    .line 862
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-ne v0, v2, :cond_11

    .line 863
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    const v4, 0x7f0a002d

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_11
    move p2, v2

    .line 868
    :cond_12
    :goto_6
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-eq v0, v2, :cond_14

    .line 869
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    if-ne v0, v4, :cond_13

    if-eqz p2, :cond_14

    .line 870
    :cond_13
    iget-object p2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    iput-byte v0, p2, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    .line 871
    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    const p2, 0x7f0a0039

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_7

    .line 901
    :pswitch_a
    new-array p1, v3, [Landroid/graphics/drawable/Drawable;

    .line 902
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v1

    .line 903
    iget-object p2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v0, 0x7f0a002a

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v2

    .line 904
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 905
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 893
    :pswitch_b
    new-array p1, v3, [Landroid/graphics/drawable/Drawable;

    .line 894
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v1

    .line 895
    iget-object p2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0027

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v2

    .line 896
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 897
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 885
    :pswitch_c
    new-array p1, v3, [Landroid/graphics/drawable/Drawable;

    .line 886
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v1

    .line 887
    iget-object p2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0024

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v2

    .line 888
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 889
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 877
    :pswitch_d
    new-array p1, v3, [Landroid/graphics/drawable/Drawable;

    .line 878
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v1

    .line 879
    iget-object p2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0021

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v2

    .line 880
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 881
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 873
    :pswitch_e
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_14
    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method private updataRear4Radar(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;Z)V
    .locals 6

    .line 915
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    iget-byte v1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_2

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    .line 917
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    if-ne v0, v2, :cond_1

    .line 918
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    move p2, v2

    .line 923
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    const/4 v1, 0x0

    const/4 v3, 0x2

    if-eq v0, v2, :cond_4

    .line 924
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    if-ne v0, v4, :cond_3

    if-eqz p2, :cond_4

    .line 925
    :cond_3
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    .line 926
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    const v4, 0x7f0a0034

    packed-switch v0, :pswitch_data_0

    .line 948
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 940
    :pswitch_0
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 941
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 942
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0004

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 943
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 944
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 932
    :pswitch_1
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 933
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 934
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const/high16 v5, 0x7f0a0000

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 935
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 936
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 928
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 953
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    if-ne v0, v4, :cond_5

    if-eqz p2, :cond_7

    .line 954
    :cond_5
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    .line 955
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    if-ne v0, v2, :cond_6

    .line 956
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    const v4, 0x7f0a000d

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    move p2, v2

    .line 961
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    if-eq v0, v2, :cond_9

    .line 962
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackDis:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackDis:B

    if-ne v0, v4, :cond_8

    if-eqz p2, :cond_9

    .line 963
    :cond_8
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackDis:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackDis:B

    .line 964
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackDis:B

    const v4, 0x7f0a0035

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_3

    .line 994
    :pswitch_3
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 995
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 996
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a000a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 997
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 998
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 986
    :pswitch_4
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 987
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 988
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0008

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 989
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 990
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 978
    :pswitch_5
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 979
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 980
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0005

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 981
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 982
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 970
    :pswitch_6
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 971
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 972
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0001

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 973
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 974
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 966
    :pswitch_7
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1006
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    if-ne v0, v4, :cond_a

    if-eqz p2, :cond_c

    .line 1007
    :cond_a
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    .line 1008
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    if-ne v0, v2, :cond_b

    .line 1009
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    const v4, 0x7f0a000e

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    :cond_b
    move p2, v2

    .line 1014
    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    if-eq v0, v2, :cond_e

    .line 1015
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackDis:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackDis:B

    if-ne v0, v4, :cond_d

    if-eqz p2, :cond_e

    .line 1016
    :cond_d
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackDis:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackDis:B

    .line 1017
    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackDis:B

    const v4, 0x7f0a0036

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_5

    .line 1047
    :pswitch_8
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 1048
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 1049
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a000b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 1050
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1051
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 1039
    :pswitch_9
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 1040
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 1041
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0009

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 1042
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1043
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 1031
    :pswitch_a
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 1032
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 1033
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0006

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 1034
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1035
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 1023
    :pswitch_b
    new-array v0, v3, [Landroid/graphics/drawable/Drawable;

    .line 1024
    iget-object v5, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v1

    .line 1025
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v5, 0x7f0a0002

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    aput-object v4, v0, v2

    .line 1026
    new-instance v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1027
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_5

    .line 1019
    :pswitch_c
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1059
    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-ne v0, v4, :cond_f

    if-eqz p2, :cond_11

    .line 1060
    :cond_f
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    iput-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    .line 1061
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-ne v0, v2, :cond_10

    .line 1062
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    const v4, 0x7f0a000f

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_6

    :cond_10
    move p2, v2

    .line 1067
    :cond_11
    :goto_6
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-eq v0, v2, :cond_13

    .line 1068
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    iget-byte v4, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    if-ne v0, v4, :cond_12

    if-eqz p2, :cond_13

    .line 1069
    :cond_12
    iget-object p2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    iput-byte v0, p2, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    .line 1070
    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    const p2, 0x7f0a0039

    packed-switch p1, :pswitch_data_3

    .line 1092
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 1084
    :pswitch_d
    new-array p1, v3, [Landroid/graphics/drawable/Drawable;

    .line 1085
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v1

    .line 1086
    iget-object p2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0007

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v2

    .line 1087
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1088
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1076
    :pswitch_e
    new-array p1, v3, [Landroid/graphics/drawable/Drawable;

    .line 1077
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v1

    .line 1078
    iget-object p2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0003

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aput-object p2, p1, v2

    .line 1079
    new-instance p2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {p2, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 1080
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 1072
    :pswitch_f
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_13
    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method private updataRearRadar(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;Z)V
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    .line 726
    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 729
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updataRear4Radar(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;Z)V

    goto :goto_1

    .line 727
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updataRear3Radar(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method blinkRadar3PorbeErr(Z)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 342
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 343
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    if-ne p1, v1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    const v0, 0x7f0a0014

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 346
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    if-ne p1, v1, :cond_1

    .line 347
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    const v0, 0x7f0a0015

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 351
    :cond_1
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    if-ne p1, v1, :cond_2

    .line 352
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    const v0, 0x7f0a002b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    :cond_2
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    const v0, 0x7f0a002c

    if-ne p1, v1, :cond_3

    .line 355
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 357
    :cond_3
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    if-ne p1, v1, :cond_4

    .line 358
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 360
    :cond_4
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-ne p1, v1, :cond_b

    .line 361
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    const p1, 0x7f0a002d

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 364
    :cond_5
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result p1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_7

    .line 365
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    if-ne p1, v1, :cond_6

    .line 366
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 368
    :cond_6
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    if-ne p1, v1, :cond_7

    .line 369
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 372
    :cond_7
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    if-ne p1, v1, :cond_8

    .line 373
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 375
    :cond_8
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    if-ne p1, v1, :cond_9

    .line 376
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    :cond_9
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    if-ne p1, v1, :cond_a

    .line 379
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    :cond_a
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-ne p1, v1, :cond_b

    .line 382
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    :goto_0
    return-void
.end method

.method blinkRadar4PorbeErr(Z)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eqz p1, :cond_5

    .line 390
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 391
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    if-ne p1, v1, :cond_0

    .line 392
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    const v0, 0x7f0a0014

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 394
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    if-ne p1, v1, :cond_1

    .line 395
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    const v0, 0x7f0a0015

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 398
    :cond_1
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    if-ne p1, v1, :cond_2

    .line 399
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    const v0, 0x7f0a000c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 401
    :cond_2
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    if-ne p1, v1, :cond_3

    .line 402
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    const v0, 0x7f0a000d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 404
    :cond_3
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    if-ne p1, v1, :cond_4

    .line 405
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    const v0, 0x7f0a000e

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 407
    :cond_4
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-ne p1, v1, :cond_b

    .line 408
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    const p1, 0x7f0a000f

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 411
    :cond_5
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result p1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_7

    .line 412
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    if-ne p1, v1, :cond_6

    .line 413
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 415
    :cond_6
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    if-ne p1, v1, :cond_7

    .line 416
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    :cond_7
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    if-ne p1, v1, :cond_8

    .line 420
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 422
    :cond_8
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    if-ne p1, v1, :cond_9

    .line 423
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 425
    :cond_9
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    if-ne p1, v1, :cond_a

    .line 426
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 428
    :cond_a
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    if-ne p1, v1, :cond_b

    .line 429
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_b
    :goto_0
    return-void
.end method

.method blinkRadarPorbeErr(Z)V
    .locals 2

    .line 332
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    .line 333
    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->blinkRadar4PorbeErr(Z)V

    goto :goto_1

    .line 334
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->blinkRadar3PorbeErr(Z)V

    :goto_1
    return-void
.end method

.method blinkRadarSystemErr(Z)V
    .locals 6

    const v0, 0x7f0a001d

    const v1, 0x7f0a001e

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    .line 311
    new-array p1, v2, [Landroid/graphics/drawable/Drawable;

    .line 312
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/avmservice/avm/AvmControl;->getCarType()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v3, v2, :cond_0

    .line 313
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p1, v5

    .line 314
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v1, 0x7f0a002f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p1, v4

    goto :goto_0

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p1, v5

    .line 317
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    const v1, 0x7f0a002e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    aput-object v0, p1, v4

    .line 319
    :goto_0
    new-instance v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 320
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mCarView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 322
    :cond_1
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getCarType()I

    move-result p1

    if-ne p1, v2, :cond_2

    .line 323
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mCarView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 325
    :cond_2
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mCarView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    return-void
.end method

.method public closeRadarSound()V
    .locals 2

    .line 1218
    iget-boolean v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarTimerRun:Z

    if-eqz v0, :cond_0

    .line 1219
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->errRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1220
    iput-boolean v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarTimerRun:Z

    .line 1222
    :cond_0
    invoke-direct {p0}, Lcom/yftech/avmservice/windowutil/RadarWindow;->stopErrSound()V

    return-void
.end method

.method public dispatchHandleMessage(Landroid/os/Message;)Z
    .locals 4

    .line 1227
    sget-object v0, Lcom/yftech/avmservice/windowutil/RadarWindow;->TAG:Ljava/lang/String;

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

    .line 1228
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xd2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1230
    :cond_0
    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updataRadar(Z)V

    .line 1231
    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updateRadarSound(Z)V

    .line 1234
    :goto_0
    invoke-super {p0, p1}, Lcom/yftech/avmservice/windowutil/BaseWindow;->dispatchHandleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method getNewPASWarnTone(II)I
    .locals 0

    if-lez p1, :cond_0

    if-lez p2, :cond_1

    .line 1103
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, p2

    :cond_1
    :goto_0
    return p1
.end method

.method getPasWarnTone()I
    .locals 7

    .line 1117
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarControl:Lcom/yftech/avmservice/common/IRadarControl;

    invoke-interface {v0}, Lcom/yftech/avmservice/common/IRadarControl;->getRadarInfo()Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object v0

    .line 1119
    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarAlarmView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 1121
    iget v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarToneState:I

    if-ne v1, v2, :cond_0

    .line 1122
    iget-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontDis:B

    invoke-virtual {p0, v1, v3}, Lcom/yftech/avmservice/windowutil/RadarWindow;->getNewPASWarnTone(II)I

    move-result v1

    .line 1123
    iget-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontDis:B

    invoke-virtual {p0, v4, v1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->getNewPASWarnTone(II)I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 1128
    :goto_0
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v4}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v4

    if-eq v4, v2, :cond_5

    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    .line 1129
    invoke-virtual {v4}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    goto :goto_2

    .line 1137
    :cond_1
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/avmservice/avm/AvmControl;->getCarType()I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_4

    .line 1138
    iget-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    .line 1139
    iget-byte v6, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    if-lt v4, v5, :cond_2

    move v4, v3

    :cond_2
    if-lt v6, v5, :cond_3

    move v6, v3

    .line 1142
    :cond_3
    invoke-virtual {p0, v4, v3}, Lcom/yftech/avmservice/windowutil/RadarWindow;->getNewPASWarnTone(II)I

    move-result v4

    .line 1143
    invoke-virtual {p0, v6, v4}, Lcom/yftech/avmservice/windowutil/RadarWindow;->getNewPASWarnTone(II)I

    move-result v4

    goto :goto_1

    .line 1145
    :cond_4
    iget-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    invoke-virtual {p0, v4, v3}, Lcom/yftech/avmservice/windowutil/RadarWindow;->getNewPASWarnTone(II)I

    move-result v4

    .line 1146
    iget-byte v5, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    invoke-virtual {p0, v5, v4}, Lcom/yftech/avmservice/windowutil/RadarWindow;->getNewPASWarnTone(II)I

    move-result v4

    .line 1148
    :goto_1
    iget-byte v5, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackDis:B

    invoke-virtual {p0, v5, v4}, Lcom/yftech/avmservice/windowutil/RadarWindow;->getNewPASWarnTone(II)I

    move-result v4

    .line 1149
    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackDis:B

    invoke-virtual {p0, v0, v4}, Lcom/yftech/avmservice/windowutil/RadarWindow;->getNewPASWarnTone(II)I

    move-result v0

    goto :goto_3

    .line 1130
    :cond_5
    :goto_2
    iget-byte v4, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    invoke-virtual {p0, v4, v3}, Lcom/yftech/avmservice/windowutil/RadarWindow;->getNewPASWarnTone(II)I

    move-result v4

    .line 1131
    iget-byte v5, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackDis:B

    invoke-virtual {p0, v5, v4}, Lcom/yftech/avmservice/windowutil/RadarWindow;->getNewPASWarnTone(II)I

    move-result v4

    .line 1132
    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    invoke-virtual {p0, v0, v4}, Lcom/yftech/avmservice/windowutil/RadarWindow;->getNewPASWarnTone(II)I

    move-result v0

    .line 1151
    :goto_3
    sget-object v4, Lcom/yftech/avmservice/windowutil/RadarWindow;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPasWarnTone frontPASWarnTone:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",rearPASWarnTone:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne v0, v2, :cond_6

    .line 1152
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRearRadarLevel1:Z

    goto :goto_4

    .line 1153
    :cond_6
    iput-boolean v3, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRearRadarLevel1:Z

    .line 1154
    :goto_4
    invoke-virtual {p0, v1, v3}, Lcom/yftech/avmservice/windowutil/RadarWindow;->getNewPASWarnTone(II)I

    move-result v1

    .line 1155
    invoke-virtual {p0, v0, v1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->getNewPASWarnTone(II)I

    move-result p0

    return p0
.end method

.method public getRadarToneState()I
    .locals 3

    .line 65
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "reversing_radar_alarm_tone_state"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 66
    sget-object v0, Lcom/yftech/avmservice/windowutil/RadarWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get  radar tone state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public initRadarView(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f070064

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mCarView:Landroid/widget/ImageView;

    .line 192
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getCarType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 193
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mCarView:Landroid/widget/ImageView;

    const v1, 0x7f0a001e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mCarView:Landroid/widget/ImageView;

    const v1, 0x7f0a001d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const v0, 0x7f07008f

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    const v0, 0x7f070090

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleLeftView:Landroid/widget/ImageView;

    const v0, 0x7f070091

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleRightView:Landroid/widget/ImageView;

    const v0, 0x7f070092

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    const v0, 0x7f070093

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    const v0, 0x7f070094

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    const v0, 0x7f070095

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    const v0, 0x7f070096

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    .line 208
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updateRadarVisibility()V

    .line 210
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    const v0, 0x7f0a003c

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 213
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    const v0, 0x7f0a003f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    const v0, 0x7f0a0034

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    const v0, 0x7f0a0035

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    const v0, 0x7f0a0036

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 218
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    const p1, 0x7f0a0039

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public onRadarInfo(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;)V
    .locals 2

    .line 1239
    sget-object p1, Lcom/yftech/avmservice/windowutil/RadarWindow;->TAG:Ljava/lang/String;

    const-string v0, "onRadarInfo"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1240
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getMainHandler()Lcom/yftech/avmservice/util/DistributedHandler;

    move-result-object p0

    const/16 p1, 0xd2

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public setRadarTone(I)Z
    .locals 3

    .line 72
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "reversing_radar_alarm_tone_state"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    .line 73
    sget-object v0, Lcom/yftech/avmservice/windowutil/RadarWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set radar tone value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",ret: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public updataRadar(Z)V
    .locals 4

    .line 224
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RadarWindow;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHintView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    .line 226
    :cond_1
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleLeftView:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleRightView:Landroid/widget/ImageView;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    goto/16 :goto_7

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    if-nez v0, :cond_3

    goto/16 :goto_6

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarControl:Lcom/yftech/avmservice/common/IRadarControl;

    invoke-interface {v0}, Lcom/yftech/avmservice/common/IRadarControl;->getRadarInfo()Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object v0

    .line 236
    iget-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_BattVoltErrFlag:B

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_5

    iget-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_CtrlModulerrFlag:B

    if-ne v1, v3, :cond_4

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v3

    :goto_1
    invoke-direct {p0, v1, p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updataRadarSystemErr(ZZ)V

    .line 237
    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarSystemErr:Z

    if-nez v1, :cond_6

    .line 241
    invoke-direct {p0, v0, p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updataFrontRadar(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;Z)V

    .line 242
    invoke-direct {p0, v0, p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updataRearRadar(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;Z)V

    .line 243
    invoke-direct {p0, v0}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updataRadarErr1(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;)V

    goto :goto_2

    .line 246
    :cond_6
    invoke-direct {p0, v0, p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updataFrontRadar(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;Z)V

    .line 247
    invoke-direct {p0, v0, p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updataRearRadar(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;Z)V

    .line 248
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarProbeErr:Z

    .line 251
    :goto_2
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarSystemErr:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarProbeErr:Z

    if-eqz p1, :cond_7

    goto :goto_3

    .line 257
    :cond_7
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarTimerRun:Z

    if-eqz p1, :cond_9

    .line 258
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->errRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 259
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarTimerRun:Z

    goto :goto_4

    .line 252
    :cond_8
    :goto_3
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarTimerRun:Z

    if-nez p1, :cond_9

    .line 253
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->errRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 254
    iput-boolean v3, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarTimerRun:Z

    .line 263
    :cond_9
    :goto_4
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarProbeErr:Z

    if-eqz p1, :cond_a

    .line 264
    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsAlreadyPlayRadarSound:Z

    if-nez p1, :cond_b

    iget-boolean p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarSoundTimerRun:Z

    if-nez p1, :cond_b

    .line 265
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    .line 266
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->playWarnTone(I)V

    .line 267
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->errSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 268
    iput-boolean v3, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarSoundTimerRun:Z

    .line 269
    iput-boolean v3, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsAlreadyPlayRadarSound:Z

    goto :goto_5

    .line 272
    :cond_a
    invoke-direct {p0}, Lcom/yftech/avmservice/windowutil/RadarWindow;->stopErrSound()V

    :cond_b
    :goto_5
    return-void

    :cond_c
    :goto_6
    return-void

    :cond_d
    :goto_7
    return-void
.end method

.method protected updateRadarSound(Z)V
    .locals 3

    .line 1163
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarControl:Lcom/yftech/avmservice/common/IRadarControl;

    invoke-interface {v0}, Lcom/yftech/avmservice/common/IRadarControl;->getRadarInfo()Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object v0

    .line 1165
    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mIsRadarSoundTimerRun:Z

    if-eqz v1, :cond_0

    return-void

    .line 1167
    :cond_0
    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v1, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_WarnTone:B

    iget-byte v2, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_WarnTone:B

    if-ne v1, v2, :cond_1

    if-eqz p1, :cond_2

    .line 1168
    :cond_1
    sget-object p1, Lcom/yftech/avmservice/windowutil/RadarWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRadarInfo.PAS_WarnTone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v2, v2, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_WarnTone:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",info.PAS_WarnTone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_WarnTone:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1169
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v0, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_WarnTone:B

    iput-byte v0, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_WarnTone:B

    .line 1170
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte p1, p1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_WarnTone:B

    packed-switch p1, :pswitch_data_0

    .line 1201
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {p0}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    goto :goto_0

    .line 1198
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {p0}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    goto :goto_0

    .line 1194
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    .line 1195
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->playWarnTone(I)V

    goto :goto_0

    .line 1189
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    .line 1190
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->playWarnTone(I)V

    goto :goto_0

    .line 1177
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    .line 1179
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->playWarnTone(I)V

    goto :goto_0

    .line 1173
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mSoundPoolPlayer:Lcom/yftech/avmservice/util/SoundPoolPlayer;

    invoke-virtual {p0}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    :cond_2
    :goto_0
    return-void

    nop

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

.method public updateRadarVisibility()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 124
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 135
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 146
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 157
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 165
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 168
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 178
    :cond_4
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarFrontRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleLeftView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearMiddleRightView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarRearRightView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method
