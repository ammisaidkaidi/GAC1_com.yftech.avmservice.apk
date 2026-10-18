.class Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;
.super Ljava/lang/Object;
.source "MIPIDVRActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/activity/MIPIDVRActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "MIPIDVRActivity"

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected - ComponentName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p2}, Lcom/yftech/avmservice/ICameraService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yftech/avmservice/ICameraService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$102(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Lcom/yftech/avmservice/ICameraService;)Lcom/yftech/avmservice/ICameraService;

    .line 152
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$202(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Z)Z

    .line 153
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$500(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 154
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$102(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Lcom/yftech/avmservice/ICameraService;)Lcom/yftech/avmservice/ICameraService;

    return-void

    .line 157
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$600(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)V

    .line 158
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$700(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 159
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    new-instance p2, Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object v2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;-><init>(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$302(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;)Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

    .line 160
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    new-instance p2, Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object v2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$900(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;-><init>(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$402(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;)Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

    .line 162
    :try_start_0
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$100(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/ICameraService;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$300(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/yftech/avmservice/ICameraService;->registerCameraServiceCallback(Ljava/lang/String;Lcom/yftech/avmservice/ICameraServiceCallback;)V

    .line 163
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$100(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/ICameraService;

    move-result-object p1

    iget-object p2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$900(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$400(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/yftech/avmservice/ICameraService;->registerCameraServiceCallback(Ljava/lang/String;Lcom/yftech/avmservice/ICameraServiceCallback;)V

    .line 164
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1000(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 165
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->configureTransform(Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1100(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 169
    iget-object p2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$100(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/ICameraService;

    move-result-object p2

    iget-object v0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {p2, v0, v2, v1}, Lcom/yftech/avmservice/ICameraService;->startPreview(Ljava/lang/String;Landroid/view/Surface;Z)V

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1200(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 173
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$900(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->configureTransform(Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1300(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/view/TextureView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 177
    iget-object p2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$100(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/ICameraService;

    move-result-object p2

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$900(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-interface {p2, p0, v0, v1}, Lcom/yftech/avmservice/ICameraService;->startPreview(Ljava/lang/String;Landroid/view/Surface;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "MIPIDVRActivity"

    const-string p2, "onServiceConnected "

    .line 181
    invoke-static {p1, p2, p0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    const-string v0, "MIPIDVRActivity"

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected + ComponentName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, v2}, Lcom/yftech/avmservice/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$102(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Lcom/yftech/avmservice/ICameraService;)Lcom/yftech/avmservice/ICameraService;

    .line 143
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1, v1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$202(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Z)Z

    .line 144
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$302(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;)Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

    .line 145
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$1;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$402(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;)Lcom/yftech/avmservice/activity/MIPIDVRActivity$CameraServiceCallback;

    return-void
.end method
