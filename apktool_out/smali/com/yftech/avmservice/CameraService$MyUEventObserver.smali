.class public Lcom/yftech/avmservice/CameraService$MyUEventObserver;
.super Landroid/os/UEventObserver;
.source "CameraService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/CameraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyUEventObserver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MyUEventObserver"


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/CameraService;


# direct methods
.method public constructor <init>(Lcom/yftech/avmservice/CameraService;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/yftech/avmservice/CameraService$MyUEventObserver;->this$0:Lcom/yftech/avmservice/CameraService;

    .line 89
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7

    const-string v0, "DEVPATH"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ACTION"

    .line 95
    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "max96714_erro_reopen"

    .line 96
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "max96714_erro_mask"

    .line 97
    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "MyUEventObserver"

    .line 98
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", Action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",reopen_camera:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",reset_camera"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const-string v0, "change"

    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_0

    const-string v0, "1"

    .line 106
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "MyUEventObserver"

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drive reopen Camera msg!!!,isReopenCamera:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraService$MyUEventObserver;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraService;->access$000(Lcom/yftech/avmservice/CameraService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$MyUEventObserver;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$100(Lcom/yftech/avmservice/CameraService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/avmservice/CameraService$MyUEventObserver$1;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraService$MyUEventObserver$1;-><init>(Lcom/yftech/avmservice/CameraService$MyUEventObserver;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "1"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "MyUEventObserver"

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drive reset Camera msg!!!resetCameraCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraService$MyUEventObserver;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {v1}, Lcom/yftech/avmservice/CameraService;->access$200(Lcom/yftech/avmservice/CameraService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    iget-object p1, p0, Lcom/yftech/avmservice/CameraService$MyUEventObserver;->this$0:Lcom/yftech/avmservice/CameraService;

    invoke-static {p1}, Lcom/yftech/avmservice/CameraService;->access$100(Lcom/yftech/avmservice/CameraService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/yftech/avmservice/CameraService$MyUEventObserver$2;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraService$MyUEventObserver$2;-><init>(Lcom/yftech/avmservice/CameraService$MyUEventObserver;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
