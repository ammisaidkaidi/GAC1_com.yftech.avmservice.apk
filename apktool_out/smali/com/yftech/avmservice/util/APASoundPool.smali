.class public Lcom/yftech/avmservice/util/APASoundPool;
.super Ljava/lang/Object;
.source "APASoundPool.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# static fields
.field private static final MAX_PLAYING_SUM:I = 0x2


# instance fields
.field public final TAG:Ljava/lang/String;

.field private mAPASoundId1:I

.field private mAPASoundId2:I

.field private mContext:Landroid/content/Context;

.field private mSoundPool:Landroid/media/SoundPool;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-class v0, Lcom/yftech/avmservice/util/MySoundPool;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/util/APASoundPool;->TAG:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/yftech/avmservice/util/APASoundPool;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {p0}, Lcom/yftech/avmservice/util/APASoundPool;->InitSound()V

    return-void
.end method


# virtual methods
.method public InitSound()V
    .locals 4

    .line 25
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v1, 0xd

    .line 26
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 27
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 29
    new-instance v1, Landroid/media/SoundPool$Builder;

    invoke-direct {v1}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v2, 0x2

    .line 30
    invoke-virtual {v1, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v1

    .line 31
    invoke-virtual {v1, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/util/APASoundPool;->mSoundPool:Landroid/media/SoundPool;

    .line 33
    iget-object v0, p0, Lcom/yftech/avmservice/util/APASoundPool;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 34
    iget-object v0, p0, Lcom/yftech/avmservice/util/APASoundPool;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/yftech/avmservice/util/APASoundPool;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/high16 v3, 0x7f0b0000

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/yftech/avmservice/util/APASoundPool;->mAPASoundId1:I

    .line 35
    iget-object v0, p0, Lcom/yftech/avmservice/util/APASoundPool;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/yftech/avmservice/util/APASoundPool;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0001

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/yftech/avmservice/util/APASoundPool;->mAPASoundId2:I

    return-void
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/yftech/avmservice/util/APASoundPool;->TAG:Ljava/lang/String;

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

.method public playReverseEffectAPA1()V
    .locals 7

    .line 45
    iget-object v0, p0, Lcom/yftech/avmservice/util/APASoundPool;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/yftech/avmservice/util/APASoundPool;->mAPASoundId1:I

    const v2, 0x3e33a020

    const v3, 0x3e33a020

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 46
    iget-object p0, p0, Lcom/yftech/avmservice/util/APASoundPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playReverseEffectAPA1  streamID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public playReverseEffectAPA2()V
    .locals 7

    .line 50
    iget-object v0, p0, Lcom/yftech/avmservice/util/APASoundPool;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/yftech/avmservice/util/APASoundPool;->mAPASoundId2:I

    const v2, 0x3e33a020

    const v3, 0x3e33a020

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    .line 51
    iget-object p0, p0, Lcom/yftech/avmservice/util/APASoundPool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playReverseEffectAPA2  streamID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
