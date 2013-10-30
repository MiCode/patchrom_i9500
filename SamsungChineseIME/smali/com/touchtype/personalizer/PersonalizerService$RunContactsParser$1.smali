.class Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;
.super Lcom/touchtype/personalizer/ContactsParser;
.source "PersonalizerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;Landroid/content/Context;Lcom/touchtype_fluency/util/SwiftKeySession;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 559
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    invoke-direct {p0, p2, p3}, Lcom/touchtype/personalizer/ContactsParser;-><init>(Landroid/content/Context;Lcom/touchtype_fluency/util/SwiftKeySession;)V

    return-void
.end method


# virtual methods
.method protected onComplete()V
    .locals 8

    .prologue
    const v7, 0x7f0b024a

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 574
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService;->mGotContactsProgress:Z
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$2200(Lcom/touchtype/personalizer/PersonalizerService;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 576
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mTotal:I
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->access$2300(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 577
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    const v1, 0x7f0b025a

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->access$2500(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceId:I
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->access$2600(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)I

    move-result v3

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->createNotification(ILjava/lang/String;IZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/touchtype/personalizer/PersonalizerService;->access$300(Lcom/touchtype/personalizer/PersonalizerService;ILjava/lang/String;IZ)V

    .line 580
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    const/4 v1, 0x4

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V
    invoke-static {v0, v5, v1, v4}, Lcom/touchtype/personalizer/PersonalizerService;->access$400(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V

    .line 595
    :goto_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerLastRun(IJ)V
    invoke-static {v0, v5, v1, v2}, Lcom/touchtype/personalizer/PersonalizerService;->access$500(Lcom/touchtype/personalizer/PersonalizerService;IJ)V

    .line 597
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$600(Lcom/touchtype/personalizer/PersonalizerService;)V

    .line 620
    :goto_1
    return-void

    .line 582
    :cond_0
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mTotal:I
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->access$2300(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->access$2500(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceId:I
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->access$2600(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)I

    move-result v2

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->createNotification(ILjava/lang/String;IZ)V
    invoke-static {v0, v7, v1, v2, v3}, Lcom/touchtype/personalizer/PersonalizerService;->access$300(Lcom/touchtype/personalizer/PersonalizerService;ILjava/lang/String;IZ)V

    .line 585
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V
    invoke-static {v0, v5, v6, v4}, Lcom/touchtype/personalizer/PersonalizerService;->access$400(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V

    goto :goto_0

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    const v1, 0x7f0b0248

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->access$2500(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceId:I
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->access$2600(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)I

    move-result v3

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->createNotification(ILjava/lang/String;IZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/touchtype/personalizer/PersonalizerService;->access$300(Lcom/touchtype/personalizer/PersonalizerService;ILjava/lang/String;IZ)V

    .line 591
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    const/4 v1, 0x3

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V
    invoke-static {v0, v5, v1, v4}, Lcom/touchtype/personalizer/PersonalizerService;->access$400(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V

    goto :goto_0

    .line 600
    :cond_2
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService;->mContactsTryCount:I
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$2700(Lcom/touchtype/personalizer/PersonalizerService;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 601
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$2708(Lcom/touchtype/personalizer/PersonalizerService;)I

    .line 602
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to build an ConstactsParser object. Trying again ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v2, v2, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService;->mContactsTryCount:I
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerService;->access$2700(Lcom/touchtype/personalizer/PersonalizerService;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$1500(Lcom/touchtype/personalizer/PersonalizerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService;->mContactsTimedTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerService;->access$2400(Lcom/touchtype/personalizer/PersonalizerService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_1

    .line 608
    :cond_3
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V
    invoke-static {v0, v5, v6, v4}, Lcom/touchtype/personalizer/PersonalizerService;->access$400(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V

    .line 610
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerLastRun(IJ)V
    invoke-static {v0, v5, v1, v2}, Lcom/touchtype/personalizer/PersonalizerService;->access$500(Lcom/touchtype/personalizer/PersonalizerService;IJ)V

    .line 613
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceName:Ljava/lang/String;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->access$2500(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mServiceId:I
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->access$2600(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;)I

    move-result v2

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->createNotification(ILjava/lang/String;IZ)V
    invoke-static {v0, v7, v1, v2, v3}, Lcom/touchtype/personalizer/PersonalizerService;->access$300(Lcom/touchtype/personalizer/PersonalizerService;ILjava/lang/String;IZ)V

    .line 615
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$600(Lcom/touchtype/personalizer/PersonalizerService;)V

    .line 616
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ran out of retry attemps when attempting to parse Contacts"

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method protected onProgress(II)V
    .locals 3
    .parameter "current"
    .parameter "total"

    .prologue
    .line 564
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    const/4 v1, 0x1

    #setter for: Lcom/touchtype/personalizer/PersonalizerService;->mGotContactsProgress:Z
    invoke-static {v0, v1}, Lcom/touchtype/personalizer/PersonalizerService;->access$2202(Lcom/touchtype/personalizer/PersonalizerService;Z)Z

    .line 565
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    #setter for: Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->mTotal:I
    invoke-static {v0, p2}, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->access$2302(Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;I)I

    .line 566
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$1500(Lcom/touchtype/personalizer/PersonalizerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizerService$RunContactsParser;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService;->mContactsTimedTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerService;->access$2400(Lcom/touchtype/personalizer/PersonalizerService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 567
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Processed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    mul-int/lit8 v2, p1, 0x64

    div-int/2addr v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "% of Contacts messages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    return-void
.end method
