.class Lcom/yftech/avmservice/CameraOperation$7;
.super Ljava/lang/Object;
.source "CameraOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 1348
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation$7;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1351
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$7;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraOperation;->access$000(Lcom/yftech/avmservice/CameraOperation;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDelayedUrgentRecordTask, mIsRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation$7;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v2}, Lcom/yftech/avmservice/CameraOperation;->access$300(Lcom/yftech/avmservice/CameraOperation;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1352
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$7;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraOperation;->access$1700(Lcom/yftech/avmservice/CameraOperation;)V

    .line 1353
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$7;->this$0:Lcom/yftech/avmservice/CameraOperation;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/avmservice/CameraOperation;->access$2002(Lcom/yftech/avmservice/CameraOperation;Z)Z

    .line 1354
    new-instance v0, Lcom/yftech/avmservice/CameraOperation$MoveUrgentFileTask;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation$7;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v3}, Lcom/yftech/avmservice/CameraOperation;->access$2200(Lcom/yftech/avmservice/CameraOperation;)Lcom/yftech/avmservice/util/StorageUtil;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/yftech/avmservice/CameraOperation$MoveUrgentFileTask;-><init>(Lcom/yftech/avmservice/util/StorageUtil;)V

    new-array v1, v1, [Ljava/lang/Long;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation$7;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v3}, Lcom/yftech/avmservice/CameraOperation;->access$2100(Lcom/yftech/avmservice/CameraOperation;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraOperation$MoveUrgentFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1355
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation$7;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraOperation;->access$1900(Lcom/yftech/avmservice/CameraOperation;)V

    return-void
.end method
