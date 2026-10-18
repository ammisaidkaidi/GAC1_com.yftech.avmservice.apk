.class Lcom/yftech/avmservice/CameraOperation$4;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CameraOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/avmservice/CameraOperation;->snapshot()V
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

    .line 865
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation$4;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 868
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation$4;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraOperation;->access$000(Lcom/yftech/avmservice/CameraOperation;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "onCaptureCompleted"

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 1

    .line 873
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$4;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraOperation;->access$000(Lcom/yftech/avmservice/CameraOperation;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCaptureFailed"

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 874
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation$4;->this$0:Lcom/yftech/avmservice/CameraOperation;

    const/16 p1, 0x9

    const/4 p2, -0x1

    invoke-static {p0, p1, p3, p2}, Lcom/yftech/avmservice/CameraOperation;->access$400(Lcom/yftech/avmservice/CameraOperation;IZI)V

    return-void
.end method
