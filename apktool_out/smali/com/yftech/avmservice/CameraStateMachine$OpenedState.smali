.class Lcom/yftech/avmservice/CameraStateMachine$OpenedState;
.super Lcom/yftech/avmservice/State;
.source "CameraStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/CameraStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpenedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/CameraStateMachine;


# direct methods
.method private constructor <init>(Lcom/yftech/avmservice/CameraStateMachine;)V
    .locals 0

    .line 259
    iput-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-direct {p0}, Lcom/yftech/avmservice/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/avmservice/CameraStateMachine;Lcom/yftech/avmservice/CameraStateMachine$1;)V
    .locals 0

    .line 259
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;-><init>(Lcom/yftech/avmservice/CameraStateMachine;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    const-string p0, "CameraStateMachine"

    const-string v0, "enter OpenedState"

    const/4 v1, 0x0

    .line 262
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    const-string v0, "CameraStateMachine"

    .line 267
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

    .line 268
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/yftech/avmservice/CameraOperation;

    const-string v1, "CameraStateMachine"

    .line 269
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "camera id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 270
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getCameraId()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "null"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mActiveCameraId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    .line 272
    invoke-static {v4}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

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

    .line 269
    invoke-static {v1, v3, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v3, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget v4, p1, Landroid/os/Message;->what:I

    .line 275
    invoke-static {v1, v4, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1200(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_4

    .line 278
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0x11

    if-eq v1, v4, :cond_16

    const/4 v4, 0x3

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    const/16 v4, 0x1b

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    const-string v0, "CameraStateMachine"

    .line 401
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

    goto/16 :goto_3

    :pswitch_0
    if-eqz v0, :cond_17

    .line 391
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->isNeedRestoreCamera()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 392
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p1, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$2200(Lcom/yftech/avmservice/CameraStateMachine;Lcom/yftech/avmservice/CameraOperation;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "CameraStateMachine"

    const-string v0, "restore after other message handled"

    .line 393
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_3

    .line 396
    :cond_3
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->restoreCamera()V

    goto/16 :goto_3

    :pswitch_1
    if-eqz v0, :cond_4

    .line 358
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->close()V

    .line 359
    :cond_4
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1900(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    goto/16 :goto_3

    .line 355
    :pswitch_2
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$2100(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    goto/16 :goto_3

    .line 352
    :pswitch_3
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$2000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    goto/16 :goto_3

    .line 388
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0, v0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1500(Lcom/yftech/avmservice/CameraStateMachine;Lcom/yftech/avmservice/CameraOperation;Landroid/os/Message;)V

    goto/16 :goto_3

    :pswitch_5
    const-string p1, "CameraStateMachine"

    const-string v1, "camera close when opened"

    .line 280
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    invoke-virtual {p1, v4, v1}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    if-eqz v0, :cond_17

    .line 283
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1400(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    .line 284
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->open()V

    goto/16 :goto_3

    .line 321
    :pswitch_6
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-eq v0, v1, :cond_6

    if-eqz v0, :cond_5

    .line 322
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getBackcarState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 323
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->close()V

    .line 324
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1900(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    .line 326
    :cond_5
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :cond_6
    if-eqz v0, :cond_17

    .line 328
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->snapshot()V

    goto/16 :goto_3

    .line 305
    :pswitch_7
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_7

    .line 306
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getBackcarState()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 307
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->close()V

    .line 308
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1900(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    .line 311
    :cond_7
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :cond_8
    if-eqz v0, :cond_b

    .line 313
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getBackcarState()Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {v1, v5}, Lcom/yftech/avmservice/CameraStateMachine;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_b

    .line 314
    :cond_9
    iget p0, p1, Landroid/os/Message;->what:I

    if-ne p0, v4, :cond_a

    goto :goto_2

    :cond_a
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/yftech/avmservice/CameraOperation;->startRecord(Z)V

    goto/16 :goto_3

    .line 316
    :cond_b
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 288
    :pswitch_8
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-eq v0, v1, :cond_d

    if-eqz v0, :cond_c

    .line 289
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getBackcarState()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 290
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->close()V

    .line 291
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1900(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    .line 293
    :cond_c
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    :cond_d
    if-eqz v0, :cond_f

    .line 295
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getBackcarState()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {v1, v5}, Lcom/yftech/avmservice/CameraStateMachine;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_f

    .line 296
    :cond_e
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->startPreview()V

    goto/16 :goto_3

    .line 299
    :cond_f
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 332
    :pswitch_9
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-ne v0, v1, :cond_12

    if-eqz v0, :cond_10

    .line 333
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->getBackcarState()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 334
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->close()V

    .line 335
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1900(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    goto/16 :goto_3

    :cond_10
    if-eqz v0, :cond_17

    .line 337
    iget p0, p1, Landroid/os/Message;->arg1:I

    if-ne p0, v3, :cond_11

    move v2, v3

    :cond_11
    invoke-virtual {v0, v2}, Lcom/yftech/avmservice/CameraOperation;->stopPreview(Z)V

    goto/16 :goto_3

    .line 340
    :cond_12
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto/16 :goto_3

    .line 345
    :pswitch_a
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v1

    if-ne v0, v1, :cond_13

    if-eqz v0, :cond_17

    .line 346
    invoke-virtual {v0}, Lcom/yftech/avmservice/CameraOperation;->stopRecord()V

    goto :goto_3

    .line 348
    :cond_13
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    goto :goto_3

    .line 366
    :pswitch_b
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/CameraOperation;->isPreviewRequest()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 367
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-static {p1, v5, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 368
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 371
    :cond_14
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/CameraOperation;->isRecordRequest()Z

    move-result p1

    if-eqz p1, :cond_15

    .line 372
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-static {p1, v4, v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1100(Lcom/yftech/avmservice/CameraStateMachine;ILcom/yftech/avmservice/CameraOperation;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 373
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 376
    :cond_15
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraStateMachine;->access$1000(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/CameraOperation;->close()V

    .line 377
    iget-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$1300(Lcom/yftech/avmservice/CameraStateMachine;)Lcom/yftech/avmservice/State;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/CameraStateMachine;->transitionTo(Lcom/yftech/avmservice/IState;)V

    goto :goto_3

    .line 363
    :cond_16
    :pswitch_c
    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$OpenedState;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraStateMachine;->deferMessage(Landroid/os/Message;)V

    :cond_17
    :goto_3
    return v3

    :cond_18
    :goto_4
    return v3

    nop

    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x4
        :pswitch_a
        :pswitch_a
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x16
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method
