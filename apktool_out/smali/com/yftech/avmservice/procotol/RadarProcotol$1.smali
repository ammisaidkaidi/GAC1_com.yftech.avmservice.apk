.class Lcom/yftech/avmservice/procotol/RadarProcotol$1;
.super Ljava/lang/Object;
.source "RadarProcotol.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/procotol/RadarProcotol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/procotol/RadarProcotol;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 32
    invoke-static {}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayCheckRadar mIsRadarProcotolUpdate :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-static {v2}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$100(Lcom/yftech/avmservice/procotol/RadarProcotol;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$200(Lcom/yftech/avmservice/procotol/RadarProcotol;)Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object v0

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightFrontDis:B

    .line 35
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$200(Lcom/yftech/avmservice/procotol/RadarProcotol;)Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object v0

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterFrontDis:B

    .line 36
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$200(Lcom/yftech/avmservice/procotol/RadarProcotol;)Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object v0

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterFrontDis:B

    .line 37
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$200(Lcom/yftech/avmservice/procotol/RadarProcotol;)Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object v0

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftFrontDis:B

    .line 38
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$200(Lcom/yftech/avmservice/procotol/RadarProcotol;)Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object v0

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightBackDis:B

    .line 39
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$200(Lcom/yftech/avmservice/procotol/RadarProcotol;)Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object v0

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftCenterBackDis:B

    .line 40
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$200(Lcom/yftech/avmservice/procotol/RadarProcotol;)Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object v0

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->rightCenterBackDis:B

    .line 41
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$200(Lcom/yftech/avmservice/procotol/RadarProcotol;)Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object v0

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackDis:B

    .line 78
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$200(Lcom/yftech/avmservice/procotol/RadarProcotol;)Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object v0

    iput-byte v1, v0, Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;->leftBackSensorFaultSts:B

    .line 87
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$100(Lcom/yftech/avmservice/procotol/RadarProcotol;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$300(Lcom/yftech/avmservice/procotol/RadarProcotol;)Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$300(Lcom/yftech/avmservice/procotol/RadarProcotol;)Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/avmservice/procotol/RadarProcotol$1;->this$0:Lcom/yftech/avmservice/procotol/RadarProcotol;

    invoke-static {p0}, Lcom/yftech/avmservice/procotol/RadarProcotol;->access$200(Lcom/yftech/avmservice/procotol/RadarProcotol;)Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/yftech/avmservice/common/IRadarControl$IRadarListener;->onRadarInfo(Lcom/yftech/avmservice/common/CameraDataDef$RadarInfo;)V

    :cond_0
    return-void
.end method
