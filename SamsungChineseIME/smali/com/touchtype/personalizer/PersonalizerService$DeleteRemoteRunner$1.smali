.class Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;
.super Ljava/lang/Object;
.source "PersonalizerService.java"

# interfaces
.implements Lcom/touchtype/personalizer/PersonalizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;-><init>(Lcom/touchtype/personalizer/PersonalizerService;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

.field final synthetic val$this$0:Lcom/touchtype/personalizer/PersonalizerService;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;Lcom/touchtype/personalizer/PersonalizerService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->val$this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public busy()V
    .locals 0

    .prologue
    .line 417
    return-void
.end method

.method public downloadProgress(II)V
    .locals 0
    .parameter "current"
    .parameter "max"

    .prologue
    .line 413
    return-void
.end method

.method public failed()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    .line 389
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService;->mDeleteTryCount:I
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$1300(Lcom/touchtype/personalizer/PersonalizerService;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 390
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$1308(Lcom/touchtype/personalizer/PersonalizerService;)I

    .line 391
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to delete remote data. Trying again ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    iget-object v2, v2, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService;->mDeleteTryCount:I
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerService;->access$1300(Lcom/touchtype/personalizer/PersonalizerService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$1500(Lcom/touchtype/personalizer/PersonalizerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService;->mDeleteRemoteTimedTask:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerService;->access$1400(Lcom/touchtype/personalizer/PersonalizerService;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 409
    :goto_0
    return-void

    .line 397
    :cond_0
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to delete remote data after 5 attempts."

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    const v1, 0x7f0b024b

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->mService:Ljava/lang/String;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->access$1100(Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->mServiceId:I
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->access$1200(Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;)I

    move-result v3

    const/4 v4, 0x1

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->createNotification(ILjava/lang/String;IZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/touchtype/personalizer/PersonalizerService;->access$300(Lcom/touchtype/personalizer/PersonalizerService;ILjava/lang/String;IZ)V

    .line 401
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    const/4 v1, 0x2

    const/4 v2, 0x0

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V
    invoke-static {v0, v5, v1, v2}, Lcom/touchtype/personalizer/PersonalizerService;->access$400(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V

    .line 404
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerLastRun(IJ)V
    invoke-static {v0, v5, v1, v2}, Lcom/touchtype/personalizer/PersonalizerService;->access$500(Lcom/touchtype/personalizer/PersonalizerService;IJ)V

    .line 407
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$600(Lcom/touchtype/personalizer/PersonalizerService;)V

    goto :goto_0
.end method

.method public generating()V
    .locals 0

    .prologue
    .line 377
    return-void
.end method

.method public merging()V
    .locals 0

    .prologue
    .line 373
    return-void
.end method

.method public serverProgress(II)V
    .locals 0
    .parameter "current"
    .parameter "max"

    .prologue
    .line 369
    return-void
.end method

.method public succeeded()V
    .locals 6

    .prologue
    const/4 v5, 0x7

    const/4 v4, 0x0

    .line 358
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    const v1, 0x7f0b0249

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->mService:Ljava/lang/String;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->access$1100(Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->mServiceId:I
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->access$1200(Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;)I

    move-result v3

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->createNotification(ILjava/lang/String;IZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/touchtype/personalizer/PersonalizerService;->access$300(Lcom/touchtype/personalizer/PersonalizerService;ILjava/lang/String;IZ)V

    .line 360
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    const/4 v1, 0x3

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V
    invoke-static {v0, v5, v1, v4}, Lcom/touchtype/personalizer/PersonalizerService;->access$400(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V

    .line 362
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerLastRun(IJ)V
    invoke-static {v0, v5, v1, v2}, Lcom/touchtype/personalizer/PersonalizerService;->access$500(Lcom/touchtype/personalizer/PersonalizerService;IJ)V

    .line 364
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$DeleteRemoteRunner;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$600(Lcom/touchtype/personalizer/PersonalizerService;)V

    .line 365
    return-void
.end method
