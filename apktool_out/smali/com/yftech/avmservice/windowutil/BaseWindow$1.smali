.class Lcom/yftech/avmservice/windowutil/BaseWindow$1;
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

    .line 125
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 128
    invoke-static {}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update window Visibility  runnable,isUpdateVisibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-static {v2}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$100(Lcom/yftech/avmservice/windowutil/BaseWindow;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-virtual {v0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->isShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-static {v0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$100(Lcom/yftech/avmservice/windowutil/BaseWindow;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-virtual {v0, v2}, Lcom/yftech/avmservice/windowutil/BaseWindow;->setCameraState(I)Z

    .line 132
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    iget-object v0, v0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getDeviceType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    iget-object v0, v0, Lcom/yftech/avmservice/windowutil/BaseWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->isIOBackCar()Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-static {v0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$200(Lcom/yftech/avmservice/windowutil/BaseWindow;)V

    .line 137
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-static {v0}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$300(Lcom/yftech/avmservice/windowutil/BaseWindow;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-static {p0, v2}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$302(Lcom/yftech/avmservice/windowutil/BaseWindow;Z)Z

    .line 139
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqHide()V

    .line 140
    invoke-static {}, Lcom/yftech/avmservice/avm/AvmControl;->getInstance()Lcom/yftech/avmservice/avm/AvmControl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqShow()V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/windowutil/BaseWindow;->setWindowVisibility(Z)Z

    .line 144
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-static {p0, v1}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$102(Lcom/yftech/avmservice/windowutil/BaseWindow;Z)Z

    goto :goto_0

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/windowutil/BaseWindow;->setWindowVisibility(Z)Z

    .line 148
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/BaseWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/BaseWindow;

    invoke-static {p0, v1}, Lcom/yftech/avmservice/windowutil/BaseWindow;->access$102(Lcom/yftech/avmservice/windowutil/BaseWindow;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
