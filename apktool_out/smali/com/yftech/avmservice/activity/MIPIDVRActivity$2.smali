.class Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;
.super Landroid/os/Handler;
.source "MIPIDVRActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yftech/avmservice/activity/MIPIDVRActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;


# direct methods
.method constructor <init>(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)V
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public static synthetic lambda$handleMessage$0(Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;Ljava/lang/String;)V
    .locals 1

    .line 368
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1600(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 355
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string v0, "MIPIDVRActivity"

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handler - handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/yftech/avmservice/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 358
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1400(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/widget/Button;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1500(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/widget/Button;

    move-result-object v1

    .line 359
    :goto_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    const v5, 0x7f0c0087

    if-ne v3, v4, :cond_3

    .line 360
    iget p1, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x64

    if-eq p1, v3, :cond_2

    const/16 v3, 0x67

    if-eq p1, v3, :cond_1

    const v3, 0x7f0c008a

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 396
    :pswitch_0
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 391
    :pswitch_1
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    const v0, 0x7f0c0027

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/avmservice/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 387
    :pswitch_2
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 388
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1700(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 383
    :pswitch_3
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 384
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1700(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 380
    :pswitch_4
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1600(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 376
    :pswitch_5
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0, v0, v4}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1700(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V

    .line 377
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    goto/16 :goto_2

    .line 372
    :pswitch_6
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V

    .line 373
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 367
    :pswitch_7
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$000(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/yftech/avmservice/activity/-$$Lambda$MIPIDVRActivity$2$RHUggAHtS9qdpekvcBEsKktpZGA;

    invoke-direct {v1, p0, v0}, Lcom/yftech/avmservice/activity/-$$Lambda$MIPIDVRActivity$2$RHUggAHtS9qdpekvcBEsKktpZGA;-><init>(Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;Ljava/lang/String;)V

    const-wide/16 v2, 0x258

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    .line 362
    :pswitch_8
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1600(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V

    .line 363
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 364
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1700(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V

    goto/16 :goto_2

    .line 402
    :cond_1
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0, v4}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$2002(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Z)Z

    goto/16 :goto_2

    .line 399
    :cond_2
    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p0, v4}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1902(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Z)Z

    goto/16 :goto_2

    .line 407
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_7

    .line 408
    iget v3, p1, Landroid/os/Message;->arg1:I

    packed-switch v3, :pswitch_data_1

    :pswitch_9
    goto :goto_1

    .line 439
    :pswitch_a
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v1, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 431
    :pswitch_b
    iget-object v3, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v3, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1700(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V

    .line 432
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 428
    :pswitch_c
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 425
    :pswitch_d
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v1, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1600(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V

    goto :goto_1

    .line 422
    :pswitch_e
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v1, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1700(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V

    goto :goto_1

    .line 418
    :pswitch_f
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 419
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v1, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 415
    :pswitch_10
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v1, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1600(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V

    goto :goto_1

    .line 410
    :pswitch_11
    iget-object v3, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v3, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1600(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V

    .line 411
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 412
    iget-object v1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {v1, v0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$1700(Lcom/yftech/avmservice/activity/MIPIDVRActivity;Ljava/lang/String;Z)V

    .line 444
    :goto_1
    :pswitch_12
    iget p1, p1, Landroid/os/Message;->arg2:I

    const v1, 0x7f0c0019

    const v2, 0x7f0c0004

    const v3, 0x7f0c0018

    packed-switch p1, :pswitch_data_2

    :pswitch_13
    goto/16 :goto_2

    .line 484
    :pswitch_14
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    const v0, 0x7f0c001d

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/avmservice/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 490
    :pswitch_15
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 491
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-virtual {p0, v3}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/avmservice/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 493
    :cond_4
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/avmservice/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 487
    :pswitch_16
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    const v0, 0x7f0c0013

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/avmservice/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 481
    :pswitch_17
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    const v0, 0x7f0c001c

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/avmservice/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 468
    :pswitch_18
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 469
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-virtual {p0, v3}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/avmservice/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 471
    :cond_5
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/avmservice/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 461
    :pswitch_19
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-static {p1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->access$800(Lcom/yftech/avmservice/activity/MIPIDVRActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 462
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-virtual {p0, v3}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/avmservice/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 464
    :cond_6
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-virtual {p0, v2}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/avmservice/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 454
    :pswitch_1a
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/avmservice/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 451
    :pswitch_1b
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    invoke-virtual {p0, v1}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/avmservice/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    .line 448
    :pswitch_1c
    iget-object p1, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    iget-object p0, p0, Lcom/yftech/avmservice/activity/MIPIDVRActivity$2;->this$0:Lcom/yftech/avmservice/activity/MIPIDVRActivity;

    const v0, 0x7f0c0015

    invoke-virtual {p0, v0}, Lcom/yftech/avmservice/activity/MIPIDVRActivity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/yftech/avmservice/util/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    :goto_2
    :pswitch_1d
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_11
        :pswitch_9
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_12
        :pswitch_a
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_1d
        :pswitch_13
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_1d
        :pswitch_1d
        :pswitch_19
        :pswitch_18
        :pswitch_1d
        :pswitch_1d
        :pswitch_17
        :pswitch_16
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_15
        :pswitch_14
    .end packed-switch
.end method
