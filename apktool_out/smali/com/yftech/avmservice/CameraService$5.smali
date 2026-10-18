.class Lcom/yftech/avmservice/CameraService$5;
.super Ljava/lang/Object;
.source "CameraService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/CameraService;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/CameraService;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/yftech/avmservice/CameraService$5;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "CameraService"

    const-string v1, "metaZoneCheckRunnable in"

    const/4 v2, 0x0

    .line 462
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string v0, "init.svc.metalogo_daemon"

    .line 464
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService"

    .line 465
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nit.svc.metalogo_daemon:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "init.svc.metalogo_daemon"

    .line 466
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "running"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 467
    iget-object v1, p0, Lcom/yftech/avmservice/CameraService$5;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraService;->access$1300(Lcom/yftech/avmservice/CameraService;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    const-string v1, "CameraService"

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init.svc.metalogo_daemon changed state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 469
    iget-object v1, p0, Lcom/yftech/avmservice/CameraService$5;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {v1, v0}, Lcom/yftech/avmservice/CameraService;->access$1302(Lcom/yftech/avmservice/CameraService;Z)Z

    .line 471
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService$5;->this$0:Lcom/yftech/avmservice/CameraService;

    new-instance v1, Lcom/autochips/backcar/BackCar;

    invoke-direct {v1}, Lcom/autochips/backcar/BackCar;-><init>()V

    invoke-static {v0, v1}, Lcom/yftech/avmservice/CameraService;->access$1402(Lcom/yftech/avmservice/CameraService;Lcom/autochips/backcar/BackCar;)Lcom/autochips/backcar/BackCar;

    .line 472
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$5;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraService;->access$1400(Lcom/yftech/avmservice/CameraService;)Lcom/autochips/backcar/BackCar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/autochips/backcar/BackCar;->sendReadyToArm2()Z

    const-string p0, "CameraService"

    const-string v0, "metaZoneCheckRunnable out"

    .line 481
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 476
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 478
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
