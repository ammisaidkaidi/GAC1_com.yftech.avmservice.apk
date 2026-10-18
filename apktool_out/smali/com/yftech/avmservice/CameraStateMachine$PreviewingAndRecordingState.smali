.class Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;
.super Lcom/yftech/avmservice/State;
.source "CameraStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/CameraStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreviewingAndRecordingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/CameraStateMachine;


# direct methods
.method private constructor <init>(Lcom/yftech/avmservice/CameraStateMachine;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-direct {p0}, Lcom/yftech/avmservice/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/avmservice/CameraStateMachine;Lcom/yftech/avmservice/CameraStateMachine$1;)V
    .locals 0

    .line 753
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;-><init>(Lcom/yftech/avmservice/CameraStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    const-string p0, "CameraStateMachine"

    const-string v0, "enter PreviewingAndRecordingState"

    const/4 v1, 0x0

    .line 756
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    const-string v0, "CameraStateMachine"

    .line 761
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

    .line 762
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yftech/avmservice/CameraOperation;

    const-string v1, "CameraStateMachine"

    .line 763
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getCameraId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mActiveCameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    .line 766
    invoke-static {v4}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

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

    .line 763
    invoke-static {v1, v3, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 768
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v3, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget v4, p1, Landroid/os/Message;->what:I

    .line 769
    invoke-static {v1, v4, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1200(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_3

    .line 773
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    packed-switch v1, :pswitch_data_5

    const-string v0, "CameraStateMachine"

    .line 901
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
    const-string p0, "CameraStateMachine"

    const-string p1, "don\'t need to restore"

    .line 898
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_1
    if-eqz v0, :cond_14

    .line 895
    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/CameraOperation;->setContrast(I)V

    goto/16 :goto_2

    :pswitch_2
    if-eqz v0, :cond_14

    .line 892
    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/CameraOperation;->setSaturation(I)V

    goto/16 :goto_2

    :pswitch_3
    if-eqz v0, :cond_14

    .line 889
    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/CameraOperation;->setBrightness(I)V

    goto/16 :goto_2

    :pswitch_4
    if-eqz v0, :cond_14

    .line 886
    iget p0, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/CameraOperation;->setHue(I)V

    goto/16 :goto_2

    .line 852
    :pswitch_5
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/CameraOperation;->isRecordRequest()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 853
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p1, v3}, Lcom/yftech/avmservice/CameraStateMachine;->access$2402(Lcom/yftech/avmservice/CameraStateMachine;Z)Z

    .line 854
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/CameraOperation;->stopRecord()V

    goto/16 :goto_2

    .line 856
    :cond_3
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0, v2}, Lcom/yftech/avmservice/CameraStateMachine;->access$2402(Lcom/yftech/avmservice/CameraStateMachine;Z)Z

    goto/16 :goto_2

    .line 842
    :pswitch_6
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$2000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    goto/16 :goto_2

    .line 831
    :pswitch_7
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$2100(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    goto/16 :goto_2

    .line 883
    :pswitch_8
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0, v0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1500(Lcom/yftech/avmservice/CameraStateMachine;Lcom/yftech/avmservice/CameraOperation;Landroid/os/Message;)V

    goto/16 :goto_2

    :pswitch_9
    const-string p1, "CameraStateMachine"

    const-string v1, "camera close when previewing recording"

    .line 775
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 776
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    const/16 v1, 0x1b

    iget-object v2, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v2}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    if-eqz v0, :cond_14

    .line 778
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1400(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    .line 779
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->open()V

    goto/16 :goto_2

    .line 845
    :pswitch_a
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 846
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_4
    if-eqz v0, :cond_14

    .line 848
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->snapshot()V

    goto/16 :goto_2

    .line 805
    :pswitch_b
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-eq v0, v1, :cond_9

    if-eqz v0, :cond_8

    .line 806
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getBackcarState()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 807
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v0, v2}, Lcom/yftech/avmservice/CameraOperation;->stopPreview(Z)V

    .line 808
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 809
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 811
    :cond_6
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->stopRecord()V

    .line 812
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 813
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 815
    :cond_7
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->close()V

    .line 816
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1900(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    .line 818
    :cond_8
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_9
    if-eqz v0, :cond_14

    .line 820
    invoke-virtual {v0, v3}, Lcom/yftech/avmservice/CameraOperation;->startRecord(Z)V

    goto/16 :goto_2

    .line 783
    :pswitch_c
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-ne v0, v1, :cond_a

    if-eqz v0, :cond_14

    .line 784
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->startPreview()V

    goto/16 :goto_2

    .line 788
    :cond_a
    :pswitch_d
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-eq v0, v1, :cond_14

    if-eqz v0, :cond_e

    .line 789
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getBackcarState()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 790
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v3, :cond_b

    move v2, v3

    :cond_b
    invoke-virtual {v0, v2}, Lcom/yftech/avmservice/CameraOperation;->stopPreview(Z)V

    .line 791
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 792
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 794
    :cond_c
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->stopRecord()V

    .line 795
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    invoke-static {v0, v4, v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 796
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 798
    :cond_d
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->close()V

    .line 799
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1900(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    .line 801
    :cond_e
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    .line 824
    :pswitch_e
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-eq v0, v1, :cond_f

    .line 825
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :cond_f
    if-eqz v0, :cond_14

    .line 827
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v3, :cond_10

    move v2, v3

    :cond_10
    invoke-virtual {v0, v2}, Lcom/yftech/avmservice/CameraOperation;->stopPreview(Z)V

    goto :goto_2

    .line 834
    :pswitch_f
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-eq v0, v1, :cond_11

    .line 835
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 837
    :cond_11
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->removeMessages(I)V

    if-eqz v0, :cond_14

    .line 838
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->stopRecord()V

    goto :goto_2

    .line 864
    :pswitch_10
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-static {p1, v5, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 865
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 868
    :cond_12
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result p1

    if-nez p1, :cond_13

    .line 869
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 871
    :cond_13
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/CameraOperation;->close()V

    .line 872
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1300(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    goto :goto_2

    .line 860
    :pswitch_11
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$PreviewingAndRecordingState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0, v2}, Lcom/yftech/avmservice/CameraStateMachine;->access$2402(Lcom/yftech/avmservice/CameraStateMachine;Z)Z

    :cond_14
    :goto_2
    return v3

    :cond_15
    :goto_3
    return v3

    nop

    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_c
        :pswitch_d
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xe
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x11
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_0
    .end packed-switch
.end method
