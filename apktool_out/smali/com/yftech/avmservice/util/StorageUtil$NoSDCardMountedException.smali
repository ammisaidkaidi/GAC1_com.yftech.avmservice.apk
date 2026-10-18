.class public Lcom/yftech/avmservice/util/StorageUtil$NoSDCardMountedException;
.super Ljava/lang/Exception;
.source "StorageUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/util/StorageUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoSDCardMountedException"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "there is no SD card mounted"

    .line 506
    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method
