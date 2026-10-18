.class Lcom/yftech/avmservice/procotol/MCUCommNative$SingletonFactory;
.super Ljava/lang/Object;
.source "MCUCommNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/procotol/MCUCommNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonFactory"
.end annotation


# static fields
.field private static instance:Lcom/yftech/avmservice/procotol/MCUCommNative;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lcom/yftech/avmservice/procotol/MCUCommNative;

    invoke-direct {v0}, Lcom/yftech/avmservice/procotol/MCUCommNative;-><init>()V

    sput-object v0, Lcom/yftech/avmservice/procotol/MCUCommNative$SingletonFactory;->instance:Lcom/yftech/avmservice/procotol/MCUCommNative;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/yftech/avmservice/procotol/MCUCommNative;
    .locals 1

    .line 25
    sget-object v0, Lcom/yftech/avmservice/procotol/MCUCommNative$SingletonFactory;->instance:Lcom/yftech/avmservice/procotol/MCUCommNative;

    return-object v0
.end method
