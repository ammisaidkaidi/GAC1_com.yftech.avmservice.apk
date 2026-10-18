.class public Lcom/yftech/avmservice/avm/AudioFocus;
.super Ljava/lang/Object;
.source "AudioFocus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/avmservice/avm/AudioFocus$MyCarIcmListener;,
        Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;,
        Lcom/yftech/avmservice/avm/AudioFocus$SingletonFactory;
    }
.end annotation


# static fields
.field private static final KEEP_MUTE_WARNING_CLOSE:I = 0x0

.field private static final KEEP_MUTE_WARNING_DOWN:I = 0x2

.field private static final KEEP_MUTE_WARNING_OPEN:I = 0x1

.field private static final KEY_KEEP_MUTE_WARNING_ENABLE:Ljava/lang/String; = "Keep_Mute_Warning_Enable"

.field private static final TAG:Ljava/lang/String; = "AudioFocus"


# instance fields
.field audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field avmAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field bAvmMuteMusicMedia:Z

.field bCanActiveMuteMusicMedia:Z

.field bIsRequestAvmFocus:Z

.field bIsRequestCanActiveFocus:Z

.field bIsRequestRadarFocus:Z

.field bIsRequestRvcFocus:Z

.field bRvcMuteMusicMedia:Z

.field canAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field mAvmFocusRequest:Landroid/media/AudioFocusRequest;

.field mCanActiveFocusRequest:Landroid/media/AudioFocusRequest;

.field private mCarDataCallback:Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;

.field private mCarIcmListener:Lcom/yftech/avmservice/avm/AudioFocus$MyCarIcmListener;

.field private mIsKeepMuteWarningEnabled:Z

.field private mKeepMuteWarning:I

.field mRadarFocusRequest:Landroid/media/AudioFocusRequest;

.field mRvcFocusRequest:Landroid/media/AudioFocusRequest;

.field private m_AudioManager:Landroid/media/AudioManager;

.field mediaVolume:I

.field radarAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mediaVolume:I

    .line 36
    iput-boolean v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bAvmMuteMusicMedia:Z

    .line 37
    iput-boolean v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bRvcMuteMusicMedia:Z

    .line 38
    iput-boolean v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bCanActiveMuteMusicMedia:Z

    .line 40
    iput-boolean v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestAvmFocus:Z

    .line 41
    iput-boolean v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestRvcFocus:Z

    .line 42
    iput-boolean v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestRadarFocus:Z

    .line 43
    iput-boolean v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestCanActiveFocus:Z

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mCarDataCallback:Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;

    .line 45
    iput-object v1, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mCarIcmListener:Lcom/yftech/avmservice/avm/AudioFocus$MyCarIcmListener;

    const/4 v2, 0x1

    .line 46
    iput v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mKeepMuteWarning:I

    .line 47
    iput-boolean v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mIsKeepMuteWarningEnabled:Z

    .line 165
    new-instance v2, Lcom/yftech/avmservice/avm/AudioFocus$1;

    invoke-direct {v2, p0}, Lcom/yftech/avmservice/avm/AudioFocus$1;-><init>(Lcom/yftech/avmservice/avm/AudioFocus;)V

    iput-object v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 183
    new-instance v2, Lcom/yftech/avmservice/avm/AudioFocus$2;

    invoke-direct {v2, p0}, Lcom/yftech/avmservice/avm/AudioFocus$2;-><init>(Lcom/yftech/avmservice/avm/AudioFocus;)V

    iput-object v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->radarAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 201
    new-instance v2, Lcom/yftech/avmservice/avm/AudioFocus$3;

    invoke-direct {v2, p0}, Lcom/yftech/avmservice/avm/AudioFocus$3;-><init>(Lcom/yftech/avmservice/avm/AudioFocus;)V

    iput-object v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->avmAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 219
    new-instance v2, Lcom/yftech/avmservice/avm/AudioFocus$4;

    invoke-direct {v2, p0}, Lcom/yftech/avmservice/avm/AudioFocus$4;-><init>(Lcom/yftech/avmservice/avm/AudioFocus;)V

    iput-object v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->canAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 136
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    .line 138
    invoke-direct {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->getKeepMuteWarning()I

    move-result v2

    iput v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mKeepMuteWarning:I

    .line 139
    new-instance v2, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;

    invoke-direct {v2, p0}, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;-><init>(Lcom/yftech/avmservice/avm/AudioFocus;)V

    iput-object v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mCarDataCallback:Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;

    .line 140
    iget-object v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mCarDataCallback:Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;

    invoke-static {v2, v1}, Lcom/yftech/car/data/CarDataManager;->registerCarDataCallback(Lcom/yftech/car/data/CarDataManager$CarDataCallback;Landroid/os/Handler;)V

    .line 142
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarIcmManager;->isKeepMuteWarningEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mIsKeepMuteWarningEnabled:Z

    .line 143
    new-instance v1, Lcom/yftech/avmservice/avm/AudioFocus$MyCarIcmListener;

    invoke-direct {v1, p0}, Lcom/yftech/avmservice/avm/AudioFocus$MyCarIcmListener;-><init>(Lcom/yftech/avmservice/avm/AudioFocus;)V

    iput-object v1, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mCarIcmListener:Lcom/yftech/avmservice/avm/AudioFocus$MyCarIcmListener;

    .line 144
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarIcmManager;->get()Lcom/yftech/vehicle/sdk/CarIcmManager;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mCarIcmListener:Lcom/yftech/avmservice/avm/AudioFocus$MyCarIcmListener;

    invoke-virtual {v1, v2}, Lcom/yftech/vehicle/sdk/CarIcmManager;->registerListener(Lcom/yftech/vehicle/sdk/CarIcmManager$CarIcmListener;)V

    .line 146
    sget-object v1, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFocus mKeepMuteWarning :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mKeepMuteWarning:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mIsKeepMuteWarningEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mIsKeepMuteWarningEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-boolean v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mIsKeepMuteWarningEnabled:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->requestCanActiveFocus()I

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->abandonCanActiveFocus()V

    :goto_0
    return-void
.end method

.method private InterruptMediaType()I
    .locals 4

    .line 63
    invoke-direct {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->getKeepMuteWarning()I

    move-result v0

    .line 64
    iput v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mKeepMuteWarning:I

    .line 65
    sget-object p0, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keepMuteWarning:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v2

    .line 74
    :goto_0
    sget-object v0, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupt type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/yftech/avmservice/avm/AudioFocus;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mKeepMuteWarning:I

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/avmservice/avm/AudioFocus;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mKeepMuteWarning:I

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/avmservice/avm/AudioFocus;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mIsKeepMuteWarningEnabled:Z

    return p0
.end method

.method static synthetic access$302(Lcom/yftech/avmservice/avm/AudioFocus;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mIsKeepMuteWarningEnabled:Z

    return p1
.end method

.method public static getInstance()Lcom/yftech/avmservice/avm/AudioFocus;
    .locals 1

    .line 88
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus$SingletonFactory;->access$000()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object v0

    return-object v0
.end method

.method private getKeepMuteWarning()I
    .locals 3

    .line 52
    new-instance p0, Lcom/yftech/car/data/CarData;

    new-instance v0, Lcom/yftech/car/data/CarData$CarDataEntry;

    const-string v1, "Keep_Mute_Warning_Enable"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/yftech/car/data/CarData$CarDataEntry;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/yftech/car/data/CarData;-><init>(Lcom/yftech/car/data/CarData$CarDataEntry;)V

    invoke-static {p0}, Lcom/yftech/car/data/CarDataManager;->get(Lcom/yftech/car/data/CarData;)Lcom/yftech/car/data/CarData;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "Keep_Mute_Warning_Enable"

    .line 53
    invoke-virtual {p0, v0}, Lcom/yftech/car/data/CarData;->getDataEntry(Ljava/lang/String;)Lcom/yftech/car/data/CarData$CarDataEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "Keep_Mute_Warning_Enable"

    .line 54
    invoke-virtual {p0, v0}, Lcom/yftech/car/data/CarData;->getDataEntry(Ljava/lang/String;)Lcom/yftech/car/data/CarData$CarDataEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/car/data/CarData$CarDataEntry;->getValueInt()I

    move-result p0

    .line 55
    sget-object v0, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKeepMuteWarning value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized abandonCanActiveFocus()V
    .locals 5

    monitor-enter p0

    .line 437
    :try_start_0
    iget-boolean v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bCanActiveMuteMusicMedia:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 439
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bCanActiveMuteMusicMedia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 440
    monitor-exit p0

    return-void

    .line 442
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestCanActiveFocus:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 443
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mCanActiveFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mCanActiveFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 445
    sget-object v2, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abandonCanActiveFocus ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    :cond_2
    sget-object v0, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    const-string v2, "audioFocus abandonCanActiveFocus"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestCanActiveFocus:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 450
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 436
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized abandonRadarFocus()V
    .locals 5

    monitor-enter p0

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mRadarFocusRequest:Landroid/media/AudioFocusRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mRadarFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 391
    sget-object v2, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abandonRadarFocus ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    :cond_0
    sget-object v0, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    const-string v2, "audioFocus abandonRadarFocus"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestRadarFocus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 388
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized abondAvmFocus()V
    .locals 5

    monitor-enter p0

    .line 282
    :try_start_0
    iget-boolean v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bAvmMuteMusicMedia:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 284
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bAvmMuteMusicMedia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    monitor-exit p0

    return-void

    .line 287
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestAvmFocus:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 288
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mAvmFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_2

    .line 289
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mAvmFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 290
    sget-object v2, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abondAvmFocus ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    :cond_2
    sget-object v0, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    const-string v2, "audioFocus abondAvmFocus"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestAvmFocus:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 281
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized abondRvcFocus()V
    .locals 5

    monitor-enter p0

    .line 341
    :try_start_0
    iget-boolean v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bRvcMuteMusicMedia:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 343
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bRvcMuteMusicMedia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 346
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mRvcFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mRvcFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 348
    sget-object v2, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "abondRvcFocus ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 350
    :cond_1
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestRvcFocus:Z

    .line 352
    sget-object v0, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    const-string v2, "audioFocus abondRvcFocus"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 353
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 340
    monitor-exit p0

    throw v0
.end method

.method isCarplayCertificate()Z
    .locals 4

    const-string p0, "persist.sys.carplay.certificate"

    const-string v0, "0"

    .line 156
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 157
    sget-object v0, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " persist.sys.carplay.certificate :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "1"

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v2

    .line 161
    :goto_0
    sget-object v0, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isCarplayCertificate :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public declared-synchronized requestAvmFocus()I
    .locals 6

    monitor-enter p0

    .line 240
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->isCarplayCertificate()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/16 v4, -0x64

    invoke-virtual {v0, v3, v4, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 245
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bAvmMuteMusicMedia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    monitor-exit p0

    return v1

    .line 252
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->InterruptMediaType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 254
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0x1d

    .line 255
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 258
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xe

    .line 259
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    .line 262
    :cond_2
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xc

    .line 263
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 267
    :goto_0
    new-instance v3, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v3, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 268
    invoke-virtual {v3, v2}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v3

    .line 269
    invoke-virtual {v3, v2}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/yftech/avmservice/avm/AudioFocus;->avmAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 270
    invoke-virtual {v3, v4}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v3

    .line 271
    invoke-virtual {v3, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mAvmFocusRequest:Landroid/media/AudioFocusRequest;

    .line 273
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mAvmFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 275
    sget-object v3, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestAvmFocus ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestAvmFocus:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 277
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 239
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestCanActiveFocus()I
    .locals 6

    monitor-enter p0

    .line 400
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->isCarplayCertificate()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/16 v4, -0x64

    invoke-virtual {v0, v3, v4, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 402
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bCanActiveMuteMusicMedia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 403
    monitor-exit p0

    return v1

    .line 409
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->InterruptMediaType()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v2, :cond_1

    .line 411
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v4, 0x1c

    .line 412
    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 415
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v4, 0x1e

    .line 416
    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 417
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    .line 419
    :cond_2
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v4, 0x4

    .line 420
    invoke-virtual {v0, v4}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 421
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 423
    :goto_0
    new-instance v4, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v4, v3}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 424
    invoke-virtual {v4, v2}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v3

    .line 425
    invoke-virtual {v3, v2}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/yftech/avmservice/avm/AudioFocus;->canAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 426
    invoke-virtual {v3, v4}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v3

    .line 427
    invoke-virtual {v3, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mCanActiveFocusRequest:Landroid/media/AudioFocusRequest;

    .line 429
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mCanActiveFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 431
    sget-object v3, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestCanActiveFocus type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestCanActiveFocus:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 433
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 399
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestRadarFocus()I
    .locals 5

    monitor-enter p0

    .line 361
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->InterruptMediaType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 363
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0x1c

    .line 364
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 365
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 367
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0x1e

    .line 368
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 369
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    .line 371
    :cond_1
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x4

    .line 372
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 373
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 375
    :goto_0
    new-instance v3, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v3, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 376
    invoke-virtual {v3, v2}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 377
    invoke-virtual {v1, v2}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/yftech/avmservice/avm/AudioFocus;->radarAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 378
    invoke-virtual {v1, v3}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v1

    .line 379
    invoke-virtual {v1, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mRadarFocusRequest:Landroid/media/AudioFocusRequest;

    .line 381
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mRadarFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 383
    sget-object v1, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestRadarFocus type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestRadarFocus:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 385
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 356
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized requestRvcFocus()I
    .locals 6

    monitor-enter p0

    .line 300
    :try_start_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->isCarplayCertificate()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/16 v4, -0x64

    invoke-virtual {v0, v3, v4, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 302
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bRvcMuteMusicMedia:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return v1

    .line 309
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->InterruptMediaType()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 311
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0x1d

    .line 312
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 313
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    .line 315
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xe

    .line 316
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    goto :goto_0

    .line 319
    :cond_2
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0xc

    .line 320
    invoke-virtual {v0, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 321
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 323
    :goto_0
    new-instance v3, Landroid/media/AudioFocusRequest$Builder;

    invoke-direct {v3, v2}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    .line 324
    invoke-virtual {v3, v2}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v3

    .line 325
    invoke-virtual {v3, v2}, Landroid/media/AudioFocusRequest$Builder;->setAcceptsDelayedFocusGain(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/yftech/avmservice/avm/AudioFocus;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 326
    invoke-virtual {v3, v4}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v3

    .line 327
    invoke-virtual {v3, v0}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 328
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mRvcFocusRequest:Landroid/media/AudioFocusRequest;

    .line 329
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus;->m_AudioManager:Landroid/media/AudioManager;

    iget-object v3, p0, Lcom/yftech/avmservice/avm/AudioFocus;->mRvcFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    .line 334
    sget-object v3, Lcom/yftech/avmservice/avm/AudioFocus;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestRvcFocus ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestRvcFocus:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 336
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 299
    monitor-exit p0

    throw v0
.end method
