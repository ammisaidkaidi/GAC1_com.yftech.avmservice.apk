.class Lcom/yftech/avmservice/procotol/SAVMProcotol$SingletonFactory;
.super Ljava/lang/Object;
.source "SAVMProcotol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/procotol/SAVMProcotol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonFactory"
.end annotation


# static fields
.field private static instance:Lcom/yftech/avmservice/procotol/SAVMProcotol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 271
    new-instance v0, Lcom/yftech/avmservice/procotol/SAVMProcotol;

    invoke-direct {v0}, Lcom/yftech/avmservice/procotol/SAVMProcotol;-><init>()V

    sput-object v0, Lcom/yftech/avmservice/procotol/SAVMProcotol$SingletonFactory;->instance:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$900()Lcom/yftech/avmservice/procotol/SAVMProcotol;
    .locals 1

    .line 270
    sget-object v0, Lcom/yftech/avmservice/procotol/SAVMProcotol$SingletonFactory;->instance:Lcom/yftech/avmservice/procotol/SAVMProcotol;

    return-object v0
.end method
