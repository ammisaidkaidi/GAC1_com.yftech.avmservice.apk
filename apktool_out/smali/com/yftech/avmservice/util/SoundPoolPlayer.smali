.class public Lcom/yftech/avmservice/util/SoundPoolPlayer;
.super Ljava/lang/Object;
.source "SoundPoolPlayer.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# static fields
.field public static final PAS_SOUND_COUNT:I = 0x5

.field public static final PAS_WARN_TONE_1:I = 0x0

.field public static final PAS_WARN_TONE_2:I = 0x1

.field public static final PAS_WARN_TONE_3:I = 0x2

.field public static final PAS_WARN_TONE_4:I = 0x3

.field public static final PAS_WARN_TONE_5:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SoundPoolPlayer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsWarmTonePlay:[Z

.field private mSoundPool:Landroid/media/SoundPool;

.field private mWarnToneSoundId:[I

.field private mWarnToneStreamId:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 20
    iput-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mContext:Landroid/content/Context;

    .line 21
    iput-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneSoundId:[I

    .line 22
    iput-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneStreamId:[I

    .line 23
    iput-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mIsWarmTonePlay:[Z

    .line 26
    iput-object p1, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mContext:Landroid/content/Context;

    const/4 p1, 0x5

    .line 27
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneSoundId:[I

    .line 28
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneStreamId:[I

    .line 29
    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mIsWarmTonePlay:[Z

    .line 30
    invoke-virtual {p0}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->InitSound()V

    return-void
.end method

.method private play(I)I
    .locals 7

    .line 131
    iget-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result p0

    return p0
.end method


# virtual methods
.method public InitSound()V
    .locals 6

    .line 35
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0x1c

    .line 38
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 41
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v2, 0x4

    .line 42
    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 43
    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    .line 46
    iget-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 47
    iget-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneSoundId:[I

    iget-object v1, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const v5, 0x7f0b0003

    invoke-virtual {v1, v3, v5, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 48
    iget-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneSoundId:[I

    iget-object v1, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0004

    invoke-virtual {v1, v3, v5, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 49
    iget-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneSoundId:[I

    iget-object v1, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0005

    invoke-virtual {v1, v3, v5, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    const/4 v3, 0x2

    aput v1, v0, v3

    .line 50
    iget-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneSoundId:[I

    iget-object v1, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v3, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mContext:Landroid/content/Context;

    const v5, 0x7f0b0006

    invoke-virtual {v1, v3, v5, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    const/4 v3, 0x3

    aput v1, v0, v3

    .line 51
    iget-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneSoundId:[I

    iget-object v1, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object p0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0007

    invoke-virtual {v1, p0, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p0

    aput p0, v0, v2

    return-void
.end method

.method public StopWarnTone(I)V
    .locals 6

    .line 92
    iget-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mIsWarmTonePlay:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const v0, 0x3c648e8a    # 0.01395f

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const v0, 0x3cab367a    # 0.0209f

    goto :goto_0

    :cond_1
    const v0, 0x3b83126f    # 0.004f

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v0

    int-to-float v4, v2

    mul-float/2addr v4, v0

    sub-float/2addr v3, v4

    .line 105
    iget-object v4, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneStreamId:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5, v3, v3}, Landroid/media/SoundPool;->setVolume(IFF)V

    const-wide/16 v3, 0xa

    .line 107
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 109
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneStreamId:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 113
    sget-object v0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop WarnTone, index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " stream id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneStreamId:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneStreamId:[I

    aput v1, v0, p1

    .line 115
    iget-object p0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mIsWarmTonePlay:[Z

    aput-boolean v1, p0, p1

    .line 116
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->abandonRadarFocus()V

    :cond_3
    return-void
.end method

.method public isWarnTonePlay(I)Z
    .locals 0

    .line 128
    iget-object p0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mIsWarmTonePlay:[Z

    aget-boolean p0, p0, p1

    return p0
.end method

.method public iswarnTonePlay()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mIsWarmTonePlay:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0

    .line 56
    sget-object p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLoadComplete "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public playWarnTone(I)V
    .locals 7

    const/4 v0, 0x0

    if-gez p1, :cond_0

    const/4 v1, 0x4

    if-le p1, v1, :cond_0

    .line 61
    sget-object v1, Lcom/yftech/avmservice/util/SoundPoolPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sound index err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mIsWarmTonePlay:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_1

    .line 64
    sget-object v1, Lcom/yftech/avmservice/util/SoundPoolPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WarnTone index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " already play err!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    :cond_1
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/avmservice/avm/AudioFocus;->requestRadarFocus()I

    .line 67
    iget-object v1, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneStreamId:[I

    iget-object v2, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneSoundId:[I

    aget v2, v2, p1

    invoke-direct {p0, v2}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->play(I)I

    move-result v2

    aput v2, v1, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    const v1, 0x3c648e8a    # 0.01395f

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    const v1, 0x3cab367a    # 0.0209f

    goto :goto_0

    :cond_3
    const v1, 0x3b83126f    # 0.004f

    :goto_0
    move v3, v0

    :goto_1
    const/16 v4, 0xa

    if-ge v3, v4, :cond_4

    int-to-float v4, v3

    mul-float/2addr v4, v1

    .line 80
    iget-object v5, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mSoundPool:Landroid/media/SoundPool;

    iget-object v6, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneStreamId:[I

    aget v6, v6, p1

    invoke-virtual {v5, v6, v4, v4}, Landroid/media/SoundPool;->setVolume(IFF)V

    const-wide/16 v4, 0xa

    .line 82
    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    .line 84
    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    :cond_4
    iget-object v1, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mIsWarmTonePlay:[Z

    aput-boolean v2, v1, p1

    .line 88
    sget-object v1, Lcom/yftech/avmservice/util/SoundPoolPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play WarnTone, index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " stream id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/avmservice/util/SoundPoolPlayer;->mWarnToneStreamId:[I

    aget p0, p0, p1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stopAllWarnTone()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 136
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->StopWarnTone(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
