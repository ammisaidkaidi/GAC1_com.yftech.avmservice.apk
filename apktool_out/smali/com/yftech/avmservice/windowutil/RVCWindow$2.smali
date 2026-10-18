.class Lcom/yftech/avmservice/windowutil/RVCWindow$2;
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

    .line 118
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow$2;->this$0:Lcom/yftech/avmservice/windowutil/RVCWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 121
    invoke-static {}, Lcom/yftech/avmservice/windowutil/RVCWindow;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "hide os avm  runnable"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
