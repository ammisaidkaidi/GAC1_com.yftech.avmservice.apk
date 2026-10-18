.class public Lcom/yftech/avmservice/windowutil/RVCWindow;
.super Lcom/yftech/avmservice/windowutil/RadarWindow;
.source "RVCWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final SURFACE_VIEW_HIGHT:I = 0x2d0

.field public static final SURFACE_VIEW_WIDTH:I = 0x4d8

.field public static final SURFACE_VIEW_X:I = 0x2a8

.field public static final SURFACE_VIEW_Y:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RVCWindow"


# instance fields
.field hideOsAvmRunnable:Ljava/lang/Runnable;

.field private leftTrackLineIndex:I

.field leftTrackLineResID:[I

.field private mBackView:Landroid/widget/Button;

.field private mBtnAngel:Landroid/widget/TextView;

.field mCameraParams:Landroid/view/WindowManager$LayoutParams;

.field private mContext:Landroid/content/Context;

.field mErrLayout:Landroid/widget/RelativeLayout;

.field mHandler:Landroid/os/Handler;

.field private mIsCameraSystemErr:Z

.field private mIvLine:Landroid/widget/ImageView;

.field private mLeftLayoutView:Landroid/widget/RelativeLayout;

.field private mOverLayView:Landroid/view/View;

.field mParams:Landroid/view/WindowManager$LayoutParams;

.field private mRearMirrorView:Landroid/widget/ImageView;

.field private mRvcProcotol:Lcom/yftech/avmservice/common/ICameraControl;

.field private mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

.field mVehiclePlatform:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

.field private mWindowManager:Landroid/view/WindowManager;

.field rightTrackLineResID:[I

.field private rithtTrackLineIndex:I

.field rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

.field showSurefaceViewRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 128
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mContext:Landroid/content/Context;

    .line 52
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

    .line 53
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mOverLayView:Landroid/view/View;

    .line 55
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 64
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mIvLine:Landroid/widget/ImageView;

    .line 65
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mBackView:Landroid/widget/Button;

    .line 66
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mBtnAngel:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 69
    iput-boolean v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mIsCameraSystemErr:Z

    .line 72
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x7b

    .line 76
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->leftTrackLineResID:[I

    const/16 v0, 0x7f

    .line 91
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rightTrackLineResID:[I

    .line 108
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mHandler:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/yftech/avmservice/windowutil/RVCWindow$1;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/windowutil/RVCWindow$1;-><init>(Lcom/yftech/avmservice/windowutil/RVCWindow;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->showSurefaceViewRunnable:Ljava/lang/Runnable;

    .line 118
    new-instance v0, Lcom/yftech/avmservice/windowutil/RVCWindow$2;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/windowutil/RVCWindow$2;-><init>(Lcom/yftech/avmservice/windowutil/RVCWindow;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->hideOsAvmRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    .line 398
    iput v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->leftTrackLineIndex:I

    .line 399
    iput v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rithtTrackLineIndex:I

    .line 129
    sget-object v0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    const-string v1, "RVCWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mContext:Landroid/content/Context;

    .line 131
    new-instance v0, Lcom/yftech/avmservice/windowutil/CameraPreview;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-direct {v0, p1, v1}, Lcom/yftech/avmservice/windowutil/CameraPreview;-><init>(Landroid/content/Context;Lcom/yftech/avmservice/avm/AvmControl;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

    .line 133
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->getCameraControl()Lcom/yftech/avmservice/common/ICameraControl;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mRvcProcotol:Lcom/yftech/avmservice/common/ICameraControl;

    .line 134
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 135
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->setCameraWindowPara()V

    .line 136
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->initView()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f060058
        0x7f060060
        0x7f060061
        0x7f060062
        0x7f060063
        0x7f060064
        0x7f060065
        0x7f060066
        0x7f060067
        0x7f060068
        0x7f060069
        0x7f06006a
        0x7f06006b
        0x7f06006c
        0x7f06006d
        0x7f06006e
        0x7f06006f
        0x7f060070
        0x7f060071
        0x7f060072
        0x7f060073
        0x7f060074
        0x7f060075
        0x7f060076
        0x7f060077
        0x7f060078
        0x7f060079
        0x7f06007a
        0x7f06007b
        0x7f06007c
        0x7f06007d
        0x7f06007e
        0x7f06007f
        0x7f060080
        0x7f060081
        0x7f060082
        0x7f060083
        0x7f060084
        0x7f060085
        0x7f060086
        0x7f060087
        0x7f060088
        0x7f060089
        0x7f06008a
        0x7f06008b
        0x7f06008c
        0x7f06008d
        0x7f06008e
        0x7f06008f
        0x7f060090
        0x7f060091
        0x7f060092
        0x7f060093
        0x7f060094
        0x7f060095
        0x7f060096
        0x7f060097
        0x7f060098
        0x7f060099
        0x7f06009a
        0x7f06009b
        0x7f06009c
        0x7f06009d
        0x7f06009e
        0x7f06009f
        0x7f0600a0
        0x7f0600a1
        0x7f0600a2
        0x7f0600a3
        0x7f0600a4
        0x7f0600a5
        0x7f0600a6
        0x7f0600a7
        0x7f0600a8
        0x7f0600a9
        0x7f0600aa
        0x7f0600ab
        0x7f0600ac
        0x7f0600ad
        0x7f0600ae
        0x7f0600af
        0x7f0600b0
        0x7f0600b1
        0x7f0600b2
        0x7f0600b3
        0x7f0600b4
        0x7f0600b5
        0x7f0600b6
        0x7f0600b7
        0x7f0600b8
        0x7f0600b9
        0x7f0600ba
        0x7f0600bb
        0x7f0600bc
        0x7f0600bd
        0x7f0600be
        0x7f0600bf
        0x7f0600c0
        0x7f0600c1
        0x7f0600c2
        0x7f0600c3
        0x7f0600c4
        0x7f0600c5
        0x7f0600c6
        0x7f0600c7
        0x7f0600c8
        0x7f0600c9
        0x7f0600ca
        0x7f0600cb
        0x7f0600cc
        0x7f0600cd
        0x7f0600ce
        0x7f0600cf
        0x7f0600d0
        0x7f0600d1
        0x7f0600d2
        0x7f0600d3
        0x7f0600d4
        0x7f0600d5
        0x7f0600d6
        0x7f0600d7
        0x7f0600d8
        0x7f0600d9
    .end array-data

    :array_1
    .array-data 4
        0x7f060058
        0x7f0600f7
        0x7f0600f8
        0x7f0600f9
        0x7f0600fa
        0x7f0600fb
        0x7f0600fc
        0x7f0600fd
        0x7f0600fe
        0x7f0600ff
        0x7f060100
        0x7f060101
        0x7f060102
        0x7f060103
        0x7f060104
        0x7f060105
        0x7f060106
        0x7f060107
        0x7f060108
        0x7f060109
        0x7f06010a
        0x7f06010b
        0x7f06010c
        0x7f06010d
        0x7f06010e
        0x7f06010f
        0x7f060110
        0x7f060111
        0x7f060112
        0x7f060113
        0x7f060114
        0x7f060115
        0x7f060116
        0x7f060117
        0x7f060118
        0x7f060119
        0x7f06011a
        0x7f06011b
        0x7f06011c
        0x7f06011d
        0x7f06011e
        0x7f06011f
        0x7f060120
        0x7f060121
        0x7f060122
        0x7f060123
        0x7f060124
        0x7f060125
        0x7f060126
        0x7f060127
        0x7f060128
        0x7f060129
        0x7f06012a
        0x7f06012b
        0x7f06012c
        0x7f06012d
        0x7f06012e
        0x7f06012f
        0x7f060130
        0x7f060131
        0x7f060132
        0x7f060133
        0x7f060134
        0x7f060135
        0x7f060136
        0x7f060137
        0x7f060138
        0x7f060139
        0x7f06013a
        0x7f06013b
        0x7f06013c
        0x7f06013d
        0x7f06013e
        0x7f06013f
        0x7f060140
        0x7f060141
        0x7f060142
        0x7f060143
        0x7f060144
        0x7f060145
        0x7f060146
        0x7f060147
        0x7f060148
        0x7f060149
        0x7f06014a
        0x7f06014b
        0x7f06014c
        0x7f06014d
        0x7f06014e
        0x7f06014f
        0x7f060150
        0x7f060151
        0x7f060152
        0x7f060153
        0x7f060154
        0x7f060155
        0x7f060156
        0x7f060157
        0x7f060158
        0x7f060159
        0x7f06015a
        0x7f06015b
        0x7f06015c
        0x7f06015d
        0x7f06015e
        0x7f06015f
        0x7f060160
        0x7f060161
        0x7f060162
        0x7f060163
        0x7f060164
        0x7f060165
        0x7f060166
        0x7f060167
        0x7f060168
        0x7f060169
        0x7f06016a
        0x7f06016b
        0x7f06016c
        0x7f06016d
        0x7f06016e
        0x7f06016f
        0x7f060170
        0x7f060171
        0x7f060172
        0x7f060173
        0x7f060174
    .end array-data
.end method

.method private A79TrajectoryLineHandler(Z)V
    .locals 6

    .line 408
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mRvcProcotol:Lcom/yftech/avmservice/common/ICameraControl;

    invoke-interface {v0}, Lcom/yftech/avmservice/common/ICameraControl;->getSteerWheelAngle()F

    move-result v0

    .line 409
    sget-object v1, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "angel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    .line 413
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    if-nez v1, :cond_3

    .line 415
    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mBtnAngel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "left\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-int v0, v0

    .line 416
    div-int/lit8 v0, v0, 0x4

    .line 417
    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->leftTrackLineResID:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->leftTrackLineResID:[I

    array-length v0, v0

    sub-int/2addr v0, v2

    .line 418
    :cond_1
    iget v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->leftTrackLineIndex:I

    if-ne v1, v0, :cond_2

    if-eqz p1, :cond_6

    .line 419
    :cond_2
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mIvLine:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->leftTrackLineResID:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 420
    iput v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->leftTrackLineIndex:I

    .line 421
    sget-object p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "leftTrackLineIndex:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_6

    .line 424
    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mBtnAngel:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "right\uff1a "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    float-to-int v0, v0

    .line 425
    div-int/lit8 v0, v0, 0x4

    .line 426
    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rightTrackLineResID:[I

    array-length v1, v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rightTrackLineResID:[I

    array-length v0, v0

    sub-int/2addr v0, v2

    .line 427
    :cond_4
    iget v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rithtTrackLineIndex:I

    if-ne v1, v0, :cond_5

    if-eqz p1, :cond_6

    .line 428
    :cond_5
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mIvLine:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rightTrackLineResID:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 429
    iput v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rithtTrackLineIndex:I

    .line 430
    sget-object p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rithtTrackLineIndex:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yftech/avmservice/windowutil/RVCWindow;)Lcom/yftech/avmservice/windowutil/CameraPreview;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

    return-object p0
.end method

.method private isRtl()Z
    .locals 5

    .line 231
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    .line 232
    invoke-static {p0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p0

    .line 233
    sget-object v1, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cur layout direction:,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "rtl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-ne p0, v3, :cond_0

    move v0, v3

    :cond_0
    return v0
.end method

.method private trajectoryLineHandler(Z)V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mIvLine:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/windowutil/RVCWindow;->A79TrajectoryLineHandler(Z)V

    return-void
.end method


# virtual methods
.method public dispatchHandleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 438
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x104

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 440
    invoke-direct {p0, v0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->trajectoryLineHandler(Z)V

    .line 443
    :goto_0
    invoke-super {p0, p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->dispatchHandleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public getSurface()Landroid/view/SurfaceView;
    .locals 0

    .line 396
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

    return-object p0
.end method

.method public hideWindow()V
    .locals 4

    .line 306
    sget-object v0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    const-string v1, "hideWindow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x1f4

    .line 309
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 310
    sget-object v0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    const-string v1, "hideWindow delay 500ms"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 314
    :goto_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->closeRadarSound()V

    .line 315
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AudioFocus;->abondRvcFocus()V

    const/4 v0, 0x1

    .line 316
    invoke-virtual {p0, v0, v2}, Lcom/yftech/avmservice/windowutil/RVCWindow;->BroadcastWindow(IZ)V

    .line 318
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->restoreScreenBackLight()V

    .line 323
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 324
    invoke-super {p0}, Lcom/yftech/avmservice/windowutil/RadarWindow;->hideWindow()V

    return-void
.end method

.method public initView()V
    .locals 7

    .line 140
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f090029

    const/4 v2, 0x0

    .line 141
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mOverLayView:Landroid/view/View;

    .line 142
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mOverLayView:Landroid/view/View;

    const v1, 0x7f07006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mLeftLayoutView:Landroid/widget/RelativeLayout;

    .line 144
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mOverLayView:Landroid/view/View;

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mRearMirrorView:Landroid/widget/ImageView;

    .line 145
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mRearMirrorView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mOverLayView:Landroid/view/View;

    const v1, 0x7f070065

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mRadarAlarmView:Landroid/widget/ImageView;

    .line 148
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mRadarAlarmView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mOverLayView:Landroid/view/View;

    const v1, 0x7f0700f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mBtnAngel:Landroid/widget/TextView;

    .line 154
    iget v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mRadarToneState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 155
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mRadarAlarmView:Landroid/widget/ImageView;

    const v1, 0x7f0a001c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mRadarAlarmView:Landroid/widget/ImageView;

    const v1, 0x7f0a001b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 161
    :goto_0
    invoke-static {}, Lcom/yftech/vehicle/sdk/CarConfig;->getVehiclePlatform()Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mVehiclePlatform:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    .line 162
    sget-object v0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVehiclePlatform:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mVehiclePlatform:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mVehiclePlatform:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    sget-object v1, Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;->A88:Lcom/yftech/vehicle/internal/adapter/ICarConfig$VehiclePlatform;

    const/16 v3, 0x8

    if-ne v0, v1, :cond_1

    .line 166
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mRearMirrorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mRearMirrorView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    :goto_1
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v1, 0x3

    const/4 v4, 0x4

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    .line 174
    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    .line 175
    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    goto :goto_2

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mRadarAlarmView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 176
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mRadarAlarmView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 183
    :goto_3
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mOverLayView:Landroid/view/View;

    const v1, 0x7f070069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mErrLayout:Landroid/widget/RelativeLayout;

    .line 184
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mErrLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mOverLayView:Landroid/view/View;

    const v1, 0x7f0700f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mHintView:Landroid/widget/TextView;

    .line 189
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mOverLayView:Landroid/view/View;

    const v1, 0x7f0700f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mIvLine:Landroid/widget/ImageView;

    .line 190
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mOverLayView:Landroid/view/View;

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mBackView:Landroid/widget/Button;

    .line 191
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mBackView:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mOverLayView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->initRadarView(Landroid/view/View;)V

    .line 204
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mIvLine:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 209
    new-instance v0, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    .line 210
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x14

    .line 211
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xa

    .line 212
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v4, 0xe

    .line 214
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    iget-object v4, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-virtual {v4, v0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0x4d8

    const/16 v6, 0x2d0

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 218
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v0, 0x2a8

    .line 220
    invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 222
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 224
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

    invoke-virtual {v0, v4}, Lcom/yftech/avmservice/windowutil/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 225
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mSurfaceView:Lcom/yftech/avmservice/windowutil/CameraPreview;

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->addView(Landroid/view/View;)V

    .line 226
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mOverLayView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->addView(Landroid/view/View;)V

    .line 227
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-direct {p0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->isRtl()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setLayoutDirection(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 448
    sget-object v0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick view id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 453
    :pswitch_1
    iget p1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mRadarToneState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 454
    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/windowutil/RVCWindow;->setRadarTone(I)Z

    goto :goto_0

    .line 456
    :cond_0
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->setRadarTone(I)Z

    goto :goto_0

    .line 460
    :pswitch_2
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->hideWindow()V

    .line 461
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqHide()V

    .line 462
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->userRequestHideAvm()V

    :goto_0
    :pswitch_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f070063
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setCameraWindowPara()V
    .locals 2

    .line 376
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mCameraParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mCameraParams:Landroid/view/WindowManager$LayoutParams;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mCameraParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x806

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 379
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mCameraParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 380
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mCameraParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x4d8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 381
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mCameraParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x2d0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 382
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mCameraParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x2a8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 383
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mCameraParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    return-void
.end method

.method public setUpWindowPara(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    const/16 p0, 0x804

    .line 348
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 350
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p0, p0, 0x328

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p0, -0x3

    .line 368
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 p0, -0x1

    .line 369
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 370
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p0, 0x11

    .line 371
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object p1
.end method

.method public setUpWindowQuitPara(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    const/16 p0, 0x804

    .line 388
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p0, 0x2200

    .line 390
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    return-object p1
.end method

.method public setWindowVisibility(Z)Z
    .locals 4

    .line 331
    sget-object v0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWindowVisibility"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setScaleX(F)V

    .line 335
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-virtual {v0, v3}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setScaleY(F)V

    .line 336
    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/windowutil/RVCWindow;->updataRadar(Z)V

    .line 337
    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/windowutil/RVCWindow;->updateRadarSound(Z)V

    goto :goto_0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setScaleX(F)V

    .line 340
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-virtual {v0, v2}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setScaleY(F)V

    .line 342
    :goto_0
    invoke-super {p0, p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->setWindowVisibility(Z)Z

    :cond_1
    return v1
.end method

.method public showWindow()V
    .locals 4

    .line 280
    sget-object v0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    const-string v1, "showWindow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 282
    :cond_0
    invoke-super {p0}, Lcom/yftech/avmservice/windowutil/RadarWindow;->showWindow()V

    .line 283
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->setUpWindowPara(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 286
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->updateWindow()V

    .line 288
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->isIOBackCar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AudioFocus;->requestRvcFocus()I

    .line 291
    :cond_1
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->openScreenBackLight()V

    const/4 v0, 0x1

    .line 292
    invoke-virtual {p0, v0, v0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->BroadcastWindow(IZ)V

    .line 294
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    iget-object v3, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/windowutil/RVCWindow;->setWindowVisibility(Z)Z

    .line 299
    sget-object p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    const-string v0, "add view"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateWindow()V
    .locals 6

    .line 240
    sget-object v0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    const-string v1, "updateWindow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-direct {p0}, Lcom/yftech/avmservice/windowutil/RVCWindow;->isRtl()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setLayoutDirection(I)V

    .line 244
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->isAvmSignalErr()Z

    move-result v0

    const/4 v1, 0x4

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 245
    sget-object v0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    const-string v4, "updateWindow signal err"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mErrLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 249
    iput-boolean v3, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mIsCameraSystemErr:Z

    goto :goto_0

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->isShowLoading()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 251
    sget-object v0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    const-string v4, "updateWindow signal loading"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 253
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mErrLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 254
    iput-boolean v3, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mIsCameraSystemErr:Z

    goto :goto_0

    .line 256
    :cond_2
    sget-object v0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    const-string v4, "updateWindow normal"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mErrLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    iput-boolean v2, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mIsCameraSystemErr:Z

    .line 262
    :goto_0
    sget-object v0, Lcom/yftech/avmservice/windowutil/RVCWindow;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsCameraSystemErr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mIsCameraSystemErr:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    iget-boolean v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mIsCameraSystemErr:Z

    if-eqz v0, :cond_3

    goto :goto_1

    .line 266
    :cond_3
    invoke-direct {p0, v3}, Lcom/yftech/avmservice/windowutil/RVCWindow;->trajectoryLineHandler(Z)V

    .line 268
    :goto_1
    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/windowutil/RVCWindow;->updateRadarSound(Z)V

    .line 269
    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/windowutil/RVCWindow;->updataRadar(Z)V

    .line 270
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    const/4 v3, 0x2

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_4

    .line 271
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mBackView:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 273
    :cond_4
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RVCWindow;->mBackView:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2
    return-void
.end method
