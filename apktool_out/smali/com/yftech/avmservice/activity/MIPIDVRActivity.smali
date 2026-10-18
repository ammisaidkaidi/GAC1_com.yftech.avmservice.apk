.class public Lcom/yftech/avmservice/activity/MIPIDVRActivity;
.super Landroid/app/Activity;
.source "MIPIDVRActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/yftech/avmservice/activity/WatermarkSettingsView$WatermarkSettingsListener;
.implements Lcom/yftech/avmservice/activity/RecordSettingsView$RecordSettingsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;,
        Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;
    }
.end annotation


# static fields
.field private static final CAMERA_STATUS_MSG:I = 0x1

.field private static final ERROR_STATUS_MSG:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MIPIDVRActivity"


# instance fields
.field private isOpenPreview:Z

.field private mBackCallback:Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

.field private mBackDuration:I

.field private mBackMIPICameraId:Ljava/lang/String;

.field private mBackRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

.field private mBackResolution:Lcom/yftech/avmservice/Resolution;

.field private mBackTextureView:Landroid/view/TextureView;

.field private mBackTextureViewHeight:I

.field private mBackTextureViewWidth:I

.field private mBackWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

.field private mBtnBackMic:Landroid/widget/Button;

.field private mBtnBackNormalRecord:Landroid/widget/Button;

.field private mBtnBackRecordSettings:Landroid/widget/Button;

.field private mBtnBackSnapshot:Landroid/widget/Button;

.field private mBtnBackUrgentRecord:Landroid/widget/Button;

.field private mBtnBackWatermark:Landroid/widget/Button;

.field private mBtnFrontMic:Landroid/widget/Button;

.field private mBtnFrontNormalRecord:Landroid/widget/Button;

.field private mBtnFrontRecordSettings:Landroid/widget/Button;

.field private mBtnFrontSnapshot:Landroid/widget/Button;

.field private mBtnFrontUrgentRecord:Landroid/widget/Button;

.field private mBtnFrontWatermark:Landroid/widget/Button;

.field private mCameraService:Lcom/yftech/avmservice/ICameraService;

.field private mCameraServiceConnection:Landroid/content/ServiceConnection;

.field private mFrontCallback:Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

.field private mFrontDuration:I

.field private mFrontMIPICameraId:Ljava/lang/String;

.field private mFrontRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

.field private mFrontResolution:Lcom/yftech/avmservice/Resolution;

.field private mFrontTextureView:Landroid/view/TextureView;

.field private mFrontTextureViewHeight:I

.field private mFrontTextureViewWidth:I

.field private mFrontWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

.field private mHandler:Landroid/os/Handler;

.field private mIsBackTextureViewAvailable:Z

.field private mIsBackcarOn:Z

.field private mIsBoundService:Z

.field private mIsChangingBackDuration:Z

.field private mIsChangingBackMic:Z

.field private mIsChangingBackWatermark:Z

.field private mIsChangingFrontDuration:Z

.field private mIsChangingFrontMic:Z

.field private mIsChangingFrontWatermark:Z

.field private mIsFrontTextureViewAvailable:Z

.field private mIsQbOff:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, "10"

    .line 42
    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    const-string v0, "0"

    .line 43
    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsBoundService:Z

    .line 95
    iput-boolean v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->isOpenPreview:Z

    .line 138
    new-instance v0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;-><init>(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)V

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraServiceConnection:Landroid/content/ServiceConnection;

    .line 352
    new-instance v0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;-><init>(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)V

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/os/Handler;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/ICameraService;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsFrontTextureViewAvailable:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsFrontTextureViewAvailable:Z

    return p1
.end method

.method static synthetic access$102(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Lcom/yftech/avmservice/ICameraService;)Lcom/yftech/avmservice/ICameraService;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/view/TextureView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsBackTextureViewAvailable:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsBackTextureViewAvailable:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/view/TextureView;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/widget/Button;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontNormalRecord:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/widget/Button;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackNormalRecord:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->setTextureViewVisible(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateUrgentUI(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateParamButtons(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1902(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsBackcarOn:Z

    return p1
.end method

.method static synthetic access$2002(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsQbOff:Z

    return p1
.end method

.method static synthetic access$202(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Z)Z
    .locals 0

    .line 40
    iput-boolean p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsBoundService:Z

    return p1
.end method

.method static synthetic access$2102(Lcom/yftech/avmservice/activity/MIPIDVRActivity;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureViewWidth:I

    return p1
.end method

.method static synthetic access$2202(Lcom/yftech/avmservice/activity/MIPIDVRActivity;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureViewHeight:I

    return p1
.end method

.method static synthetic access$2300(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/Resolution;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontResolution:Lcom/yftech/avmservice/Resolution;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/yftech/avmservice/activity/MIPIDVRActivity;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureViewWidth:I

    return p1
.end method

.method static synthetic access$2502(Lcom/yftech/avmservice/activity/MIPIDVRActivity;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureViewHeight:I

    return p1
.end method

.method static synthetic access$2600(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/Resolution;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackResolution:Lcom/yftech/avmservice/Resolution;

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontCallback:Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

    return-object p0
.end method

.method static synthetic access$302(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;)Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontCallback:Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

    return-object p1
.end method

.method static synthetic access$400(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackCallback:Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

    return-object p0
.end method

.method static synthetic access$402(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;)Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackCallback:Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

    return-object p1
.end method

.method static synthetic access$500(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Z
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->checkIfCameraResourceInitialized()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->udpateButtonState()V

    return-void
.end method

.method static synthetic access$700(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Z
    .locals 0

    .line 40
    iget-boolean p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->isOpenPreview:Z

    return p0
.end method

.method static synthetic access$800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    return-object p0
.end method

.method private checkIfCameraResourceInitialized()Z
    .locals 1

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-interface {v0}, Lcom/yftech/avmservice/ICameraService;->isArm2Exit()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->finish()V

    :cond_0
    return v0
.end method

.method private durationBtnClicked(Ljava/lang/String;)V
    .locals 2

    .line 892
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-eqz p1, :cond_1

    .line 893
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    invoke-virtual {p1, v1}, Lcom/yftech/avmservice/activity/WatermarkSettingsView;->setVisibility(I)V

    .line 894
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

    invoke-virtual {p1}, Lcom/yftech/avmservice/activity/RecordSettingsView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 895
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/activity/RecordSettingsView;->setVisibility(I)V

    goto :goto_0

    .line 897
    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/RecordSettingsView;->setVisibility(I)V

    goto :goto_0

    .line 900
    :cond_1
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    invoke-virtual {p1, v1}, Lcom/yftech/avmservice/activity/WatermarkSettingsView;->setVisibility(I)V

    .line 901
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

    invoke-virtual {p1}, Lcom/yftech/avmservice/activity/RecordSettingsView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 902
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/activity/RecordSettingsView;->setVisibility(I)V

    goto :goto_0

    .line 904
    :cond_2
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/RecordSettingsView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private enableButtons(Ljava/lang/String;Z)V
    .locals 7

    .line 242
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackMic:Landroid/widget/Button;

    .line 243
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackWatermark:Landroid/widget/Button;

    .line 244
    iget-object v2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackRecordSettings:Landroid/widget/Button;

    .line 245
    iget-object v3, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackNormalRecord:Landroid/widget/Button;

    .line 246
    iget-object v4, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackUrgentRecord:Landroid/widget/Button;

    .line 247
    iget-object v5, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackSnapshot:Landroid/widget/Button;

    .line 248
    iget-object v6, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 249
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontMic:Landroid/widget/Button;

    .line 250
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontWatermark:Landroid/widget/Button;

    .line 251
    iget-object v2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontRecordSettings:Landroid/widget/Button;

    .line 252
    iget-object v3, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontNormalRecord:Landroid/widget/Button;

    .line 253
    iget-object v4, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontUrgentRecord:Landroid/widget/Button;

    .line 254
    iget-object v5, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontSnapshot:Landroid/widget/Button;

    .line 256
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 257
    invoke-virtual {v1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 258
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 259
    invoke-virtual {v3, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 260
    invoke-virtual {v4, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 261
    invoke-virtual {v5, p2}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f0700ef

    .line 704
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureView:Landroid/view/TextureView;

    const v0, 0x7f070037

    .line 705
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontNormalRecord:Landroid/widget/Button;

    const v0, 0x7f07003a

    .line 706
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontUrgentRecord:Landroid/widget/Button;

    const v0, 0x7f070036

    .line 707
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontMic:Landroid/widget/Button;

    const v0, 0x7f070039

    .line 708
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontSnapshot:Landroid/widget/Button;

    const v0, 0x7f07003b

    .line 709
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontWatermark:Landroid/widget/Button;

    const v0, 0x7f070038

    .line 710
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontRecordSettings:Landroid/widget/Button;

    const v0, 0x7f07005b

    .line 711
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    const v0, 0x7f07005a

    .line 712
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/avmservice/activity/RecordSettingsView;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

    const v0, 0x7f0700ec

    .line 714
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureView:Landroid/view/TextureView;

    const v0, 0x7f070031

    .line 715
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackNormalRecord:Landroid/widget/Button;

    const v0, 0x7f070034

    .line 716
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackUrgentRecord:Landroid/widget/Button;

    const v0, 0x7f070030

    .line 717
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackMic:Landroid/widget/Button;

    const v0, 0x7f070033

    .line 718
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackSnapshot:Landroid/widget/Button;

    const v0, 0x7f070035

    .line 719
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackWatermark:Landroid/widget/Button;

    const v0, 0x7f070032

    .line 720
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackRecordSettings:Landroid/widget/Button;

    const v0, 0x7f070029

    .line 721
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    const v0, 0x7f070028

    .line 722
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/yftech/avmservice/activity/RecordSettingsView;

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

    .line 724
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontNormalRecord:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 725
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontUrgentRecord:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 726
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontMic:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 727
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontSnapshot:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 728
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontWatermark:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 729
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontRecordSettings:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/activity/WatermarkSettingsView;->registerWatermarkSettingsListener(Lcom/yftech/avmservice/activity/WatermarkSettingsView$WatermarkSettingsListener;)V

    .line 731
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/activity/RecordSettingsView;->registerRecordSettingsListener(Lcom/yftech/avmservice/activity/RecordSettingsView$RecordSettingsListener;)V

    .line 733
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackNormalRecord:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 734
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackUrgentRecord:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackMic:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 736
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackSnapshot:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 737
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackWatermark:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 738
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackRecordSettings:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/activity/WatermarkSettingsView;->registerWatermarkSettingsListener(Lcom/yftech/avmservice/activity/WatermarkSettingsView$WatermarkSettingsListener;)V

    .line 740
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/activity/RecordSettingsView;->registerRecordSettingsListener(Lcom/yftech/avmservice/activity/RecordSettingsView$RecordSettingsListener;)V

    return-void
.end method

.method private micBtnClicked(Ljava/lang/String;)V
    .locals 0

    .line 836
    invoke-direct {p0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->sendHXBroadCast()V

    return-void
.end method

.method private previewBtnClicked(Ljava/lang/String;)V
    .locals 4

    .line 745
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureView:Landroid/view/TextureView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureView:Landroid/view/TextureView;

    .line 748
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 749
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-interface {v1, p1}, Lcom/yftech/avmservice/ICameraService;->isPreviewStarted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 750
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-interface {v0, p1, v2}, Lcom/yftech/avmservice/ICameraService;->stopPreview(Ljava/lang/String;Z)V

    .line 751
    invoke-direct {p0, p1, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->setTextureViewVisible(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_3

    .line 753
    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 754
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    new-instance v3, Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {v1, p1, v3, v2}, Lcom/yftech/avmservice/ICameraService;->startPreview(Ljava/lang/String;Landroid/view/Surface;Z)V

    const/4 v0, 0x1

    .line 755
    invoke-direct {p0, p1, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->setTextureViewVisible(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    const-string p0, "MIPIDVRActivity"

    const-string p1, "recordBtnClicked - mCameraService is null!"

    .line 759
    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "MIPIDVRActivity"

    const-string v0, "recordBtnClicked "

    .line 762
    invoke-static {p1, v0, p0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private recordBtnClicked(Ljava/lang/String;)V
    .locals 3

    .line 769
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 770
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-interface {v0, p1}, Lcom/yftech/avmservice/ICameraService;->isNormalRecordStarted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-interface {p0, p1}, Lcom/yftech/avmservice/ICameraService;->stopRecord(Ljava/lang/String;)V

    goto :goto_2

    .line 773
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 774
    iget-object v2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureView:Landroid/view/TextureView;

    .line 775
    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureView:Landroid/view/TextureView;

    .line 776
    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    :goto_0
    if-eqz v0, :cond_2

    .line 777
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontResolution:Lcom/yftech/avmservice/Resolution;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackResolution:Lcom/yftech/avmservice/Resolution;

    .line 781
    :goto_1
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-interface {v0, p1, v1}, Lcom/yftech/avmservice/ICameraService;->startRecord(Ljava/lang/String;Z)V

    .line 782
    invoke-direct {p0, p1, v1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->enableButtons(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_3
    const-string p0, "MIPIDVRActivity"

    const-string p1, "recordBtnClicked - mCameraService is null!"

    .line 785
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "MIPIDVRActivity"

    const-string v0, "recordBtnClicked "

    .line 788
    invoke-static {p1, v0, p0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private sendHXBroadCast()V
    .locals 9

    .line 809
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.yftech.avmservice.AVM_SHOW"

    .line 810
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    invoke-virtual {p0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 813
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 814
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_0

    .line 815
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 816
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 817
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "MIPIDVRActivity"

    .line 820
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packageName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",Receiver:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v6, v3, v7}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 821
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 822
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v3}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setDuration(Ljava/lang/String;I)V
    .locals 1

    .line 911
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    if-eqz v0, :cond_0

    .line 912
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    mul-int/lit8 p2, p2, 0x3c

    invoke-interface {p0, p1, p2}, Lcom/yftech/avmservice/ICameraService;->setDuration(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string p0, "MIPIDVRActivity"

    const-string p1, "durationBtnClicked - mCameraService is null!"

    const/4 p2, 0x0

    .line 920
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MIPIDVRActivity"

    const-string p2, "durationBtnClicked "

    .line 923
    invoke-static {p1, p2, p0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setResolution(Ljava/lang/String;II)V
    .locals 1

    .line 929
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    if-eqz v0, :cond_0

    .line 930
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-interface {p0, p1, p2, p3}, Lcom/yftech/avmservice/ICameraService;->setResolution(Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    const-string p0, "MIPIDVRActivity"

    const-string p1, "durationBtnClicked - mCameraService is null!"

    const/4 p2, 0x0

    .line 938
    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MIPIDVRActivity"

    const-string p2, "durationBtnClicked "

    .line 941
    invoke-static {p1, p2, p0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private setTextureViewVisible(Ljava/lang/String;Z)V
    .locals 3

    .line 665
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsFrontTextureViewAvailable:Z

    if-eqz v0, :cond_1

    .line 666
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureView:Landroid/view/TextureView;

    if-eqz p2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    goto :goto_0

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsBackTextureViewAvailable:Z

    if-eqz p1, :cond_3

    .line 668
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureView:Landroid/view/TextureView;

    if-eqz p2, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private snapshotBtnClicked(Ljava/lang/String;)V
    .locals 1

    .line 862
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    if-eqz v0, :cond_0

    .line 863
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-interface {p0, p1}, Lcom/yftech/avmservice/ICameraService;->snapShot(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "MIPIDVRActivity"

    const-string p1, "snapshotBtnClicked - mCameraService is null!"

    const/4 v0, 0x0

    .line 865
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MIPIDVRActivity"

    const-string v0, "snapshotBtnClicked "

    .line 868
    invoke-static {p1, v0, p0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private udpateButtonState()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateNormalRecordState(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateUrgentRecordState(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateMicState(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateWatermark(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateDuration(Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateResolution(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateNormalRecordState(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateUrgentRecordState(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateMicState(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateWatermark(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateDuration(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateResolution(Ljava/lang/String;)V

    return-void
.end method

.method private updateDuration(Ljava/lang/String;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    if-eqz v0, :cond_0

    .line 345
    :try_start_0
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-interface {p0, p1}, Lcom/yftech/avmservice/ICameraService;->getDuration(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private updateMicState(Ljava/lang/String;)V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    if-eqz v0, :cond_2

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-interface {v0, p1}, Lcom/yftech/avmservice/ICameraService;->getMicState(Ljava/lang/String;)Z

    move-result v0

    .line 301
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontMic:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackMic:Landroid/widget/Button;

    :goto_0
    if-eqz v0, :cond_1

    const p1, 0x7f0c007a

    .line 303
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    :cond_1
    const p1, 0x7f0c0079

    .line 305
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private updateNormalRecordState(Ljava/lang/String;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    if-eqz v0, :cond_2

    .line 219
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-interface {v0, p1}, Lcom/yftech/avmservice/ICameraService;->isNormalRecordStarted(Ljava/lang/String;)Z

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontNormalRecord:Landroid/widget/Button;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackNormalRecord:Landroid/widget/Button;

    :goto_0
    if-eqz v0, :cond_1

    const p1, 0x7f0c008a

    .line 222
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    :cond_1
    const p1, 0x7f0c0087

    .line 224
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private updateParamButtons(Ljava/lang/String;)V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 267
    iget-boolean v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsChangingFrontDuration:Z

    if-eqz v0, :cond_0

    .line 268
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateDuration(Ljava/lang/String;)V

    .line 269
    iput-boolean v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsChangingFrontDuration:Z

    .line 271
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsChangingFrontMic:Z

    if-eqz v0, :cond_1

    .line 272
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateMicState(Ljava/lang/String;)V

    .line 273
    iput-boolean v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsChangingFrontMic:Z

    .line 275
    :cond_1
    iget-boolean v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsChangingFrontWatermark:Z

    if-eqz v0, :cond_5

    .line 276
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateWatermark(Ljava/lang/String;)V

    .line 277
    iput-boolean v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsChangingFrontWatermark:Z

    goto :goto_0

    .line 280
    :cond_2
    iget-boolean v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsChangingBackDuration:Z

    if-eqz v0, :cond_3

    .line 281
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateDuration(Ljava/lang/String;)V

    .line 282
    iput-boolean v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsChangingBackDuration:Z

    .line 284
    :cond_3
    iget-boolean v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsChangingBackMic:Z

    if-eqz v0, :cond_4

    .line 285
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateMicState(Ljava/lang/String;)V

    .line 286
    iput-boolean v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsChangingBackMic:Z

    .line 288
    :cond_4
    iget-boolean v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsChangingBackWatermark:Z

    if-eqz v0, :cond_5

    .line 289
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateWatermark(Ljava/lang/String;)V

    .line 290
    iput-boolean v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsChangingBackWatermark:Z

    :cond_5
    :goto_0
    const/4 v0, 0x1

    .line 293
    invoke-direct {p0, p1, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->enableButtons(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateResolution(Ljava/lang/String;)V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    if-eqz v0, :cond_1

    .line 330
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-interface {v0, p1}, Lcom/yftech/avmservice/ICameraService;->getResolutions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 332
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/RecordSettingsView;->updateResolution(Ljava/util/List;)V

    goto :goto_0

    .line 334
    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/RecordSettingsView;->updateResolution(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method private updateUrgentRecordState(Ljava/lang/String;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    if-eqz v0, :cond_0

    .line 234
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-interface {v0, p1}, Lcom/yftech/avmservice/ICameraService;->isUrgentRecordStarted(Ljava/lang/String;)Z

    move-result v0

    .line 235
    invoke-direct {p0, p1, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->updateUrgentUI(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private updateUrgentUI(Ljava/lang/String;Z)V
    .locals 2

    .line 993
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 994
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontUrgentRecord:Landroid/widget/Button;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 995
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontMic:Landroid/widget/Button;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 996
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontWatermark:Landroid/widget/Button;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 997
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontRecordSettings:Landroid/widget/Button;

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 998
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontNormalRecord:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 999
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontSnapshot:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1001
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackUrgentRecord:Landroid/widget/Button;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1002
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackMic:Landroid/widget/Button;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1003
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackWatermark:Landroid/widget/Button;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1004
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackRecordSettings:Landroid/widget/Button;

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1005
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackNormalRecord:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1006
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackSnapshot:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method private updateWatermark(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private urgentBtnClicked(Ljava/lang/String;)V
    .locals 3

    .line 794
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-interface {v0, p1}, Lcom/yftech/avmservice/ICameraService;->isUrgentRecordStarted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    const/4 v2, 0x1

    invoke-interface {v0, p1, v2}, Lcom/yftech/avmservice/ICameraService;->startRecord(Ljava/lang/String;Z)V

    .line 797
    invoke-direct {p0, p1, v1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->enableButtons(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "MIPIDVRActivity"

    const-string p1, "urgentBtnClicked - mCameraService is null!"

    .line 800
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MIPIDVRActivity"

    const-string v0, "urgentBtnClicked "

    .line 803
    invoke-static {p1, v0, p0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private watermarkBtnClicked(Ljava/lang/String;)V
    .locals 2

    .line 873
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 875
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    invoke-virtual {p1}, Lcom/yftech/avmservice/activity/WatermarkSettingsView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_0

    .line 876
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/activity/WatermarkSettingsView;->setVisibility(I)V

    .line 877
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/activity/WatermarkSettingsView;->setVisibility(I)V

    goto :goto_0

    .line 879
    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/activity/WatermarkSettingsView;->setVisibility(I)V

    goto :goto_0

    .line 882
    :cond_1
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    invoke-virtual {p1}, Lcom/yftech/avmservice/activity/WatermarkSettingsView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 883
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/activity/WatermarkSettingsView;->setVisibility(I)V

    .line 884
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/activity/WatermarkSettingsView;->setVisibility(I)V

    goto :goto_0

    .line 886
    :cond_2
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackWatermarkSettingsView:Lcom/yftech/avmservice/activity/WatermarkSettingsView;

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/activity/WatermarkSettingsView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public configureTransform(Ljava/lang/String;)V
    .locals 9

    .line 673
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontResolution:Lcom/yftech/avmservice/Resolution;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackResolution:Lcom/yftech/avmservice/Resolution;

    :goto_0
    if-eqz p1, :cond_1

    .line 675
    iget v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureViewWidth:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureViewWidth:I

    :goto_1
    if-eqz p1, :cond_2

    .line 676
    iget v2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureViewHeight:I

    goto :goto_2

    :cond_2
    iget v2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureViewHeight:I

    :goto_2
    if-eqz p1, :cond_3

    .line 677
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureView:Landroid/view/TextureView;

    goto :goto_3

    :cond_3
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureView:Landroid/view/TextureView;

    .line 679
    :goto_3
    invoke-virtual {v0}, Lcom/yftech/avmservice/Resolution;->getWidth()I

    move-result p1

    .line 680
    invoke-virtual {v0}, Lcom/yftech/avmservice/Resolution;->getHeight()I

    move-result v0

    const-string v3, "MIPIDVRActivity"

    .line 681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "configureTransform(), resolution( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v3, "MIPIDVRActivity"

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "viewWidth = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", viewHeight = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v6}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    int-to-double v3, v0

    int-to-double v6, p1

    div-double/2addr v3, v6

    int-to-double v6, v1

    mul-double/2addr v6, v3

    double-to-int p1, v6

    if-le v2, p1, :cond_4

    move v0, p1

    move p1, v1

    goto :goto_4

    :cond_4
    int-to-double v6, v2

    div-double/2addr v6, v3

    double-to-int p1, v6

    move v0, v2

    :goto_4
    sub-int v3, v1, p1

    .line 692
    div-int/lit8 v3, v3, 0x2

    sub-int v4, v2, v0

    .line 693
    div-int/lit8 v4, v4, 0x2

    const-string v6, "MIPIDVRActivity"

    .line 694
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "xoff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", yoff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", newWidth="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", newHeight="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 696
    invoke-virtual {p0, v5}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    int-to-float v0, v0

    int-to-float v1, v2

    div-float/2addr v0, v1

    .line 697
    invoke-virtual {v5, p1, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float p1, v3

    int-to-float v0, v4

    .line 698
    invoke-virtual {v5, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 699
    invoke-virtual {p0, v5}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p0, "MIPIDVRActivity"

    const-string p1, "can not ust click!!!"

    const/4 v0, 0x0

    .line 989
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v0, "MIPIDVRActivity"

    .line 654
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged, newConfig.locale.language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 655
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 656
    invoke-virtual {p0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 657
    invoke-direct {p0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->udpateButtonState()V

    .line 658
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontSnapshot:Landroid/widget/Button;

    const v0, 0x7f0c0085

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 659
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnFrontUrgentRecord:Landroid/widget/Button;

    const v1, 0x7f0c008c

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setText(I)V

    .line 660
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackSnapshot:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 661
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBtnBackUrgentRecord:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 505
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MIPIDVRActivity"

    const-string v0, "onCreate "

    const/4 v1, 0x0

    .line 506
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 507
    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->requestWindowFeature(I)Z

    .line 508
    invoke-virtual {p0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f09001e

    .line 510
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->setContentView(I)V

    .line 511
    new-instance v0, Lcom/yftech/avmservice/Resolution;

    const/16 v1, 0x2d0

    const/16 v2, 0x500

    invoke-direct {v0, v2, v1}, Lcom/yftech/avmservice/Resolution;-><init>(II)V

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontResolution:Lcom/yftech/avmservice/Resolution;

    .line 512
    new-instance v0, Lcom/yftech/avmservice/Resolution;

    invoke-direct {v0, v2, v1}, Lcom/yftech/avmservice/Resolution;-><init>(II)V

    iput-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackResolution:Lcom/yftech/avmservice/Resolution;

    .line 513
    invoke-direct {p0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->initView()V

    .line 515
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yftech/avmservice/CameraService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 516
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 517
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 518
    iget-boolean v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->isOpenPreview:Z

    if-eqz v0, :cond_2

    .line 519
    invoke-static {p0}, Lcom/yftech/avmservice/PermissionsManager;->checkVideoRecordPermission(Landroid/app/Activity;)Z

    .line 520
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureView:Landroid/view/TextureView;

    new-instance v1, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;

    iget-object v2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;-><init>(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_0

    .line 523
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureViewWidth:I

    .line 524
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontTextureViewHeight:I

    .line 525
    iput-boolean p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsFrontTextureViewAvailable:Z

    .line 527
    :goto_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 528
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureView:Landroid/view/TextureView;

    new-instance v0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;-><init>(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    goto :goto_1

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureViewWidth:I

    .line 531
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureView:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackTextureViewHeight:I

    .line 532
    iput-boolean p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsBackTextureViewAvailable:Z

    :cond_2
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 614
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "MIPIDVRActivity"

    const-string v1, "onDestroy "

    const/4 v2, 0x0

    .line 615
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 616
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->setTextureViewVisible(Ljava/lang/String;Z)V

    .line 617
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->setTextureViewVisible(Ljava/lang/String;Z)V

    .line 618
    iget-boolean v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsBoundService:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    if-eqz v0, :cond_6

    .line 620
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yftech/avmservice/ICameraService;->isNormalRecordStarted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    .line 621
    invoke-interface {v0, v1}, Lcom/yftech/avmservice/ICameraService;->isUrgentRecordStarted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yftech/avmservice/ICameraService;->stopRecord(Ljava/lang/String;)V

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yftech/avmservice/ICameraService;->isPreviewStarted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 625
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/yftech/avmservice/ICameraService;->stopPreview(Ljava/lang/String;Z)V

    .line 627
    :cond_2
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yftech/avmservice/ICameraService;->resetSettings(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontCallback:Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

    invoke-interface {v0, v1, v3}, Lcom/yftech/avmservice/ICameraService;->unregisterCameraServiceCallback(Ljava/lang/String;Lcom/yftech/avmservice/ICameraServiceCallback;)V

    .line 629
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yftech/avmservice/ICameraService;->isNormalRecordStarted(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    .line 630
    invoke-interface {v0, v1}, Lcom/yftech/avmservice/ICameraService;->isUrgentRecordStarted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 631
    :cond_3
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yftech/avmservice/ICameraService;->stopRecord(Ljava/lang/String;)V

    .line 633
    :cond_4
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yftech/avmservice/ICameraService;->isPreviewStarted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 634
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/yftech/avmservice/ICameraService;->stopPreview(Ljava/lang/String;Z)V

    .line 636
    :cond_5
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/yftech/avmservice/ICameraService;->resetSettings(Ljava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackCallback:Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

    invoke-interface {v0, v1, v3}, Lcom/yftech/avmservice/ICameraService;->unregisterCameraServiceCallback(Ljava/lang/String;Lcom/yftech/avmservice/ICameraServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MIPIDVRActivity"

    const-string v3, "onDestroy "

    .line 639
    invoke-static {v1, v3, v0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 641
    :goto_0
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 642
    iput-boolean v2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsBoundService:Z

    .line 644
    :cond_6
    iget-boolean v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsBoundService:Z

    if-eqz v0, :cond_7

    .line 645
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 646
    iput-boolean v2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsBoundService:Z

    .line 648
    :cond_7
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 649
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onDurationChanged(Landroid/view/View;I)V
    .locals 1

    .line 1068
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

    if-ne p1, v0, :cond_0

    .line 1069
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->setDuration(Ljava/lang/String;I)V

    goto :goto_0

    .line 1071
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->setDuration(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public onHeightChanged(Landroid/view/View;Lcom/yftech/avmservice/activity/WatermarkSettingsView$ActionType;I)V
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    .line 1046
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f070029

    if-ne p1, v1, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    .line 1050
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-virtual {p2}, Lcom/yftech/avmservice/activity/WatermarkSettingsView$ActionType;->ordinal()I

    move-result p1

    invoke-interface {p0, v0, p1, p3}, Lcom/yftech/avmservice/ICameraService;->setWatermarkHeight(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 539
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string p0, "MIPIDVRActivity"

    const-string v0, "onPause "

    const/4 v1, 0x0

    .line 540
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onResolutionChanged(Landroid/view/View;II)V
    .locals 1

    .line 1077
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontRecordSettingsView:Lcom/yftech/avmservice/activity/RecordSettingsView;

    if-ne p1, v0, :cond_0

    .line 1078
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->setResolution(Ljava/lang/String;II)V

    goto :goto_0

    .line 1080
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->setResolution(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 575
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "MIPIDVRActivity"

    const-string v1, "onResume "

    const/4 v2, 0x0

    .line 576
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 608
    iput-boolean v2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsQbOff:Z

    .line 609
    iput-boolean v2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mIsBackcarOn:Z

    return-void
.end method

.method protected onStart()V
    .locals 2

    .line 545
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const-string p0, "MIPIDVRActivity"

    const-string v0, "onStart"

    const/4 v1, 0x0

    .line 546
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStartXChanged(Landroid/view/View;Lcom/yftech/avmservice/activity/WatermarkSettingsView$ActionType;I)V
    .locals 2

    .line 1012
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    .line 1013
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f070029

    if-ne p1, v1, :cond_0

    .line 1014
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    .line 1017
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-virtual {p2}, Lcom/yftech/avmservice/activity/WatermarkSettingsView$ActionType;->ordinal()I

    move-result p1

    invoke-interface {p0, v0, p1, p3}, Lcom/yftech/avmservice/ICameraService;->setWatermarkStartX(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onStartYChanged(Landroid/view/View;Lcom/yftech/avmservice/activity/WatermarkSettingsView$ActionType;I)V
    .locals 2

    .line 1023
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    .line 1024
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f070029

    if-ne p1, v1, :cond_0

    .line 1025
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    .line 1028
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-virtual {p2}, Lcom/yftech/avmservice/activity/WatermarkSettingsView$ActionType;->ordinal()I

    move-result p1

    invoke-interface {p0, v0, p1, p3}, Lcom/yftech/avmservice/ICameraService;->setWatermarkStartY(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onStateChanged(Landroid/view/View;Lcom/yftech/avmservice/activity/WatermarkSettingsView$ActionType;Z)V
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    .line 1057
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f070029

    if-ne p1, v1, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    .line 1061
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-virtual {p2}, Lcom/yftech/avmservice/activity/WatermarkSettingsView$ActionType;->ordinal()I

    move-result p1

    invoke-interface {p0, v0, p1, p3}, Lcom/yftech/avmservice/ICameraService;->setWatermarkState(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 551
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->setTextureViewVisible(Ljava/lang/String;Z)V

    .line 552
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->setTextureViewVisible(Ljava/lang/String;Z)V

    .line 553
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    const-string p0, "MIPIDVRActivity"

    const-string v0, "onStop"

    .line 554
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onWidthChanged(Landroid/view/View;Lcom/yftech/avmservice/activity/WatermarkSettingsView$ActionType;I)V
    .locals 2

    .line 1034
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mFrontMIPICameraId:Ljava/lang/String;

    .line 1035
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f070029

    if-ne p1, v1, :cond_0

    .line 1036
    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mBackMIPICameraId:Ljava/lang/String;

    .line 1039
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->mCameraService:Lcom/yftech/avmservice/ICameraService;

    invoke-virtual {p2}, Lcom/yftech/avmservice/activity/WatermarkSettingsView$ActionType;->ordinal()I

    move-result p1

    invoke-interface {p0, v0, p1, p3}, Lcom/yftech/avmservice/ICameraService;->setWatermarkWidth(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
