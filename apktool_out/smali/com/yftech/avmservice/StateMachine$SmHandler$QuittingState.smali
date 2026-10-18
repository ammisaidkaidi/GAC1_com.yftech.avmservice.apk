.class Lcom/yftech/avmservice/StateMachine$SmHandler$QuittingState;
.super Lcom/yftech/avmservice/State;
.source "StateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/StateMachine$SmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuittingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/StateMachine$SmHandler;


# direct methods
.method private constructor <init>(Lcom/yftech/avmservice/StateMachine$SmHandler;)V
    .locals 0

    .line 777
    iput-object p1, p0, Lcom/yftech/avmservice/StateMachine$SmHandler$QuittingState;->this$0:Lcom/yftech/avmservice/StateMachine$SmHandler;

    invoke-direct {p0}, Lcom/yftech/avmservice/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yftech/avmservice/StateMachine$SmHandler;Lcom/yftech/avmservice/StateMachine$1;)V
    .locals 0

    .line 777
    invoke-direct {p0, p1}, Lcom/yftech/avmservice/StateMachine$SmHandler$QuittingState;-><init>(Lcom/yftech/avmservice/StateMachine$SmHandler;)V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
