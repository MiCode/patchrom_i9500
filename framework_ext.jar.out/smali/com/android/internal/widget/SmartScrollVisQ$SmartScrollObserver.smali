.class Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;
.super Landroid/database/ContentObserver;
.source "SmartScrollVisQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SmartScrollVisQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartScrollObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SmartScrollVisQ;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SmartScrollVisQ;)V
    .locals 1

    .prologue
    .line 535
    iput-object p1, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    .line 536
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 537
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 541
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 543
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v0, v0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 544
    const-string v0, "SmartScrollVisQ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange SMART_SCROLL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v2, v2, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_scroll"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v0, v0, Lcom/android/internal/widget/SmartScrollVisQ;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_0

    .line 560
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v0, v0, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll_visual_feedback_icon"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v5, :cond_2

    .line 561
    const-string v0, "SmartScrollVisQ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange SMART_SCROLL_VISUAL_FEEDBACK_ICON = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v2, v2, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_scroll"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iput-boolean v5, v0, Lcom/android/internal/widget/SmartScrollVisQ;->mVisQEnabled:Z

    .line 572
    :goto_1
    return-void

    .line 550
    :cond_1
    const-string v0, "SmartScrollVisQ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange SMART_SCROLL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v2, v2, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_scroll"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v0, v0, Lcom/android/internal/widget/SmartScrollVisQ;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v0, v0, Lcom/android/internal/widget/SmartScrollVisQ;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    .line 554
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    #calls: Lcom/android/internal/widget/SmartScrollVisQ;->stopAllFailAnim()V
    invoke-static {v0}, Lcom/android/internal/widget/SmartScrollVisQ;->access$100(Lcom/android/internal/widget/SmartScrollVisQ;)V

    .line 555
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    #calls: Lcom/android/internal/widget/SmartScrollVisQ;->hideInitQ()V
    invoke-static {v0}, Lcom/android/internal/widget/SmartScrollVisQ;->access$200(Lcom/android/internal/widget/SmartScrollVisQ;)V

    .line 556
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    #calls: Lcom/android/internal/widget/SmartScrollVisQ;->hideImmediateDetectedQ()V
    invoke-static {v0}, Lcom/android/internal/widget/SmartScrollVisQ;->access$300(Lcom/android/internal/widget/SmartScrollVisQ;)V

    goto :goto_0

    .line 566
    :cond_2
    const-string v0, "SmartScrollVisQ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange SMART_SCROLL_VISUAL_FEEDBACK_ICON = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iget-object v2, v2, Lcom/android/internal/widget/SmartScrollVisQ;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smart_scroll"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lcom/android/internal/widget/SmartScrollVisQ$SmartScrollObserver;->this$0:Lcom/android/internal/widget/SmartScrollVisQ;

    iput-boolean v4, v0, Lcom/android/internal/widget/SmartScrollVisQ;->mVisQEnabled:Z

    goto :goto_1
.end method
