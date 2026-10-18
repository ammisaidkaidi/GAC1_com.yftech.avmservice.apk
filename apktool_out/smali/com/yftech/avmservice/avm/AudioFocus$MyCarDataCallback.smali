.class public Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;
.super Lcom/yftech/car/data/CarDataManager$CarDataCallback;
.source "AudioFocus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/avm/AudioFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyCarDataCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/avm/AudioFocus;


# direct methods
.method public constructor <init>(Lcom/yftech/avmservice/avm/AudioFocus;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    invoke-direct {p0}, Lcom/yftech/car/data/CarDataManager$CarDataCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCarDataChanged(Lcom/yftech/car/data/CarData;)V
    .locals 4

    if-eqz p1, :cond_2

    const-string v0, "Keep_Mute_Warning_Enable"

    .line 95
    invoke-virtual {p1, v0}, Lcom/yftech/car/data/CarData;->getDataEntry(Ljava/lang/String;)Lcom/yftech/car/data/CarData$CarDataEntry;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "Keep_Mute_Warning_Enable"

    .line 96
    invoke-virtual {p1, v0}, Lcom/yftech/car/data/CarData;->getDataEntry(Ljava/lang/String;)Lcom/yftech/car/data/CarData$CarDataEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/yftech/car/data/CarData$CarDataEntry;->getValueInt()I

    move-result p1

    .line 97
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarDataChanged getKeepMuteWarning value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    invoke-static {v0}, Lcom/yftech/avmservice/avm/AudioFocus;->access$200(Lcom/yftech/avmservice/avm/AudioFocus;)I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 99
    iget-object v0, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    invoke-static {v0, p1}, Lcom/yftech/avmservice/avm/AudioFocus;->access$202(Lcom/yftech/avmservice/avm/AudioFocus;I)I

    .line 100
    invoke-static {}, Lcom/yftech/avmservice/avm/AudioFocus;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCarDataChanged bIsRequestCanActiveFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    iget-boolean v1, v1, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestCanActiveFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",bIsRequestRvcFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    iget-boolean v1, v1, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestRvcFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",bIsRequestRadarFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    iget-boolean v1, v1, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestRadarFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    iget-boolean p1, p1, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestCanActiveFocus:Z

    if-eqz p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AudioFocus;->abandonCanActiveFocus()V

    .line 105
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AudioFocus;->requestCanActiveFocus()I

    .line 107
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    iget-boolean p1, p1, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestRvcFocus:Z

    if-eqz p1, :cond_1

    .line 108
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AudioFocus;->abondRvcFocus()V

    .line 109
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AudioFocus;->requestRvcFocus()I

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    iget-boolean p1, p1, Lcom/yftech/avmservice/avm/AudioFocus;->bIsRequestRadarFocus:Z

    if-eqz p1, :cond_2

    .line 112
    iget-object p1, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    invoke-virtual {p1}, Lcom/yftech/avmservice/avm/AudioFocus;->abandonRadarFocus()V

    .line 113
    iget-object p0, p0, Lcom/yftech/avmservice/avm/AudioFocus$MyCarDataCallback;->this$0:Lcom/yftech/avmservice/avm/AudioFocus;

    invoke-virtual {p0}, Lcom/yftech/avmservice/avm/AudioFocus;->requestRadarFocus()I

    :cond_2
    return-void
.end method
