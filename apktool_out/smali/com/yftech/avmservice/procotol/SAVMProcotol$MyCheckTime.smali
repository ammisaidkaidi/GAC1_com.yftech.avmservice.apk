.class Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCheckTime;
.super Ljava/lang/Thread;
.source "SAVMProcotol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/procotol/SAVMProcotol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCheckTime"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/procotol/SAVMProcotol;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/yftech/avmservice/procotol/SAVMProcotol$MyCheckTime;->this$0:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-wide/16 v0, 0x7d0

    .line 124
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 126
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
