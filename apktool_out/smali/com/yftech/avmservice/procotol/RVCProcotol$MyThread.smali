.class Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;
.super Ljava/lang/Thread;
.source "RVCProcotol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/procotol/RVCProcotol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyThread"
.end annotation


# instance fields
.field private isCommTimeOutTmp:Z

.field private isReset:Z

.field final synthetic this$0:Lcom/yftech/avmservice/procotol/RVCProcotol;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/procotol/RVCProcotol;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->isCommTimeOutTmp:Z

    .line 34
    iput-boolean p1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->isReset:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    const-wide/16 v0, 0xbb8

    .line 39
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 41
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RVCProcotol;->access$008(Lcom/yftech/avmservice/procotol/RVCProcotol;)I

    .line 42
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RVCProcotol;->access$000(Lcom/yftech/avmservice/procotol/RVCProcotol;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    if-le v0, v2, :cond_0

    .line 43
    iput-boolean v1, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->isCommTimeOutTmp:Z

    .line 44
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-static {v0, v2}, Lcom/yftech/avmservice/procotol/RVCProcotol;->access$002(Lcom/yftech/avmservice/procotol/RVCProcotol;I)I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->isCommTimeOutTmp:Z

    .line 48
    :goto_1
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RVCProcotol;->access$100(Lcom/yftech/avmservice/procotol/RVCProcotol;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->isCommTimeOutTmp:Z

    if-eq v0, v2, :cond_1

    .line 49
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/RVCProcotol;

    iget-boolean v2, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->isCommTimeOutTmp:Z

    invoke-static {v0, v2}, Lcom/yftech/avmservice/procotol/RVCProcotol;->access$102(Lcom/yftech/avmservice/procotol/RVCProcotol;Z)Z

    .line 50
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/RVCProcotol;->access$200(Lcom/yftech/avmservice/procotol/RVCProcotol;)Lcom/yftech/avmservice/common/ICameraControl$ICameraControlListener;

    .line 54
    :cond_1
    iget-boolean v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->isReset:Z

    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-virtual {v0}, Lcom/yftech/avmservice/procotol/RVCProcotol;->sendResetPaket1()Z

    goto :goto_2

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-virtual {v0}, Lcom/yftech/avmservice/procotol/RVCProcotol;->sendTestPaket1()Z

    .line 59
    :goto_2
    iget-boolean v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->isReset:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/yftech/avmservice/procotol/RVCProcotol$MyThread;->isReset:Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
