.class Landroid/widget/AbsListView$SmartScrollObserver;
.super Landroid/database/ContentObserver;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartScrollObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1

    .prologue
    .line 8306
    iput-object p1, p0, Landroid/widget/AbsListView$SmartScrollObserver;->this$0:Landroid/widget/AbsListView;

    .line 8307
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 8308
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .parameter "selfChange"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 8315
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 8317
    iget-object v0, p0, Landroid/widget/AbsListView$SmartScrollObserver;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/view/View;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$6600(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 8318
    iget-object v0, p0, Landroid/widget/AbsListView$SmartScrollObserver;->this$0:Landroid/widget/AbsListView;

    iput-boolean v2, v0, Landroid/widget/AbsListView;->mSmartScrollSettingOn:Z

    .line 8320
    iget-object v0, p0, Landroid/widget/AbsListView$SmartScrollObserver;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$SmartScrollObserver;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsListView$SmartScrollObserver;->this$0:Landroid/widget/AbsListView;

    iget-boolean v0, v0, Landroid/widget/AbsListView;->mSmartScrollOn:Z

    if-eqz v0, :cond_0

    .line 8321
    iget-object v0, p0, Landroid/widget/AbsListView$SmartScrollObserver;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0, v2}, Lcom/sec/android/smartface/SmartFaceManager;->start(I)V

    .line 8330
    :cond_0
    :goto_0
    return-void

    .line 8324
    :cond_1
    iget-object v0, p0, Landroid/widget/AbsListView$SmartScrollObserver;->this$0:Landroid/widget/AbsListView;

    iput-boolean v3, v0, Landroid/widget/AbsListView;->mSmartScrollSettingOn:Z

    .line 8326
    iget-object v0, p0, Landroid/widget/AbsListView$SmartScrollObserver;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v0, :cond_0

    .line 8327
    iget-object v0, p0, Landroid/widget/AbsListView$SmartScrollObserver;->this$0:Landroid/widget/AbsListView;

    iget-object v0, v0, Landroid/widget/AbsListView;->mFManager:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v0}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    goto :goto_0
.end method
