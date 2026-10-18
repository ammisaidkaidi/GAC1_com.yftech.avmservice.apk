.class Lcom/yftech/avmservice/CameraStateMachine$1;
.super Ljava/lang/Object;
.source "CameraStateMachine.java"

# interfaces
.implements Lcom/yftech/avmservice/CameraOperation$CameraOperationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/CameraStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/CameraStateMachine;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/CameraStateMachine;)V
    .locals 0

    .line 1195
    iput-object p1, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOperationFailed(ILjava/lang/String;I)V
    .locals 4

    const-string v0, "CameraStateMachine"

    .line 1246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOperationFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1255
    :pswitch_0
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    const/16 v1, 0xe

    iget-object v3, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v3, p2}, Lcom/yftech/avmservice/CameraStateMachine;->access$900(Lcom/yftech/avmservice/CameraStateMachine;Ljava/lang/String;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0

    .line 1249
    :pswitch_1
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v3, p2}, Lcom/yftech/avmservice/CameraStateMachine;->access$900(Lcom/yftech/avmservice/CameraStateMachine;Ljava/lang/String;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 1286
    :goto_0
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$2500(Lcom/yftech/avmservice/CameraStateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$2500(Lcom/yftech/avmservice/CameraStateMachine;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, p1, p3, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onOperationSuccess(ILjava/lang/String;)V
    .locals 4

    const-string v0, "CameraStateMachine"

    .line 1198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOperationSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xf

    const/16 v1, 0xd

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1222
    :pswitch_0
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v3, p2}, Lcom/yftech/avmservice/CameraStateMachine;->access$900(Lcom/yftech/avmservice/CameraStateMachine;Ljava/lang/String;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1219
    :pswitch_1
    iget-object v1, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v3, p2}, Lcom/yftech/avmservice/CameraStateMachine;->access$900(Lcom/yftech/avmservice/CameraStateMachine;Ljava/lang/String;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0

    .line 1216
    :pswitch_2
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    const/16 v1, 0xe

    iget-object v3, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v3, p2}, Lcom/yftech/avmservice/CameraStateMachine;->access$900(Lcom/yftech/avmservice/CameraStateMachine;Ljava/lang/String;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0

    .line 1213
    :pswitch_3
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v3, p2}, Lcom/yftech/avmservice/CameraStateMachine;->access$900(Lcom/yftech/avmservice/CameraStateMachine;Ljava/lang/String;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0

    .line 1210
    :pswitch_4
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v3, p2}, Lcom/yftech/avmservice/CameraStateMachine;->access$900(Lcom/yftech/avmservice/CameraStateMachine;Ljava/lang/String;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 1207
    :pswitch_5
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    const/16 v1, 0xc

    iget-object v3, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v3, p2}, Lcom/yftech/avmservice/CameraStateMachine;->access$900(Lcom/yftech/avmservice/CameraStateMachine;Ljava/lang/String;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0

    .line 1204
    :pswitch_6
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v3, p2}, Lcom/yftech/avmservice/CameraStateMachine;->access$900(Lcom/yftech/avmservice/CameraStateMachine;Ljava/lang/String;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0

    .line 1201
    :pswitch_7
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    const/4 v1, 0x6

    iget-object v3, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v3, p2}, Lcom/yftech/avmservice/CameraStateMachine;->access$900(Lcom/yftech/avmservice/CameraStateMachine;Ljava/lang/String;)Lcom/yftech/avmservice/CameraOperation;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/yftech/avmservice/CameraStateMachine;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    .line 1241
    :goto_0
    :pswitch_8
    iget-object v0, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraStateMachine;->access$2500(Lcom/yftech/avmservice/CameraStateMachine;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/avmservice/CameraStateMachine$1;->this$0:Lcom/yftech/avmservice/CameraStateMachine;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraStateMachine;->access$2500(Lcom/yftech/avmservice/CameraStateMachine;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, p1, v2, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method
