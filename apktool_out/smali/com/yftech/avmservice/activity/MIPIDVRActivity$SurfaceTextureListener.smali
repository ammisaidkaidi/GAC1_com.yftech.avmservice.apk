.class Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;
.super Ljava/lang/Object;
.source "MIPIDVRActivity.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/activity/MIPIDVRActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SurfaceTextureListener"
.end annotation


# instance fields
.field private mCameraId:Ljava/lang/String;

.field private mIsFrontCamera:Z

.field final synthetic this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;


# direct methods
.method public constructor <init>(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;)V
    .locals 0

    .line 1087
    iput-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1088
    iput-object p2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->mCameraId:Ljava/lang/String;

    .line 1089
    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->mIsFrontCamera:Z

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    const-string p1, "MIPIDVRActivity"

    const-string v0, "SurfaceTextureListener - onSurfaceTextureAvailable"

    const/4 v1, 0x0

    .line 1094
    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1097
    iget-boolean p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->mIsFrontCamera:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1098
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1, p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$2102(Lcom/yftech/avmservice/activity/MIPIDVRActivity;I)I

    .line 1099
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1, p3}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$2202(Lcom/yftech/avmservice/activity/MIPIDVRActivity;I)I

    .line 1100
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1002(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Z)Z

    .line 1101
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$2300(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/Resolution;

    .line 1102
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1100(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/view/TextureView;

    move-result-object p1

    .line 1103
    iget-object p2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p3, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->configureTransform(Ljava/lang/String;)V

    goto :goto_0

    .line 1105
    :cond_0
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1, p2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$2402(Lcom/yftech/avmservice/activity/MIPIDVRActivity;I)I

    .line 1106
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1, p3}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$2502(Lcom/yftech/avmservice/activity/MIPIDVRActivity;I)I

    .line 1107
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1202(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Z)Z

    .line 1108
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$2600(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/Resolution;

    .line 1109
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1300(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/view/TextureView;

    move-result-object p1

    .line 1110
    iget-object p2, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p3, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->mCameraId:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->configureTransform(Ljava/lang/String;)V

    .line 1112
    :goto_0
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    .line 1114
    new-instance p2, Landroid/view/Surface;

    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 1116
    :try_start_0
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$100(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/ICameraService;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1117
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$100(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Lcom/yftech/avmservice/ICameraService;

    move-result-object p1

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->mCameraId:Ljava/lang/String;

    invoke-interface {p1, p0, p2, v1}, Lcom/yftech/avmservice/ICameraService;->startPreview(Ljava/lang/String;Landroid/view/Surface;Z)V

    goto :goto_1

    :cond_1
    const-string p0, "MIPIDVRActivity"

    const-string p1, "snapshotBtnClicked - mCameraService is null!"

    .line 1119
    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "MIPIDVRActivity"

    const-string p2, "onSurfaceTextureAvailable "

    .line 1122
    invoke-static {p1, p2, p0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    const-string p1, "MIPIDVRActivity"

    .line 1133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureDestroyed, camera "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1134
    iget-boolean p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->mIsFrontCamera:Z

    if-eqz p1, :cond_0

    .line 1135
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0, v1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1002(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Z)Z

    goto :goto_0

    .line 1137
    :cond_0
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0, v1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1202(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Z)Z

    :goto_0
    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    const-string p1, "MIPIDVRActivity"

    .line 1128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSurfaceTextureSizeChanged, camera + "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$SurfaceTextureListener;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", width = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", height = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-static {p1, p0, p2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method
