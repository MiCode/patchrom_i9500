.class Lcom/android/internal/telephony/UiccCardApplication$1;
.super Landroid/os/Handler;
.source "UiccCardApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccCardApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccCardApplication;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCardApplication;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "m"
    .parameter "e"

    .prologue
    .line 417
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object p2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 418
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 419
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const-wide/16 v7, 0xa

    const/16 v6, 0xb

    .line 426
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mDestroyed:Z
    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$000(Lcom/android/internal/telephony/UiccCardApplication;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] while being destroyed. Ignoring."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->loge(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$100(Lcom/android/internal/telephony/UiccCardApplication;Ljava/lang/String;)V

    .line 573
    :goto_0
    return-void

    .line 432
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 571
    :pswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[UiccCardApplication] : Unknown Event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 436
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 438
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 439
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)V
    invoke-static {v3, v0, v9}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;I)V

    .line 443
    :cond_1
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 451
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 453
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_2

    .line 454
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)V
    invoke-static {v3, v0, v10}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;I)V

    .line 458
    :cond_2
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 466
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 468
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_3

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_3

    .line 469
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v4, 0x2

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)V
    invoke-static {v3, v0, v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;I)V

    .line 474
    :cond_3
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 482
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 484
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 485
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    const/4 v4, 0x4

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)V
    invoke-static {v3, v0, v4}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;I)V

    .line 491
    :cond_4
    invoke-virtual {p0, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 492
    .local v1, delayedMsg:Landroid/os/Message;
    invoke-virtual {p0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 498
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #delayedMsg:Landroid/os/Message;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 499
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->onQueryFdnEnabled(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/UiccCardApplication;->access$300(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 502
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 503
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->onChangeFdnDone(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/UiccCardApplication;->access$400(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 509
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 510
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->onQueryFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/UiccCardApplication;->access$500(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 513
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 514
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->onChangeFacilityLock(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/UiccCardApplication;->access$600(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 520
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 521
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    .line 522
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in change icc app password with exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_5

    .line 525
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)V
    invoke-static {v3, v0, v9}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;I)V

    .line 530
    :cond_5
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 533
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 534
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_7

    .line 535
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in change icc app password with exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 538
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->parsePinPukErrorResult(Landroid/os/AsyncResult;I)V
    invoke-static {v3, v0, v10}, Lcom/android/internal/telephony/UiccCardApplication;->access$200(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;I)V

    .line 544
    :cond_6
    :goto_1
    invoke-virtual {p0, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 545
    .restart local v1       #delayedMsg:Landroid/os/Message;
    invoke-virtual {p0, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 541
    .end local v1           #delayedMsg:Landroid/os/Message;
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EVENT_CHANGE_PIN2_DONE finish"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 548
    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_b
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EVENT_WAIT_UPDATE_DONE"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 551
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mIccStateUpdated:I
    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$800(Lcom/android/internal/telephony/UiccCardApplication;)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_8

    .line 552
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EVENT_WAIT_UPDATE_DONE finish"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/UiccCardApplication$1;->sendResultToTarget(Landroid/os/Message;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 555
    :cond_8
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$808(Lcom/android/internal/telephony/UiccCardApplication;)I

    .line 556
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #getter for: Lcom/android/internal/telephony/UiccCardApplication;->mLogTag:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/UiccCardApplication;->access$700(Lcom/android/internal/telephony/UiccCardApplication;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "EVENT_WAIT_UPDATE_DONE again"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {p0, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 558
    .local v2, delayedMsgAgain:Landroid/os/Message;
    invoke-virtual {p0, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 563
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #delayedMsgAgain:Landroid/os/Message;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 564
    .restart local v0       #ar:Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/UiccCardApplication$1;->this$0:Lcom/android/internal/telephony/UiccCardApplication;

    #calls: Lcom/android/internal/telephony/UiccCardApplication;->getPinRemainingDone(Landroid/os/AsyncResult;)V
    invoke-static {v3, v0}, Lcom/android/internal/telephony/UiccCardApplication;->access$900(Lcom/android/internal/telephony/UiccCardApplication;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method
