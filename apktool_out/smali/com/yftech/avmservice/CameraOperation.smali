.class public Lcom/yftech/avmservice/CameraOperation;
.super Ljava/lang/Object;
.source "CameraOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/avmservice/CameraOperation$MoveUrgentFileTask;,
        Lcom/yftech/avmservice/CameraOperation$RecycleTask;,
        Lcom/yftech/avmservice/CameraOperation$CameraOperationCallback;
    }
.end annotation


# static fields
.field private static final ATC_BRIGHTNESS_KEY_NAME:Ljava/lang/String; = "com.atc.color_process.brightness"

.field private static final ATC_CONTRAST_KEY_NAME:Ljava/lang/String; = "com.atc.color_process.contrast"

.field private static final ATC_HUE_KEY_NAME:Ljava/lang/String; = "com.atc.color_process.hue"

.field private static final ATC_MIRROR_KEY_NAME:Ljava/lang/String; = "com.atc.mirror"

.field private static final ATC_SATURATION_KEY_NAME:Ljava/lang/String; = "com.atc.color_process.saturation"

.field private static final ATC_SOURCEINFO_KEY_NAME:Ljava/lang/String; = "com.atc.sourceinfo"

.field private static final ATC_WATERMARK_PREVIEW_KEY_NAME:Ljava/lang/String; = "com.atc.watermark.info.preview"

.field private static final ATC_WATERMARK_RECORD_KEY_NAME:Ljava/lang/String; = "com.atc.watermark.info.record"

.field private static final ATC_WATERMARK_SNAPSHOT_KEY_NAME:Ljava/lang/String; = "com.atc.watermark.info.snapshot"

.field private static final AUDIO_CHANNEL_NUM:I = 0x2

.field private static final AUDIO_ENCODE_BIT_RATE:I = 0x17700

.field private static final AUDIO_SAMPLE_RATE:I = 0xac44

.field private static final BRIGHTNESS_ADDR:I = 0x10018

.field private static final CONTRAST_ADDR:I = 0x1001a

.field private static final DEFAULT_HEIGHT:I = 0x2d0

.field private static final DEFAULT_NORMAL_RECORD_TIME:J = 0x493e0L

.field private static final DEFAULT_URGENT_RECORD_TIME:J = 0x7530L

.field private static final DEFAULT_WATERMARK_START_H:I = 0x32

.field private static final DEFAULT_WATERMARK_START_W:I = 0x12c

.field private static final DEFAULT_WATERMARK_START_X:I = 0x14

.field private static final DEFAULT_WATERMARK_START_Y:I = 0x14

.field private static final DEFAULT_WIDTH:I = 0x500

.field private static final FRAMES_MAYBE_WRONG:I = 0x1e

.field private static final HUE_ADDR:I = 0x10017

.field private static final H_CUT_ADDR:I = 0x10013

.field public static final IMAGE_TPYE:Ljava/lang/String; = "image"

.field private static final MEDIA_RECORDER_INFO_RECORDING_SIZE:I = 0x37f

.field private static final MEDIA_RECORDER_INFO_WRITE_SLOW:I = 0x383

.field private static final MEDIA_RECORDER_INFO_WRITE_TOO_SLOW:I = 0x384

.field private static final MIR_ADDR:I = 0x1000a

.field public static final NORMAL_TYPE:Ljava/lang/String; = "normal"

.field private static final SATURATION_ADDR:I = 0x10019

.field public static final URGENT_TYPE:Ljava/lang/String; = "urgent"

.field private static final VIDEO_ENCODE_BIT_RATE:I = 0x500000

.field private static final VIDEO_FRAME_RATE:I = 0x1e

.field private static final W_CUT_ADDR:I = 0x10012

.field private static final X_CUT_ADDR:I = 0x10010

.field private static final Y_CUT_ADDR:I = 0x10011


# instance fields
.field private TAG:Ljava/lang/String;

.field private mActionType:I

.field private mBrightnessKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mBrightnessValue:I

.field private mCamRect:Landroid/graphics/Rect;

.field private mCameraDevice:Landroid/hardware/camera2/CameraDevice;

.field private mCameraFPS:I

.field private final mCameraId:Ljava/lang/String;

.field private mCameraOperationCallback:Lcom/yftech/avmservice/CameraOperation$CameraOperationCallback;

.field private mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private mContext:Landroid/content/Context;

.field private mContrastKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mContrastValue:I

.field private mDelayedUrgentRecordTask:Ljava/lang/Runnable;

.field private mFramesShouldSkipped:I

.field private mHaveSignal:Z

.field private mHeightValues:[I

.field private mHueKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mHueValue:I

.field private mImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

.field private mImageReader:Landroid/media/ImageReader;

.field private final mIsBackcarCamera:Z

.field private mIsChangingResolution:Z

.field private mIsMicOn:Z

.field private volatile mIsNormalPreviewRequested:Z

.field private volatile mIsPreviewing:Z

.field private volatile mIsRecording:Z

.field private volatile mIsUrgentRecording:Z

.field private mMirrorKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mMirrorVal:I

.field private mNextPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

.field private mNoNeedStartRecord:Z

.field private mNormalRecordStartTime:J

.field private mNormalRecordTask:Ljava/lang/Runnable;

.field private mPendingPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

.field private volatile mPreviewRequested:Z

.field private mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

.field private volatile mRecordRequested:Z

.field private mRecordThreadHandler:Landroid/os/Handler;

.field private mRecorder:Landroid/media/MediaRecorder;

.field private mRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

.field private mRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

.field private mRecorderSurface:Landroid/view/Surface;

.field private mRecordingFile:Ljava/io/File;

.field private mRespondRVCFirstFrame:Z

.field private mSaturationKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mSaturationValue:I

.field private mSourceInfoKey:Landroid/hardware/camera2/CaptureResult$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mStartXValues:[I

.field private mStartYValues:[I

.field private mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private mStorageCheckerThread:Ljava/util/Timer;

.field private mStorageUtil:Lcom/yftech/avmservice/util/StorageUtil;

.field private mSupportedResolutions:[Landroid/util/Size;

.field private mSurfaceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateBrightnessFromMetazone:Z

.field private mUpdateContrastFromMetazone:Z

.field private mUpdateHueFromMetazone:Z

.field private mUpdateSaturationFromMetazone:Z

.field private mUrgentRecordTask:Ljava/lang/Runnable;

.field private mUrgentRecordTriggeredTime:J

.field private mVideoDuration:J

.field private mVideoSize:Landroid/util/Size;

.field private mWatermarkPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mWatermarkRecordKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mWatermarkSnapshotKey:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field

.field private mWatermarkSwitchs:[Z

.field private mWidthValues:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CameraOperation"

    .line 48
    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mSurfaceList:Ljava/util/List;

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordThreadHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateHueFromMetazone:Z

    .line 89
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateBrightnessFromMetazone:Z

    .line 90
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateSaturationFromMetazone:Z

    .line 91
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateContrastFromMetazone:Z

    const/16 v2, 0x1e

    .line 100
    iput v2, p0, Lcom/yftech/avmservice/CameraOperation;->mFramesShouldSkipped:I

    .line 103
    new-instance v2, Landroid/util/Size;

    const/16 v3, 0x500

    const/16 v4, 0x2d0

    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    .line 104
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mCamRect:Landroid/graphics/Rect;

    .line 106
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsMicOn:Z

    const/16 v0, 0x80

    .line 107
    iput v0, p0, Lcom/yftech/avmservice/CameraOperation;->mHueValue:I

    .line 108
    iput v0, p0, Lcom/yftech/avmservice/CameraOperation;->mBrightnessValue:I

    .line 109
    iput v0, p0, Lcom/yftech/avmservice/CameraOperation;->mSaturationValue:I

    .line 110
    iput v0, p0, Lcom/yftech/avmservice/CameraOperation;->mContrastValue:I

    .line 112
    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSwitchs:[Z

    .line 113
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mStartXValues:[I

    .line 114
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mStartYValues:[I

    .line 115
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mWidthValues:[I

    .line 116
    new-array v0, v1, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mHeightValues:[I

    const-wide/32 v0, 0x493e0

    .line 117
    iput-wide v0, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoDuration:J

    .line 180
    new-instance v0, Lcom/yftech/avmservice/CameraOperation$1;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraOperation$1;-><init>(Lcom/yftech/avmservice/CameraOperation;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    .line 501
    new-instance v0, Lcom/yftech/avmservice/CameraOperation$3;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraOperation$3;-><init>(Lcom/yftech/avmservice/CameraOperation;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    .line 1324
    new-instance v0, Lcom/yftech/avmservice/CameraOperation$5;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraOperation$5;-><init>(Lcom/yftech/avmservice/CameraOperation;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mNormalRecordTask:Ljava/lang/Runnable;

    .line 1335
    new-instance v0, Lcom/yftech/avmservice/CameraOperation$6;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraOperation$6;-><init>(Lcom/yftech/avmservice/CameraOperation;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mUrgentRecordTask:Ljava/lang/Runnable;

    .line 1348
    new-instance v0, Lcom/yftech/avmservice/CameraOperation$7;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraOperation$7;-><init>(Lcom/yftech/avmservice/CameraOperation;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mDelayedUrgentRecordTask:Ljava/lang/Runnable;

    .line 1414
    new-instance v0, Lcom/yftech/avmservice/CameraOperation$8;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraOperation$8;-><init>(Lcom/yftech/avmservice/CameraOperation;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    .line 1452
    new-instance v0, Lcom/yftech/avmservice/CameraOperation$9;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraOperation$9;-><init>(Lcom/yftech/avmservice/CameraOperation;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    .line 1470
    new-instance v0, Lcom/yftech/avmservice/CameraOperation$10;

    invoke-direct {v0, p0}, Lcom/yftech/avmservice/CameraOperation$10;-><init>(Lcom/yftech/avmservice/CameraOperation;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    .line 167
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mContext:Landroid/content/Context;

    .line 168
    new-instance v0, Lcom/yftech/avmservice/util/StorageUtil;

    invoke-direct {v0, p1, p2}, Lcom/yftech/avmservice/util/StorageUtil;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mStorageUtil:Lcom/yftech/avmservice/util/StorageUtil;

    .line 169
    iput-object p2, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 170
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsBackcarCamera:Z

    .line 171
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->getAtcCaptureKeys()V

    .line 172
    new-instance p1, Landroid/media/MediaRecorder;

    invoke-direct {p1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    .line 173
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 4
        0x14
        0x14
        0x14
    .end array-data

    :array_2
    .array-data 4
        0x14
        0x14
        0x14
    .end array-data

    :array_3
    .array-data 4
        0x12c
        0x12c
        0x12c
    .end array-data

    :array_4
    .array-data 4
        0x32
        0x32
        0x32
    .end array-data
.end method

.method static synthetic access$000(Lcom/yftech/avmservice/CameraOperation;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yftech/avmservice/CameraOperation;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/yftech/avmservice/CameraOperation;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic access$102(Lcom/yftech/avmservice/CameraOperation;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/yftech/avmservice/CameraOperation;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->updatePreviewAndRecord()V

    return-void
.end method

.method static synthetic access$1202(Lcom/yftech/avmservice/CameraOperation;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsChangingResolution:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/yftech/avmservice/CameraOperation;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraOperation;->mRespondRVCFirstFrame:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/yftech/avmservice/CameraOperation;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mRespondRVCFirstFrame:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/yftech/avmservice/CameraOperation;)Landroid/hardware/camera2/CaptureResult$Key;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mSourceInfoKey:Landroid/hardware/camera2/CaptureResult$Key;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/yftech/avmservice/CameraOperation;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/yftech/avmservice/CameraOperation;->mFramesShouldSkipped:I

    return p0
.end method

.method static synthetic access$1502(Lcom/yftech/avmservice/CameraOperation;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/yftech/avmservice/CameraOperation;->mFramesShouldSkipped:I

    return p1
.end method

.method static synthetic access$1510(Lcom/yftech/avmservice/CameraOperation;)I
    .locals 2

    .line 47
    iget v0, p0, Lcom/yftech/avmservice/CameraOperation;->mFramesShouldSkipped:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/yftech/avmservice/CameraOperation;->mFramesShouldSkipped:I

    return v0
.end method

.method static synthetic access$1600(Lcom/yftech/avmservice/CameraOperation;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraOperation;->mHaveSignal:Z

    return p0
.end method

.method static synthetic access$1602(Lcom/yftech/avmservice/CameraOperation;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mHaveSignal:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/yftech/avmservice/CameraOperation;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->stopRecycleTask()V

    return-void
.end method

.method static synthetic access$1800(Lcom/yftech/avmservice/CameraOperation;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    return p0
.end method

.method static synthetic access$1900(Lcom/yftech/avmservice/CameraOperation;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->goOnRecording()V

    return-void
.end method

.method static synthetic access$2000(Lcom/yftech/avmservice/CameraOperation;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/yftech/avmservice/CameraOperation;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    return p1
.end method

.method static synthetic access$202(Lcom/yftech/avmservice/CameraOperation;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsPreviewing:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/yftech/avmservice/CameraOperation;)J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/yftech/avmservice/CameraOperation;->mUrgentRecordTriggeredTime:J

    return-wide v0
.end method

.method static synthetic access$2200(Lcom/yftech/avmservice/CameraOperation;)Lcom/yftech/avmservice/util/StorageUtil;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mStorageUtil:Lcom/yftech/avmservice/util/StorageUtil;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/yftech/avmservice/CameraOperation;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/yftech/avmservice/CameraOperation;)Landroid/media/MediaRecorder;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method static synthetic access$2402(Lcom/yftech/avmservice/CameraOperation;Landroid/media/MediaRecorder;)Landroid/media/MediaRecorder;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/yftech/avmservice/CameraOperation;Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraOperation;->getOutputFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/yftech/avmservice/CameraOperation;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    return p0
.end method

.method static synthetic access$302(Lcom/yftech/avmservice/CameraOperation;Z)Z
    .locals 0

    .line 47
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    return p1
.end method

.method static synthetic access$400(Lcom/yftech/avmservice/CameraOperation;IZI)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    return-void
.end method

.method static synthetic access$500(Lcom/yftech/avmservice/CameraOperation;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->updateCameraCharacter()V

    return-void
.end method

.method static synthetic access$600(Lcom/yftech/avmservice/CameraOperation;)Landroid/view/Surface;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$602(Lcom/yftech/avmservice/CameraOperation;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$700(Lcom/yftech/avmservice/CameraOperation;)Landroid/util/Size;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    return-object p0
.end method

.method static synthetic access$800(Lcom/yftech/avmservice/CameraOperation;II)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/yftech/avmservice/CameraOperation;->setupNewImageReader(II)V

    return-void
.end method

.method static synthetic access$900(Lcom/yftech/avmservice/CameraOperation;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    return p0
.end method

.method private checkAndUpdateResolution(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    .line 1018
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/CameraOperation;->getSupportResolutions(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 1019
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->getMaximumResolution()Landroid/util/Size;

    move-result-object p1

    .line 1020
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    if-eqz v0, :cond_0

    .line 1021
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1022
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1023
    :cond_0
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    const/4 p1, 0x0

    .line 1024
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mImageReader:Landroid/media/ImageReader;

    .line 1025
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderSurface:Landroid/view/Surface;

    :cond_1
    return-void
.end method

.method private checkIfResolutionSupported(Landroid/util/Size;)Z
    .locals 4

    .line 977
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mSupportedResolutions:[Landroid/util/Size;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 979
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 980
    invoke-virtual {v3, p1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private closePreviewSession()V
    .locals 4

    .line 667
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v1, "closePreviewSession"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 668
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_0

    .line 669
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v1, "CaptureSession close-------->"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v0, 0x0

    .line 671
    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 673
    :cond_0
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mHaveSignal:Z

    .line 674
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 675
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mIsPreviewing:Z

    return-void
.end method

.method private createCaptureSession()Z
    .locals 5

    .line 265
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mSurfaceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    invoke-virtual {v1}, Lcom/yftech/avmservice/WrappedSurface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mSurfaceList:Ljava/util/List;

    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iget-object v2, v2, Lcom/yftech/avmservice/WrappedSurface;->mSurface:Landroid/view/Surface;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mImageReader:Landroid/media/ImageReader;

    if-nez v1, :cond_1

    .line 271
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/yftech/avmservice/CameraOperation;->setupNewImageReader(II)V

    .line 273
    :cond_1
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 274
    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mSurfaceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 275
    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mSurfaceList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_2
    iget-boolean v1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderSurface:Landroid/view/Surface;

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->prepareRecorderSurface()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 278
    :cond_3
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mSurfaceList:Ljava/util/List;

    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderSurface:Landroid/view/Surface;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_4
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surface list size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mSurfaceList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-nez v1, :cond_5

    .line 282
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v2, "mCameraDevice null, maybe camera not opened"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v0

    .line 285
    :cond_5
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v2, "CameraDevice createCaptureSession-------->"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mSurfaceList:Ljava/util/List;

    new-instance v3, Lcom/yftech/avmservice/CameraOperation$2;

    invoke-direct {v3, p0}, Lcom/yftech/avmservice/CameraOperation$2;-><init>(Lcom/yftech/avmservice/CameraOperation;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v1

    .line 311
    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "createCaptureSession error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    invoke-virtual {p0}, Lcom/yftech/avmservice/CameraOperation;->close()V

    return v0
.end method

.method private getAtcCaptureKeys()V
    .locals 6

    const/4 v0, 0x0

    .line 889
    :try_start_0
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 890
    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    .line 891
    invoke-virtual {v2}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureRequestKeys()Ljava/util/List;

    move-result-object v2

    .line 892
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/CaptureRequest$Key;

    const-string v4, "com.atc.watermark.info.preview"

    .line 893
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 894
    iput-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 895
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " support preview watermark"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v4, "com.atc.watermark.info.record"

    .line 896
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 897
    iput-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkRecordKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 898
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " support record watermark"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v4, "com.atc.watermark.info.snapshot"

    .line 899
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 900
    iput-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSnapshotKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 901
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " support snapshot watermark"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string v4, "com.atc.mirror"

    .line 902
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 903
    iput-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mMirrorKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 904
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " support mirror"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const-string v4, "com.atc.color_process.hue"

    .line 905
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 906
    iput-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mHueKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 907
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " support hue setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string v4, "com.atc.color_process.brightness"

    .line 908
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 909
    iput-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mBrightnessKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 910
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " support brightness setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    const-string v4, "com.atc.color_process.saturation"

    .line 911
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 912
    iput-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mSaturationKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 913
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " support saturation setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    const-string v4, "com.atc.color_process.contrast"

    .line 914
    invoke-virtual {v3}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 915
    iput-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mContrastKey:Landroid/hardware/camera2/CaptureRequest$Key;

    .line 916
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " support contrast setting"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 920
    :cond_8
    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    .line 921
    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCharacteristics;->getAvailableCaptureResultKeys()Ljava/util/List;

    move-result-object v1

    .line 922
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    const-string v3, "com.atc.sourceinfo"

    .line 923
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureResult$Key;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 924
    iput-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mSourceInfoKey:Landroid/hardware/camera2/CaptureResult$Key;

    .line 925
    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Camera "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " support sourceinfo"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 929
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAtcCaptureKeys fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    return-void
.end method

.method private getMaximumResolution()Landroid/util/Size;
    .locals 8

    .line 960
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mSupportedResolutions:[Landroid/util/Size;

    .line 961
    new-instance v1, Landroid/util/Size;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    if-eqz v0, :cond_3

    .line 962
    array-length v3, v0

    if-lez v3, :cond_3

    .line 963
    array-length v3, v0

    move-object v4, v1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v5, v0, v1

    .line 964
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-le v6, v7, :cond_0

    goto :goto_1

    .line 966
    :cond_0
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getWidth()I

    move-result v7

    if-ne v6, v7, :cond_1

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v4}, Landroid/util/Size;->getHeight()I

    move-result v7

    if-le v6, v7, :cond_1

    :goto_1
    move-object v4, v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v4

    .line 971
    :cond_3
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumResolution is ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method private getMetazoneInfo()V
    .locals 9

    const/4 v0, 0x4

    .line 626
    new-array v0, v0, [I

    const v1, 0x1000a

    .line 627
    invoke-static {v1, v0}, Lcom/autochips/metazone/AtcMetazone;->readval(I[I)I

    const/4 v1, 0x0

    .line 628
    aget v2, v0, v1

    iput v2, p0, Lcom/yftech/avmservice/CameraOperation;->mMirrorVal:I

    const v2, 0x10010

    .line 629
    invoke-static {v2, v0}, Lcom/autochips/metazone/AtcMetazone;->readval(I[I)I

    .line 630
    aget v2, v0, v1

    const v3, 0x10011

    .line 631
    invoke-static {v3, v0}, Lcom/autochips/metazone/AtcMetazone;->readval(I[I)I

    .line 632
    aget v3, v0, v1

    const v4, 0x10012

    .line 633
    invoke-static {v4, v0}, Lcom/autochips/metazone/AtcMetazone;->readval(I[I)I

    .line 634
    aget v4, v0, v1

    const v5, 0x10013

    .line 635
    invoke-static {v5, v0}, Lcom/autochips/metazone/AtcMetazone;->readval(I[I)I

    .line 636
    aget v5, v0, v1

    .line 637
    iget-object v6, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mirror="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/yftech/avmservice/CameraOperation;->mMirrorVal:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", x = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", y = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", w = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", h = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-static {v6, v7, v8}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    new-instance v6, Landroid/graphics/Rect;

    add-int/2addr v4, v2

    add-int/2addr v5, v3

    invoke-direct {v6, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/yftech/avmservice/CameraOperation;->mCamRect:Landroid/graphics/Rect;

    .line 639
    iget-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateHueFromMetazone:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const v2, 0x10017

    .line 640
    invoke-static {v2, v0}, Lcom/autochips/metazone/AtcMetazone;->readval(I[I)I

    .line 641
    aget v2, v0, v1

    iput v2, p0, Lcom/yftech/avmservice/CameraOperation;->mHueValue:I

    goto :goto_0

    .line 643
    :cond_0
    iput-boolean v3, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateHueFromMetazone:Z

    .line 645
    :goto_0
    iget-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateBrightnessFromMetazone:Z

    if-eqz v2, :cond_1

    const v2, 0x10018

    .line 646
    invoke-static {v2, v0}, Lcom/autochips/metazone/AtcMetazone;->readval(I[I)I

    .line 647
    aget v2, v0, v1

    iput v2, p0, Lcom/yftech/avmservice/CameraOperation;->mBrightnessValue:I

    goto :goto_1

    .line 649
    :cond_1
    iput-boolean v3, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateBrightnessFromMetazone:Z

    .line 651
    :goto_1
    iget-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateSaturationFromMetazone:Z

    if-eqz v2, :cond_2

    const v2, 0x10019

    .line 652
    invoke-static {v2, v0}, Lcom/autochips/metazone/AtcMetazone;->readval(I[I)I

    .line 653
    aget v2, v0, v1

    iput v2, p0, Lcom/yftech/avmservice/CameraOperation;->mSaturationValue:I

    goto :goto_2

    .line 655
    :cond_2
    iput-boolean v3, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateSaturationFromMetazone:Z

    .line 657
    :goto_2
    iget-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateContrastFromMetazone:Z

    if-eqz v2, :cond_3

    const v2, 0x1001a

    .line 658
    invoke-static {v2, v0}, Lcom/autochips/metazone/AtcMetazone;->readval(I[I)I

    .line 659
    aget v0, v0, v1

    iput v0, p0, Lcom/yftech/avmservice/CameraOperation;->mContrastValue:I

    goto :goto_3

    .line 661
    :cond_3
    iput-boolean v3, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateContrastFromMetazone:Z

    .line 663
    :goto_3
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hue = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/avmservice/CameraOperation;->mHueValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", brightness = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/avmservice/CameraOperation;->mBrightnessValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", saturation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/yftech/avmservice/CameraOperation;->mSaturationValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", contrast = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/avmservice/CameraOperation;->mContrastValue:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private getOutputFile(Ljava/lang/String;)Ljava/io/File;
    .locals 6

    const-string v0, "image"

    .line 1055
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1057
    :try_start_0
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mStorageUtil:Lcom/yftech/avmservice/util/StorageUtil;

    invoke-virtual {v3, p1}, Lcom/yftech/avmservice/util/StorageUtil;->getOutputFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Lcom/yftech/avmservice/util/StorageUtil$NoSDCardMountedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/yftech/avmservice/util/StorageUtil$NoUdiskMountedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/yftech/avmservice/util/StorageUtil$SpaceNotEnoughException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/yftech/avmservice/util/StorageUtil$FileAlreadyExistException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1068
    :catch_0
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v4, "FileAlreadyExistException"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0xb

    .line 1069
    invoke-direct {p0, v0, v2, v3}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    goto :goto_1

    .line 1065
    :catch_1
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v4, "SpaceNotEnoughException"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1066
    invoke-direct {p0, v0, v2, v1}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    goto :goto_1

    .line 1062
    :catch_2
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v4, "NoUdiskMountedException"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x3

    .line 1063
    invoke-direct {p0, v0, v2, v3}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    goto :goto_1

    .line 1059
    :catch_3
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v4, "NoSDCardMountedException"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x2

    .line 1060
    invoke-direct {p0, v0, v2, v3}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    :goto_1
    const/4 v3, 0x0

    .line 1071
    :goto_2
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_2

    const-string v0, "urgent"

    .line 1072
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1073
    invoke-direct {p0, v1}, Lcom/yftech/avmservice/CameraOperation;->setMediaRecorderSyncFlag(Z)V

    goto :goto_3

    :cond_1
    const-string v0, "normal"

    .line 1074
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1075
    invoke-direct {p0, v2}, Lcom/yftech/avmservice/CameraOperation;->setMediaRecorderSyncFlag(Z)V

    :cond_2
    :goto_3
    return-object v3
.end method

.method private getSupportResolutions(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 949
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-eqz p1, :cond_0

    .line 951
    const-class v1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    .line 956
    :catch_0
    :cond_0
    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mSupportedResolutions:[Landroid/util/Size;

    return-void
.end method

.method private getSupportResolutions()[Landroid/util/Size;
    .locals 4

    .line 934
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 937
    :try_start_0
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 939
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSupportResolutions fail:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/yftech/avmservice/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 941
    :goto_0
    invoke-direct {p0, v0}, Lcom/yftech/avmservice/CameraOperation;->getSupportResolutions(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 942
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mSupportedResolutions:[Landroid/util/Size;

    return-object p0
.end method

.method private goOnRecording()V
    .locals 8

    .line 1299
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    if-eqz v0, :cond_0

    const-string v0, "urgent"

    goto :goto_0

    :cond_0
    const-string v0, "normal"

    :goto_0
    invoke-direct {p0, v0}, Lcom/yftech/avmservice/CameraOperation;->getOutputFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 1302
    :try_start_0
    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v0}, Landroid/media/MediaRecorder;->setNextOutputFile(Ljava/io/File;)V

    .line 1303
    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordingFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1306
    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setNextOutputFile fail "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5, v0, v6}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1307
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    const/4 v5, -0x1

    invoke-direct {p0, v0, v4, v5}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    :cond_2
    move v0, v4

    :goto_2
    if-eqz v0, :cond_7

    .line 1311
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    if-nez v0, :cond_3

    .line 1312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/yftech/avmservice/CameraOperation;->mNormalRecordStartTime:J

    .line 1314
    :cond_3
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    invoke-direct {p0, v2, v1, v4}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    .line 1315
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordThreadHandler:Landroid/os/Handler;

    iget-boolean v1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mNormalRecordTask:Ljava/lang/Runnable;

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mUrgentRecordTask:Ljava/lang/Runnable;

    :goto_4
    iget-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    if-nez v2, :cond_6

    iget-wide v2, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoDuration:J

    goto :goto_5

    :cond_6
    const-wide/16 v2, 0x7530

    :goto_5
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1316
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->startNewRecycleTask()V

    goto :goto_6

    .line 1318
    :cond_7
    invoke-virtual {p0}, Lcom/yftech/avmservice/CameraOperation;->stopRecord()V

    .line 1319
    iput-boolean v4, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    .line 1320
    iput-boolean v4, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    :goto_6
    return-void
.end method

.method private notifyOperationCallback(IZI)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraOperationCallback:Lcom/yftech/avmservice/CameraOperation$CameraOperationCallback;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 227
    iget-object p2, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraOperationCallback:Lcom/yftech/avmservice/CameraOperation$CameraOperationCallback;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-interface {p2, p1, p0}, Lcom/yftech/avmservice/CameraOperation$CameraOperationCallback;->onOperationSuccess(ILjava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object p2, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraOperationCallback:Lcom/yftech/avmservice/CameraOperation$CameraOperationCallback;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-interface {p2, p1, p0, p3}, Lcom/yftech/avmservice/CameraOperation$CameraOperationCallback;->onOperationFailed(ILjava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private prepareMediaRecorder()Z
    .locals 7

    .line 790
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    .line 791
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    goto :goto_0

    .line 793
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 795
    :goto_0
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderErrorListener:Landroid/media/MediaRecorder$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    .line 796
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderInfoListener:Landroid/media/MediaRecorder$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    .line 797
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 798
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderSurface:Landroid/view/Surface;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 799
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->prepareRecorderSurface()Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    .line 804
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsMicOn:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 805
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v3}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 807
    :cond_2
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 808
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    if-eqz v0, :cond_3

    const-string v0, "urgent"

    goto :goto_1

    :cond_3
    const-string v0, "normal"

    :goto_1
    invoke-direct {p0, v0}, Lcom/yftech/avmservice/CameraOperation;->getOutputFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4

    return v2

    .line 812
    :cond_4
    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordingFile:Ljava/io/File;

    .line 813
    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/io/File;)V

    .line 814
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    const/high16 v5, 0x500000

    invoke-virtual {v0, v5}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    .line 815
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    iget v5, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraFPS:I

    invoke-virtual {v0, v5}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 816
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 817
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 818
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    const v5, 0x8000

    invoke-virtual {v0, v4, v5}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    .line 819
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsMicOn:Z

    if-eqz v0, :cond_5

    .line 820
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    const v4, 0x17700

    invoke-virtual {v0, v4}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 821
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 822
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    const v1, 0xac44

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 823
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 826
    :cond_5
    :try_start_0
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    return v2
.end method

.method private prepareRecorderSurface()Z
    .locals 4

    .line 768
    :try_start_0
    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    const/4 v1, 0x2

    .line 769
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 770
    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v2

    iput-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderSurface:Landroid/view/Surface;

    .line 771
    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    const/16 v2, 0x8

    .line 772
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    const/high16 v2, 0x500000

    .line 773
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    const/16 v2, 0x1e

    .line 774
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    .line 775
    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    const-string v2, "/dev/null"

    .line 776
    invoke-virtual {v0, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 777
    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    .line 778
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->prepare()V

    .line 779
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    .line 780
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception v0

    .line 783
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareRecordSurface fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 784
    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderSurface:Landroid/view/Surface;

    return v2
.end method

.method private recreateCaptureSession()V
    .locals 1

    const/4 v0, 0x1

    .line 679
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mNoNeedStartRecord:Z

    .line 680
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->closePreviewSession()V

    .line 681
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->createCaptureSession()Z

    return-void
.end method

.method private setMediaRecorderSyncFlag(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string p1, "persist.sys.media.recorder.setsync.storage"

    const/4 v1, 0x1

    .line 1044
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "persist.sys.media.recorder.setsync.storage"

    .line 1046
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1049
    :catch_0
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string p1, "can not set property, please check selinux permission"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setUpCaptureRequestBuilder()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    .line 545
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 546
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 547
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    goto :goto_0

    .line 549
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    .line 551
    :goto_0
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mSurfaceList:Ljava/util/List;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iget-object v3, v3, Lcom/yftech/avmservice/WrappedSurface;->mSurface:Landroid/view/Surface;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iget-object v3, v3, Lcom/yftech/avmservice/WrappedSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 554
    :cond_1
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iget-boolean v0, v0, Lcom/yftech/avmservice/WrappedSurface;->mIsFromBackcar:Z

    if-eqz v0, :cond_2

    .line 555
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->getMetazoneInfo()V

    .line 556
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v6, Landroid/hardware/camera2/CaptureRequest;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v7, p0, Lcom/yftech/avmservice/CameraOperation;->mCamRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 557
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mMirrorKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_2

    .line 558
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/yftech/avmservice/CameraOperation;->mMirrorKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v7, v3, [I

    iget v8, p0, Lcom/yftech/avmservice/CameraOperation;->mMirrorVal:I

    aput v8, v7, v5

    aput v5, v7, v2

    aput v5, v7, v4

    aput v5, v7, v1

    invoke-virtual {v0, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 561
    :cond_2
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iget-boolean v0, v0, Lcom/yftech/avmservice/WrappedSurface;->mIsFromBackcar:Z

    const/4 v6, 0x5

    if-nez v0, :cond_5

    .line 562
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set watermark key, params = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/yftech/avmservice/CameraOperation;->mActionType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSwitchs:[Z

    iget v9, p0, Lcom/yftech/avmservice/CameraOperation;->mActionType:I

    aget-boolean v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mStartXValues:[I

    iget v9, p0, Lcom/yftech/avmservice/CameraOperation;->mActionType:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mStartYValues:[I

    iget v9, p0, Lcom/yftech/avmservice/CameraOperation;->mActionType:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mWidthValues:[I

    iget v9, p0, Lcom/yftech/avmservice/CameraOperation;->mActionType:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mHeightValues:[I

    iget v9, p0, Lcom/yftech/avmservice/CameraOperation;->mActionType:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_3

    .line 564
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v7, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v8, v6, [I

    iget-object v9, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSwitchs:[Z

    aget-boolean v9, v9, v5

    aput v9, v8, v5

    iget-object v9, p0, Lcom/yftech/avmservice/CameraOperation;->mStartXValues:[I

    aget v9, v9, v5

    aput v9, v8, v2

    iget-object v9, p0, Lcom/yftech/avmservice/CameraOperation;->mStartYValues:[I

    aget v9, v9, v5

    aput v9, v8, v4

    iget-object v9, p0, Lcom/yftech/avmservice/CameraOperation;->mWidthValues:[I

    aget v9, v9, v5

    aput v9, v8, v1

    iget-object v9, p0, Lcom/yftech/avmservice/CameraOperation;->mHeightValues:[I

    aget v9, v9, v5

    aput v9, v8, v3

    invoke-virtual {v0, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 572
    :cond_3
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkRecordKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_4

    .line 573
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v7, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkRecordKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v8, v6, [I

    iget-object v9, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSwitchs:[Z

    aget-boolean v9, v9, v2

    aput v9, v8, v5

    iget-object v9, p0, Lcom/yftech/avmservice/CameraOperation;->mStartXValues:[I

    aget v9, v9, v2

    aput v9, v8, v2

    iget-object v9, p0, Lcom/yftech/avmservice/CameraOperation;->mStartYValues:[I

    aget v9, v9, v2

    aput v9, v8, v4

    iget-object v9, p0, Lcom/yftech/avmservice/CameraOperation;->mWidthValues:[I

    aget v9, v9, v2

    aput v9, v8, v1

    iget-object v9, p0, Lcom/yftech/avmservice/CameraOperation;->mHeightValues:[I

    aget v9, v9, v2

    aput v9, v8, v3

    invoke-virtual {v0, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 581
    :cond_4
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSnapshotKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_6

    .line 582
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v7, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSnapshotKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v6, v6, [I

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSwitchs:[Z

    aget-boolean v8, v8, v4

    aput v8, v6, v5

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mStartXValues:[I

    aget v8, v8, v4

    aput v8, v6, v2

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mStartYValues:[I

    aget v8, v8, v4

    aput v8, v6, v4

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mWidthValues:[I

    aget v8, v8, v4

    aput v8, v6, v1

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mHeightValues:[I

    aget v8, v8, v4

    aput v8, v6, v3

    invoke-virtual {v0, v7, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto :goto_1

    .line 591
    :cond_5
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_6

    .line 592
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v7, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v6, v6, [I

    aput v5, v6, v5

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mStartXValues:[I

    aget v8, v8, v5

    aput v8, v6, v2

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mStartYValues:[I

    aget v8, v8, v5

    aput v8, v6, v4

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mWidthValues:[I

    aget v8, v8, v5

    aput v8, v6, v1

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mHeightValues:[I

    aget v8, v8, v5

    aput v8, v6, v3

    invoke-virtual {v0, v7, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 601
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mHueKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iget-boolean v0, v0, Lcom/yftech/avmservice/WrappedSurface;->mIsFromBackcar:Z

    if-eqz v0, :cond_7

    .line 602
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set hue key, value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/yftech/avmservice/CameraOperation;->mHueValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 603
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/yftech/avmservice/CameraOperation;->mHueKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v7, v3, [I

    iget v8, p0, Lcom/yftech/avmservice/CameraOperation;->mHueValue:I

    aput v8, v7, v5

    aput v5, v7, v2

    aput v5, v7, v4

    aput v5, v7, v1

    invoke-virtual {v0, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 605
    :cond_7
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mBrightnessKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iget-boolean v0, v0, Lcom/yftech/avmservice/WrappedSurface;->mIsFromBackcar:Z

    if-eqz v0, :cond_8

    .line 606
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set brightness key, value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/yftech/avmservice/CameraOperation;->mBrightnessValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/yftech/avmservice/CameraOperation;->mBrightnessKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v7, v3, [I

    iget v8, p0, Lcom/yftech/avmservice/CameraOperation;->mBrightnessValue:I

    aput v8, v7, v5

    aput v5, v7, v2

    aput v5, v7, v4

    aput v5, v7, v1

    invoke-virtual {v0, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 609
    :cond_8
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mSaturationKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iget-boolean v0, v0, Lcom/yftech/avmservice/WrappedSurface;->mIsFromBackcar:Z

    if-eqz v0, :cond_9

    .line 610
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set saturation key, value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/yftech/avmservice/CameraOperation;->mSaturationValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 611
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/yftech/avmservice/CameraOperation;->mSaturationKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v7, v3, [I

    iget v8, p0, Lcom/yftech/avmservice/CameraOperation;->mSaturationValue:I

    aput v8, v7, v5

    aput v5, v7, v2

    aput v5, v7, v4

    aput v5, v7, v1

    invoke-virtual {v0, v6, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 613
    :cond_9
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mContrastKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iget-boolean v0, v0, Lcom/yftech/avmservice/WrappedSurface;->mIsFromBackcar:Z

    if-eqz v0, :cond_a

    .line 614
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set constrast key, value = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/yftech/avmservice/CameraOperation;->mContrastValue:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 615
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v6, p0, Lcom/yftech/avmservice/CameraOperation;->mContrastKey:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v3, v3, [I

    iget v7, p0, Lcom/yftech/avmservice/CameraOperation;->mContrastValue:I

    aput v7, v3, v5

    aput v5, v3, v2

    aput v5, v3, v4

    aput v5, v3, v1

    invoke-virtual {v0, v6, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 617
    :cond_a
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    return-void
.end method

.method private setupNewImageReader(II)V
    .locals 2

    .line 1095
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mImageReader:Landroid/media/ImageReader;

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v0}, Landroid/media/ImageReader;->close()V

    :cond_0
    const/16 v0, 0x100

    const/4 v1, 0x2

    .line 1098
    invoke-static {p1, p2, v0, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p1

    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mImageReader:Landroid/media/ImageReader;

    .line 1099
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mImageReader:Landroid/media/ImageReader;

    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mImageListener:Landroid/media/ImageReader$OnImageAvailableListener;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void
.end method

.method private startNewRecycleTask()V
    .locals 7

    .line 1082
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->stopRecycleTask()V

    .line 1083
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mStorageCheckerThread:Ljava/util/Timer;

    .line 1084
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mStorageCheckerThread:Ljava/util/Timer;

    new-instance v2, Lcom/yftech/avmservice/CameraOperation$RecycleTask;

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordingFile:Ljava/io/File;

    invoke-direct {v2, p0, v0}, Lcom/yftech/avmservice/CameraOperation$RecycleTask;-><init>(Lcom/yftech/avmservice/CameraOperation;Ljava/io/File;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private startRecordAfterSetRepeatingRequest()V
    .locals 8

    const/4 v0, 0x0

    .line 716
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mNoNeedStartRecord:Z

    .line 718
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->prepareMediaRecorder()Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x5

    const/4 v4, 0x4

    if-nez v1, :cond_1

    .line 720
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v5, "prepareMediaRecorder fail"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 721
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    .line 722
    iget-boolean v1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    if-nez v1, :cond_0

    move v3, v4

    :cond_0
    invoke-direct {p0, v3, v0, v2}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    return-void

    .line 725
    :cond_1
    iget-boolean v1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    if-nez v1, :cond_4

    .line 727
    :try_start_0
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->start()V

    .line 728
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v5, "MediaRecorder start"

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v1, v5, v6}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 729
    iput-boolean v1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    .line 730
    iget-boolean v5, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    if-nez v5, :cond_2

    .line 731
    invoke-direct {p0, v4, v1, v0}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    .line 732
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordThreadHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mNormalRecordTask:Ljava/lang/Runnable;

    iget-wide v6, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoDuration:J

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/yftech/avmservice/CameraOperation;->mNormalRecordStartTime:J

    goto :goto_0

    .line 735
    :cond_2
    invoke-direct {p0, v3, v1, v0}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    .line 736
    new-instance v5, Lcom/yftech/avmservice/CameraOperation$MoveUrgentFileTask;

    iget-object v6, p0, Lcom/yftech/avmservice/CameraOperation;->mStorageUtil:Lcom/yftech/avmservice/util/StorageUtil;

    invoke-direct {v5, v6}, Lcom/yftech/avmservice/CameraOperation$MoveUrgentFileTask;-><init>(Lcom/yftech/avmservice/util/StorageUtil;)V

    new-array v1, v1, [Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v1, v0

    invoke-virtual {v5, v1}, Lcom/yftech/avmservice/CameraOperation$MoveUrgentFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 737
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordThreadHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mUrgentRecordTask:Ljava/lang/Runnable;

    const-wide/16 v6, 0x7530

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 739
    :goto_0
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->startNewRecycleTask()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    .line 741
    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MeidaPlayer start fail: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v6, v0, [Ljava/lang/Object;

    invoke-static {v5, v1, v6}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 742
    iget-boolean v1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-direct {p0, v3, v0, v2}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    :cond_4
    :goto_2
    return-void
.end method

.method private stopRecordAndRecycle()V
    .locals 5

    .line 748
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v1, "stopRecordAndRecycle"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 749
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mDelayedUrgentRecordTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    new-instance v0, Lcom/yftech/avmservice/CameraOperation$MoveUrgentFileTask;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mStorageUtil:Lcom/yftech/avmservice/util/StorageUtil;

    invoke-direct {v0, v1}, Lcom/yftech/avmservice/CameraOperation$MoveUrgentFileTask;-><init>(Lcom/yftech/avmservice/util/StorageUtil;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Long;

    iget-wide v3, p0, Lcom/yftech/avmservice/CameraOperation;->mUrgentRecordTriggeredTime:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yftech/avmservice/CameraOperation$MoveUrgentFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordThreadHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 754
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->stopRecycleTask()V

    .line 756
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 757
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    .line 758
    iput-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorder:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 760
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopRecordAndRecycle fail:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 762
    :goto_0
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    :cond_1
    return-void
.end method

.method private stopRecycleTask()V
    .locals 1

    .line 1088
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mStorageCheckerThread:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1089
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mStorageCheckerThread:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 1090
    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mStorageCheckerThread:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private updateCameraCharacter()V
    .locals 2

    .line 1030
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mContext:Landroid/content/Context;

    const-string v1, "camera"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    .line 1033
    :try_start_0
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v0
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1035
    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->printStackTrace()V

    const/4 v0, 0x0

    .line 1037
    :goto_0
    invoke-direct {p0, v0}, Lcom/yftech/avmservice/CameraOperation;->checkAndUpdateResolution(Landroid/hardware/camera2/CameraCharacteristics;)V

    .line 1038
    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/CameraOperation;->getFPS(Landroid/hardware/camera2/CameraCharacteristics;)V

    return-void
.end method

.method private updatePreviewAndRecord()V
    .locals 7

    .line 457
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreviewAndRecord, mRecordRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPreviewRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 463
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->setUpCaptureRequestBuilder()V

    .line 464
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v4, "CaptureSession setRepeatingRequest-------->"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/16 v3, 0x1e

    .line 467
    :try_start_1
    iput v3, p0, Lcom/yftech/avmservice/CameraOperation;->mFramesShouldSkipped:I

    .line 468
    iget-boolean v3, p0, Lcom/yftech/avmservice/CameraOperation;->mIsChangingResolution:Z

    if-eqz v3, :cond_1

    const/16 v3, 0xd

    .line 469
    invoke-direct {p0, v3, v1, v2}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    .line 470
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mIsChangingResolution:Z

    .line 472
    :cond_1
    iget-boolean v3, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    if-eqz v3, :cond_4

    .line 473
    iput-boolean v1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsPreviewing:Z

    .line 474
    invoke-direct {p0, v0, v1, v2}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v3

    move v1, v2

    .line 481
    :goto_0
    iget-object v4, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePreviewAndRecord fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, v3, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraOperationCallback:Lcom/yftech/avmservice/CameraOperation$CameraOperationCallback;

    if-eqz v3, :cond_4

    .line 483
    iget-boolean v3, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_3

    .line 484
    iget-boolean v3, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x5

    goto :goto_1

    :cond_2
    const/4 v3, 0x4

    :goto_1
    invoke-direct {p0, v3, v2, v4}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    .line 486
    :cond_3
    iget-boolean v3, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/yftech/avmservice/CameraOperation;->mIsPreviewing:Z

    if-nez v3, :cond_4

    .line 487
    invoke-direct {p0, v0, v2, v4}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    goto :goto_4

    :catch_4
    move-exception v0

    move v1, v2

    .line 479
    :goto_2
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreviewAndRecord fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :catch_5
    move-exception v0

    move v1, v2

    .line 477
    :goto_3
    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreviewAndRecord fail: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v0, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    :goto_4
    if-eqz v1, :cond_7

    .line 492
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mNoNeedStartRecord:Z

    if-eqz v0, :cond_5

    goto :goto_5

    .line 496
    :cond_5
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    if-nez v0, :cond_6

    .line 497
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->startRecordAfterSetRepeatingRequest()V

    :cond_6
    return-void

    .line 493
    :cond_7
    :goto_5
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mNoNeedStartRecord:Z

    return-void
.end method

.method private updateRequest()V
    .locals 4

    .line 447
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsPreviewing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    if-eqz v0, :cond_0

    .line 449
    :try_start_0
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->setUpCaptureRequestBuilder()V

    .line 450
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureCallback:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 452
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "udpateRequest fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 246
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close camera "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 248
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->stopRecordAndRecycle()V

    .line 250
    :cond_0
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mIsPreviewing:Z

    .line 251
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    .line 252
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    .line 253
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->closePreviewSession()V

    .line 255
    iput-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v3, "CameraDevice close Camera-------->"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 260
    iput-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    :cond_2
    return-void
.end method

.method public getBackcarState()Z
    .locals 0

    .line 1107
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsBackcarCamera:Z

    return p0
.end method

.method public getCameraId()Ljava/lang/String;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentResolution()Landroid/util/Size;
    .locals 0

    .line 1143
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    return-object p0
.end method

.method public getDuration()J
    .locals 2

    .line 1278
    iget-wide v0, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoDuration:J

    return-wide v0
.end method

.method getFPS(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 993
    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/util/Range;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object p1, v0

    :goto_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 999
    array-length v2, p1

    move-object v3, v0

    move v0, v1

    :goto_1
    if-ge v0, v2, :cond_5

    aget-object v4, p1, v0

    .line 1000
    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FPS range ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1001
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    if-eq v5, v6, :cond_1

    goto :goto_3

    :cond_1
    if-nez v3, :cond_2

    goto :goto_2

    .line 1005
    :cond_2
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-gt v5, v6, :cond_3

    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_4

    :cond_3
    :goto_2
    move-object v3, v4

    :cond_4
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move-object v0, v3

    :cond_6
    if-eqz v0, :cond_7

    .line 1010
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraFPS:I

    goto :goto_4

    :cond_7
    const/16 p1, 0x1e

    .line 1012
    iput p1, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraFPS:I

    .line 1014
    :goto_4
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update FPS to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraFPS:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getMicState()Z
    .locals 0

    .line 1282
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsMicOn:Z

    return p0
.end method

.method public getResolutions()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1269
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->getSupportResolutions()[Landroid/util/Size;

    move-result-object p0

    if-nez p0, :cond_0

    .line 1271
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 1273
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getWatermarkState()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public hasPendingPreviewSurface()Z
    .locals 0

    .line 361
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mPendingPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedRestoreCamera()Z
    .locals 4

    .line 374
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isNeedRestoreCamera, mPreviewRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsPreviewing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mIsPreviewing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mRecordRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mIsRecording="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 377
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    iget-boolean v1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsPreviewing:Z

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isPreviewRequest()Z
    .locals 0

    .line 1261
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    return p0
.end method

.method public isPreviewing()Z
    .locals 0

    .line 1245
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsPreviewing:Z

    return p0
.end method

.method public isRecordRequest()Z
    .locals 0

    .line 1265
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    return p0
.end method

.method public isRecording(Z)Z
    .locals 1

    .line 1249
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 1251
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    return p0

    .line 1253
    :cond_0
    iget-boolean p0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public open()V
    .locals 5

    const/4 v0, 0x0

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mContext:Landroid/content/Context;

    const-string v2, "camera"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    .line 237
    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v3, "CameraManager openCamera-------->"

    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 238
    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraId:Ljava/lang/String;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mStateCallback:Landroid/hardware/camera2/CameraDevice$StateCallback;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 240
    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "openCamera error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v2, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x1

    const/4 v2, 0x7

    .line 241
    invoke-direct {p0, v1, v0, v2}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    :goto_0
    return-void
.end method

.method public registerCameraOperationCallback(Lcom/yftech/avmservice/CameraOperation$CameraOperationCallback;)V
    .locals 0

    .line 1290
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraOperationCallback:Lcom/yftech/avmservice/CameraOperation$CameraOperationCallback;

    return-void
.end method

.method public resetSettings()V
    .locals 3

    const/4 v0, 0x1

    .line 1209
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsMicOn:Z

    const-wide/32 v1, 0x493e0

    .line 1210
    iput-wide v1, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoDuration:J

    const/4 v1, 0x3

    .line 1211
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mStartXValues:[I

    .line 1212
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mStartYValues:[I

    .line 1213
    new-array v2, v1, [I

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mWidthValues:[I

    .line 1214
    new-array v1, v1, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mHeightValues:[I

    .line 1215
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSwitchs:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, v2

    .line 1216
    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSwitchs:[Z

    aput-boolean v2, v1, v0

    .line 1217
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSwitchs:[Z

    const/4 v0, 0x2

    aput-boolean v2, p0, v0

    return-void

    :array_0
    .array-data 4
        0x14
        0x14
        0x14
    .end array-data

    :array_1
    .array-data 4
        0x14
        0x14
        0x14
    .end array-data

    :array_2
    .array-data 4
        0x12c
        0x12c
        0x12c
    .end array-data

    :array_3
    .array-data 4
        0x32
        0x32
        0x32
    .end array-data
.end method

.method public declared-synchronized restartRecord()V
    .locals 1

    monitor-enter p0

    .line 685
    :try_start_0
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/CameraOperation;->startRecord(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 684
    monitor-exit p0

    throw v0
.end method

.method public restoreCamera()V
    .locals 3

    .line 385
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v1, "restoreCamera"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 386
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    if-eqz v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->stopRecordAndRecycle()V

    .line 389
    :cond_0
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->closePreviewSession()V

    .line 390
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->createCaptureSession()Z

    return-void
.end method

.method public setBrightness(I)V
    .locals 0

    .line 1227
    iput p1, p0, Lcom/yftech/avmservice/CameraOperation;->mBrightnessValue:I

    const/4 p1, 0x0

    .line 1228
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateBrightnessFromMetazone:Z

    .line 1229
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->updateRequest()V

    return-void
.end method

.method public setContrast(I)V
    .locals 0

    .line 1239
    iput p1, p0, Lcom/yftech/avmservice/CameraOperation;->mContrastValue:I

    const/4 p1, 0x0

    .line 1240
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateContrastFromMetazone:Z

    .line 1241
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->updateRequest()V

    return-void
.end method

.method public setHue(I)V
    .locals 0

    .line 1221
    iput p1, p0, Lcom/yftech/avmservice/CameraOperation;->mHueValue:I

    const/4 p1, 0x0

    .line 1222
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateHueFromMetazone:Z

    .line 1223
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->updateRequest()V

    return-void
.end method

.method public setMicOnOff(Z)V
    .locals 2

    .line 1162
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsMicOn:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1165
    :cond_0
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsMicOn:Z

    .line 1166
    iget-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    if-eqz p1, :cond_1

    .line 1167
    invoke-virtual {p0}, Lcom/yftech/avmservice/CameraOperation;->restartRecord()V

    goto :goto_0

    :cond_1
    const/16 p1, 0xa

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1169
    invoke-direct {p0, p1, v0, v1}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    :goto_0
    return-void
.end method

.method public setPreviewSurface(Lcom/yftech/avmservice/WrappedSurface;)V
    .locals 0

    .line 1103
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mNextPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    return-void
.end method

.method public setResolution(II)V
    .locals 5

    .line 1111
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResolution, width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/16 v1, 0xd

    const/4 v3, 0x1

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    if-ne v0, p2, :cond_0

    .line 1113
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string p2, "same resolution,skip"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1114
    invoke-direct {p0, v1, v3, v2}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    return-void

    .line 1117
    :cond_0
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsChangingResolution:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    if-eqz v0, :cond_1

    goto :goto_1

    .line 1121
    :cond_1
    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    .line 1122
    invoke-direct {p0, v0}, Lcom/yftech/avmservice/CameraOperation;->checkIfResolutionSupported(Landroid/util/Size;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1123
    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    .line 1124
    invoke-direct {p0, p1, p2}, Lcom/yftech/avmservice/CameraOperation;->setupNewImageReader(II)V

    .line 1125
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->prepareRecorderSurface()Z

    .line 1131
    iget-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    if-eqz p1, :cond_2

    .line 1132
    iput-boolean v3, p0, Lcom/yftech/avmservice/CameraOperation;->mIsChangingResolution:Z

    .line 1133
    invoke-virtual {p0}, Lcom/yftech/avmservice/CameraOperation;->restartRecord()V

    goto :goto_0

    .line 1134
    :cond_2
    iget-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsPreviewing:Z

    if-eqz p1, :cond_3

    .line 1135
    iput-boolean v3, p0, Lcom/yftech/avmservice/CameraOperation;->mIsChangingResolution:Z

    .line 1136
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraOperation;->startPreview(Lcom/yftech/avmservice/WrappedSurface;)V

    goto :goto_0

    .line 1138
    :cond_3
    invoke-direct {p0, v1, v3, v2}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    :goto_0
    return-void

    :cond_4
    const/16 p1, 0xa

    .line 1127
    invoke-direct {p0, v1, v2, p1}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    return-void

    .line 1118
    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string p1, "resolution is changing , return"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, p2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setSaturation(I)V
    .locals 0

    .line 1233
    iput p1, p0, Lcom/yftech/avmservice/CameraOperation;->mSaturationValue:I

    const/4 p1, 0x0

    .line 1234
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mUpdateSaturationFromMetazone:Z

    .line 1235
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->updateRequest()V

    return-void
.end method

.method public setVideoDuration(J)V
    .locals 4

    .line 1147
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVideoDurtion, duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1148
    iget-wide v0, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoDuration:J

    cmp-long v0, v0, p1

    const/4 v1, 0x1

    const/16 v3, 0xc

    if-nez v0, :cond_0

    .line 1149
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string p2, "same duration,skip"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p1, p2, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1150
    invoke-direct {p0, v3, v1, v2}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    return-void

    .line 1153
    :cond_0
    iput-wide p1, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoDuration:J

    .line 1154
    iget-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    if-eqz p1, :cond_1

    .line 1155
    invoke-virtual {p0}, Lcom/yftech/avmservice/CameraOperation;->restartRecord()V

    goto :goto_0

    .line 1157
    :cond_1
    invoke-direct {p0, v3, v1, v2}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    :goto_0
    return-void
.end method

.method public setWatermarkOnOff(IZ)V
    .locals 4

    .line 1174
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkPreviewKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v1, 0x0

    const/16 v2, 0xb

    if-nez v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkRecordKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x1

    if-nez v0, :cond_1

    if-eq p1, v3, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSnapshotKey:Landroid/hardware/camera2/CaptureRequest$Key;

    if-nez v0, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    :cond_2
    const/16 p1, 0xc

    .line 1177
    invoke-direct {p0, v2, v1, p1}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    return-void

    .line 1180
    :cond_3
    iput p1, p0, Lcom/yftech/avmservice/CameraOperation;->mActionType:I

    .line 1181
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSwitchs:[Z

    aput-boolean p2, v0, p1

    .line 1182
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->updateRequest()V

    .line 1183
    invoke-direct {p0, v2, v3, v1}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    return-void
.end method

.method public setWatermarkSize(IZIZI)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1199
    iget-object p2, p0, Lcom/yftech/avmservice/CameraOperation;->mWidthValues:[I

    aput p3, p2, p1

    :cond_0
    if-eqz p4, :cond_1

    .line 1202
    iget-object p2, p0, Lcom/yftech/avmservice/CameraOperation;->mHeightValues:[I

    aput p5, p2, p1

    .line 1204
    :cond_1
    iput p1, p0, Lcom/yftech/avmservice/CameraOperation;->mActionType:I

    .line 1205
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->updateRequest()V

    return-void
.end method

.method public setWatermarkStart(IZIZI)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1188
    iget-object p2, p0, Lcom/yftech/avmservice/CameraOperation;->mStartXValues:[I

    aput p3, p2, p1

    :cond_0
    if-eqz p4, :cond_1

    .line 1191
    iget-object p2, p0, Lcom/yftech/avmservice/CameraOperation;->mStartYValues:[I

    aput p5, p2, p1

    .line 1193
    :cond_1
    iput p1, p0, Lcom/yftech/avmservice/CameraOperation;->mActionType:I

    .line 1194
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->updateRequest()V

    return-void
.end method

.method public snapshot()V
    .locals 10

    .line 841
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    const/4 v1, 0x7

    const/16 v2, 0x9

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_4

    .line 843
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraDevice:Landroid/hardware/camera2/CameraDevice;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v0

    .line 844
    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mImageReader:Landroid/media/ImageReader;

    if-nez v5, :cond_0

    .line 845
    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/yftech/avmservice/CameraOperation;->mVideoSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/yftech/avmservice/CameraOperation;->setupNewImageReader(II)V

    .line 847
    :cond_0
    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mImageReader:Landroid/media/ImageReader;

    invoke-virtual {v5}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v5

    .line 848
    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 849
    iget-boolean v5, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mSurfaceList:Ljava/util/List;

    iget-object v6, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iget-object v6, v6, Lcom/yftech/avmservice/WrappedSurface;->mSurface:Landroid/view/Surface;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 850
    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iget-object v5, v5, Lcom/yftech/avmservice/WrappedSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 852
    :cond_1
    iget-boolean v5, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    if-eqz v5, :cond_2

    .line 853
    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v0, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    .line 855
    :cond_2
    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSnapshotKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v6, 0x4

    if-eqz v5, :cond_3

    .line 856
    iget-object v5, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSnapshotKey:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v7, 0x5

    new-array v7, v7, [I

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mWatermarkSwitchs:[Z

    aget-boolean v8, v8, v4

    aput v8, v7, v3

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/yftech/avmservice/CameraOperation;->mStartXValues:[I

    aget v9, v9, v4

    aput v9, v7, v8

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mStartYValues:[I

    aget v8, v8, v4

    aput v8, v7, v4

    const/4 v8, 0x3

    iget-object v9, p0, Lcom/yftech/avmservice/CameraOperation;->mWidthValues:[I

    aget v9, v9, v4

    aput v9, v7, v8

    iget-object v8, p0, Lcom/yftech/avmservice/CameraOperation;->mHeightValues:[I

    aget v4, v8, v4

    aput v4, v7, v6

    invoke-virtual {v0, v5, v7}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 864
    :cond_3
    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    .line 865
    iget-object v4, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v5, Lcom/yftech/avmservice/CameraOperation$4;

    invoke-direct {v5, p0}, Lcom/yftech/avmservice/CameraOperation$4;-><init>(Lcom/yftech/avmservice/CameraOperation;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v0, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 880
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "snapshot, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 878
    :catch_1
    invoke-direct {p0, v2, v3, v1}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    goto :goto_0

    .line 883
    :cond_4
    invoke-direct {p0, v2, v3, v1}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    :goto_0
    return-void
.end method

.method public startPreview()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mNextPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/CameraOperation;->startPreview(Lcom/yftech/avmservice/WrappedSurface;)V

    return-void
.end method

.method public startPreview(Lcom/yftech/avmservice/WrappedSurface;)V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v1, "startPreview"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    .line 323
    iget-object v0, p1, Lcom/yftech/avmservice/WrappedSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "surface = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isValid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/yftech/avmservice/WrappedSurface;->mSurface:Landroid/view/Surface;

    .line 328
    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mPreviewSurface="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mPendingPreviewSurface="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/yftech/avmservice/CameraOperation;->mPendingPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mPreviewRequested="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    .line 327
    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    if-ne p1, v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v1, "same preview surface, skip"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPendingPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/yftech/avmservice/WrappedSurface;->mIsFromBackcar:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iget-boolean v0, v0, Lcom/yftech/avmservice/WrappedSurface;->mIsFromBackcar:Z

    if-nez v0, :cond_3

    .line 339
    :cond_2
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPendingPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    :cond_3
    const/4 v0, 0x1

    .line 341
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    .line 342
    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    .line 343
    iput v2, p0, Lcom/yftech/avmservice/CameraOperation;->mActionType:I

    .line 344
    iget-boolean v1, p1, Lcom/yftech/avmservice/WrappedSurface;->mIsFromBackcar:Z

    if-nez v1, :cond_4

    .line 345
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsNormalPreviewRequested:Z

    .line 347
    :cond_4
    iget-boolean p1, p1, Lcom/yftech/avmservice/WrappedSurface;->mIsFromBackcar:Z

    if-eqz p1, :cond_5

    .line 348
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRespondRVCFirstFrame:Z

    .line 350
    :cond_5
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->closePreviewSession()V

    .line 351
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-nez p1, :cond_6

    .line 352
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->createCaptureSession()Z

    move-result p1

    if-nez p1, :cond_7

    .line 353
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string p1, "wait for restore preview"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 356
    :cond_6
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->updatePreviewAndRecord()V

    :cond_7
    :goto_0
    return-void

    :cond_8
    :goto_1
    const/4 p1, 0x3

    const/4 v0, -0x1

    .line 324
    invoke-direct {p0, p1, v2, v0}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    return-void
.end method

.method public declared-synchronized startRecord(Z)V
    .locals 7

    monitor-enter p0

    .line 689
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecord, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "urgent"

    goto :goto_0

    :cond_0
    const-string v2, "normal"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 690
    iput-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    .line 691
    iput-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    .line 692
    iget-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    if-eqz p1, :cond_3

    .line 693
    iget-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    if-nez p1, :cond_1

    .line 694
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->stopRecordAndRecycle()V

    goto :goto_1

    .line 696
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/yftech/avmservice/CameraOperation;->mUrgentRecordTriggeredTime:J

    .line 697
    iget-wide v3, p0, Lcom/yftech/avmservice/CameraOperation;->mUrgentRecordTriggeredTime:J

    iget-wide v5, p0, Lcom/yftech/avmservice/CameraOperation;->mNormalRecordStartTime:J

    sub-long/2addr v3, v5

    .line 698
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUrgentRecordTriggeredTime="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/yftech/avmservice/CameraOperation;->mUrgentRecordTriggeredTime:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", timeDiffer="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v5, 0x7530

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    .line 700
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mDelayedUrgentRecordTask:Ljava/lang/Runnable;

    sub-long/2addr v5, v3

    invoke-virtual {p1, v1, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x5

    .line 701
    invoke-direct {p0, p1, v0, v2}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 702
    monitor-exit p0

    return-void

    .line 704
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->stopRecordAndRecycle()V

    .line 705
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mNoNeedStartRecord:Z

    .line 709
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->closePreviewSession()V

    .line 710
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->createCaptureSession()Z

    move-result p1

    if-nez p1, :cond_4

    .line 711
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v0, "wait for restore record"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 713
    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 688
    monitor-exit p0

    throw p1
.end method

.method public stopPreview(Z)V
    .locals 7

    .line 394
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreview, mPreviewRequested="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mPendingPreviewSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mPendingPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", isBackcar="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    const/4 v1, 0x1

    const/4 v3, 0x6

    if-nez v0, :cond_0

    .line 396
    invoke-direct {p0, v3, v1, v2}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 400
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mPendingPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mPendingPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iget-object v4, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    if-eq p1, v4, :cond_2

    .line 401
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mPendingPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iput-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    .line 402
    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPendingPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    .line 403
    iget-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    if-eqz p1, :cond_1

    .line 404
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->recreateCaptureSession()V

    goto :goto_0

    .line 406
    :cond_1
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/CameraOperation;->startPreview(Lcom/yftech/avmservice/WrappedSurface;)V

    :goto_0
    return-void

    .line 410
    :cond_2
    iget-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsNormalPreviewRequested:Z

    if-eqz p1, :cond_4

    .line 411
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string p1, "do not stop preview when normal preview requested"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 415
    :cond_3
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    .line 416
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mIsNormalPreviewRequested:Z

    .line 417
    iget-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/yftech/avmservice/CameraOperation;->mIsRecording:Z

    if-eqz p1, :cond_4

    .line 418
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iget-object v1, v1, Lcom/yftech/avmservice/WrappedSurface;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->removeTarget(Landroid/view/Surface;)V

    .line 420
    :try_start_0
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    invoke-virtual {p1, v1, v0, v0}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 422
    iget-object p0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopPreview fail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void

    .line 427
    :cond_4
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p1, :cond_5

    .line 429
    :try_start_1
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v4, "CaptureSession stopRepeating-------->"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 430
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 432
    iget-object v4, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stopRepeating fail: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v4, p1, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 434
    :goto_2
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v4, "CaptureSession close-------->"

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    .line 436
    iget-object p1, p0, Lcom/yftech/avmservice/CameraOperation;->mSurfaceList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 437
    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    .line 439
    :cond_5
    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPendingPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    .line 440
    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    .line 441
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mPreviewRequested:Z

    .line 442
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mIsPreviewing:Z

    .line 443
    invoke-direct {p0, v3, v1, v2}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V

    return-void
.end method

.method public stopPreviewWhileQbOff()V
    .locals 3

    .line 365
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopPreviewWhileQbOff, mPendingPreviewSurface="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yftech/avmservice/CameraOperation;->mPendingPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPendingPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mPendingPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mNextPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mNextPreviewSurface:Lcom/yftech/avmservice/WrappedSurface;

    :goto_0
    return-void
.end method

.method public declared-synchronized stopRecord()V
    .locals 4

    monitor-enter p0

    .line 834
    :try_start_0
    iget-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->TAG:Ljava/lang/String;

    const-string v1, "stopRecord"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 835
    invoke-direct {p0}, Lcom/yftech/avmservice/CameraOperation;->stopRecordAndRecycle()V

    .line 836
    iput-boolean v2, p0, Lcom/yftech/avmservice/CameraOperation;->mRecordRequested:Z

    .line 837
    iget-boolean v0, p0, Lcom/yftech/avmservice/CameraOperation;->mIsUrgentRecording:Z

    if-nez v0, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/yftech/avmservice/CameraOperation;->notifyOperationCallback(IZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 833
    monitor-exit p0

    throw v0
.end method

.method public unregisterCameraOperationCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 1294
    iput-object v0, p0, Lcom/yftech/avmservice/CameraOperation;->mCameraOperationCallback:Lcom/yftech/avmservice/CameraOperation$CameraOperationCallback;

    return-void
.end method
