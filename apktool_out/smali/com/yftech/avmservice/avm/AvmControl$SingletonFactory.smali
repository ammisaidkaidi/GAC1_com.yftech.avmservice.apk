.class Lcom/yftech/avmservice/avm/AvmControl$SingletonFactory;
.super Ljava/lang/Object;
.source "AvmControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/avm/AvmControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonFactory"
.end annotation


# static fields
.field private static instance:Lcom/yftech/avmservice/avm/AvmControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 486
    new-instance v0, Lcom/yftech/avmservice/avm/AvmControl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/yftech/avmservice/avm/AvmControl;-><init>(Lcom/yftech/avmservice/avm/AvmControl$1;)V

    sput-object v0, Lcom/yftech/avmservice/avm/AvmControl$SingletonFactory;->instance:Lcom/yftech/avmservice/avm/AvmControl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/yftech/avmservice/avm/AvmControl;
    .locals 1

    .line 485
    sget-object v0, Lcom/yftech/avmservice/avm/AvmControl$SingletonFactory;->instance:Lcom/yftech/avmservice/avm/AvmControl;

    return-object v0
.end method
