.class Lcom/yftech/avmservice/windowutil/SAVMWindow$3;
.super Ljava/lang/Object;
.source "SAVMWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/windowutil/SAVMWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/windowutil/SAVMWindow;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/windowutil/SAVMWindow;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow$3;->this$0:Lcom/yftech/avmservice/windowutil/SAVMWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 391
    invoke-static {}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " stop err sound runnable"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow$3;->this$0:Lcom/yftech/avmservice/windowutil/SAVMWindow;

    invoke-static {v0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->access$200(Lcom/yftech/avmservice/windowutil/SAVMWindow;)Lcom/yftech/avmservice/util/SoundPoolPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/util/SoundPoolPlayer;->stopAllWarnTone()V

    .line 393
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow$3;->this$0:Lcom/yftech/avmservice/windowutil/SAVMWindow;

    invoke-static {v0, v2}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->access$302(Lcom/yftech/avmservice/windowutil/SAVMWindow;Z)Z

    .line 395
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow$3;->this$0:Lcom/yftech/avmservice/windowutil/SAVMWindow;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->updateRadarSound(Z)V

    return-void
.end method
