.class Lcom/yftech/avmservice/CameraOperation$10;
.super Ljava/lang/Object;
.source "CameraOperation.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;


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

    .line 1470
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation$10;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 2

    .line 1473
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation$10;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraOperation;->access$000(Lcom/yftech/avmservice/CameraOperation;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfo, what = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extra = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p1, p3, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0xe

    const/16 p3, 0x383

    if-ne p2, p3, :cond_0

    .line 1475
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation$10;->this$0:Lcom/yftech/avmservice/CameraOperation;

    const/16 p2, 0x10

    invoke-static {p0, p1, v0, p2}, Lcom/yftech/avmservice/CameraOperation;->access$400(Lcom/yftech/avmservice/CameraOperation;IZI)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x384

    if-ne p2, p3, :cond_1

    .line 1477
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation$10;->this$0:Lcom/yftech/avmservice/CameraOperation;

    const/16 p2, 0x11

    invoke-static {p0, p1, v0, p2}, Lcom/yftech/avmservice/CameraOperation;->access$400(Lcom/yftech/avmservice/CameraOperation;IZI)V

    :cond_1
    :goto_0
    return-void
.end method
