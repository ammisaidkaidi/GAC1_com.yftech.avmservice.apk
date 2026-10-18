.class Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;
.super Lcom/yftech/avmservice/ICameraServiceCallback$Stub;
.source "MIPIDVRActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/activity/MIPIDVRActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraServiceCallback"
.end annotation


# instance fields
.field private mCameraId:Ljava/lang/String;

.field final synthetic this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;


# direct methods
.method public constructor <init>(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-direct {p0}, Lcom/yftech/avmservice/ICameraServiceCallback$Stub;-><init>()V

    .line 100
    iput-object p2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;->mCameraId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCameraId()Ljava/lang/String;
    .locals 0

    .line 105
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public onErrorOccurred(Ljava/lang/String;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "MIPIDVRActivity"

    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICameraServiceCallback.onErrorOccurred - cameraId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$000(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 127
    iput v1, v0, Landroid/os/Message;->what:I

    .line 128
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 129
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 130
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 131
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$000(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p0, "MIPIDVRActivity"

    .line 133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ICameraServiceCallback.onErrorOccurred - unkown camera id callback: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "MIPIDVRActivity"

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICameraServiceCallback.onStatusChanged - cameraId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " message : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;->mCameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$000(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 113
    iput v1, v0, Landroid/os/Message;->what:I

    .line 114
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 115
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 116
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$000(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    const-string p0, "MIPIDVRActivity"

    .line 118
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ICameraServiceCallback.onStatusChanged - unkown camera id callback: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
