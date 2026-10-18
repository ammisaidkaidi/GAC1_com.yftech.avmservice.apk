.class Lcom/yftech/avmservice/windowutil/RVCWindow$1;
.super Ljava/lang/Object;
.source "RVCWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/windowutil/RVCWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/windowutil/RVCWindow;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/windowutil/RVCWindow;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/RVCWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 112
    invoke-static {}, Lcom/yftech/avmservice/windowutil/RVCWindow;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "show sureface view  runnable"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/RVCWindow;

    invoke-static {v0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->access$100(Lcom/yftech/avmservice/windowutil/RVCWindow;)Lcom/yftech/avmservice/windowutil/CameraPreview;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yftech/avmservice/windowutil/CameraPreview;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/RVCWindow;

    iget-object v0, v0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/RVCWindow;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->hideOsAvmRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
