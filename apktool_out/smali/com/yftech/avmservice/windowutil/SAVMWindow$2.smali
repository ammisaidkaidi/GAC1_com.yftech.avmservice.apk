.class Lcom/yftech/avmservice/windowutil/SAVMWindow$2;
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

    .line 109
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/SAVMWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 112
    invoke-static {}, Lcom/yftech/avmservice/windowutil/SAVMWindow;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hide os avm  runnable"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/SAVMWindow;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/SAVMWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/avm/AvmControl;->setAvmMode(I)V

    return-void
.end method
