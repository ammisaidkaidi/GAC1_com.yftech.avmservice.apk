.class public Lcom/yftech/avmservice/procotol/MCUCommNative;
.super Ljava/lang/Object;
.source "MCUCommNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/avmservice/procotol/MCUCommNative$SingletonFactory;
    }
.end annotation


# static fields
.field private static isLoaded:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 13
    sget-boolean v0, Lcom/yftech/avmservice/procotol/MCUCommNative;->isLoaded:Z

    if-nez v0, :cond_0

    const-string v0, "MCUCommNative"

    const-string v1, "loadLibrary  AvmMcuComm in"

    const/4 v2, 0x0

    .line 14
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    const-string v0, "AvmMcuComm"

    .line 16
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MCUCommNative"

    const-string v3, "loadLibrary "

    .line 18
    invoke-static {v1, v3, v0}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string v0, "MCUCommNative"

    const-string v1, "loadLibrary  AvmMcuComm out"

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yftech/avmservice/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 21
    sput-boolean v0, Lcom/yftech/avmservice/procotol/MCUCommNative;->isLoaded:Z

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yftech/avmservice/procotol/MCUCommNative;
    .locals 1

    .line 30
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUCommNative$SingletonFactory;->access$000()Lcom/yftech/avmservice/procotol/MCUCommNative;

    move-result-object v0

    return-object v0
.end method

.method private native nativeMcuCommInit()I
.end method

.method private native nativeRegisterMcuCommCallback(Lcom/yftech/avmservice/common/IMcuCommListener;)I
.end method

.method private native nativeSendDataToMcu(Ljava/nio/ByteBuffer;II)I
.end method


# virtual methods
.method public mcuCommInit()I
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/yftech/avmservice/procotol/MCUCommNative;->nativeMcuCommInit()I

    move-result p0

    return p0
.end method

.method public registerMcuCommCallback(Lcom/yftech/avmservice/common/IMcuCommListener;)I
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/procotol/MCUCommNative;->nativeRegisterMcuCommCallback(Lcom/yftech/avmservice/common/IMcuCommListener;)I

    move-result p0

    return p0
.end method

.method public sendDataToMcu(Ljava/nio/ByteBuffer;II)I
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/yftech/avmservice/procotol/MCUCommNative;->nativeSendDataToMcu(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method
