.class Lcom/yftech/avmservice/windowutil/RadarWindow$1;
.super Landroid/database/ContentObserver;
.source "RadarWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/windowutil/RadarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/windowutil/RadarWindow;Landroid/os/Handler;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 80
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "reversing_radar_alarm_tone_state"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 81
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    invoke-virtual {p1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->getRadarToneState()I

    move-result p1

    .line 82
    invoke-static {}, Lcom/yftech/avmservice/windowutil/RadarWindow;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "radar tone Change,new state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p2, v0, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iget-object p2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    iget p2, p2, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarToneState:I

    if-eq p2, p1, :cond_1

    .line 84
    iget-object p2, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    iput p1, p2, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarToneState:I

    .line 85
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    iget p1, p1, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarToneState:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 87
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    iget-object p1, p1, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarAlarmView:Landroid/widget/ImageView;

    const p2, 0x7f0a001c

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 88
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updateRadarSound(Z)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    iget-object p1, p1, Lcom/yftech/avmservice/windowutil/RadarWindow;->mRadarAlarmView:Landroid/widget/ImageView;

    const p2, 0x7f0a001b

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    iget-object p0, p0, Lcom/yftech/avmservice/windowutil/RadarWindow$1;->this$0:Lcom/yftech/avmservice/windowutil/RadarWindow;

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/windowutil/RadarWindow;->updateRadarSound(Z)V

    :cond_1
    :goto_0
    return-void
.end method
