.class Lcom/yftech/avmservice/procotol/SAVMProcotol$MyThread;
.super Ljava/lang/Thread;
.source "SAVMProcotol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/procotol/SAVMProcotol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/procotol/SAVMProcotol;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :cond_0
    :goto_0
    const-wide/16 v0, 0x190

    .line 136
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 138
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$508(Lcom/yftech/avmservice/procotol/SAVMProcotol;)I

    .line 139
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$500(Lcom/yftech/avmservice/procotol/SAVMProcotol;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$600(Lcom/yftech/avmservice/procotol/SAVMProcotol;Z)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$700(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z

    move-result v0

    iget-object v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v1}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$800(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 143
    invoke-static {}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Avm Comm Time out,old state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v2}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$800(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",new state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v2}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$700(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mAvmDisplayRequest:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v2}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$400(Lcom/yftech/avmservice/procotol/SAVMProcotol;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    iget-object v1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v1}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$800(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$702(Lcom/yftech/avmservice/procotol/SAVMProcotol;Z)Z

    .line 146
    iget-object v0, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyThread;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-static {v0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;->access$700(Lcom/yftech/avmservice/procotol/SAVMProcotol;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 158
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
