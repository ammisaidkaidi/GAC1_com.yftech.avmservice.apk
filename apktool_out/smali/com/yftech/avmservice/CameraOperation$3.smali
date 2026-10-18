.class Lcom/yftech/avmservice/CameraOperation$3;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/CameraOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/CameraOperation;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/CameraOperation;)V
    .locals 0

    .line 501
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 5

    .line 510
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraOperation;->access$1300(Lcom/yftech/avmservice/CameraOperation;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 511
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p1, p2}, Lcom/yftech/avmservice/CameraOperation;->access$1302(Lcom/yftech/avmservice/CameraOperation;Z)Z

    .line 512
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraOperation;->access$000(Lcom/yftech/avmservice/CameraOperation;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "first frame with rvc mode"

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    new-instance p1, Lcom/autochips/backcar/BackCar;

    invoke-direct {p1}, Lcom/autochips/backcar/BackCar;-><init>()V

    invoke-virtual {p1}, Lcom/autochips/backcar/BackCar;->sendRVCCompleted()Z

    .line 515
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraOperation;->access$1400(Lcom/yftech/avmservice/CameraOperation;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 516
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraOperation;->access$1400(Lcom/yftech/avmservice/CameraOperation;)Landroid/hardware/camera2/CaptureResult$Key;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_5

    .line 517
    array-length p3, p1

    const/4 v0, 0x2

    if-lt p3, v0, :cond_5

    .line 518
    aget p3, p1, p2

    const/16 v0, 0xe

    const/4 v1, 0x1

    if-nez p3, :cond_3

    aget p3, p1, v1

    if-nez p3, :cond_3

    .line 519
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraOperation;->access$1500(Lcom/yftech/avmservice/CameraOperation;)I

    move-result p1

    if-nez p1, :cond_1

    .line 520
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraOperation;->access$000(Lcom/yftech/avmservice/CameraOperation;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "onCaptureCompleted: INFO_NO_SIGNAL"

    new-array v1, p2, [Ljava/lang/Object;

    invoke-static {p1, p3, v1}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    const/16 p3, 0xf

    invoke-static {p1, v0, p2, p3}, Lcom/yftech/avmservice/CameraOperation;->access$400(Lcom/yftech/avmservice/CameraOperation;IZI)V

    .line 522
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraOperation;->access$1510(Lcom/yftech/avmservice/CameraOperation;)I

    goto :goto_0

    .line 524
    :cond_1
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraOperation;->access$1500(Lcom/yftech/avmservice/CameraOperation;)I

    move-result p1

    if-gez p1, :cond_2

    goto :goto_0

    .line 527
    :cond_2
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraOperation;->access$1510(Lcom/yftech/avmservice/CameraOperation;)I

    .line 529
    :goto_0
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p0, p2}, Lcom/yftech/avmservice/CameraOperation;->access$1602(Lcom/yftech/avmservice/CameraOperation;Z)Z

    goto :goto_1

    .line 530
    :cond_3
    aget p3, p1, p2

    const/16 v2, 0x1e

    if-lez p3, :cond_4

    aget p3, p1, v1

    if-lez p3, :cond_4

    iget-object p3, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p3}, Lcom/yftech/avmservice/CameraOperation;->access$1600(Lcom/yftech/avmservice/CameraOperation;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 531
    iget-object p3, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p3}, Lcom/yftech/avmservice/CameraOperation;->access$000(Lcom/yftech/avmservice/CameraOperation;)Ljava/lang/String;

    move-result-object p3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "signal comes, width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p1, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p1, p1, v1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v3, p2, [Ljava/lang/Object;

    invoke-static {p3, p1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 532
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    const/16 p3, 0x12

    invoke-static {p1, v0, p2, p3}, Lcom/yftech/avmservice/CameraOperation;->access$400(Lcom/yftech/avmservice/CameraOperation;IZI)V

    .line 533
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p1, v2}, Lcom/yftech/avmservice/CameraOperation;->access$1502(Lcom/yftech/avmservice/CameraOperation;I)I

    .line 535
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p0, v1}, Lcom/yftech/avmservice/CameraOperation;->access$1602(Lcom/yftech/avmservice/CameraOperation;Z)Z

    goto :goto_1

    .line 537
    :cond_4
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation$3;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p0, v2}, Lcom/yftech/avmservice/CameraOperation;->access$1502(Lcom/yftech/avmservice/CameraOperation;I)I

    :cond_5
    :goto_1
    return-void
.end method

.method public onCaptureProgressed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureResult;)V
    .locals 0

    return-void
.end method
