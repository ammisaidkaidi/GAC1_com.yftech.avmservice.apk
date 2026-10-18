.class Lcom/yftech/avmservice/CameraOperation$RecycleTask;
.super Ljava/util/TimerTask;
.source "CameraOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/CameraOperation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleTask"
.end annotation


# instance fields
.field private mCounter:I

.field private mExceptFile:Ljava/io/File;

.field final synthetic this$0:Lcom/yftech/avmservice/CameraOperation;


# direct methods
.method public constructor <init>(Lcom/yftech/avmservice/CameraOperation;Ljava/io/File;)V
    .locals 0

    .line 1362
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    const/4 p1, 0x0

    .line 1361
    iput p1, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->mCounter:I

    .line 1363
    iput-object p2, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->mExceptFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1367
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraOperation;->access$000(Lcom/yftech/avmservice/CameraOperation;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecycleTask begin, mCounter = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->mCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1368
    iget v0, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->mCounter:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 1369
    iput v2, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->mCounter:I

    .line 1370
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraOperation;->access$300(Lcom/yftech/avmservice/CameraOperation;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraOperation;->access$2000(Lcom/yftech/avmservice/CameraOperation;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1371
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->mExceptFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1372
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraOperation;->access$2200(Lcom/yftech/avmservice/CameraOperation;)Lcom/yftech/avmservice/util/StorageUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->mExceptFile:Ljava/io/File;

    invoke-virtual {v1, v0, v2}, Lcom/yftech/avmservice/util/StorageUtil;->reuseStorageSpace(Ljava/io/File;Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1373
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->stopRecord()V

    .line 1375
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraOperation;->access$2300(Lcom/yftech/avmservice/CameraOperation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/avmservice/CameraOperation$RecycleTask$1;

    invoke-direct {v1, p0}, Lcom/yftech/avmservice/CameraOperation$RecycleTask$1;-><init>(Lcom/yftech/avmservice/CameraOperation$RecycleTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1383
    :cond_1
    iget v0, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->mCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->mCounter:I

    .line 1384
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->mExceptFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1385
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1386
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 1387
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->mExceptFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1388
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraOperation;->access$2400(Lcom/yftech/avmservice/CameraOperation;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1389
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraOperation;->access$2300(Lcom/yftech/avmservice/CameraOperation;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1390
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$RecycleTask;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraOperation;->access$2300(Lcom/yftech/avmservice/CameraOperation;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/yftech/avmservice/CameraOperation$RecycleTask$2;

    invoke-direct {v1, p0}, Lcom/yftech/avmservice/CameraOperation$RecycleTask$2;-><init>(Lcom/yftech/avmservice/CameraOperation$RecycleTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
