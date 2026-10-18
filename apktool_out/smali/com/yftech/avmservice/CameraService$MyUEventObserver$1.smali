.class Lcom/yftech/avmservice/CameraService$MyUEventObserver$1;
.super Ljava/lang/Object;
.source "CameraService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/avmservice/CameraService$MyUEventObserver;->onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/avmservice/CameraService$MyUEventObserver;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/CameraService$MyUEventObserver;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/yftech/avmservice/CameraService$MyUEventObserver$1;->this$1:Lcom/yftech/avmservice/CameraService$MyUEventObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 110
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->isIOBackCar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService$MyUEventObserver$1;->this$1:Lcom/yftech/avmservice/CameraService$MyUEventObserver;

    iget-object v0, v0, Lcom/yftech/avmservice/CameraService$MyUEventObserver;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraService;->access$000(Lcom/yftech/avmservice/CameraService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqHide()V

    .line 113
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqShow()V

    .line 114
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$MyUEventObserver$1;->this$1:Lcom/yftech/avmservice/CameraService$MyUEventObserver;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$MyUEventObserver;->this$0:Lcom/yftech/avmservice/CameraService;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/yftech/avmservice/CameraService;->access$002(Lcom/yftech/avmservice/CameraService;Z)Z

    goto :goto_0

    .line 117
    :cond_0
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqHide()V

    :cond_1
    :goto_0
    return-void
.end method
