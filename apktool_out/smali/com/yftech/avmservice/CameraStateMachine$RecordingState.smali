.class Lcom/yftech/avmservice/CameraStateMachine$RecordingState;
.super Lcom/yftech/avmservice/State;
.source "CameraStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/CameraStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/CameraStateMachine;


# direct methods
.method private constructor <init>(Lcom/yftech/avmservice/CameraStateMachine;)V
    .locals 0

    .line 458
    iput-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-direct {p0}, Lcom/yftech/avmservice/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/avmservice/CameraStateMachine;Lcom/yftech/avmservice/CameraStateMachine$1;)V
    .locals 0

    .line 458
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;-><init>(Lcom/yftech/avmservice/CameraStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    const-string p0, "CameraStateMachine"

    const-string v0, "enter RecordingState"

    const/4 v1, 0x0

    .line 461
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    const-string v0, "CameraStateMachine"

    .line 466
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

    .line 467
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yftech/avmservice/CameraOperation;

    const-string v1, "CameraStateMachine"

    .line 468
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 469
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getCameraId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mActiveCameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    .line 471
    invoke-static {v4}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

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

    .line 468
    invoke-static {v1, v3, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v3, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_13

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget v4, p1, Landroid/os/Message;->what:I

    .line 473
    invoke-static {v1, v4, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1200(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 476
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x5

    if-eq v1, v4, :cond_10

    const/16 v4, 0xf

    if-eq v1, v4, :cond_e

    const/16 v4, 0x11

    if-eq v1, v4, :cond_c

    const/4 v4, 0x2

    const/4 v5, 0x3

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    const/16 v4, 0x1b

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    const-string v0, "CameraStateMachine"

    .line 584
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

    goto/16 :goto_2

    :pswitch_0
    if-eqz v0, :cond_12

    .line 574
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->isNeedRestoreCamera()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 575
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p1, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$2200(Lcom/yftech/avmservice/CameraStateMachine;Lcom/yftech/avmservice/CameraOperation;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "CameraStateMachine"

    const-string v0, "restore after other message handled"

    .line 576
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 577
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 579
    :cond_3
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->restoreCamera()V

    goto/16 :goto_2

    .line 519
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$2300(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    goto/16 :goto_2

    .line 571
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0, v0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1500(Lcom/yftech/avmservice/CameraStateMachine;Lcom/yftech/avmservice/CameraOperation;Landroid/os/Message;)V

    goto/16 :goto_2

    :pswitch_3
    const-string p1, "CameraStateMachine"

    const-string v1, "camera close when recording"

    .line 478
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    if-eqz v0, :cond_12

    .line 481
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1400(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    .line 482
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->open()V

    goto/16 :goto_2

    .line 502
    :pswitch_4
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-eq v0, v1, :cond_12

    if-eqz v0, :cond_5

    .line 503
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getBackcarState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 504
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    .line 505
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->stopRecord()V

    .line 506
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1, v5, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 507
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v2, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {v2, v5, v0}, Lcom/yftech/avmservice/CameraStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 509
    :cond_4
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->close()V

    .line 510
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1900(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    .line 512
    :cond_5
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 486
    :pswitch_5
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_7

    .line 487
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getBackcarState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 488
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    .line 489
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->stopRecord()V

    .line 490
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1, v4, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 491
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v2, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {v2, v4, v0}, Lcom/yftech/avmservice/CameraStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 493
    :cond_6
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->close()V

    .line 494
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1900(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    .line 496
    :cond_7
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_8
    if-eqz v0, :cond_12

    .line 498
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->startPreview()V

    goto/16 :goto_2

    .line 516
    :pswitch_6
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 522
    :pswitch_7
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-eq v0, v1, :cond_9

    .line 523
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_9
    if-eqz v0, :cond_12

    .line 525
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->stopRecord()V

    goto/16 :goto_2

    .line 551
    :pswitch_8
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-static {p1, v5, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 552
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 554
    :cond_a
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/CameraOperation;->isPreviewRequest()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 555
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 556
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 559
    :cond_b
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/CameraOperation;->close()V

    .line 560
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1300(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    goto :goto_2

    .line 540
    :cond_c
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/CameraOperation;->isRecordRequest()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 541
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p1, v3}, Lcom/yftech/avmservice/CameraStateMachine;->access$2402(Lcom/yftech/avmservice/CameraStateMachine;Z)Z

    .line 542
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/CameraOperation;->stopRecord()V

    goto :goto_2

    .line 544
    :cond_d
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0, v2}, Lcom/yftech/avmservice/CameraStateMachine;->access$2402(Lcom/yftech/avmservice/CameraStateMachine;Z)Z

    goto :goto_2

    :cond_e
    if-eqz v0, :cond_f

    .line 529
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->close()V

    .line 530
    :cond_f
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1900(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    goto :goto_2

    .line 533
    :cond_10
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-eq v0, v1, :cond_11

    .line 534
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$RecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_2

    :cond_11
    if-eqz v0, :cond_12

    .line 536
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->snapshot()V

    :cond_12
    :goto_2
    :pswitch_9
    return v3

    :cond_13
    :goto_3
    return v3

    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x16
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
