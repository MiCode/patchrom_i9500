.class Lcom/android/internal/widget/SmartScrollVisQ$3;
.super Landroid/content/BroadcastReceiver;
.source "SmartScrollVisQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SmartScrollVisQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SmartScrollVisQ;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SmartScrollVisQ;)V
    .locals 0

    .prologue
    .line 516
    iput-object p1, p0, Lcom/android/internal/widget/SmartScrollVisQ$3;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 519
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, action:Ljava/lang/String;
    const-string v1, "SmartScrollVisQ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const-string v1, "com.sec.visq.start"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 523
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ$3;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v1, v1, Lcom/android/internal/widget/SmartScrollVisQ;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/smartface/SmartFaceManager;->start(I)V

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    const-string v1, "com.sec.visq.stop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ$3;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v1, v1, Lcom/android/internal/widget/SmartScrollVisQ;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v1}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    .line 526
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ$3;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    #calls: Lcom/android/internal/widget/SmartScrollVisQ;->stopAllFailAnim()V
    invoke-static {v1}, Lcom/android/internal/widget/SmartScrollVisQ;->access$100(Lcom/android/internal/widget/SmartScrollVisQ;)V

    .line 527
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ$3;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    #calls: Lcom/android/internal/widget/SmartScrollVisQ;->hideInitQ()V
    invoke-static {v1}, Lcom/android/internal/widget/SmartScrollVisQ;->access$200(Lcom/android/internal/widget/SmartScrollVisQ;)V

    .line 528
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ$3;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    #calls: Lcom/android/internal/widget/SmartScrollVisQ;->hideImmediateDetectedQ()V
    invoke-static {v1}, Lcom/android/internal/widget/SmartScrollVisQ;->access$300(Lcom/android/internal/widget/SmartScrollVisQ;)V

    .line 529
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ$3;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    #calls: Lcom/android/internal/widget/SmartScrollVisQ;->hideStartQ()V
    invoke-static {v1}, Lcom/android/internal/widget/SmartScrollVisQ;->access$400(Lcom/android/internal/widget/SmartScrollVisQ;)V

    goto :goto_0
.end method
