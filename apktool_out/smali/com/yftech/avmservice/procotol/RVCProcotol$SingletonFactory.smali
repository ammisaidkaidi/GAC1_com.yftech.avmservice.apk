.class Lcom/yftech/avmservice/procotol/RVCProcotol$SingletonFactory;
.super Ljava/lang/Object;
.source "RVCProcotol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/procotol/RVCProcotol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonFactory"
.end annotation


# static fields
.field private static instance:Lcom/yftech/avmservice/procotol/RVCProcotol;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 97
    new-instance v0, Lcom/yftech/avmservice/procotol/RVCProcotol;

    invoke-direct {v0}, Lcom/yftech/avmservice/procotol/RVCProcotol;-><init>()V

    sput-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol$SingletonFactory;->instance:Lcom/yftech/avmservice/procotol/RVCProcotol;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$300()Lcom/yftech/avmservice/procotol/RVCProcotol;
    .locals 1

    .line 96
    sget-object v0, Lcom/yftech/avmservice/procotol/RVCProcotol$SingletonFactory;->instance:Lcom/yftech/avmservice/procotol/RVCProcotol;

    return-object v0
.end method
