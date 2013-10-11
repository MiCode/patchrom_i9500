.class Lcom/android/internal/widget/SmartScrollVisQ$2;
.super Landroid/os/Handler;
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
    .line 482
    iput-object p1, p0, Lcom/android/internal/widget/SmartScrollVisQ$2;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0xb

    const/16 v4, 0xa

    .line 485
    const-string v1, "SmartScrollVisQ"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "message received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 488
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ$2;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    #getter for: Lcom/android/internal/widget/SmartScrollVisQ;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/widget/SmartScrollVisQ;->access$000(Lcom/android/internal/widget/SmartScrollVisQ;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ$2;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    #getter for: Lcom/android/internal/widget/SmartScrollVisQ;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/widget/SmartScrollVisQ;->access$000(Lcom/android/internal/widget/SmartScrollVisQ;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ$2;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-boolean v1, v1, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingDetectedQ:Z

    if-eqz v1, :cond_0

    .line 493
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ$2;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v1, v1, Lcom/android/internal/widget/SmartScrollVisQ;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ$2;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v2, v2, Lcom/android/internal/widget/SmartScrollVisQ;->successImageView:Landroid/widget/ImageView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 494
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ$2;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/widget/SmartScrollVisQ;->mShowingDetectedQ:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 498
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 499
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 504
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ$2;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    #getter for: Lcom/android/internal/widget/SmartScrollVisQ;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/widget/SmartScrollVisQ;->access$000(Lcom/android/internal/widget/SmartScrollVisQ;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ$2;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    #getter for: Lcom/android/internal/widget/SmartScrollVisQ;->mPrivateEventHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/internal/widget/SmartScrollVisQ;->access$000(Lcom/android/internal/widget/SmartScrollVisQ;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    iget-object v1, p0, Lcom/android/internal/widget/SmartScrollVisQ$2;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    #calls: Lcom/android/internal/widget/SmartScrollVisQ;->stopAllFailAnim()V
    invoke-static {v1}, Lcom/android/internal/widget/SmartScrollVisQ;->access$100(Lcom/android/internal/widget/SmartScrollVisQ;)V

    goto :goto_0

    .line 486
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
