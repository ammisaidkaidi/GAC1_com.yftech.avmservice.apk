.class public Lcom/yftech/avmservice/util/TonePlay;
.super Ljava/lang/Object;
.source "TonePlay.java"


# static fields
.field private static final AUDIO_FORMAT:I = 0x2

.field private static final CHANNEL_CONFIG:I = 0x4

.field private static final SAMPLE_RATE:I = 0xbb80

.field private static final STREAM_TYPE:I = 0x1c

.field private static final TAG:Ljava/lang/String; = "TonePlay"


# instance fields
.field private audioTrack:Landroid/media/AudioTrack;

.field private bufferSize:I

.field byteData:[B

.field private isPlaying:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/yftech/avmservice/util/TonePlay;->isPlaying:Z

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/yftech/avmservice/util/TonePlay;->byteData:[B

    .line 30
    iput-object v0, p0, Lcom/yftech/avmservice/util/TonePlay;->mContext:Landroid/content/Context;

    .line 43
    iput-object p1, p0, Lcom/yftech/avmservice/util/TonePlay;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getFileData(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :pswitch_0
    const p1, 0x7f0b0006

    goto :goto_0

    :pswitch_1
    const p1, 0x7f0b0005

    goto :goto_0

    :pswitch_2
    const p1, 0x7f0b0004

    goto :goto_0

    :pswitch_3
    const p1, 0x7f0b0003

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/yftech/avmservice/util/TonePlay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 57
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/yftech/avmservice/util/TonePlay;->byteData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 62
    :goto_1
    :try_start_1
    iget-object p0, p0, Lcom/yftech/avmservice/util/TonePlay;->byteData:[B

    invoke-virtual {p1, p0}, Ljava/io/InputStream;->read([B)I

    .line 63
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_2
    move-exception p0

    .line 65
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public playWarnTone(I)V
    .locals 10

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-gez p1, :cond_0

    if-le p1, v0, :cond_0

    .line 73
    sget-object v2, Lcom/yftech/avmservice/util/TonePlay;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sound index err "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :cond_0
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v3, 0x1c

    .line 79
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 80
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v4

    .line 81
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const v3, 0xbb80

    .line 82
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 83
    invoke-virtual {v2, v0}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/4 v9, 0x2

    .line 84
    invoke-virtual {v2, v9}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v5

    .line 88
    invoke-static {v3, v0, v9}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcom/yftech/avmservice/util/TonePlay;->bufferSize:I

    .line 89
    sget-object v0, Lcom/yftech/avmservice/util/TonePlay;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bufferSize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/avmservice/util/TonePlay;->bufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/util/TonePlay;->getFileData(I)V

    .line 91
    iget-object v0, p0, Lcom/yftech/avmservice/util/TonePlay;->byteData:[B

    if-eqz v0, :cond_1

    .line 92
    sget-object v0, Lcom/yftech/avmservice/util/TonePlay;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "byteData len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/avmservice/util/TonePlay;->byteData:[B

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x2c

    .line 97
    :try_start_0
    new-instance v2, Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/yftech/avmservice/util/TonePlay;->byteData:[B

    array-length v3, v3

    add-int/lit8 v6, v3, -0x2c

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Landroid/media/AudioTrack;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;III)V

    iput-object v2, p0, Lcom/yftech/avmservice/util/TonePlay;->audioTrack:Landroid/media/AudioTrack;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 99
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 101
    :goto_0
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yftech/avmservice/avm/AudioFocus;->requestRadarFocus()I

    .line 103
    iget-object v2, p0, Lcom/yftech/avmservice/util/TonePlay;->audioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/yftech/avmservice/util/TonePlay;->byteData:[B

    iget-object v4, p0, Lcom/yftech/avmservice/util/TonePlay;->byteData:[B

    array-length v4, v4

    sub-int/2addr v4, v0

    invoke-virtual {v2, v3, v0, v4}, Landroid/media/AudioTrack;->write([BII)I

    .line 104
    iget-object v2, p0, Lcom/yftech/avmservice/util/TonePlay;->audioTrack:Landroid/media/AudioTrack;

    iget-object v3, p0, Lcom/yftech/avmservice/util/TonePlay;->byteData:[B

    array-length v3, v3

    sub-int/2addr v3, v0

    div-int/2addr v3, v9

    const/4 v0, -0x1

    invoke-virtual {v2, v1, v3, v0}, Landroid/media/AudioTrack;->setLoopPoints(III)I

    .line 106
    iget-object v0, p0, Lcom/yftech/avmservice/util/TonePlay;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    const/4 v0, 0x1

    .line 107
    iput-boolean v0, p0, Lcom/yftech/avmservice/util/TonePlay;->isPlaying:Z

    .line 109
    :cond_1
    sget-object p0, Lcom/yftech/avmservice/util/TonePlay;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play WarnTone, index:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public stopAllWarnTone()V
    .locals 4

    .line 114
    sget-object v0, Lcom/yftech/avmservice/util/TonePlay;->TAG:Ljava/lang/String;

    const-string v1, "stop WarnTone"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/yftech/avmservice/util/TonePlay;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/yftech/avmservice/util/TonePlay;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 117
    iget-object v0, p0, Lcom/yftech/avmservice/util/TonePlay;->audioTrack:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/yftech/avmservice/util/TonePlay;->audioTrack:Landroid/media/AudioTrack;

    .line 119
    iput-boolean v2, p0, Lcom/yftech/avmservice/util/TonePlay;->isPlaying:Z

    .line 120
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->abandonRadarFocus()V

    :cond_0
    return-void
.end method
