.class public Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;
.super Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;
.source "SAVMProcotol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/procotol/SAVMProcotol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyCarMiscListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;


# direct methods
.method public constructor <init>(Lcom/yftech/avmservice/procotol/SAVMProcotol;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-direct {p0}, Lcom/yftech/vehicle/sdk/CarMiscManager$CarMiscListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceNodeStateChanged(Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;)V
    .locals 4

    .line 82
    invoke-static {}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceNodeStateChanged avmconn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->avmConn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",apaConn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->avmConn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    invoke-static {}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceNodeStateChanged mIsAvmConn:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v3}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$100(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mIsApaConn:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v3}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$200(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$100(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z

    move-result v0

    iget-boolean v1, p1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->avmConn:Z

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    .line 86
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    iget-boolean v1, p1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->avmConn:Z

    invoke-static {v0, v1}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$102(Lcom/yftech/avmservice/procotol/SAVMProcotol;Z)Z

    .line 87
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->isFAPA()Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$100(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$300(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$300(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;->onDisplayState(Z)V

    goto :goto_1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$300(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 96
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$300(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    move-result-object v0

    iget-object v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v1}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$400(Lcom/yftech/avmservice/procotol/SAVMProcotol;)I

    move-result v1

    if-ne v1, v3, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;->onDisplayState(Z)V

    .line 101
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$200(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z

    move-result v0

    iget-boolean v1, p1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->apaConn:Z

    if-eq v0, v1, :cond_5

    .line 102
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    iget-boolean p1, p1, Lcom/yftech/vehicle/internal/adapter/ICarMisc$DeviceNode;->apaConn:Z

    invoke-static {v0, p1}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$202(Lcom/yftech/avmservice/procotol/SAVMProcotol;Z)Z

    .line 103
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->isFAPA()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 105
    iget-object p1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {p1}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$200(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 106
    iget-object p1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {p1}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$300(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 108
    iget-object p0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {p0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$300(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;->onDisplayState(Z)V

    goto :goto_2

    .line 111
    :cond_3
    iget-object p1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {p1}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$300(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 112
    iget-object p1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {p1}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$300(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCarMiscListener;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {p0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$400(Lcom/yftech/avmservice/procotol/SAVMProcotol;)I

    move-result p0

    if-ne p0, v3, :cond_4

    move v2, v3

    :cond_4
    invoke-interface {p1, v2}, Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;->onDisplayState(Z)V

    :cond_5
    :goto_2
    return-void
.end method
