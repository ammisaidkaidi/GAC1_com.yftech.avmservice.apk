.class Lcom/yftech/avmservice/activity/ArmTwoActivity$1;
.super Ljava/lang/Object;
.source "ArmTwoActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/activity/ArmTwoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/activity/ArmTwoActivity;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/activity/ArmTwoActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity$1;->this$0:Lcom/yftech/avmservice/activity/ArmTwoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "ArmTwoActivity"

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected - ComponentName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    iget-object p1, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity$1;->this$0:Lcom/yftech/avmservice/activity/ArmTwoActivity;

    invoke-static {p2}, Lcom/yftech/avmservice/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/avmservice/ICameraService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yftech/avmservice/activity/ArmTwoActivity;->access$002(Lcom/yftech/avmservice/activity/ArmTwoActivity;Lcom/yftech/avmservice/ICameraService;)Lcom/yftech/avmservice/ICameraService;

    .line 93
    :try_start_0
    iget-object p1, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity$1;->this$0:Lcom/yftech/avmservice/activity/ArmTwoActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/ArmTwoActivity;->access$000(Lcom/yftech/avmservice/activity/ArmTwoActivity;)Lcom/yftech/avmservice/ICameraService;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity$1;->this$0:Lcom/yftech/avmservice/activity/ArmTwoActivity;

    invoke-static {p2}, Lcom/yftech/avmservice/activity/ArmTwoActivity;->access$100(Lcom/yftech/avmservice/activity/ArmTwoActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object p0, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity$1;->this$0:Lcom/yftech/avmservice/activity/ArmTwoActivity;

    invoke-static {p0}, Lcom/yftech/avmservice/activity/ArmTwoActivity;->access$200(Lcom/yftech/avmservice/activity/ArmTwoActivity;)Lcom/yftech/avmservice/ICameraServiceCallback$Stub;

    move-result-object p0

    invoke-interface {p1, p2, p0}, Lcom/yftech/avmservice/ICameraService;->registerCameraServiceCallback(Ljava/lang/String;Lcom/yftech/avmservice/ICameraServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ArmTwoActivity"

    const-string p2, "onServiceConnected "

    .line 95
    invoke-static {p1, p2, p0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "ArmTwoActivity"

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected + ComponentName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v1}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object p0, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity$1;->this$0:Lcom/yftech/avmservice/activity/ArmTwoActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/avmservice/activity/ArmTwoActivity;->access$002(Lcom/yftech/avmservice/activity/ArmTwoActivity;Lcom/yftech/avmservice/ICameraService;)Lcom/yftech/avmservice/ICameraService;

    return-void
.end method
