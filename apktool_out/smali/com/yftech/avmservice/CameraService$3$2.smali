.class Lcom/yftech/avmservice/CameraService$3$2;
.super Ljava/lang/Object;
.source "CameraService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/avmservice/CameraService$3;->onUserSwitchComplete(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/yftech/avmservice/CameraService$3;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/CameraService$3;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/yftech/avmservice/CameraService$3$2;->this$1:Lcom/yftech/avmservice/CameraService$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/yftech/avmservice/CameraService$3$2;->this$1:Lcom/yftech/avmservice/CameraService$3;

    iget-object v0, v0, Lcom/yftech/avmservice/CameraService$3;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {v0}, Lcom/yftech/avmservice/CameraService;->access$900(Lcom/yftech/avmservice/CameraService;)Lcom/yftech/avmservice/CameraServiceImpl;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$3$2;->this$1:Lcom/yftech/avmservice/CameraService$3;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraService$3;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p0}, Lcom/yftech/avmservice/CameraService;->access$1100(Lcom/yftech/avmservice/CameraService;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/CameraServiceImpl;->startBackcar(Ljava/lang/String;)V

    return-void
.end method
