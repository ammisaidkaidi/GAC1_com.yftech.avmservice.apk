.class Lcom/yftech/avmservice/CameraService$3;
.super Landroid/app/IUserSwitchObserver$Stub;
.source "CameraService.java"


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

    .line 290
    iput-object p1, p0, Lcom/yftech/avmservice/CameraService$3;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-direct {p0}, Landroid/app/IUserSwitchObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundProfileSwitch(I)V
    .locals 0

    return-void
.end method

.method public onLockedBootComplete(I)V
    .locals 0

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 4

    const-string v0, "CameraService"

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUserSwitchComplete newUserId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService$3;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {v0, p1}, Lcom/yftech/avmservice/CameraService;->access$1002(Lcom/yftech/avmservice/CameraService;I)I

    const-string p1, "CameraService"

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitchComplete mIsBackcarOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraService$3;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraService;->access$700(Lcom/yftech/avmservice/CameraService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$3;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$1100(Lcom/yftech/avmservice/CameraService;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$3;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$1000(Lcom/yftech/avmservice/CameraService;)I

    move-result p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$3;->this$0:Lcom/yftech/avmservice/CameraService;

    .line 304
    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$700(Lcom/yftech/avmservice/CameraService;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "CameraService"

    const-string v0, "stopBackcar because user switch"

    .line 305
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$3;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$100(Lcom/yftech/avmservice/CameraService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/avmservice/CameraService$3$1;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraService$3$1;-><init>(Lcom/yftech/avmservice/CameraService$3;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 313
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$3;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$1000(Lcom/yftech/avmservice/CameraService;)I

    move-result p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$3;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$1100(Lcom/yftech/avmservice/CameraService;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$3;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$700(Lcom/yftech/avmservice/CameraService;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CameraService"

    const-string v0, "startBackcar after user switch"

    .line 314
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$3;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$100(Lcom/yftech/avmservice/CameraService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/avmservice/CameraService$3$2;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraService$3$2;-><init>(Lcom/yftech/avmservice/CameraService$3;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public onUserSwitching(ILandroid/os/IRemoteCallback;)V
    .locals 2

    const-string p2, "CameraService"

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitching  newUserId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$3;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p0, p1}, Lcom/yftech/avmservice/CameraService;->access$1002(Lcom/yftech/avmservice/CameraService;I)I

    return-void
.end method
