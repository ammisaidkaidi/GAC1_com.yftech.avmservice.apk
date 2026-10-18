.class public Lcom/yftech/avmservice/windowutil/RadarShowWindow;
.super Lcom/yftech/avmservice/windowutil/RadarWindow;
.source "RadarShowWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "RadarShowWindow"


# instance fields
.field private mBackView:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field mErrLayout:Landroid/widget/RelativeLayout;

.field mHandler:Landroid/os/Handler;

.field private mIvLine:Landroid/widget/ImageView;

.field private mOverLayView:Landroid/view/View;

.field mParams:Landroid/view/WindowManager$LayoutParams;

.field private mRearMirrorView:Landroid/widget/ImageView;

.field private mWindowManager:Landroid/view/WindowManager;

.field rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 59
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mContext:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mOverLayView:Landroid/view/View;

    .line 44
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 49
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mIvLine:Landroid/widget/ImageView;

    .line 50
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mBackView:Landroid/widget/Button;

    .line 52
    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 55
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mHandler:Landroid/os/Handler;

    .line 60
    sget-object v0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->TAG:Ljava/lang/String;

    const-string v1, "RadarShowWindow"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mContext:Landroid/content/Context;

    .line 62
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 63
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->initView()V

    return-void
.end method


# virtual methods
.method public dispatchHandleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 220
    iget v0, p1, Landroid/os/Message;->what:I

    .line 222
    invoke-super {p0, p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->dispatchHandleMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public hideWindow()V
    .locals 4

    .line 143
    sget-object v0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->TAG:Ljava/lang/String;

    const-string v1, "hideWindow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->closeRadarSound()V

    .line 146
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AudioFocus;->abondRvcFocus()V

    const/4 v0, 0x1

    .line 147
    invoke-virtual {p0, v0, v2}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->BroadcastWindow(IZ)V

    .line 149
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->restoreScreenBackLight()V

    .line 154
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 155
    invoke-super {p0}, Lcom/yftech/avmservice/windowutil/RadarWindow;->hideWindow()V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f090027

    const/4 v2, 0x0

    .line 68
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mOverLayView:Landroid/view/View;

    .line 70
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mOverLayView:Landroid/view/View;

    const v1, 0x7f070066

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mRearMirrorView:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mRearMirrorView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mRearMirrorView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 74
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mOverLayView:Landroid/view/View;

    const v2, 0x7f070065

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mRadarAlarmView:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mRadarAlarmView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    .line 80
    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    .line 81
    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getRadarType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mRadarAlarmView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 82
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mRadarAlarmView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    :goto_1
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mOverLayView:Landroid/view/View;

    const v1, 0x7f0700f4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mHintView:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mOverLayView:Landroid/view/View;

    const v1, 0x7f070063

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mBackView:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mBackView:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mOverLayView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->initRadarView(Landroid/view/View;)V

    .line 94
    new-instance v0, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    .line 96
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x9

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xa

    .line 98
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v1, 0xe

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 101
    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mOverLayView:Landroid/view/View;

    invoke-virtual {v0, p0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 227
    sget-object v0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->TAG:Ljava/lang/String;

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

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f070063

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->hideWindow()V

    .line 231
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AvmControl;->onCameraReqHide()V

    .line 232
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AvmControl;->userRequestHideAvm()V

    :goto_0
    return-void
.end method

.method public setUpWindowPara(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    const/16 p0, 0x804

    .line 180
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 183
    iget p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p0, p0, 0x328

    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 p0, -0x3

    .line 201
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 p0, -0x1

    .line 202
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 203
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 p0, 0x11

    .line 204
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object p1
.end method

.method public setUpWindowQuitPara(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    const/16 p0, 0x804

    .line 210
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p0, 0x2200

    .line 212
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    return-object p1
.end method

.method public setWindowVisibility(Z)Z
    .locals 4

    .line 162
    sget-object v0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->TAG:Ljava/lang/String;

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

    .line 163
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 165
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setScaleX(F)V

    .line 166
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setScaleY(F)V

    .line 168
    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->updataRadar(Z)V

    .line 169
    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->updateRadarSound(Z)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setScaleX(F)V

    .line 172
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;->setScaleY(F)V

    :cond_1
    :goto_0
    return v1
.end method

.method public showWindow()V
    .locals 4

    .line 119
    sget-object v0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->TAG:Ljava/lang/String;

    const-string v1, "showWindow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->isShow()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 121
    :cond_0
    invoke-super {p0}, Lcom/yftech/avmservice/windowutil/RadarWindow;->showWindow()V

    .line 122
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->setUpWindowPara(Landroid/view/WindowManager$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 125
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->updateWindow()V

    .line 127
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->getInstance()Lcom/yftech/avmservice/avm/AudioFocus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AudioFocus;->requestRvcFocus()I

    .line 128
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->openScreenBackLight()V

    const/4 v0, 0x1

    .line 129
    invoke-virtual {p0, v0, v0}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->BroadcastWindow(IZ)V

    .line 131
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->rootLayout:Lcom/yftech/avmservice/windowutil/CustomRelativeLayout;

    iget-object v3, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->setWindowVisibility(Z)Z

    .line 136
    sget-object p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->TAG:Ljava/lang/String;

    const-string v0, "add view"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public updateWindow()V
    .locals 4

    .line 107
    sget-object v0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->TAG:Ljava/lang/String;

    const-string v1, "updateWindow"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0}, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mAvmControl:Lcom/yftech/avmservice/avm/AvmControl;

    invoke-virtual {v0}, Lcom/yftech/avmservice/avm/AvmControl;->getAvmReqOnOff()I

    move-result v0

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1

    .line 110
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mBackView:Landroid/widget/Button;

    invoke-virtual {p0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarShowWindow;->mBackView:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
