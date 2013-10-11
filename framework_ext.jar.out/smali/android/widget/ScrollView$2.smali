.class Landroid/widget/ScrollView$2;
.super Ljava/lang/Object;
.source "ScrollView.java"

# interfaces
.implements Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ScrollView;->registerSmartScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 2606
    iput-object p1, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/sec/android/smartface/FaceInfo;I)V
    .locals 9
    .parameter "data"
    .parameter "service_type"

    .prologue
    const v7, 0x3ecccccd

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 2608
    iget-object v6, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    iget-boolean v6, v6, Landroid/widget/ScrollView;->mSmartScrollSettingOn:Z

    if-nez v6, :cond_1

    .line 2664
    :cond_0
    :goto_0
    return-void

    .line 2612
    :cond_1
    iget v4, p1, Lcom/sec/android/smartface/FaceInfo;->verticalMovement:I

    .line 2613
    .local v4, y:I
    iget v3, p1, Lcom/sec/android/smartface/FaceInfo;->horizontalMovement:I

    .line 2617
    .local v3, x:I
    iget-object v6, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #calls: Landroid/widget/ScrollView;->getScrollRange()I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$100(Landroid/widget/ScrollView;)I

    move-result v2

    .line 2619
    .local v2, range:I
    const/4 v6, -0x1

    if-gt v4, v6, :cond_2

    iget-object v6, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$1800(Landroid/widget/ScrollView;)I

    move-result v6

    if-lez v6, :cond_2

    .line 2620
    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    const/16 v6, -0x28

    invoke-virtual {v5, v0, v6}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0

    .line 2622
    :cond_2
    if-lt v4, v5, :cond_3

    iget-object v6, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$1900(Landroid/widget/ScrollView;)I

    move-result v6

    if-ge v6, v2, :cond_3

    .line 2623
    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    const/16 v6, 0x28

    invoke-virtual {v5, v0, v6}, Landroid/view/View;->scrollBy(II)V

    goto :goto_0

    .line 2627
    :cond_3
    iget-object v6, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    iget-boolean v6, v6, Landroid/widget/ScrollView;->mEndEffectEnabled:Z

    if-eqz v6, :cond_5

    .line 2628
    if-nez v4, :cond_4

    .line 2629
    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    iget-boolean v5, v5, Landroid/widget/ScrollView;->mOverscrollRun:Z

    if-eqz v5, :cond_0

    .line 2630
    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    iget-object v5, v5, Landroid/widget/ScrollView;->mBounceRunnable:Landroid/widget/BounceController$BounceRunnable;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/widget/BounceController$BounceRunnable;->start(F)V

    .line 2631
    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    iput-boolean v0, v5, Landroid/widget/ScrollView;->mOverscrollRun:Z

    goto :goto_0

    .line 2634
    :cond_4
    iget-object v6, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    iget-object v6, v6, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    iget v7, v6, Landroid/widget/BounceController;->mBounceExtent:F

    neg-int v8, v4

    mul-int/lit8 v8, v8, 0x46

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v6, Landroid/widget/BounceController;->mBounceExtent:F

    .line 2635
    iget-object v6, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    iget-object v6, v6, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    iget-object v7, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    iget-object v7, v7, Landroid/widget/ScrollView;->mBounceController:Landroid/widget/BounceController;

    invoke-virtual {v7}, Landroid/widget/BounceController;->adjustBounceExtent()F

    move-result v7

    iput v7, v6, Landroid/widget/BounceController;->mBounceExtent:F

    .line 2636
    iget-object v6, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/view/View;->postInvalidate()V

    .line 2637
    iget-object v6, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    iput-boolean v5, v6, Landroid/widget/ScrollView;->mOverscrollRun:Z

    goto :goto_0

    .line 2641
    :cond_5
    iget-object v6, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/view/View;->getOverScrollMode()I

    move-result v1

    .line 2642
    .local v1, overscrollMode:I
    if-eqz v1, :cond_6

    if-ne v1, v5, :cond_7

    if-lez v2, :cond_7

    :cond_6
    move v0, v5

    .line 2644
    .local v0, canOverscroll:Z
    :cond_7
    if-eqz v0, :cond_0

    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2645
    if-gez v4, :cond_a

    .line 2646
    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2647
    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2648
    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2657
    :cond_8
    :goto_1
    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2659
    :cond_9
    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/view/View;->postInvalidate()V

    goto/16 :goto_0

    .line 2650
    :cond_a
    if-lez v4, :cond_8

    .line 2651
    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2652
    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_8

    .line 2653
    iget-object v5, p0, Landroid/widget/ScrollView$2;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_1
.end method
