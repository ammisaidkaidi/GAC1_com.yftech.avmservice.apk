.class public Lcom/yftech/avmservice/activity/EmptyActivity;
.super Landroid/app/Activity;
.source "EmptyActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EmptyActivity"


# instance fields
.field private mCallback:Lcom/yftech/avmservice/ICameraServiceCallback$Stub;

.field private mCameraId:Ljava/lang/String;

.field private mCameraService:Lcom/yftech/avmservice/ICameraService;

.field private mCameraServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 83
    new-instance v0, Lcom/yftech/avmservice/activity/EmptyActivity$1;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/activity/EmptyActivity$1;-><init>(Lcom/yftech/avmservice/activity/EmptyActivity;)V

    iput-object v0, p0, Lcom/yftech/avmservice/activity/EmptyActivity;->mCameraServiceConnection:Landroid/content/ServiceConnection;

    .line 104
    new-instance v0, Lcom/yftech/avmservice/activity/EmptyActivity$2;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/activity/EmptyActivity$2;-><init>(Lcom/yftech/avmservice/activity/EmptyActivity;)V

    iput-object v0, p0, Lcom/yftech/avmservice/activity/EmptyActivity;->mCallback:Lcom/yftech/avmservice/ICameraServiceCallback$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/avmservice/activity/EmptyActivity;)Lcom/yftech/avmservice/ICameraService;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/avmservice/activity/EmptyActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yftech/avmservice/activity/EmptyActivity;Lcom/yftech/avmservice/ICameraService;)Lcom/yftech/avmservice/ICameraService;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/yftech/avmservice/activity/EmptyActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yftech/avmservice/activity/EmptyActivity;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/avmservice/activity/EmptyActivity;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/avmservice/activity/EmptyActivity;)Lcom/yftech/avmservice/ICameraServiceCallback$Stub;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/yftech/avmservice/activity/EmptyActivity;->mCallback:Lcom/yftech/avmservice/ICameraServiceCallback$Stub;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/yftech/avmservice/activity/EmptyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/yftech/avmservice/App;

    .line 30
    invoke-virtual {p1, p0}, Lcom/yftech/avmservice/App;->add(Landroid/app/Activity;)V

    const-string p1, "EmptyActivity"

    const-string v0, "onCreate"

    const/4 v1, 0x0

    .line 31
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 32
    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/activity/EmptyActivity;->requestWindowFeature(I)Z

    .line 33
    invoke-virtual {p0}, Lcom/yftech/avmservice/activity/EmptyActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 34
    invoke-virtual {p0}, Lcom/yftech/avmservice/activity/EmptyActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1601706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 44
    invoke-virtual {p0}, Lcom/yftech/avmservice/activity/EmptyActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.yftech.avmservice.BACKCAR_TYPE"

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/yftech/avmservice/activity/EmptyActivity;->mCameraId:Ljava/lang/String;

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "EmptyActivity"

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    .line 79
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    iget-object v0, p0, Lcom/yftech/avmservice/activity/EmptyActivity;->mCameraServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/EmptyActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 65
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "EmptyActivity"

    const-string v1, "onPause"

    const/4 v2, 0x0

    .line 66
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p0, v2, v2}, Lcom/yftech/avmservice/activity/EmptyActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "EmptyActivity"

    const-string v0, "onResume"

    const/4 v1, 0x0

    .line 60
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 53
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string p0, "EmptyActivity"

    const-string v0, "onStart"

    const/4 v1, 0x0

    .line 54
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 72
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string p0, "EmptyActivity"

    const-string v0, "onStop"

    const/4 v1, 0x0

    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
