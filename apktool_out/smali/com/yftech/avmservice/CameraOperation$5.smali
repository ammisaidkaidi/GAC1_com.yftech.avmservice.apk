.class Lcom/yftech/avmservice/CameraOperation$5;
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

    .line 1324
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation$5;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1327
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$5;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraOperation;->access$000(Lcom/yftech/avmservice/CameraOperation;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNormalRecordTask, mIsRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation$5;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v2}, Lcom/yftech/avmservice/CameraOperation;->access$300(Lcom/yftech/avmservice/CameraOperation;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1328
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$5;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraOperation;->access$1700(Lcom/yftech/avmservice/CameraOperation;)V

    .line 1329
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$5;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraOperation;->access$1800(Lcom/yftech/avmservice/CameraOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation$5;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraOperation;->access$300(Lcom/yftech/avmservice/CameraOperation;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1330
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation$5;->this$0:Lcom/yftech/avmservice/CameraOperation;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraOperation;->access$1900(Lcom/yftech/avmservice/CameraOperation;)V

    :cond_0
    return-void
.end method
