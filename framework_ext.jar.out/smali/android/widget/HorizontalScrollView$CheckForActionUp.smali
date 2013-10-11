.class final Landroid/widget/HorizontalScrollView$CheckForActionUp;
.super Ljava/lang/Object;
.source "HorizontalScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "CheckForActionUp"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HorizontalScrollView;


# direct methods
.method constructor <init>(Landroid/widget/HorizontalScrollView;)V
    .locals 0

    .prologue
    .line 1197
    iput-object p1, p0, Landroid/widget/HorizontalScrollView$CheckForActionUp;->this$0:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1199
    iget-object v0, p0, Landroid/widget/HorizontalScrollView$CheckForActionUp;->this$0:Landroid/widget/HorizontalScrollView;

    const/4 v1, 0x0

    #setter for: Landroid/widget/HorizontalScrollView;->mIsBeingDragged:Z
    invoke-static {v0, v1}, Landroid/widget/HorizontalScrollView;->access$102(Landroid/widget/HorizontalScrollView;Z)Z

    .line 1201
    iget-object v0, p0, Landroid/widget/HorizontalScrollView$CheckForActionUp;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mBounceEnabled:Z
    invoke-static {v0}, Landroid/widget/HorizontalScrollView;->access$200(Landroid/widget/HorizontalScrollView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HorizontalScrollView$CheckForActionUp;->this$0:Landroid/widget/HorizontalScrollView;

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v0, v0, Landroid/widget/BounceController;->mBounceExtent:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_0

    .line 1204
    iget-object v0, p0, Landroid/widget/HorizontalScrollView$CheckForActionUp;->this$0:Landroid/widget/HorizontalScrollView;

    iget-object v0, v0, Landroid/widget/HorizontalScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    invoke-interface {v0, v2}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    .line 1206
    iget-object v0, p0, Landroid/widget/HorizontalScrollView$CheckForActionUp;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v0}, Landroid/widget/HorizontalScrollView;->access$300(Landroid/widget/HorizontalScrollView;)Landroid/view/VelocityTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Landroid/widget/HorizontalScrollView$CheckForActionUp;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;
    invoke-static {v0}, Landroid/widget/HorizontalScrollView;->access$300(Landroid/widget/HorizontalScrollView;)Landroid/view/VelocityTracker;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 1210
    :cond_0
    return-void
.end method
