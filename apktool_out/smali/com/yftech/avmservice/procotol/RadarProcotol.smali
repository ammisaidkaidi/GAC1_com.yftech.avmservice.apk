.class public Lcom/yftech/avmservice/procotol/RadarProcotol;
.super Ljava/lang/Object;
.source "RadarProcotol.java"

# interfaces
.implements Lcom/yftech/avmservice/common/IMcuCommListener;
.implements Lcom/yftech/avmservice/common/IRadarControl;


# static fields
.field public static final CAN_GID:B = 0x60t

.field public static final CAN_SID:B = 0x0t

.field private static final TAG:Ljava/lang/String; = "RadarProcotol"


# instance fields
.field delayCheckRadar:Ljava/lang/Runnable;

.field private mCarSpeed:I

.field private mFrontRadarErr:Z

.field mHandler:Landroid/os/Handler;

.field private mIsRadarProcotolUpdate:Z

.field private mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

.field private mRadarListener:Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;

.field private mRearRadarErr:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-direct {v0}, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mFrontRadarErr:Z

    iput-boolean v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRearRadarErr:Z

    .line 23
    iput v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mCarSpeed:I

    .line 25
    iput-boolean v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mIsRadarProcotolUpdate:Z

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/procotol/RadarProcotol$1;-><init>(Lcom/yftech/avmservice/procotol/RadarProcotol;)V

    iput-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->delayCheckRadar:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/yftech/avmservice/procotol/RadarProcotol;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/avmservice/procotol/RadarProcotol;)Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mIsRadarProcotolUpdate:Z

    return p0
.end method

.method static synthetic access$200(Lcom/yftech/avmservice/procotol/RadarProcotol;)Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/avmservice/procotol/RadarProcotol;)Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarListener:Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;

    return-object p0
.end method


# virtual methods
.method getFrontRadarLevel(B)B
    .locals 0

    const/16 p0, 0x1e

    if-lez p1, :cond_0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-le p1, p0, :cond_1

    const/16 p0, 0x3c

    if-gt p1, p0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRadarInfo()Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    return-object p0
.end method

.method getRearRadarLevel(B)B
    .locals 1

    const/16 p0, 0x1e

    if-lez p1, :cond_0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    if-le p1, p0, :cond_1

    if-gt p1, v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/16 p0, 0x5a

    if-le p1, v0, :cond_2

    if-gt p1, p0, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    if-le p1, p0, :cond_3

    const/16 p0, 0x78

    if-gt p1, p0, :cond_3

    const/4 p0, 0x4

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method getRearRadarMidLevel(B)B
    .locals 1

    and-int/lit16 p0, p1, 0xff

    const/16 p1, 0x1e

    if-lez p0, :cond_0

    if-gt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    if-le p0, p1, :cond_1

    if-gt p0, v0, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/16 p1, 0x5a

    if-le p0, v0, :cond_2

    if-gt p0, p1, :cond_2

    const/4 p0, 0x3

    goto :goto_0

    :cond_2
    if-le p0, p1, :cond_3

    const/16 p1, 0x96

    if-gt p0, p1, :cond_3

    const/4 p0, 0x4

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isFrontRadarErr()Z
    .locals 0

    .line 265
    iget-boolean p0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mFrontRadarErr:Z

    return p0
.end method

.method public isRearRadarErr()Z
    .locals 0

    .line 270
    iget-boolean p0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRearRadarErr:Z

    return p0
.end method

.method public onMcuMessageCallBack(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 249
    invoke-virtual {p0, p1, p2}, Lcom/yftech/avmservice/procotol/RadarProcotol;->onMcuProcotol(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public onMcuProcotol(Ljava/nio/ByteBuffer;I)V
    .locals 4

    const/4 p2, 0x0

    .line 229
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 230
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 231
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    .line 232
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    const/16 v1, 0x60

    if-ne p2, v1, :cond_1

    if-nez v0, :cond_1

    .line 235
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x18

    int-to-long v0, p2

    .line 236
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x10

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 237
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    shl-int/lit8 p2, p2, 0x8

    int-to-long v2, p2

    add-long/2addr v0, v2

    .line 238
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    int-to-long v2, p2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x343

    cmp-long p2, v0, v2

    if-eqz p2, :cond_0

    const-wide/16 v2, 0x347

    cmp-long p2, v0, v2

    if-nez p2, :cond_1

    .line 241
    :cond_0
    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/procotol/RadarProcotol;->onRadarChange(Ljava/nio/ByteBuffer;)V

    :cond_1
    return-void
.end method

.method public onRadarChange(Ljava/nio/ByteBuffer;)V
    .locals 8

    .line 149
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    const/16 v1, 0x10

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 150
    sget-object p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRadarChange ByteBuffer size err:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 153
    iput-boolean v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mIsRadarProcotolUpdate:Z

    const/4 v3, 0x3

    .line 155
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v4

    shl-int/lit8 v4, v4, 0x18

    int-to-long v4, v4

    .line 157
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    shl-int/lit8 v1, v6, 0x10

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 158
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 159
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 160
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    const-wide/16 v6, 0x343

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 163
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 164
    iget-object v4, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    and-int/lit8 v5, v1, 0x3

    int-to-byte v5, v5

    iput-byte v5, v4, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_SystemType:B

    .line 165
    iget-object v4, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    shr-int/lit8 v5, v1, 0x2

    and-int/2addr v3, v5

    int-to-byte v3, v3

    iput-byte v3, v4, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_RPASysFailureFlag:B

    .line 166
    iget-object v3, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    iput-byte v1, v3, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_WarnTone:B

    .line 167
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 168
    iget-object v3, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    and-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, v3, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_ButtonPress:B

    .line 170
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/procotol/RadarProcotol;->getRearRadarMidLevel(B)B

    move-result v1

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackDis:B

    .line 171
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/procotol/RadarProcotol;->getRearRadarMidLevel(B)B

    move-result v1

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackDis:B

    .line 172
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/procotol/RadarProcotol;->getRearRadarLevel(B)B

    move-result v1

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    .line 173
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/procotol/RadarProcotol;->getRearRadarLevel(B)B

    move-result p1

    iput-byte p1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    goto/16 :goto_0

    :cond_1
    const-wide/16 v6, 0x347

    cmp-long v1, v4, v6

    if-nez v1, :cond_2

    .line 175
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yftech/avmservice/procotol/RadarProcotol;->getFrontRadarLevel(B)B

    move-result v3

    iput-byte v3, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontDis:B

    .line 176
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yftech/avmservice/procotol/RadarProcotol;->getFrontRadarLevel(B)B

    move-result v3

    iput-byte v3, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontDis:B

    .line 177
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yftech/avmservice/procotol/RadarProcotol;->getFrontRadarLevel(B)B

    move-result v3

    iput-byte v3, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterFrontDis:B

    .line 178
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-virtual {p0, v3}, Lcom/yftech/avmservice/procotol/RadarProcotol;->getFrontRadarLevel(B)B

    move-result v3

    iput-byte v3, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterFrontDis:B

    .line 179
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_FSRSideDistance:B

    .line 180
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    iput-byte v3, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_FSLSideDistance:B

    .line 182
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 183
    iget-object v3, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    and-int/lit8 v4, v1, 0x1

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    .line 184
    iget-object v3, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    shr-int/lit8 v4, v1, 0x1

    and-int/2addr v4, v0

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    .line 185
    iget-object v3, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    shr-int/lit8 v4, v1, 0x2

    and-int/2addr v4, v0

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    .line 186
    iget-object v3, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    shr-int/lit8 v4, v1, 0x3

    and-int/2addr v4, v0

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    .line 189
    iget-object v3, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    shr-int/lit8 v4, v1, 0x4

    and-int/2addr v4, v0

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterFrontSensorFaultSts:B

    .line 190
    iget-object v3, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    shr-int/lit8 v4, v1, 0x5

    and-int/2addr v4, v0

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterFrontSensorFaultSts:B

    .line 191
    iget-object v3, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    shr-int/lit8 v4, v1, 0x6

    and-int/2addr v4, v0

    int-to-byte v4, v4

    iput-byte v4, v3, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontSensorFaultSts:B

    .line 192
    iget-object v3, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    shr-int/lit8 v1, v1, 0x7

    and-int/2addr v1, v0

    int-to-byte v1, v1

    iput-byte v1, v3, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontSensorFaultSts:B

    .line 194
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    .line 195
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    shr-int/lit8 v3, p1, 0x4

    and-int/2addr v3, v0

    int-to-byte v3, v3

    iput-byte v3, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_CtrlModulerrFlag:B

    .line 196
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    shr-int/lit8 p1, p1, 0x5

    and-int/2addr p1, v0

    int-to-byte p1, p1

    iput-byte p1, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_BattVoltErrFlag:B

    .line 218
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarListener:Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;

    if-eqz p1, :cond_3

    .line 219
    sget-object p1, Lcom/yftech/avmservice/procotol/RadarProcotol;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sys fault:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v1, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->PAS_RPASysFailureFlag:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    sget-object p1, Lcom/yftech/avmservice/procotol/RadarProcotol;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rear fault:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v1, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackSensorFaultSts:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v1, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackSensorFaultSts:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v1, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackSensorFaultSts:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    iget-byte v1, v1, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object p1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarListener:Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;

    iget-object p0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-interface {p1, p0}, Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;->onRadarInfo(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;)V

    :cond_3
    return-void
.end method

.method public requestRadarClose()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public requestRadarOpen()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setRadarListener(Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol;->mRadarListener:Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;

    return-void
.end method
