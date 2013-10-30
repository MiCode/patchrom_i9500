.class Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;
.super Ljava/lang/Object;
.source "PersonalizerService.java"

# interfaces
.implements Lcom/touchtype/personalizer/PersonalizationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;-><init>(Lcom/touchtype/personalizer/PersonalizerService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

.field final synthetic val$this$0:Lcom/touchtype/personalizer/PersonalizerService;


# direct methods
.method constructor <init>(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;Lcom/touchtype/personalizer/PersonalizerService;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    iput-object p2, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->val$this$0:Lcom/touchtype/personalizer/PersonalizerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public busy()V
    .locals 5

    .prologue
    .line 305
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RunPersonalizer busy() "

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    new-instance v0, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;

    invoke-direct {v0}, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;-><init>()V

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    iget-object v1, v1, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerService;->access$700(Lcom/touchtype/personalizer/PersonalizerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/touchtype/personalizer/PersonalizationToggleReceiver;->disablePersonalization(Landroid/content/Context;)V

    .line 310
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->disableRemotePersonalizers()V
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$800(Lcom/touchtype/personalizer/PersonalizerService;)V

    .line 311
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    const v1, 0x7f0b024e

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->access$100(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceId:I
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->access$200(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;)I

    move-result v3

    const/4 v4, 0x1

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->createNotification(ILjava/lang/String;IZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/touchtype/personalizer/PersonalizerService;->access$300(Lcom/touchtype/personalizer/PersonalizerService;ILjava/lang/String;IZ)V

    .line 313
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$600(Lcom/touchtype/personalizer/PersonalizerService;)V

    .line 314
    return-void
.end method

.method public downloadProgress(II)V
    .locals 4
    .parameter "current"
    .parameter "max"

    .prologue
    .line 297
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceId:I
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->access$200(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/touchtype/personalizer/PersonalizerService;->access$400(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V

    .line 299
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RunPersonalizer downloadProgress() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    return-void
.end method

.method public failed()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 286
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RunPersonalizer failed() "

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceId:I
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->access$200(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;)I

    move-result v1

    const/4 v2, 0x2

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V
    invoke-static {v0, v1, v2, v4}, Lcom/touchtype/personalizer/PersonalizerService;->access$400(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V

    .line 288
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceId:I
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->access$200(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerLastRun(IJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/touchtype/personalizer/PersonalizerService;->access$500(Lcom/touchtype/personalizer/PersonalizerService;IJ)V

    .line 290
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    const v1, 0x7f0b024a

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->access$100(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceId:I
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->access$200(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;)I

    move-result v3

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->createNotification(ILjava/lang/String;IZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/touchtype/personalizer/PersonalizerService;->access$300(Lcom/touchtype/personalizer/PersonalizerService;ILjava/lang/String;IZ)V

    .line 292
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$600(Lcom/touchtype/personalizer/PersonalizerService;)V

    .line 293
    return-void
.end method

.method public generating()V
    .locals 2

    .prologue
    .line 281
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RunPersonalizer generating() "

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public merging()V
    .locals 2

    .prologue
    .line 276
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RunPersonalizer merging() "

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public serverProgress(II)V
    .locals 0
    .parameter "current"
    .parameter "max"

    .prologue
    .line 272
    return-void
.end method

.method public succeeded()V
    .locals 5

    .prologue
    .line 260
    invoke-static {}, Lcom/touchtype/personalizer/PersonalizerService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RunPersonalizer succeeded() "

    invoke-static {v0, v1}, Lcom/touchtype_fluency/service/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    const v1, 0x7f0b0248

    iget-object v2, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceName:Ljava/lang/String;
    invoke-static {v2}, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->access$100(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceId:I
    invoke-static {v3}, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->access$200(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;)I

    move-result v3

    const/4 v4, 0x0

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->createNotification(ILjava/lang/String;IZ)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/touchtype/personalizer/PersonalizerService;->access$300(Lcom/touchtype/personalizer/PersonalizerService;ILjava/lang/String;IZ)V

    .line 263
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceId:I
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->access$200(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerState(IIZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/touchtype/personalizer/PersonalizerService;->access$400(Lcom/touchtype/personalizer/PersonalizerService;IIZ)V

    .line 265
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    iget-object v1, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    #getter for: Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->mServiceId:I
    invoke-static {v1}, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->access$200(Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->setPersonalizerLastRun(IJ)V
    invoke-static {v0, v1, v2, v3}, Lcom/touchtype/personalizer/PersonalizerService;->access$500(Lcom/touchtype/personalizer/PersonalizerService;IJ)V

    .line 267
    iget-object v0, p0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer$1;->this$1:Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;

    iget-object v0, v0, Lcom/touchtype/personalizer/PersonalizerService$RunPersonalizer;->this$0:Lcom/touchtype/personalizer/PersonalizerService;

    #calls: Lcom/touchtype/personalizer/PersonalizerService;->writeStoredState()V
    invoke-static {v0}, Lcom/touchtype/personalizer/PersonalizerService;->access$600(Lcom/touchtype/personalizer/PersonalizerService;)V

    .line 268
    return-void
.end method
