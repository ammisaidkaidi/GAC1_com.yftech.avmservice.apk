.class public Lcom/yftech/avmservice/activity/ArmTwoActivity;
.super Landroid/app/Activity;
.source "ArmTwoActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ArmTwoActivity"


# instance fields
.field private mCallback:Lcom/yftech/avmservice/ICameraServiceCallback$Stub;

.field private mCameraId:Ljava/lang/String;

.field private mCameraService:Lcom/yftech/avmservice/ICameraService;

.field private mCameraServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 80
    new-instance v0, Lcom/yftech/avmservice/activity/ArmTwoActivity$1;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/activity/ArmTwoActivity$1;-><init>(Lcom/yftech/avmservice/activity/ArmTwoActivity;)V

    iput-object v0, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity;->mCameraServiceConnection:Landroid/content/ServiceConnection;

    .line 101
    new-instance v0, Lcom/yftech/avmservice/activity/ArmTwoActivity$2;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/activity/ArmTwoActivity$2;-><init>(Lcom/yftech/avmservice/activity/ArmTwoActivity;)V

    iput-object v0, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity;->mCallback:Lcom/yftech/avmservice/ICameraServiceCallback$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/avmservice/activity/ArmTwoActivity;)Lcom/yftech/avmservice/ICameraService;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/yftech/avmservice/activity/ArmTwoActivity;Lcom/yftech/avmservice/ICameraService;)Lcom/yftech/avmservice/ICameraService;
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/yftech/avmservice/activity/ArmTwoActivity;)Ljava/lang/String;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/yftech/avmservice/activity/ArmTwoActivity;)Lcom/yftech/avmservice/ICameraServiceCallback$Stub;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity;->mCallback:Lcom/yftech/avmservice/ICameraServiceCallback$Stub;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "ArmTwoActivity"

    const-string v0, "onCreate"

    const/4 v1, 0x0

    .line 28
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 29
    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/activity/ArmTwoActivity;->requestWindowFeature(I)Z

    .line 30
    invoke-virtual {p0}, Lcom/yftech/avmservice/activity/ArmTwoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 31
    invoke-virtual {p0}, Lcom/yftech/avmservice/activity/ArmTwoActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1601706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 41
    invoke-virtual {p0}, Lcom/yftech/avmservice/activity/ArmTwoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.yftech.avmservice.BACKCAR_TYPE"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity;->mCameraId:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yftech/avmservice/CameraService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    iget-object v1, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity;->mCameraServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, p1}, Lcom/yftech/avmservice/activity/ArmTwoActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "ArmTwoActivity"

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    .line 76
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/yftech/avmservice/activity/ArmTwoActivity;->mCameraServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/ArmTwoActivity;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method protected onPause()V
    .locals 4

    .line 62
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "ArmTwoActivity"

    const-string v1, "onPause"

    const/4 v2, 0x0

    .line 63
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0, v2, v2}, Lcom/yftech/avmservice/activity/ArmTwoActivity;->overridePendingTransition(II)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 56
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "ArmTwoActivity"

    const-string v0, "onResume"

    const/4 v1, 0x0

    .line 57
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 50
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string p0, "ArmTwoActivity"

    const-string v0, "onStart"

    const/4 v1, 0x0

    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 69
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string p0, "ArmTwoActivity"

    const-string v0, "onStop"

    const/4 v1, 0x0

    .line 70
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
