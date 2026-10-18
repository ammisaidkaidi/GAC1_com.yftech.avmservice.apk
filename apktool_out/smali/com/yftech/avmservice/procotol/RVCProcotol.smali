.class public Lcom/yftech/avmservice/procotol/RVCProcotol;
.super Lcom/yftech/avmservice/procotol/RadarProcotol;
.source "RVCProcotol.java"

# interfaces
.implements Lcom/yftech/avmservice/common/ICameraControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/avmservice/procotol/RVCProcotol$SingletonFactory;,
        Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;
    }
.end annotation


# static fields
.field public static final RVC_OP_STATE_CALIBRATION:I = 0x3

.field public static final RVC_OP_STATE_NOT_AVAILABLE:I = 0x2

.field public static final RVC_OP_STATE_OPERATION:I = 0x1

.field public static final RVC_OP_STATE_STANDY:I = 0x0

.field public static final RVC_OP_STATE_WARNING:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RVCProcotol"

.field private static buffer:Ljava/nio/ByteBuffer;


# instance fields
.field private PASWorkCmd:I

.field private isCommTimeOut:Z

.field private mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

.field private mNoPacketCount:I

.field private mSteerWheelAngle:F

.field private rvcOpState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x38

    .line 30
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 68
    invoke-direct {p0}, Lcom/yftech/avmservice/procotol/RadarProcotol;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->PASWorkCmd:I

    const/4 v1, 0x1

    .line 24
    iput v1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->rvcOpState:I

    .line 26
    iput-boolean v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->isCommTimeOut:Z

    .line 27
    iput v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mNoPacketCount:I

    const/4 v1, 0x0

    .line 28
    iput v1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mSteerWheelAngle:F

    .line 79
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarSwcManager;->get()Lcom/yftech/vehicle/sdk/CarSwcManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yftech/vehicle/sdk/CarSwcManager;->getSwcAngle()F

    move-result v1

    iput v1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mSteerWheelAngle:F

    .line 80
    sget-object v1, Lcom/yftech/avmservice/procotol/RVCProcotol;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RVCProcotol mSteerWheelAngle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mSteerWheelAngle:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, p0, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/avmservice/procotol/RVCProcotol;)I
    .locals 0

    .line 11
    iget p0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mNoPacketCount:I

    return p0
.end method

.method static synthetic access$002(Lcom/yftech/avmservice/procotol/RVCProcotol;I)I
    .locals 0

    .line 11
    iput p1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mNoPacketCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/yftech/avmservice/procotol/RVCProcotol;)I
    .locals 2

    .line 11
    iget v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mNoPacketCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mNoPacketCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/yftech/avmservice/procotol/RVCProcotol;)Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->isCommTimeOut:Z

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/avmservice/procotol/RVCProcotol;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->isCommTimeOut:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/avmservice/procotol/RVCProcotol;)Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    return-object p0
.end method

.method public static getInstance()Lcom/yftech/avmservice/procotol/RVCProcotol;
    .locals 1

    .line 101
    invoke-static {}, Lcom/yftech/avmservice/procotol/RVCProcotol$SingletonFactory;->access$300()Lcom/yftech/avmservice/procotol/RVCProcotol;

    move-result-object v0

    return-object v0
.end method

.method private onRvcRunState(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x3

    .line 84
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 85
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 86
    iget v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->rvcOpState:I

    if-eq v0, p1, :cond_2

    .line 87
    iput p1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->rvcOpState:I

    .line 88
    iget-object p1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    if-eqz p1, :cond_2

    .line 89
    iget p1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->rvcOpState:I

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->rvcOpState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 90
    :goto_1
    iget-object p0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    invoke-interface {p0, p1}, Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;->onCameraOpStateErr(Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method public getSteerWheelAngle()F
    .locals 0

    .line 271
    iget p0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mSteerWheelAngle:F

    return p0
.end method

.method public isCameraOpErr()Z
    .locals 1

    .line 261
    iget v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->rvcOpState:I

    if-eqz v0, :cond_1

    iget p0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->rvcOpState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isCommTimeOut()Z
    .locals 0

    .line 266
    iget-boolean p0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->isCommTimeOut:Z

    return p0
.end method

.method public onMcuProcotol(Ljava/nio/ByteBuffer;I)V
    .locals 6

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 109
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 110
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 111
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/16 v3, 0x60

    if-ne v1, v3, :cond_2

    if-nez v2, :cond_2

    .line 114
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    int-to-long v1, v1

    .line 115
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 116
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 117
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 119
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    const-wide/16 v3, 0x5b3

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 121
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 123
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    goto/16 :goto_0

    :cond_0
    const-wide/16 v3, 0x47a

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 126
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 127
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 128
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x33d

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 131
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 132
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_2

    .line 134
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 135
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 136
    sget-object v2, Lcom/yftech/avmservice/procotol/RVCProcotol;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMcuProcotol mSteerWheelAngle1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 138
    sget-object v3, Lcom/yftech/avmservice/procotol/RVCProcotol;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMcuProcotol mSteerWheelAngle2:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    shl-int/lit8 v0, v1, 0x8

    add-int/2addr v0, v2

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    const/high16 v1, 0x44430000    # 780.0f

    sub-float/2addr v0, v1

    .line 139
    iput v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mSteerWheelAngle:F

    .line 140
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    iget v1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mSteerWheelAngle:F

    invoke-interface {v0, v1}, Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;->onSteerWheelAngel(F)V

    .line 146
    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/yftech/avmservice/procotol/RadarProcotol;->onMcuProcotol(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public requestCanSync()Z
    .locals 3

    .line 281
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->TAG:Ljava/lang/String;

    const-string v0, "requestCanSync"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 283
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v0, -0x7e

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 284
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 285
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 286
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 287
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUComm;->getInstance()Lcom/yftech/avmservice/procotol/MCUComm;

    move-result-object p0

    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/yftech/avmservice/procotol/MCUComm;->SendData(Ljava/nio/ByteBuffer;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public requestHide()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public requestShow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public resetRvcCamera()Z
    .locals 4

    .line 291
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->TAG:Ljava/lang/String;

    const-string v0, "resetRvcCamera"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 293
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 294
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 295
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 296
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 297
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 298
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 299
    sget-object p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 300
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUComm;->getInstance()Lcom/yftech/avmservice/procotol/MCUComm;

    move-result-object p0

    sget-object v2, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    invoke-virtual {p0, v2, v3}, Lcom/yftech/avmservice/procotol/MCUComm;->SendData(Ljava/nio/ByteBuffer;I)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public sendResetPaket()Z
    .locals 4

    .line 176
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 179
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 180
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 181
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 182
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 183
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 184
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 185
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x43

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 186
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 187
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 188
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 189
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 190
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 191
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 192
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 193
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 194
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 195
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x12

    invoke-virtual {p0, v0, v2}, Lcom/yftech/avmservice/procotol/RVCProcotol;->onMcuProcotol(Ljava/nio/ByteBuffer;I)V

    return v1
.end method

.method public sendResetPaket1()Z
    .locals 4

    .line 226
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 229
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 230
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 231
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 232
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 233
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 234
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 235
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x47

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 236
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 237
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 238
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 239
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 240
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 241
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 242
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 243
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 244
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 245
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x12

    invoke-virtual {p0, v0, v2}, Lcom/yftech/avmservice/procotol/RVCProcotol;->onMcuProcotol(Ljava/nio/ByteBuffer;I)V

    return v1
.end method

.method public sendTestPaket()Z
    .locals 4

    .line 151
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 154
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 155
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 156
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 157
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 158
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 159
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 160
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x43

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 161
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 162
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 163
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 164
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 165
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 166
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 167
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 168
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 169
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 170
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x12

    invoke-virtual {p0, v0, v2}, Lcom/yftech/avmservice/procotol/RVCProcotol;->onMcuProcotol(Ljava/nio/ByteBuffer;I)V

    return v1
.end method

.method public sendTestPaket1()Z
    .locals 4

    .line 201
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 204
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 205
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x60

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 206
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 207
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 208
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 209
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 210
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x47

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 211
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 212
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 213
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 214
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 215
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 216
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 217
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 218
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 219
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 220
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x12

    invoke-virtual {p0, v0, v2}, Lcom/yftech/avmservice/procotol/RVCProcotol;->onMcuProcotol(Ljava/nio/ByteBuffer;I)V

    return v1
.end method

.method public setCameraControlListener(Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    return-void
.end method
