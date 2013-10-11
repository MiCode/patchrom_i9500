.class Landroid/widget/ScrollView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "ScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/ScrollView;)V
    .locals 0

    .prologue
    .line 2467
    iput-object p1, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ScrollView;Landroid/widget/ScrollView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2467
    invoke-direct {p0, p1}, Landroid/widget/ScrollView$HoverScrollHandler;-><init>(Landroid/widget/ScrollView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x4

    const v9, 0x3ecccccd

    const/4 v8, 0x2

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 2469
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2543
    :cond_0
    :goto_0
    return-void

    .line 2471
    :pswitch_0
    const/4 v1, 0x0

    .line 2472
    .local v1, offset:I
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #calls: Landroid/widget/ScrollView;->getScrollRange()I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$100(Landroid/widget/ScrollView;)I

    move-result v3

    .line 2474
    .local v3, range:I
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    #setter for: Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$202(Landroid/widget/ScrollView;I)I

    .line 2475
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)I

    move-result v6

    iget-object v7, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionStartTime:I
    invoke-static {v7}, Landroid/widget/ScrollView;->access$400(Landroid/widget/ScrollView;)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x3e8

    #setter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$302(Landroid/widget/ScrollView;I)I

    .line 2477
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$200(Landroid/widget/ScrollView;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollStartTime:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$500(Landroid/widget/ScrollView;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollTimeInterval:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$600(Landroid/widget/ScrollView;)I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 2480
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    if-le v5, v8, :cond_1

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    if-ge v5, v10, :cond_1

    .line 2481
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    #setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$702(Landroid/widget/ScrollView;I)I

    .line 2489
    :goto_1
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$900(Landroid/widget/ScrollView;)I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 2490
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$700(Landroid/widget/ScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, -0x1

    .line 2499
    :goto_2
    if-gez v1, :cond_5

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1000(Landroid/widget/ScrollView;)I

    move-result v5

    if-lez v5, :cond_5

    .line 2500
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5, v0, v1}, Landroid/view/View;->scrollBy(II)V

    .line 2502
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1200(Landroid/widget/ScrollView;)Landroid/widget/ScrollView$HoverScrollHandler;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$1100(Landroid/widget/ScrollView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2482
    :cond_1
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    if-lt v5, v10, :cond_2

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_2

    .line 2483
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    #setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$702(Landroid/widget/ScrollView;I)I

    goto :goto_1

    .line 2484
    :cond_2
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$300(Landroid/widget/ScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_3

    .line 2485
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    #setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$702(Landroid/widget/ScrollView;I)I

    goto :goto_1

    .line 2487
    :cond_3
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$800(Landroid/widget/ScrollView;)I

    move-result v6

    #setter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/ScrollView;->access$702(Landroid/widget/ScrollView;I)I

    goto :goto_1

    .line 2492
    :cond_4
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$700(Landroid/widget/ScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, 0x1

    goto :goto_2

    .line 2503
    :cond_5
    if-lez v1, :cond_6

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/view/View;->mScrollY:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1300(Landroid/widget/ScrollView;)I

    move-result v5

    if-ge v5, v3, :cond_6

    .line 2504
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5, v0, v1}, Landroid/view/View;->scrollBy(II)V

    .line 2506
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverHandler:Landroid/widget/ScrollView$HoverScrollHandler;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1200(Landroid/widget/ScrollView;)Landroid/widget/ScrollView$HoverScrollHandler;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->HOVERSCROLL_DELAY:I
    invoke-static {v6}, Landroid/widget/ScrollView;->access$1100(Landroid/widget/ScrollView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2509
    :cond_6
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    .line 2510
    .local v2, overscrollMode:I
    if-eqz v2, :cond_7

    if-ne v2, v4, :cond_8

    if-lez v3, :cond_8

    :cond_7
    move v0, v4

    .line 2513
    .local v0, canOverscroll:Z
    :cond_8
    if-eqz v0, :cond_c

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1400(Landroid/widget/ScrollView;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2514
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 2515
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$900(Landroid/widget/ScrollView;)I

    move-result v5

    if-ne v5, v8, :cond_d

    .line 2516
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2517
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2518
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2527
    :cond_9
    :goto_3
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2529
    :cond_a
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 2531
    :cond_b
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #setter for: Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Landroid/widget/ScrollView;->access$1402(Landroid/widget/ScrollView;Z)Z

    .line 2534
    :cond_c
    if-nez v0, :cond_0

    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1400(Landroid/widget/ScrollView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2535
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #setter for: Landroid/widget/ScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Landroid/widget/ScrollView;->access$1402(Landroid/widget/ScrollView;Z)Z

    goto/16 :goto_0

    .line 2520
    :cond_d
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/ScrollView;->access$900(Landroid/widget/ScrollView;)I

    move-result v5

    if-ne v5, v4, :cond_9

    .line 2521
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1600(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2522
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2523
    iget-object v5, p0, Landroid/widget/ScrollView$HoverScrollHandler;->this$0:Landroid/widget/ScrollView;

    #getter for: Landroid/widget/ScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/ScrollView;->access$1500(Landroid/widget/ScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    .line 2469
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
