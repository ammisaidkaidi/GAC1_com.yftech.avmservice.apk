.class public Lcom/yftech/avmservice/procotol/MCUComm;
.super Ljava/lang/Object;
.source "MCUComm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yftech/avmservice/procotol/MCUComm$SingletonFactory;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-virtual {p0}, Lcom/yftech/avmservice/procotol/MCUComm;->init()I

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/avmservice/procotol/MCUComm$1;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/yftech/avmservice/procotol/MCUComm;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/yftech/avmservice/procotol/MCUComm;
    .locals 1

    .line 12
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUComm$SingletonFactory;->access$100()Lcom/yftech/avmservice/procotol/MCUComm;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public SendData(Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 24
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUCommNative;->getInstance()Lcom/yftech/avmservice/procotol/MCUCommNative;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/yftech/avmservice/procotol/MCUCommNative;->sendDataToMcu(Ljava/nio/ByteBuffer;II)I

    move-result p0

    return p0
.end method

.method public init()I
    .locals 0

    .line 20
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUCommNative;->getInstance()Lcom/yftech/avmservice/procotol/MCUCommNative;

    move-result-object p0

    invoke-virtual {p0}, Lcom/yftech/avmservice/procotol/MCUCommNative;->mcuCommInit()I

    move-result p0

    return p0
.end method

.method public setAvmListener(Lcom/yftech/avmservice/common/IMcuCommListener;)V
    .locals 0

    .line 28
    invoke-static {}, Lcom/yftech/avmservice/procotol/MCUCommNative;->getInstance()Lcom/yftech/avmservice/procotol/MCUCommNative;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/yftech/avmservice/procotol/MCUCommNative;->registerMcuCommCallback(Lcom/yftech/avmservice/common/IMcuCommListener;)I

    return-void
.end method
