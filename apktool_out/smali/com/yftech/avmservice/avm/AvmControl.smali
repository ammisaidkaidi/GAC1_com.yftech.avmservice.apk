.class public Lcom/yftech/avmservice/avm/AvmControl;
.super Ljava/lang/Object;
.source "AvmControl.java"

# interfaces
.implements Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;
.implements Lcom/yftech/avmservice/avm/AVMMonitor$ICameraMonitorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/avmservice/avm/AvmControl$SingletonFactory;
    }
.end annotation


# static fields
.field private static final ADDR_RVC_CAMERA_ID:I = 0x1002d

.field public static final AVM_CAMERA_HIDE:I = 0x0

.field public static final AVM_CAMERA_REQ_SHOW_BY_AVM_PROCOTOL:I = 0x1

.field public static final AVM_CAMERA_REQ_SHOW_BY_USER_ACTION:I = 0x2

.field public static final CAR_TYPE_A58:I = 0x1

.field public static final CAR_TYPE_A79:I = 0x3

.field public static final CAR_TYPE_A88:I = 0x2

.field public static final CAR_TYPE_UNKNOWN:I = 0x0

.field private static final DEBUG:Z = true

.field public static final DEVICE_TYPE_360RVCSVC:I = 0x3

.field public static final DEVICE_TYPE_AVM:I = 0x2

.field public static final DEVICE_TYPE_HAVM:I = 0x4

.field public static final DEVICE_TYPE_NONE:I = 0x0

.field public static final DEVICE_TYPE_RADAR:I = 0x5

.field public static final DEVICE_TYPE_RVC:I = 0x1

.field public static final FRONT_0_REAR_3:I = 0x1

.field public static final FRONT_0_REAR_4:I = 0x2

.field public static final FRONT_2_REAR_3:I = 0x3

.field public static final FRONT_2_REAR_4:I = 0x4

.field public static final FRONT_4_REAR_4:I = 0x5

.field public static final RADAR_TYPE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AvmControl"

.field private static avmReqOnOff:I = 0x0

.field private static buffer:Ljava/nio/ByteBuffer; = null

.field private static volatile isInit:Z = false


# instance fields
.field car_type:I

.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field device_type:I

.field private mAPADrvReq:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

.field private mAvmDisplayShowState:Z

.field private mAvmFrontRadarErr:Z

.field private mAvmRearRadarErr:Z

.field private mAvmSignalErr:Z

.field private mAvmSystemErr:Z

.field private mBackCarCameraId:I

.field private mBaseWindow:Lcom/yftech/avmservice/windowutil/BaseWindow;

.field private mCameraInputErr:I

.field private mCarTrunkOpen:Z

.field mHandler:Landroid/os/Handler;

.field private mIsAVMPlusFAPAMode:Z

.field private mIsAvmServiceRun:Z

.field private mIsBackcar:Z

.field private mIsGearState:Z

.field private mIsIoBackCar:Z

.field private mIsRvcMode:Z

.field private mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

.field private mNoRearElapsedRealtime:J

.field mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

.field private mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

.field private mRvcWindow:Lcom/yftech/avmservice/windowutil/RVCWindow;

.field private mSAVMProcotol:Lcom/yftech/avmservice/procotol/SAVMProcotol;

.field private mShowLoading:Z

.field private mSvmWindow:Lcom/yftech/avmservice/windowutil/SAVMWindow;

.field r:Ljava/lang/Runnable;

.field radar_type:I

.field private testCmd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x38

    .line 77
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lcom/yftech/avmservice/avm/AvmControl;->buffer:Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    .line 90
    sput v0, Lcom/yftech/avmservice/avm/AvmControl;->avmReqOnOff:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 65
    iput-wide v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mNoRearElapsedRealtime:J

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsRvcMode:Z

    const/4 v1, 0x0

    .line 69
    iput v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBackCarCameraId:I

    .line 70
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAvmDisplayShowState:Z

    .line 71
    new-instance v2, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    invoke-direct {v2}, Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;-><init>()V

    iput-object v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAPADrvReq:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    .line 81
    iput v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    const/4 v0, 0x2

    .line 82
    iput v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->radar_type:I

    .line 83
    iput v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->car_type:I

    .line 92
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsGearState:Z

    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBaseWindow:Lcom/yftech/avmservice/windowutil/BaseWindow;

    .line 96
    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcWindow:Lcom/yftech/avmservice/windowutil/RVCWindow;

    .line 97
    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSvmWindow:Lcom/yftech/avmservice/windowutil/SAVMWindow;

    .line 98
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAvmSystemErr:Z

    .line 99
    iput v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mCameraInputErr:I

    .line 100
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAvmSignalErr:Z

    .line 101
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAvmFrontRadarErr:Z

    .line 102
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAvmRearRadarErr:Z

    .line 103
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mCarTrunkOpen:Z

    .line 104
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mShowLoading:Z

    .line 105
    new-instance v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    invoke-direct {v0}, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRadarInfo:Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    .line 106
    new-instance v0, Lcom/yftech/avmservice/util/DistributedHandler;

    invoke-direct {v0}, Lcom/yftech/avmservice/util/DistributedHandler;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    .line 112
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsBackcar:Z

    .line 114
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsAvmServiceRun:Z

    .line 117
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsAVMPlusFAPAMode:Z

    .line 118
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsIoBackCar:Z

    .line 812
    iput-boolean v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->testCmd:Z

    .line 813
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mHandler:Landroid/os/Handler;

    .line 814
    new-instance v0, Lcom/yftech/avmservice/avm/AvmControl$1;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/avm/AvmControl$1;-><init>(Lcom/yftech/avmservice/avm/AvmControl;)V

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->r:Ljava/lang/Runnable;

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/avmservice/avm/AvmControl$1;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/yftech/avmservice/avm/AvmControl;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/yftech/avmservice/avm/AvmControl;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->testCmd:Z

    return p0
.end method

.method static synthetic access$202(Lcom/yftech/avmservice/avm/AvmControl;Z)Z
    .locals 0

    .line 42
    iput-boolean p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->testCmd:Z

    return p1
.end method

.method private getDevice()V
    .locals 7

    .line 372
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getVehiclePlatform()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    move-result-object v0

    .line 373
    sget-object v1, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVehiclePlatform vehiclePlatform type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 374
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;->A58:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    const/4 v2, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v0, v1, :cond_0

    .line 375
    iput v5, p0, Lcom/yftech/avmservice/avm/AvmControl;->car_type:I

    goto :goto_0

    .line 376
    :cond_0
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;->A88:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    if-ne v0, v1, :cond_1

    .line 377
    iput v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->car_type:I

    goto :goto_0

    .line 378
    :cond_1
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;->A79:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    if-ne v0, v1, :cond_2

    .line 379
    iput v4, p0, Lcom/yftech/avmservice/avm/AvmControl;->car_type:I

    .line 381
    :cond_2
    :goto_0
    iput v4, p0, Lcom/yftech/avmservice/avm/AvmControl;->car_type:I

    .line 382
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->car_type:I

    if-ne v0, v4, :cond_8

    .line 384
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getCameraNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    move-result-object v0

    .line 385
    sget-object v1, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCameraNumber cameraNumber:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v6}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->RVC:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    if-ne v0, v1, :cond_3

    .line 387
    iput-boolean v5, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsRvcMode:Z

    .line 388
    iput v5, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    .line 389
    iput v3, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBackCarCameraId:I

    goto :goto_1

    .line 390
    :cond_3
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->EXTERNAL_AVM:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    const/4 v4, 0x5

    if-ne v0, v1, :cond_4

    .line 391
    iput-boolean v5, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsRvcMode:Z

    .line 392
    iput v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    .line 393
    iput v4, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBackCarCameraId:I

    goto :goto_1

    .line 394
    :cond_4
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->SVM_PLUSFAPA:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    if-ne v0, v1, :cond_5

    .line 395
    iput-boolean v5, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsRvcMode:Z

    .line 396
    iput v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    .line 397
    iput v4, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBackCarCameraId:I

    .line 398
    iput-boolean v5, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsAVMPlusFAPAMode:Z

    goto :goto_1

    .line 399
    :cond_5
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$CameraNumber;

    if-ne v0, v1, :cond_7

    .line 401
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->radar_type:I

    if-eqz v0, :cond_6

    .line 402
    iput-boolean v5, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsRvcMode:Z

    .line 403
    iput v4, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    .line 404
    iput v3, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBackCarCameraId:I

    goto :goto_1

    .line 406
    :cond_6
    iput-boolean v5, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsRvcMode:Z

    .line 407
    iput v3, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    .line 408
    iput v3, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBackCarCameraId:I

    goto :goto_1

    .line 411
    :cond_7
    iput-boolean v3, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsRvcMode:Z

    .line 412
    iput v3, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    .line 413
    iput v3, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBackCarCameraId:I

    .line 415
    :goto_1
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isSvmPresent()Z

    move-result v0

    .line 416
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->isExternalSvmPresent()Z

    move-result v1

    .line 417
    sget-object v2, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CarConfig isRvcPresent :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsRvcMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",isSvmPresent:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",isExternalSvmPresent:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 420
    :cond_8
    iput-boolean v5, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsRvcMode:Z

    .line 421
    iput v5, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    .line 422
    iput v3, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBackCarCameraId:I

    .line 426
    :goto_2
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device type11:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static getInstance()Lcom/yftech/avmservice/avm/AvmControl;
    .locals 1

    .line 495
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl$SingletonFactory;->access$100()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    return-object v0
.end method

.method private getRadar()V
    .locals 5

    .line 430
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getRadarNumber()Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    move-result-object v0

    .line 431
    sget-object v1, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRadarNumber radar type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->FRONT_0_REAR_3:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 433
    iput v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->radar_type:I

    goto :goto_0

    .line 434
    :cond_0
    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;->NONE:Lcom/yftech/vehicle/internal/adapter/ICarConfig$RadarNumber;

    if-ne v0, v1, :cond_1

    .line 435
    iput v3, p0, Lcom/yftech/avmservice/avm/AvmControl;->radar_type:I

    goto :goto_0

    .line 437
    :cond_1
    iput v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->radar_type:I

    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    .line 513
    sget-boolean v0, Lcom/yftech/avmservice/avm/AvmControl;->isInit:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 514
    sput-boolean v0, Lcom/yftech/avmservice/avm/AvmControl;->isInit:Z

    .line 515
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/avm/AvmControl;->avmInit(Landroid/content/Context;)I

    .line 516
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->windowInit()V

    .line 517
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    .line 518
    sget-object p0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    const-string v0, "avmservice_init_end"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private isAvmSignalOk(I)Z
    .locals 4

    .line 121
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmSignal()I

    move-result v0

    int-to-long v1, p1

    .line 123
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 125
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmSignal()I

    move-result p0

    .line 128
    sget-object p1, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "avmSignal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",tmp_avmSignal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eq v0, p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private setAvmReqOnOff(I)V
    .locals 1

    .line 797
    sput p1, Lcom/yftech/avmservice/avm/AvmControl;->avmReqOnOff:I

    .line 798
    sget-object p0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set avmReqOnOff:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/yftech/avmservice/avm/AvmControl;->avmReqOnOff:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized avmInit(Landroid/content/Context;)I
    .locals 3

    monitor-enter p0

    .line 552
    :try_start_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 553
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-direct {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getRadar()V

    .line 554
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-direct {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getDevice()V

    .line 556
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 557
    invoke-static {}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->getInstance()Lcom/yftech/avmservice/procotol/SAVMProcotol;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSAVMProcotol:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    .line 559
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUComm;->getInstance()Lcom/yftech/avmservice/procotol/MCUComm;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSAVMProcotol:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/procotol/MCUComm;->setAvmListener(Lcom/yftech/avmservice/common/IMcuCommListener;)V

    .line 560
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSAVMProcotol:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->setCameraControlListener(Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;)V

    .line 561
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSAVMProcotol:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-virtual {p1}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->requestCanSync()Z

    .line 562
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSAVMProcotol:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-virtual {p1}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->init()V

    goto :goto_0

    .line 563
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 564
    invoke-static {}, Lcom/yftech/avmservice/procotol/RVCProcotol;->getInstance()Lcom/yftech/avmservice/procotol/RVCProcotol;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    .line 565
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUComm;->getInstance()Lcom/yftech/avmservice/procotol/MCUComm;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/procotol/MCUComm;->setAvmListener(Lcom/yftech/avmservice/common/IMcuCommListener;)V

    .line 566
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/procotol/RVCProcotol;->setCameraControlListener(Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;)V

    .line 567
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-virtual {p1}, Lcom/yftech/avmservice/procotol/RVCProcotol;->requestCanSync()Z

    goto :goto_0

    .line 568
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 569
    invoke-static {}, Lcom/yftech/avmservice/procotol/RVCProcotol;->getInstance()Lcom/yftech/avmservice/procotol/RVCProcotol;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    .line 570
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUComm;->getInstance()Lcom/yftech/avmservice/procotol/MCUComm;

    move-result-object p1

    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/procotol/MCUComm;->setAvmListener(Lcom/yftech/avmservice/common/IMcuCommListener;)V

    .line 571
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/procotol/RVCProcotol;->setCameraControlListener(Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;)V

    .line 572
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-virtual {p1}, Lcom/yftech/avmservice/procotol/RVCProcotol;->requestCanSync()Z

    goto :goto_0

    .line 574
    :cond_2
    sget-object p1, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    const-string v0, "no set Proctol listener"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    .line 550
    monitor-exit p0

    throw p1
.end method

.method public canShow()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized dispSurfaceInit(IILandroid/view/Surface;)V
    .locals 0

    monitor-enter p0

    .line 633
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized dispSurfaceRelease()V
    .locals 0

    monitor-enter p0

    .line 640
    monitor-exit p0

    return-void
.end method

.method public getAPADrvReq()Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAPADrvReq:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    return-object p0
.end method

.method public getAvmHardwareState()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAvmMode()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAvmReqOnOff()I
    .locals 0

    .line 801
    sget p0, Lcom/yftech/avmservice/avm/AvmControl;->avmReqOnOff:I

    return p0
.end method

.method public getAvmSignal()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getBackCarCameraID()I
    .locals 0

    .line 448
    iget p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBackCarCameraId:I

    return p0
.end method

.method public getCameraControl()Lcom/yftech/avmservice/common/ICameraControl;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    if-nez v0, :cond_0

    .line 464
    invoke-static {}, Lcom/yftech/avmservice/procotol/RVCProcotol;->getInstance()Lcom/yftech/avmservice/procotol/RVCProcotol;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    .line 466
    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    return-object p0
.end method

.method public getCarSpeed()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getCarType()I
    .locals 0

    .line 656
    iget p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->car_type:I

    return p0
.end method

.method public getDeviceType()I
    .locals 0

    .line 647
    iget p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    return p0
.end method

.method public getMainHandler()Lcom/yftech/avmservice/util/DistributedHandler;
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    return-object p0
.end method

.method public getRadarControl()Lcom/yftech/avmservice/common/IRadarControl;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    if-nez v0, :cond_0

    .line 455
    invoke-static {}, Lcom/yftech/avmservice/procotol/RVCProcotol;->getInstance()Lcom/yftech/avmservice/procotol/RVCProcotol;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    .line 457
    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    return-object p0
.end method

.method public getRadarType()I
    .locals 0

    .line 652
    iget p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->radar_type:I

    return p0
.end method

.method public getSAVMControl()Lcom/yftech/avmservice/common/ISAVMControl;
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSAVMProcotol:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    if-nez v0, :cond_0

    .line 471
    invoke-static {}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->getInstance()Lcom/yftech/avmservice/procotol/SAVMProcotol;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSAVMProcotol:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    .line 473
    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSAVMProcotol:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    return-object p0
.end method

.method public getSAVMRadarControl()Lcom/yftech/avmservice/common/IRadarControl;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSAVMProcotol:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    if-nez v0, :cond_0

    .line 478
    invoke-static {}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->getInstance()Lcom/yftech/avmservice/procotol/SAVMProcotol;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSAVMProcotol:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    .line 480
    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSAVMProcotol:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    return-object p0
.end method

.method public declared-synchronized getSurface()Landroid/view/SurfaceView;
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 612
    :try_start_0
    iget v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 619
    :pswitch_0
    iget-object v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSvmWindow:Lcom/yftech/avmservice/windowutil/SAVMWindow;

    if-eqz v1, :cond_0

    .line 620
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSvmWindow:Lcom/yftech/avmservice/windowutil/SAVMWindow;

    invoke-virtual {v0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->getSurface()Landroid/view/SurfaceView;

    move-result-object v0

    goto :goto_0

    .line 614
    :pswitch_1
    iget-object v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBaseWindow:Lcom/yftech/avmservice/windowutil/BaseWindow;

    if-eqz v1, :cond_0

    .line 615
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcWindow:Lcom/yftech/avmservice/windowutil/RVCWindow;

    invoke-virtual {v0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->getSurface()Landroid/view/SurfaceView;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 610
    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getWindow()Lcom/yftech/avmservice/windowutil/BaseWindow;
    .locals 0

    .line 583
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBaseWindow:Lcom/yftech/avmservice/windowutil/BaseWindow;

    return-object p0
.end method

.method public declared-synchronized hideAvm()V
    .locals 2

    monitor-enter p0

    .line 737
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 738
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 736
    monitor-exit p0

    throw v0
.end method

.method public isAvmDisplay()Z
    .locals 0

    .line 295
    iget-boolean p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAvmDisplayShowState:Z

    return p0
.end method

.method public isAvmServiceRun()Z
    .locals 3

    .line 528
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsAvmServiceRun: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsAvmServiceRun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    iget-boolean p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsAvmServiceRun:Z

    return p0
.end method

.method public isAvmSignalErr()Z
    .locals 0

    .line 349
    iget-boolean p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAvmSignalErr:Z

    return p0
.end method

.method public declared-synchronized isBackCar()Z
    .locals 1

    monitor-enter p0

    .line 171
    :try_start_0
    iget-boolean v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsBackcar:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isCarTrunkOpen()Z
    .locals 0

    .line 356
    iget-boolean p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mCarTrunkOpen:Z

    return p0
.end method

.method public isFAPA()Z
    .locals 0

    .line 367
    iget-boolean p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsAVMPlusFAPAMode:Z

    return p0
.end method

.method public isIOBackCar()Z
    .locals 0

    .line 147
    iget-boolean p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsIoBackCar:Z

    return p0
.end method

.method public isRvcMode()Z
    .locals 0

    .line 443
    iget-boolean p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsRvcMode:Z

    return p0
.end method

.method public isShowLoading()Z
    .locals 0

    .line 345
    iget-boolean p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mShowLoading:Z

    return p0
.end method

.method public isSystemOpErr()Z
    .locals 2

    .line 533
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 534
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSAVMProcotol:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    if-eqz v0, :cond_1

    .line 535
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSAVMProcotol:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-virtual {p0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->isCameraOpErr()Z

    move-result p0

    return p0

    .line 538
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    if-eqz v0, :cond_1

    .line 539
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-virtual {p0}, Lcom/yftech/avmservice/procotol/RVCProcotol;->isCameraOpErr()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public noRearElapsedRealtime()J
    .locals 2

    .line 167
    iget-wide v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mNoRearElapsedRealtime:J

    return-wide v0
.end method

.method public onAPADrvReq(Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAPADrvReq:Lcom/yftech/avmservice/common/CameraDataDef$APAInfo;

    .line 288
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 p1, 0x107

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public declared-synchronized onBackcarChange(Z)V
    .locals 2

    monitor-enter p0

    .line 150
    :try_start_0
    iput-boolean p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsBackcar:Z

    .line 151
    iget-boolean p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsBackcar:Z

    if-nez p1, :cond_0

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mNoRearElapsedRealtime:J

    .line 154
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 v0, 0x105

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 149
    monitor-exit p0

    throw p1
.end method

.method public onCameraCommTimeOut(Z)V
    .locals 3

    .line 236
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraCommTimeOut\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 p1, 0xd8

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCameraMonitorLoading(Z)V
    .locals 0

    .line 316
    iput-boolean p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mShowLoading:Z

    .line 317
    iget-boolean p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mShowLoading:Z

    if-eqz p1, :cond_0

    .line 318
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 p1, 0xca

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 320
    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 p1, 0xd4

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onCameraMonitorNoSignal()V
    .locals 4

    .line 326
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    const-string v1, "onAvmMonitorNoSignal"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->mShowLoading:Z

    const/4 v0, 0x1

    .line 328
    iput-boolean v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAvmSignalErr:Z

    .line 329
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 v0, 0xcc

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCameraMonitorReady()V
    .locals 1

    .line 340
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCameraMonitorReqHide()V
    .locals 3

    .line 310
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    const-string v1, "onAvmMonitorReqHide"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->hideAvm()V

    return-void
.end method

.method public onCameraMonitorReqShow()V
    .locals 4

    .line 300
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    const-string v1, "onAvmMonitorReqShow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->mShowLoading:Z

    .line 303
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->showAvm()V

    return-void
.end method

.method public onCameraMonitorResumeSignal()V
    .locals 1

    const/4 v0, 0x0

    .line 334
    iput-boolean v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAvmSignalErr:Z

    .line 335
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 v0, 0xcb

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public onCameraOpStateErr(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 243
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 p1, 0xce

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 245
    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 p1, 0xcd

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onCameraReqHide()V
    .locals 4

    .line 201
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvmProcotolReqHide:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    if-nez v0, :cond_0

    .line 203
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->abondRvcFocus()V

    return-void

    .line 206
    :cond_0
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 212
    :cond_1
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 213
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 214
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/avm/AvmControl;->setAvmReqOnOff(I)V

    .line 215
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    if-nez v0, :cond_4

    .line 216
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraMonitorReqHide()V

    goto :goto_1

    .line 220
    :cond_2
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraReqHide device_type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 207
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_4

    .line 208
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->mShowLoading:Z

    .line 209
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/avm/AvmControl;->setAvmReqOnOff(I)V

    .line 210
    invoke-static {}, Lcom/yftech/avmservice/CameraService;->getInstance()Lcom/yftech/avmservice/CameraService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/CameraService;->stopBackCar()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCameraReqShow()V
    .locals 4

    .line 176
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAvmProcotolReqShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    if-nez v0, :cond_0

    .line 178
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->requestRvcFocus()I

    return-void

    .line 181
    :cond_0
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/avm/AvmControl;->setAvmReqOnOff(I)V

    .line 190
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 191
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraMonitorReqShow()V

    .line 192
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraMonitorReady()V

    goto :goto_1

    .line 195
    :cond_2
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraReqShow device_type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 182
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    and-int/2addr v0, v1

    if-eq v0, v1, :cond_4

    .line 183
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAvmSignalErr:Z

    .line 184
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->mShowLoading:Z

    .line 185
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/avm/AvmControl;->setAvmReqOnOff(I)V

    .line 186
    invoke-static {}, Lcom/yftech/avmservice/CameraService;->getInstance()Lcom/yftech/avmservice/CameraService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/CameraService;->startBackCar()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onCameraSystemErr(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAvmSystemErr:Z

    if-eqz p1, :cond_0

    .line 228
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 p1, 0xce

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 230
    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 p1, 0xcd

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onDisplayState(Z)V
    .locals 2

    .line 257
    iput-boolean p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAvmDisplayShowState:Z

    .line 258
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x106

    .line 259
    iput v1, v0, Landroid/os/Message;->what:I

    .line 260
    iput p1, v0, Landroid/os/Message;->arg1:I

    const/4 p1, 0x0

    .line 261
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 262
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/util/DistributedHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onGearStateChange(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xe

    if-ne p1, v2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v0

    .line 275
    :goto_0
    iget-boolean v4, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsGearState:Z

    if-ne v4, v3, :cond_1

    return-void

    .line 276
    :cond_1
    iput-boolean v3, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsGearState:Z

    if-ne p1, v2, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->playReverseEffect()V

    .line 279
    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/avm/AvmControl;->onBackcarChange(Z)V

    goto :goto_1

    .line 281
    :cond_2
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/avm/AvmControl;->onBackcarChange(Z)V

    :goto_1
    return-void
.end method

.method public onSteerWheelAngel(F)V
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 p1, 0x104

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public playReverseEffect()V
    .locals 1

    .line 805
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBaseWindow:Lcom/yftech/avmservice/windowutil/BaseWindow;

    if-eqz v0, :cond_0

    .line 806
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBaseWindow:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->playReverseEffect()V

    :cond_0
    return-void
.end method

.method public postDelayHandler(I)V
    .locals 3

    .line 833
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->r:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 0

    .line 499
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    return-object p0
.end method

.method public resetRvcCamera()Z
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    if-eqz v0, :cond_0

    .line 160
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcProcotol:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-virtual {p0}, Lcom/yftech/avmservice/procotol/RVCProcotol;->resetRvcCamera()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setAvmMode(I)V
    .locals 0

    return-void
.end method

.method public setAvmServiceRun(Z)V
    .locals 0

    .line 524
    iput-boolean p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsAvmServiceRun:Z

    return-void
.end method

.method public setIoBackCar(Z)V
    .locals 4

    .line 133
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIoBackCar,new BackCar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",old BackCar:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsIoBackCar:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-boolean v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsIoBackCar:Z

    if-eq v0, p1, :cond_0

    .line 135
    iput-boolean p1, p0, Lcom/yftech/avmservice/avm/AvmControl;->mIsIoBackCar:Z

    .line 136
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 137
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x10a

    .line 138
    iput v1, v0, Landroid/os/Message;->what:I

    .line 139
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 140
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 141
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/util/DistributedHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public declared-synchronized showAvm()V
    .locals 2

    monitor-enter p0

    .line 733
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mMainHandler:Lcom/yftech/avmservice/util/DistributedHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/util/DistributedHandler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 732
    monitor-exit p0

    throw v0
.end method

.method public sourcePause(Landroid/os/Bundle;)Z
    .locals 2

    .line 768
    sget-object p1, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    const-string v0, "sourcePause"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 769
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmHardwareState()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    .line 773
    :cond_0
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->hideAvm()V

    return p1
.end method

.method public sourceResume(Landroid/os/Bundle;)Z
    .locals 2

    .line 778
    sget-object p1, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    const-string v0, "sourceResume"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 779
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmHardwareState()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    .line 783
    :cond_0
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->showAvm()V

    return p1
.end method

.method public sourceStart(Landroid/os/Bundle;)Z
    .locals 2

    .line 759
    sget-object p1, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    const-string v0, "sourceStart"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmHardwareState()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    .line 763
    :cond_0
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->showAvm()V

    return p1
.end method

.method public sourceStop(Landroid/os/Bundle;)Z
    .locals 2

    .line 788
    sget-object p1, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    const-string v0, "sourceStop"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmHardwareState()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    .line 793
    :cond_0
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->hideAvm()V

    return p1
.end method

.method public declared-synchronized userRequestHideAvm()V
    .locals 4

    monitor-enter p0

    .line 715
    :try_start_0
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userRequestHideAvm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 716
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 723
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    .line 724
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    and-int/lit8 v0, v0, -0x3

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/avm/AvmControl;->setAvmReqOnOff(I)V

    .line 725
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraMonitorReqHide()V

    goto :goto_1

    .line 728
    :cond_1
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userRequestHideAvm device_type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 717
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_3

    .line 718
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->mShowLoading:Z

    .line 719
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    and-int/lit8 v0, v0, -0x3

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/avm/AvmControl;->setAvmReqOnOff(I)V

    .line 720
    invoke-static {}, Lcom/yftech/avmservice/CameraService;->getInstance()Lcom/yftech/avmservice/CameraService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraService;->stopUserPreview()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 714
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized userRequestShowAvm()V
    .locals 4

    monitor-enter p0

    .line 696
    :try_start_0
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "userRequestShowAvm:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 698
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    if-nez v0, :cond_4

    .line 699
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->mAvmSignalErr:Z

    .line 700
    iput-boolean v2, p0, Lcom/yftech/avmservice/avm/AvmControl;->mShowLoading:Z

    .line 701
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    const/4 v1, 0x1

    const/4 v3, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 704
    :cond_1
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 705
    invoke-direct {p0, v3}, Lcom/yftech/avmservice/avm/AvmControl;->setAvmReqOnOff(I)V

    .line 706
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraMonitorReqShow()V

    .line 707
    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraMonitorReady()V

    goto :goto_1

    .line 709
    :cond_2
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "userRequestShowAvm device_type:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 702
    :cond_3
    :goto_0
    invoke-direct {p0, v3}, Lcom/yftech/avmservice/avm/AvmControl;->setAvmReqOnOff(I)V

    .line 703
    invoke-static {}, Lcom/yftech/avmservice/CameraService;->getInstance()Lcom/yftech/avmservice/CameraService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraService;->startUserPreview()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 712
    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 695
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized windowInit()V
    .locals 2

    monitor-enter p0

    .line 587
    :try_start_0
    iget v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->device_type:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 595
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBaseWindow:Lcom/yftech/avmservice/windowutil/BaseWindow;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 596
    new-instance v0, Lcom/yftech/avmservice/windowutil/SAVMWindow;

    iget-object v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/avmservice/windowutil/SAVMWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSvmWindow:Lcom/yftech/avmservice/windowutil/SAVMWindow;

    .line 597
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mSvmWindow:Lcom/yftech/avmservice/windowutil/SAVMWindow;

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBaseWindow:Lcom/yftech/avmservice/windowutil/BaseWindow;

    goto :goto_0

    .line 589
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBaseWindow:Lcom/yftech/avmservice/windowutil/BaseWindow;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 590
    new-instance v0, Lcom/yftech/avmservice/windowutil/RVCWindow;

    iget-object v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/avmservice/windowutil/RVCWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcWindow:Lcom/yftech/avmservice/windowutil/RVCWindow;

    .line 591
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mRvcWindow:Lcom/yftech/avmservice/windowutil/RVCWindow;

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBaseWindow:Lcom/yftech/avmservice/windowutil/BaseWindow;

    goto :goto_0

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBaseWindow:Lcom/yftech/avmservice/windowutil/BaseWindow;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 602
    new-instance v0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;

    iget-object v1, p0, Lcom/yftech/avmservice/avm/AvmControl;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl;->mBaseWindow:Lcom/yftech/avmservice/windowutil/BaseWindow;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 586
    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
