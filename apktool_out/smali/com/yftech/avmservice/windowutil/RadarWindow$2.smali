.class Lcom/yftech/avmservice/windowutil/RadarWindow$2;
.super Ljava/lang/Object;
.source "RadarWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/windowutil/RadarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isPorbeErr:Z

.field isSystemErr:Z

.field final synthetic this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/windowutil/RadarWindow;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 279
    iput-boolean p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->isSystemErr:Z

    .line 280
    iput-boolean p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->isPorbeErr:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 283
    invoke-static {}, Lcom/yftech/avmservice/windowutil/RadarWindow;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " blink runnable"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    invoke-static {v0}, Lcom/yftech/avmservice/windowutil/RadarWindow;->access$100(Lcom/yftech/avmservice/windowutil/RadarWindow;)Z

    move-result v0

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->isSystemErr:Z

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->blinkRadarSystemErr(Z)V

    .line 286
    iget-boolean v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->isSystemErr:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->isSystemErr:Z

    .line 287
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    invoke-static {v0}, Lcom/yftech/avmservice/windowutil/RadarWindow;->access$200(Lcom/yftech/avmservice/windowutil/RadarWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->errRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    invoke-static {v0}, Lcom/yftech/avmservice/windowutil/RadarWindow;->access$300(Lcom/yftech/avmservice/windowutil/RadarWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    iget-boolean v1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->isPorbeErr:Z

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->blinkRadarPorbeErr(Z)V

    .line 290
    iget-boolean v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->isPorbeErr:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->isPorbeErr:Z

    .line 291
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    invoke-static {v0}, Lcom/yftech/avmservice/windowutil/RadarWindow;->access$200(Lcom/yftech/avmservice/windowutil/RadarWindow;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow;->errRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 293
    :cond_1
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    invoke-static {p0, v2}, Lcom/yftech/avmservice/windowutil/RadarWindow;->access$402(Lcom/yftech/avmservice/windowutil/RadarWindow;Z)Z

    :goto_0
    return-void
.end method
