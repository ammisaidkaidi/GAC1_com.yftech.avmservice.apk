.class Lcom/yftech/avmservice/CameraStateMachine$ClosingState;
.super Lcom/yftech/avmservice/State;
.source "CameraStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/CameraStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClosingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/CameraStateMachine;


# direct methods
.method private constructor <init>(Lcom/yftech/avmservice/CameraStateMachine;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$ClosingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-direct {p0}, Lcom/yftech/avmservice/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/avmservice/CameraStateMachine;Lcom/yftech/avmservice/CameraStateMachine$1;)V
    .locals 0

    .line 408
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine$ClosingState;-><init>(Lcom/yftech/avmservice/CameraStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    const-string p0, "CameraStateMachine"

    const-string v0, "enter ClosingState"

    const/4 v1, 0x0

    .line 411
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    const-string v0, "CameraStateMachine"

    .line 416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " processMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yftech/avmservice/CameraOperation;

    const-string v1, "CameraStateMachine"

    .line 418
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getCameraId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mActiveCameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yftech/avmservice/CameraStateMachine$ClosingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    .line 421
    invoke-static {v4}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yftech/avmservice/CameraStateMachine$ClosingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v4}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yftech/avmservice/CameraOperation;->getCameraId()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_1
    const-string v4, "null"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    .line 418
    invoke-static {v1, v3, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 422
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$ClosingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v3, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$ClosingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget v4, p1, Landroid/os/Message;->what:I

    .line 423
    invoke-static {v1, v4, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1200(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_3

    .line 426
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v4, -0x10

    if-eq v1, v4, :cond_4

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    const-string v0, "CameraStateMachine"

    .line 451
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal mesage "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " appear in "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 448
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$ClosingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0, v0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1500(Lcom/yftech/avmservice/CameraStateMachine;Lcom/yftech/avmservice/CameraOperation;Landroid/os/Message;)V

    goto :goto_2

    .line 428
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$ClosingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1002(Lcom/yftech/avmservice/CameraStateMachine;Lcom/yftech/avmservice/CameraOperation;)Lcom/yftech/avmservice/CameraOperation;

    .line 429
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$ClosingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$ClosingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1800(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    goto :goto_2

    .line 434
    :cond_3
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$ClosingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 437
    :cond_4
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$ClosingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$ClosingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1300(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    :goto_2
    return v3

    :cond_5
    :goto_3
    return v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
