.class Lcom/yftech/avmservice/avm/AvmControl$1;
.super Ljava/lang/Object;
.source "AvmControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/avm/AvmControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/avm/AvmControl;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/avm/AvmControl;)V
    .locals 0

    .line 814
    iput-object p1, p0, Lcom/yftech/avmservice/avm/AvmControl$1;->this$0:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 822
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl$1;->this$0:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-static {v0}, Lcom/yftech/avmservice/avm/AvmControl;->access$200(Lcom/yftech/avmservice/avm/AvmControl;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 823
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl$1;->this$0:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/avm/AvmControl;->onDisplayState(Z)V

    goto :goto_0

    .line 825
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl$1;->this$0:Lcom/yftech/avmservice/avm/AvmControl;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yftech/avmservice/avm/AvmControl;->onDisplayState(Z)V

    .line 827
    :goto_0
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AvmControl$1;->this$0:Lcom/yftech/avmservice/avm/AvmControl;

    iget-object v2, p0, Lcom/yftech/avmservice/avm/AvmControl$1;->this$0:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-static {v2}, Lcom/yftech/avmservice/avm/AvmControl;->access$200(Lcom/yftech/avmservice/avm/AvmControl;)Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/yftech/avmservice/avm/AvmControl;->access$202(Lcom/yftech/avmservice/avm/AvmControl;Z)Z

    .line 828
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AvmControl$1;->this$0:Lcom/yftech/avmservice/avm/AvmControl;

    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/avm/AvmControl;->postDelayHandler(I)V

    return-void
.end method
