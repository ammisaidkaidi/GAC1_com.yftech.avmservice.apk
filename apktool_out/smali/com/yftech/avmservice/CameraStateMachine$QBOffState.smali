.class Lcom/yftech/avmservice/CameraStateMachine$QBOffState;
.super Lcom/yftech/avmservice/State;
.source "CameraStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/CameraStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QBOffState"
.end annotation


# instance fields
.field mIsCameraClosed:Z

.field mIsQbOn:Z

.field final synthetic this$0:Lcom/yftech/avmservice/CameraStateMachine;


# direct methods
.method private constructor <init>(Lcom/yftech/avmservice/CameraStateMachine;)V
    .locals 0

    .line 909
    iput-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-direct {p0}, Lcom/yftech/avmservice/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/avmservice/CameraStateMachine;Lcom/yftech/avmservice/CameraStateMachine$1;)V
    .locals 0

    .line 909
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;-><init>(Lcom/yftech/avmservice/CameraStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    const-string p0, "CameraStateMachine"

    const-string v0, "enter QBOffState"

    const/4 v1, 0x0

    .line 914
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    const-string v0, "CameraStateMachine"

    .line 919
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

    .line 920
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yftech/avmservice/CameraOperation;

    const-string v1, "CameraStateMachine"

    .line 921
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 922
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getCameraId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mActiveCameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    .line 924
    invoke-static {v4}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

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

    .line 921
    invoke-static {v1, v3, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 925
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v3, -0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v3, :cond_5

    const/4 v3, 0x7

    if-eq v1, v3, :cond_3

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 964
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_2

    .line 946
    :pswitch_0
    iget-boolean p1, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->mIsCameraClosed:Z

    if-eqz p1, :cond_2

    .line 947
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1800(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    .line 948
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->mIsQbOn:Z

    .line 949
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->mIsCameraClosed:Z

    goto :goto_2

    .line 951
    :cond_2
    iput-boolean v5, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->mIsQbOn:Z

    goto :goto_2

    .line 961
    :pswitch_1
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2

    .line 958
    :pswitch_2
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, v4, v0}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_2

    .line 955
    :pswitch_3
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->mIsQbOn:Z

    goto :goto_2

    .line 927
    :cond_3
    iget-boolean p1, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->mIsQbOn:Z

    if-eqz p1, :cond_4

    .line 928
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1800(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    .line 929
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->mIsCameraClosed:Z

    .line 930
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->mIsQbOn:Z

    goto :goto_2

    .line 932
    :cond_4
    iput-boolean v5, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->mIsCameraClosed:Z

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    .line 940
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->hasPendingPreviewSurface()Z

    move-result p1

    if-nez p1, :cond_6

    .line 941
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$QBOffState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0, v4, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1700(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)V

    :cond_6
    if-eqz v0, :cond_7

    .line 943
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->stopPreviewWhileQbOff()V

    :cond_7
    :goto_2
    :pswitch_4
    return v5

    nop

    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
