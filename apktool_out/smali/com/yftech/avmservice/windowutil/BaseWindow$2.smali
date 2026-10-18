.class Lcom/yftech/avmservice/windowutil/BaseWindow$2;
.super Ljava/lang/Object;
.source "BaseWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/windowutil/BaseWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/windowutil/BaseWindow;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 157
    invoke-static {}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitAvmFirstShow ,isFirstOpenAvmCamera:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-static {v2}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$400(Lcom/yftech/avmservice/windowutil/BaseWindow;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-static {v0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$400(Lcom/yftech/avmservice/windowutil/BaseWindow;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-static {v0, v2}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$402(Lcom/yftech/avmservice/windowutil/BaseWindow;Z)Z

    .line 161
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    iget-object v0, v0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->isAvmDisplay()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-static {v0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$500(Lcom/yftech/avmservice/windowutil/BaseWindow;)I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqHide()V

    .line 165
    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->hideWindow()V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/windowutil/BaseWindow;->setWindowVisibility(Z)Z

    .line 168
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-static {v0, v1}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$102(Lcom/yftech/avmservice/windowutil/BaseWindow;Z)Z

    .line 170
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-static {v0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$600(Lcom/yftech/avmservice/windowutil/BaseWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow;->updateVisibilityRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method
