.class Lcom/yftech/avmservice/CameraService$MyUEventObserver$2;
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

    .line 123
    iput-object p1, p0, Lcom/yftech/avmservice/CameraService$MyUEventObserver$2;->this$1:Lcom/yftech/avmservice/CameraService$MyUEventObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService$MyUEventObserver$2;->this$1:Lcom/yftech/avmservice/CameraService$MyUEventObserver;

    iget-object v0, v0, Lcom/yftech/avmservice/CameraService$MyUEventObserver;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraService;->access$200(Lcom/yftech/avmservice/CameraService;)I

    .line 126
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->resetRvcCamera()Z

    .line 127
    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$MyUEventObserver$2;->this$1:Lcom/yftech/avmservice/CameraService$MyUEventObserver;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$MyUEventObserver;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraService;->access$208(Lcom/yftech/avmservice/CameraService;)I

    return-void
.end method
