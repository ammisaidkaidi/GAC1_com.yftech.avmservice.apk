.class Lcom/yftech/avmservice/CameraService$1;
.super Ljava/lang/Object;
.source "CameraService.java"

# interfaces
.implements Lcom/autochips/backcar/BackCar$Listener;


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

    .line 139
    iput-object p1, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(III)V
    .locals 4

    const-string v0, "CameraService"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSignal - event:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne v1, p1, :cond_a

    if-eqz p2, :cond_5

    const-string p1, "CameraService"

    const-string p2, "onSignal():BACKCAR_START"

    .line 144
    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$300(Lcom/yftech/avmservice/CameraService;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 148
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AudioFocus;->requestRvcFocus()I

    .line 150
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p0, v1}, Lcom/yftech/avmservice/CameraService;->access$402(Lcom/yftech/avmservice/CameraService;Z)Z

    return-void

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$500(Lcom/yftech/avmservice/CameraService;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 154
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p0, v1}, Lcom/yftech/avmservice/CameraService;->access$602(Lcom/yftech/avmservice/CameraService;Z)Z

    const-string p0, "CameraService"

    const-string p1, "start backcar later after qb on"

    .line 155
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 158
    :cond_1
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/yftech/avmservice/avm/AvmControl;->setIoBackCar(Z)V

    .line 159
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1, v2}, Lcom/yftech/avmservice/CameraService;->access$002(Lcom/yftech/avmservice/CameraService;Z)Z

    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1, v2}, Lcom/yftech/avmservice/CameraService;->access$202(Lcom/yftech/avmservice/CameraService;I)I

    .line 161
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p1

    if-ne p1, v0, :cond_2

    goto :goto_0

    .line 163
    :cond_2
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p1

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 166
    :cond_3
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqShow()V

    .line 174
    :goto_0
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p0, v1}, Lcom/yftech/avmservice/CameraService;->access$702(Lcom/yftech/avmservice/CameraService;Z)Z

    .line 176
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p0

    if-ne p0, v0, :cond_4

    goto/16 :goto_3

    .line 180
    :cond_4
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->playReverseEffect()V

    .line 181
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/avm/AvmControl;->onBackcarChange(Z)V

    goto/16 :goto_3

    :cond_5
    const-string p1, "CameraService"

    const-string p2, "onSignal():BACKCAR_STOP"

    .line 184
    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$600(Lcom/yftech/avmservice/CameraService;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 186
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p0, v2}, Lcom/yftech/avmservice/CameraService;->access$602(Lcom/yftech/avmservice/CameraService;Z)Z

    const-string p0, "CameraService"

    const-string p1, "cancel stop backcar"

    .line 187
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 190
    :cond_6
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/yftech/avmservice/avm/AvmControl;->setIoBackCar(Z)V

    .line 191
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p1

    if-ne p1, v0, :cond_7

    goto :goto_1

    .line 194
    :cond_7
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p1

    if-ne p1, v1, :cond_8

    goto :goto_1

    .line 197
    :cond_8
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqHide()V

    .line 203
    :goto_1
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p0, v2}, Lcom/yftech/avmservice/CameraService;->access$702(Lcom/yftech/avmservice/CameraService;Z)Z

    .line 204
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p0

    if-ne p0, v0, :cond_9

    goto/16 :goto_3

    .line 207
    :cond_9
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/avm/AvmControl;->onBackcarChange(Z)V

    goto/16 :goto_3

    :cond_a
    if-nez p1, :cond_e

    .line 211
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1, v1}, Lcom/yftech/avmservice/CameraService;->access$302(Lcom/yftech/avmservice/CameraService;Z)Z

    const-string p1, "sys.avmservice.run.state"

    const-string p2, "1"

    .line 213
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "CameraService"

    const-string p2, "set sys.avmservice.run.state 1"

    .line 214
    new-array p3, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, p3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$400(Lcom/yftech/avmservice/CameraService;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 218
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AudioFocus;->abondRvcFocus()V

    .line 220
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1, v2}, Lcom/yftech/avmservice/CameraService;->access$402(Lcom/yftech/avmservice/CameraService;Z)Z

    .line 221
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/yftech/avmservice/CameraService;->mAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 222
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1, p2}, Lcom/yftech/avmservice/CameraService;->access$802(Lcom/yftech/avmservice/CameraService;Landroid/media/AudioManager;)Landroid/media/AudioManager;

    .line 224
    :cond_b
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$1;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraService;->access$900(Lcom/yftech/avmservice/CameraService;)Lcom/yftech/avmservice/CameraServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/CameraServiceImpl;->notifyExitArm2()V

    .line 226
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p0

    if-ne p0, v0, :cond_c

    .line 227
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqShow()V

    goto :goto_2

    .line 228
    :cond_c
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result p0

    if-ne p0, v1, :cond_d

    .line 229
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqShow()V

    :cond_d
    :goto_2
    const-string p0, "CameraService"

    const-string p1, "exit arm2 backcar"

    .line 231
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_e
    const/4 p0, 0x3

    if-ne p0, p1, :cond_10

    const-string p0, "CameraService"

    .line 233
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "param2 ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p3, :cond_f

    const-string p0, "CameraService"

    const-string p1, "handle ARM2 start backcar"

    .line 235
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_f
    const-string p0, "CameraService"

    const-string p1, "handle ARM2 stop backcar"

    .line 238
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_10
    const-string p0, "CameraService"

    const-string p1, "do nothing"

    .line 242
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    return-void
.end method
