.class Landroid/widget/ScrollView$SmartScrollObserver;
.super Landroid/database/ContentObserver;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartScrollObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .locals 1

    .prologue
    .line 2555
    iput-object p1, p0, Landroid/widget/ScrollView$SmartScrollObserver;->this$0:Landroid/widget/ScrollView;

    .line 2556
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2557
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2564
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 2566
    iget-object v0, p0, Landroid/widget/ScrollView$SmartScrollObserver;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/ScrollView;->access$1700(Landroid/widget/ScrollView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 2567
    iget-object v0, p0, Landroid/widget/ScrollView$SmartScrollObserver;->this$0:Landroid/widget/ScrollView;

    iput-boolean v2, v0, Landroid/widget/ScrollView;->mSmartScrollSettingOn:Z

    .line 2569
    iget-object v0, p0, Landroid/widget/ScrollView$SmartScrollObserver;->this$0:Landroid/widget/ScrollView;

    iget-object v0, v0, Landroid/widget/ScrollView;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ScrollView$SmartScrollObserver;->this$0:Landroid/widget/ScrollView;

    iget-boolean v0, v0, Landroid/widget/ScrollView;->mSmartScrollOn:Z

    if-eqz v0, :cond_0

    .line 2570
    iget-object v0, p0, Landroid/widget/ScrollView$SmartScrollObserver;->this$0:Landroid/widget/ScrollView;

    iget-object v0, v0, Landroid/widget/ScrollView;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/smartface/SmartFaceManager;->start(I)V

    .line 2579
    :cond_0
    :goto_0
    return-void

    .line 2573
    :cond_1
    iget-object v0, p0, Landroid/widget/ScrollView$SmartScrollObserver;->this$0:Landroid/widget/ScrollView;

    iput-boolean v3, v0, Landroid/widget/ScrollView;->mSmartScrollSettingOn:Z

    .line 2575
    iget-object v0, p0, Landroid/widget/ScrollView$SmartScrollObserver;->this$0:Landroid/widget/ScrollView;

    iget-object v0, v0, Landroid/widget/ScrollView;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_0

    .line 2576
    iget-object v0, p0, Landroid/widget/ScrollView$SmartScrollObserver;->this$0:Landroid/widget/ScrollView;

    iget-object v0, v0, Landroid/widget/ScrollView;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    goto :goto_0
.end method
