.class Lcom/yftech/avmservice/activity/EmptyActivity$2;
.super Lcom/yftech/avmservice/ICameraServiceCallback$Stub;
.source "EmptyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/activity/EmptyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/activity/EmptyActivity;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/activity/EmptyActivity;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/yftech/avmservice/activity/EmptyActivity$2;->this$0:Lcom/yftech/avmservice/activity/EmptyActivity;

    invoke-direct {p0}, Lcom/yftech/avmservice/ICameraServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getCameraId()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/yftech/avmservice/activity/EmptyActivity$2;->this$0:Lcom/yftech/avmservice/activity/EmptyActivity;

    invoke-static {p0}, Lcom/yftech/avmservice/activity/EmptyActivity;->access$100(Lcom/yftech/avmservice/activity/EmptyActivity;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onErrorOccurred(Ljava/lang/String;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "EmptyActivity"

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ICameraServiceCallback.onErrorOccurred - cameraId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " message : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " error:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;I)V
    .locals 3

    const-string v0, "EmptyActivity"

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICameraServiceCallback.onStatusChanged - cameraId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " message : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 p1, 0x65

    if-ne p2, p1, :cond_1

    .line 114
    iget-object p1, p0, Lcom/yftech/avmservice/activity/EmptyActivity$2;->this$0:Lcom/yftech/avmservice/activity/EmptyActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/EmptyActivity;->access$000(Lcom/yftech/avmservice/activity/EmptyActivity;)Lcom/yftech/avmservice/ICameraService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 116
    :try_start_0
    iget-object p1, p0, Lcom/yftech/avmservice/activity/EmptyActivity$2;->this$0:Lcom/yftech/avmservice/activity/EmptyActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/EmptyActivity;->access$000(Lcom/yftech/avmservice/activity/EmptyActivity;)Lcom/yftech/avmservice/ICameraService;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/avmservice/activity/EmptyActivity$2;->this$0:Lcom/yftech/avmservice/activity/EmptyActivity;

    invoke-static {p2}, Lcom/yftech/avmservice/activity/EmptyActivity;->access$100(Lcom/yftech/avmservice/activity/EmptyActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/yftech/avmservice/activity/EmptyActivity$2;->this$0:Lcom/yftech/avmservice/activity/EmptyActivity;

    invoke-static {v0}, Lcom/yftech/avmservice/activity/EmptyActivity;->access$200(Lcom/yftech/avmservice/activity/EmptyActivity;)Lcom/yftech/avmservice/ICameraServiceCallback$Stub;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/yftech/avmservice/ICameraService;->unregisterCameraServiceCallback(Ljava/lang/String;Lcom/yftech/avmservice/ICameraServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :catch_0
    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/activity/EmptyActivity$2;->this$0:Lcom/yftech/avmservice/activity/EmptyActivity;

    invoke-virtual {p0}, Lcom/yftech/avmservice/activity/EmptyActivity;->finish()V

    :cond_1
    return-void
.end method
