.class Lcom/yftech/avmservice/CameraService$7;
.super Landroid/content/BroadcastReceiver;
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

    .line 644
    iput-object p1, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 647
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CameraService"

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mQBReceiver - onReceive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v2}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p2, "autochips.intent.action.PREQB_POWERON"

    .line 649
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 650
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$900(Lcom/yftech/avmservice/CameraService;)Lcom/yftech/avmservice/CameraServiceImpl;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/yftech/avmservice/CameraServiceImpl;->sendQBMessage(Z)V

    .line 651
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1, p2}, Lcom/yftech/avmservice/CameraService;->access$502(Lcom/yftech/avmservice/CameraService;Z)Z

    .line 652
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$600(Lcom/yftech/avmservice/CameraService;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 653
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$900(Lcom/yftech/avmservice/CameraService;)Lcom/yftech/avmservice/CameraServiceImpl;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/yftech/avmservice/CameraServiceImpl;->startBackcar(Ljava/lang/String;)V

    .line 654
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p0, v1}, Lcom/yftech/avmservice/CameraService;->access$602(Lcom/yftech/avmservice/CameraService;Z)Z

    goto :goto_0

    :cond_0
    const-string p2, "autochips.intent.action.QB_POWEROFF"

    .line 656
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 657
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$300(Lcom/yftech/avmservice/CameraService;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$1500(Lcom/yftech/avmservice/CameraService;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 658
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$1400(Lcom/yftech/avmservice/CameraService;)Lcom/autochips/backcar/BackCar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/backcar/BackCar;->sendForceExitToArm2()Z

    .line 660
    :cond_1
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$900(Lcom/yftech/avmservice/CameraService;)Lcom/yftech/avmservice/CameraServiceImpl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/avmservice/CameraServiceImpl;->sendQBMessage(Z)V

    .line 661
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p0, v1}, Lcom/yftech/avmservice/CameraService;->access$502(Lcom/yftech/avmservice/CameraService;Z)Z

    goto :goto_0

    :cond_2
    const-string p2, "android.intent.action.ACTION_SHUTDOWN"

    .line 662
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 663
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$300(Lcom/yftech/avmservice/CameraService;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$1500(Lcom/yftech/avmservice/CameraService;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 664
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$1400(Lcom/yftech/avmservice/CameraService;)Lcom/autochips/backcar/BackCar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/autochips/backcar/BackCar;->sendForceExitToArm2()Z

    .line 666
    :cond_3
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$7;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraService;->access$900(Lcom/yftech/avmservice/CameraService;)Lcom/yftech/avmservice/CameraServiceImpl;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/CameraServiceImpl;->sendQBMessage(Z)V

    :cond_4
    :goto_0
    return-void
.end method
