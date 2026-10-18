.class Lcom/yftech/avmservice/procotol/MCUComm$SingletonFactory;
.super Ljava/lang/Object;
.source "MCUComm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/procotol/MCUComm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonFactory"
.end annotation


# static fields
.field private static instance:Lcom/yftech/avmservice/procotol/MCUComm;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 8
    new-instance v0, Lcom/yftech/avmservice/procotol/MCUComm;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yftech/avmservice/procotol/MCUComm;-><init>(Lcom/yftech/avmservice/procotol/MCUComm$1;)V

    sput-object v0, Lcom/yftech/avmservice/procotol/MCUComm$SingletonFactory;->instance:Lcom/yftech/avmservice/procotol/MCUComm;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/yftech/avmservice/procotol/MCUComm;
    .locals 1

    .line 7
    sget-object v0, Lcom/yftech/avmservice/procotol/MCUComm$SingletonFactory;->instance:Lcom/yftech/avmservice/procotol/MCUComm;

    return-object v0
.end method
