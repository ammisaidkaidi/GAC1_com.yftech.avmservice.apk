.class public final synthetic Lcom/yftech/avmservice/-$$Lambda$StateMachine$SmHandler$902kwPC1fPFLmhcUVJf3Ri1CvLA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/yftech/avmservice/StateMachine$SmHandler$StateInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/yftech/avmservice/StateMachine$SmHandler$StateInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yftech/avmservice/-$$Lambda$StateMachine$SmHandler$902kwPC1fPFLmhcUVJf3Ri1CvLA;->f$0:Lcom/yftech/avmservice/StateMachine$SmHandler$StateInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/yftech/avmservice/-$$Lambda$StateMachine$SmHandler$902kwPC1fPFLmhcUVJf3Ri1CvLA;->f$0:Lcom/yftech/avmservice/StateMachine$SmHandler$StateInfo;

    check-cast p1, Lcom/yftech/avmservice/StateMachine$SmHandler$StateInfo;

    invoke-static {p0, p1}, Lcom/yftech/avmservice/StateMachine$SmHandler;->lambda$removeState$0(Lcom/yftech/avmservice/StateMachine$SmHandler$StateInfo;Lcom/yftech/avmservice/StateMachine$SmHandler$StateInfo;)Z

    move-result p0

    return p0
.end method
