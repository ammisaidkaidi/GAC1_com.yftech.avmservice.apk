.class public Lcom/yftech/avmservice/procotol/SAVMProcotol;
.super Lcom/yftech/avmservice/procotol/RadarProcotol;
.source "SAVMProcotol.java"

# interfaces
.implements Lcom/yftech/avmservice/common/IMcuCommListener;
.implements Lcom/yftech/avmservice/common/ISAVMControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/avmservice/procotol/SAVMProcotol$SingletonFactory;,
        Lcom/yftech/avmservice/procotol/SAVMProcotol$MyThread;,
        Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCheckTime;,
        Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;
    }
.end annotation


# static fields
.field public static final CAN_GID:B = 0x60t

.field public static final CAN_SID:B = 0x0t

.field private static final DEBUG:Z = true

.field public static final D_TX_ACU_PCS_SVM_FunctionCmd:I = 0x272

.field public static final D_TX_ACU_PCS_ScreenCoordX:I = 0x265

.field public static final D_TX_ACU_PCS_ScreenCoordY:I = 0x266

.field public static final D_TX_ACU_PCS_ScreenTouchSt:I = 0x267

.field public static final D_TX_ACU_SVM_Button:I = 0xe0

.field public static final D_TX_PCS_ACU_DisplayReq:I = 0x1a4

.field public static final HU_CTRL_AVM_GID:B = -0x20t

.field public static final HU_CTRL_AVM_LENGTH:B = 0xct

.field public static final HU_CTRL_AVM_SID:B = 0x0t

.field public static final HU_CTRL_TOUCH_EVENT_GID:B = -0x7at

.field public static final HU_CTRL_TOUCH_EVENT_LENGTH:B = 0x8t

.field public static final HU_CTRL_TOUCH_EVENT_SID:B = 0x13t

.field private static final TAG:Ljava/lang/String; = "SAVMProcotol"

.field private static buffer:Ljava/nio/ByteBuffer;


# instance fields
.field private avmOpState:I

.field private isCameraSystemErr:Z

.field private isCommTimeOut:Z

.field private isCommTimeOutTmp:Z

.field private mAPAInfo:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

.field private mAvmDisplayRequest:I

.field private mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

.field private mCarMiscListener:Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;

.field private mIsApaConn:Z

.field private mIsAvmConn:Z

.field private mNoPacketCount:I

.field private mSAVMControlListener:Lcom/yftech/avmservice/common/ISAVMControl$ISAVMControlListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x38

    .line 67
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 165
    invoke-direct {p0}, Lcom/yftech/avmservice/procotol/RadarProcotol;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mAvmDisplayRequest:I

    .line 48
    new-instance v1, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    invoke-direct {v1}, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;-><init>()V

    iput-object v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mAPAInfo:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    const/4 v1, 0x1

    .line 50
    iput v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->avmOpState:I

    .line 51
    iput-boolean v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->isCameraSystemErr:Z

    .line 52
    iput-boolean v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->isCommTimeOut:Z

    .line 53
    iput-boolean v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->isCommTimeOutTmp:Z

    .line 54
    iput v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mNoPacketCount:I

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mCarMiscListener:Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;

    .line 61
    iput-boolean v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mIsAvmConn:Z

    .line 62
    iput-boolean v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mIsApaConn:Z

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mIsAvmConn:Z

    return p0
.end method

.method static synthetic access$102(Lcom/yftech/avmservice/procotol/SAVMProcotol;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mIsAvmConn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mIsApaConn:Z

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/avmservice/procotol/SAVMProcotol;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mIsApaConn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/yftech/avmservice/procotol/SAVMProcotol;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mAvmDisplayRequest:I

    return p0
.end method

.method static synthetic access$500(Lcom/yftech/avmservice/procotol/SAVMProcotol;)I
    .locals 0

    .line 15
    iget p0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mNoPacketCount:I

    return p0
.end method

.method static synthetic access$508(Lcom/yftech/avmservice/procotol/SAVMProcotol;)I
    .locals 2

    .line 15
    iget v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mNoPacketCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mNoPacketCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/yftech/avmservice/procotol/SAVMProcotol;Z)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->setCommTimeOut(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->isCommTimeOut:Z

    return p0
.end method

.method static synthetic access$702(Lcom/yftech/avmservice/procotol/SAVMProcotol;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->isCommTimeOut:Z

    return p1
.end method

.method static synthetic access$800(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->isCommTimeOutTmp:Z

    return p0
.end method

.method public static getInstance()Lcom/yftech/avmservice/procotol/SAVMProcotol;
    .locals 1

    .line 275
    invoke-static {}, Lcom/yftech/avmservice/procotol/SAVMProcotol$SingletonFactory;->access$900()Lcom/yftech/avmservice/procotol/SAVMProcotol;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized setCommTimeOut(Z)V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 75
    :try_start_0
    sget-object v1, Lcom/yftech/avmservice/procotol/SAVMProcotol;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCommTimeOut:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 76
    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->isCommTimeOutTmp:Z

    .line 77
    iput v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mNoPacketCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    .line 74
    :goto_1
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public getSteerWheelAngle()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public init()V
    .locals 4

    .line 171
    new-instance v0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;-><init>(Lcom/yftech/avmservice/procotol/SAVMProcotol;)V

    iput-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mCarMiscListener:Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;

    .line 172
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->getDeviceNodeState()Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;

    move-result-object v0

    .line 173
    sget-object v1, Lcom/yftech/avmservice/procotol/SAVMProcotol;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "avmconn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->avmConn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",apaConn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->avmConn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mCarMiscListener:Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;

    invoke-virtual {v1, v0}, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->onDeviceNodeStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;)V

    .line 175
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarMiscManager;->get()Lcom/yftech/vehicle/sdk/CarMiscManager;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mCarMiscListener:Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;

    invoke-virtual {v0, p0}, Lcom/yftech/vehicle/sdk/CarMiscManager;->registerListener(Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;)V

    return-void
.end method

.method public isCameraErr()Z
    .locals 0

    .line 266
    iget-boolean p0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->isCameraSystemErr:Z

    return p0
.end method

.method public isCameraOpErr()Z
    .locals 0

    .line 235
    iget p0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->avmOpState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCommTimeOut()Z
    .locals 0

    .line 241
    iget-boolean p0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->isCommTimeOut:Z

    return p0
.end method

.method public onMcuMessageCallBack(Ljava/nio/ByteBuffer;I)V
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->onMcuProcotol(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public onMcuProcotol(Ljava/nio/ByteBuffer;I)V
    .locals 7

    const/4 v0, 0x0

    .line 281
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 283
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    .line 284
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 285
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    const/16 v3, 0x60

    if-ne v1, v3, :cond_5

    if-nez v2, :cond_5

    .line 288
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    int-to-long v1, v1

    .line 289
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 290
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 291
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 293
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    const-wide/16 v3, 0x344

    cmp-long v3, v1, v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    .line 294
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/avmservice/avm/AvmControl;->isFAPA()Z

    move-result v3

    if-nez v3, :cond_1

    .line 295
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 296
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/2addr v1, v4

    .line 297
    iput v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mAvmDisplayRequest:I

    .line 299
    sget-object v1, Lcom/yftech/avmservice/procotol/SAVMProcotol;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMcuProcotol mAvmDisplayRequest:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mAvmDisplayRequest:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    if-eqz v1, :cond_5

    .line 301
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    iget v2, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mAvmDisplayRequest:I

    if-ne v2, v4, :cond_0

    move v0, v4

    :cond_0
    invoke-interface {v1, v0}, Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;->onDisplayState(Z)V

    goto/16 :goto_0

    :cond_1
    const-wide/16 v5, 0x345

    cmp-long v3, v1, v5

    if-nez v3, :cond_3

    .line 303
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yftech/avmservice/avm/AvmControl;->isFAPA()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 304
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 305
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/2addr v1, v4

    .line 306
    iput v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mAvmDisplayRequest:I

    .line 308
    sget-object v1, Lcom/yftech/avmservice/procotol/SAVMProcotol;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMcuProcotol PCS_ACU_DisplayReq:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mAvmDisplayRequest:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    if-eqz v1, :cond_5

    .line 310
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    iget v2, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mAvmDisplayRequest:I

    if-ne v2, v4, :cond_2

    move v0, v4

    :cond_2
    invoke-interface {v1, v0}, Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;->onDisplayState(Z)V

    goto :goto_0

    :cond_3
    const-wide/16 v3, 0x338

    cmp-long v3, v1, v3

    if-nez v3, :cond_4

    .line 314
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v0, v0, 0x4

    .line 316
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    if-eqz v1, :cond_5

    .line 317
    iget-object v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    invoke-interface {v1, v0}, Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;->onGearStateChange(I)V

    goto :goto_0

    :cond_4
    const-wide/16 v3, 0xb3

    cmp-long v1, v1, v3

    if-nez v1, :cond_5

    .line 320
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 321
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 322
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v2, v2, 0xf0

    .line 323
    iget-object v3, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mAPAInfo:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    shl-int/lit8 v4, v1, 0x4

    shr-int/lit8 v5, v2, 0x4

    add-int/2addr v4, v5

    iput v4, v3, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;->APA_VoiceReminder:I

    .line 324
    sget-object v3, Lcom/yftech/avmservice/procotol/SAVMProcotol;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onMcuProcotol val1:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",val2:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", APA_VoiceReminder:"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mAPAInfo:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    iget v1, v1, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;->APA_VoiceReminder:I

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v3, v1, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 325
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    if-eqz v0, :cond_5

    .line 326
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    iget-object v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mAPAInfo:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    invoke-interface {v0, v1}, Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;->onAPADrvReq(Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;)V

    .line 330
    :cond_5
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/yftech/avmservice/procotol/RadarProcotol;->onMcuProcotol(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public replyAPAShowState(Z)Z
    .locals 3

    .line 223
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 224
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v0, -0x20

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 225
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 226
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 227
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v2, -0x5c

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 228
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 229
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUComm;->getInstance()Lcom/yftech/avmservice/procotol/MCUComm;

    move-result-object p0

    sget-object p1, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0xc

    invoke-virtual {p0, p1, v2}, Lcom/yftech/avmservice/procotol/MCUComm;->SendData(Ljava/nio/ByteBuffer;I)I

    move-result p0

    if-lez p0, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public requestCanSync()Z
    .locals 3

    .line 256
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->TAG:Ljava/lang/String;

    const-string v0, "requestCanSync"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 258
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v0, -0x7e

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 259
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 260
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 261
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 262
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUComm;->getInstance()Lcom/yftech/avmservice/procotol/MCUComm;

    move-result-object p0

    sget-object v0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/yftech/avmservice/procotol/MCUComm;->SendData(Ljava/nio/ByteBuffer;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public requestHide()Z
    .locals 3

    .line 211
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 212
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v0, -0x20

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 213
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 214
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 215
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0x72

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 216
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 217
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUComm;->getInstance()Lcom/yftech/avmservice/procotol/MCUComm;

    move-result-object p0

    sget-object v1, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v2, 0xc

    invoke-virtual {p0, v1, v2}, Lcom/yftech/avmservice/procotol/MCUComm;->SendData(Ljava/nio/ByteBuffer;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public requestShow()Z
    .locals 4

    .line 200
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 201
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v0, -0x20

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 202
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 203
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 204
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 205
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 206
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUComm;->getInstance()Lcom/yftech/avmservice/procotol/MCUComm;

    move-result-object p0

    sget-object v2, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0xc

    invoke-virtual {p0, v2, v3}, Lcom/yftech/avmservice/procotol/MCUComm;->SendData(Ljava/nio/ByteBuffer;I)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public sendTouchToAVM(FFI)Z
    .locals 3

    .line 179
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendTouchToAVM ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    float-to-int p2, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "),action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 181
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v0, -0x7a

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 182
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 183
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 184
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 185
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    shr-int/lit8 p1, p2, 0x8

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 186
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 187
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    and-int/lit16 p1, p3, 0xff

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 188
    sget-object p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 189
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUComm;->getInstance()Lcom/yftech/avmservice/procotol/MCUComm;

    move-result-object p0

    sget-object p1, Lcom/yftech/avmservice/procotol/SAVMProcotol;->buffer:Ljava/nio/ByteBuffer;

    const/16 p2, 0x8

    invoke-virtual {p0, p1, p2}, Lcom/yftech/avmservice/procotol/MCUComm;->SendData(Ljava/nio/ByteBuffer;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public setCameraControlListener(Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mCameraControlListener:Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    return-void
.end method

.method public setSAVMControlListener(Lcom/yftech/avmservice/common/ISAVMControl$ISAVMControlListener;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol;->mSAVMControlListener:Lcom/yftech/avmservice/common/ISAVMControl$ISAVMControlListener;

    return-void
.end method
