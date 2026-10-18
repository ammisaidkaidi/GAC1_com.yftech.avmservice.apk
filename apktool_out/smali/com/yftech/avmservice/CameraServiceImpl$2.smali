.class Lcom/yftech/avmservice/CameraServiceImpl$2;
.super Ljava/lang/Object;
.source "CameraServiceImpl.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yftech/avmservice/CameraServiceImpl;->initAlertDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/CameraServiceImpl;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/CameraServiceImpl;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl$2;->this$0:Lcom/yftech/avmservice/CameraServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 202
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl$2;->this$0:Lcom/yftech/avmservice/CameraServiceImpl;

    const-string p2, "10"

    invoke-virtual {p1, p2}, Lcom/yftech/avmservice/CameraServiceImpl;->isNormalRecordStarted(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl$2;->this$0:Lcom/yftech/avmservice/CameraServiceImpl;

    const-string p2, "10"

    invoke-virtual {p1, p2}, Lcom/yftech/avmservice/CameraServiceImpl;->isUrgentRecordStarted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 203
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl$2;->this$0:Lcom/yftech/avmservice/CameraServiceImpl;

    const-string p2, "10"

    invoke-virtual {p1, p2}, Lcom/yftech/avmservice/CameraServiceImpl;->stopRecord(Ljava/lang/String;)V

    .line 205
    :cond_1
    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl$2;->this$0:Lcom/yftech/avmservice/CameraServiceImpl;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/yftech/avmservice/CameraServiceImpl;->isNormalRecordStarted(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/yftech/avmservice/CameraServiceImpl$2;->this$0:Lcom/yftech/avmservice/CameraServiceImpl;

    const-string p2, "0"

    invoke-virtual {p1, p2}, Lcom/yftech/avmservice/CameraServiceImpl;->isUrgentRecordStarted(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 206
    :cond_2
    iget-object p0, p0, Lcom/yftech/avmservice/CameraServiceImpl$2;->this$0:Lcom/yftech/avmservice/CameraServiceImpl;

    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraServiceImpl;->stopRecord(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
