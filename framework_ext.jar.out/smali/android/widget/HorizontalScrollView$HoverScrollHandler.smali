.class Landroid/widget/HorizontalScrollView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "HorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HorizontalScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/HorizontalScrollView;


# direct methods
.method private constructor <init>(Landroid/widget/HorizontalScrollView;)V
    .locals 0

    .prologue
    .line 2286
    iput-object p1, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/HorizontalScrollView;Landroid/widget/HorizontalScrollView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2286
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView$HoverScrollHandler;-><init>(Landroid/widget/HorizontalScrollView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const v8, 0x3ecccccd

    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 2289
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2362
    :cond_0
    :goto_0
    return-void

    .line 2291
    :pswitch_0
    const/4 v1, 0x0

    .line 2292
    .local v1, offset:I
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #calls: Landroid/widget/HorizontalScrollView;->getScrollRange()I
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$400(Landroid/widget/HorizontalScrollView;)I

    move-result v3

    .line 2294
    .local v3, range:I
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    long-to-int v6, v6

    #setter for: Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5, v6}, Landroid/widget/HorizontalScrollView;->access$502(Landroid/widget/HorizontalScrollView;I)I

    .line 2295
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    iget-object v6, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v6}, Landroid/widget/HorizontalScrollView;->access$500(Landroid/widget/HorizontalScrollView;)I

    move-result v6

    iget-object v7, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverRecognitionStartTime:I
    invoke-static {v7}, Landroid/widget/HorizontalScrollView;->access$700(Landroid/widget/HorizontalScrollView;)I

    move-result v7

    sub-int/2addr v6, v7

    div-int/lit16 v6, v6, 0x3e8

    #setter for: Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5, v6}, Landroid/widget/HorizontalScrollView;->access$602(Landroid/widget/HorizontalScrollView;I)I

    .line 2297
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverRecognitionCurrentTime:I
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$500(Landroid/widget/HorizontalScrollView;)I

    move-result v5

    iget-object v6, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverScrollStartTime:I
    invoke-static {v6}, Landroid/widget/HorizontalScrollView;->access$800(Landroid/widget/HorizontalScrollView;)I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverScrollTimeInterval:I
    invoke-static {v6}, Landroid/widget/HorizontalScrollView;->access$900(Landroid/widget/HorizontalScrollView;)I

    move-result v6

    if-lt v5, v6, :cond_0

    .line 2300
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$600(Landroid/widget/HorizontalScrollView;)I

    move-result v5

    if-le v5, v9, :cond_1

    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$600(Landroid/widget/HorizontalScrollView;)I

    move-result v5

    if-ge v5, v10, :cond_1

    .line 2301
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    iget-object v6, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/HorizontalScrollView;->access$1100(Landroid/widget/HorizontalScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    #setter for: Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/HorizontalScrollView;->access$1002(Landroid/widget/HorizontalScrollView;I)I

    .line 2309
    :goto_1
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1200(Landroid/widget/HorizontalScrollView;)I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 2310
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1000(Landroid/widget/HorizontalScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, -0x1

    .line 2319
    :goto_2
    if-gez v1, :cond_5

    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1300(Landroid/widget/HorizontalScrollView;)I

    move-result v5

    if-lez v5, :cond_5

    .line 2320
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v1, v0}, Landroid/view/View;->scrollBy(II)V

    .line 2321
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1500(Landroid/widget/HorizontalScrollView;)Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I
    invoke-static {v6}, Landroid/widget/HorizontalScrollView;->access$1400(Landroid/widget/HorizontalScrollView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2302
    :cond_1
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$600(Landroid/widget/HorizontalScrollView;)I

    move-result v5

    if-lt v5, v10, :cond_2

    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$600(Landroid/widget/HorizontalScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-ge v5, v6, :cond_2

    .line 2303
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    iget-object v6, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/HorizontalScrollView;->access$1100(Landroid/widget/HorizontalScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x4

    #setter for: Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/HorizontalScrollView;->access$1002(Landroid/widget/HorizontalScrollView;I)I

    goto :goto_1

    .line 2304
    :cond_2
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverRecognitionDurationTime:I
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$600(Landroid/widget/HorizontalScrollView;)I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_3

    .line 2305
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    iget-object v6, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/HorizontalScrollView;->access$1100(Landroid/widget/HorizontalScrollView;)I

    move-result v6

    add-int/lit8 v6, v6, 0x6

    #setter for: Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/HorizontalScrollView;->access$1002(Landroid/widget/HorizontalScrollView;I)I

    goto :goto_1

    .line 2307
    :cond_3
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    iget-object v6, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->HOVERSCROLL_SPEED:I
    invoke-static {v6}, Landroid/widget/HorizontalScrollView;->access$1100(Landroid/widget/HorizontalScrollView;)I

    move-result v6

    #setter for: Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I
    invoke-static {v5, v6}, Landroid/widget/HorizontalScrollView;->access$1002(Landroid/widget/HorizontalScrollView;I)I

    goto :goto_1

    .line 2312
    :cond_4
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverScrollSpeed:I
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1000(Landroid/widget/HorizontalScrollView;)I

    move-result v5

    mul-int/lit8 v1, v5, 0x1

    goto :goto_2

    .line 2322
    :cond_5
    if-lez v1, :cond_6

    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/view/View;->mScrollX:I
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1600(Landroid/widget/HorizontalScrollView;)I

    move-result v5

    if-ge v5, v3, :cond_6

    .line 2323
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5, v1, v0}, Landroid/view/View;->scrollBy(II)V

    .line 2324
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverHandler:Landroid/widget/HorizontalScrollView$HoverScrollHandler;
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1500(Landroid/widget/HorizontalScrollView;)Landroid/widget/HorizontalScrollView$HoverScrollHandler;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->HOVERSCROLL_DELAY:I
    invoke-static {v6}, Landroid/widget/HorizontalScrollView;->access$1400(Landroid/widget/HorizontalScrollView;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 2327
    :cond_6
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5}, Landroid/view/View;->getOverScrollMode()I

    move-result v2

    .line 2328
    .local v2, overscrollMode:I
    if-eqz v2, :cond_7

    if-ne v2, v4, :cond_8

    if-lez v3, :cond_8

    :cond_7
    move v0, v4

    .line 2331
    .local v0, canOverscroll:Z
    :cond_8
    if-eqz v0, :cond_c

    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1700(Landroid/widget/HorizontalScrollView;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2332
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1800(Landroid/widget/HorizontalScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 2333
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1200(Landroid/widget/HorizontalScrollView;)I

    move-result v5

    if-ne v5, v4, :cond_d

    .line 2334
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1800(Landroid/widget/HorizontalScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2335
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1900(Landroid/widget/HorizontalScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2336
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1900(Landroid/widget/HorizontalScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2345
    :cond_9
    :goto_3
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1800(Landroid/widget/HorizontalScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1800(Landroid/widget/HorizontalScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1900(Landroid/widget/HorizontalScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2347
    :cond_a
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 2349
    :cond_b
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #setter for: Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Landroid/widget/HorizontalScrollView;->access$1702(Landroid/widget/HorizontalScrollView;Z)Z

    .line 2352
    :cond_c
    if-nez v0, :cond_0

    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1700(Landroid/widget/HorizontalScrollView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2353
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #setter for: Landroid/widget/HorizontalScrollView;->mIsHoverOverscrolled:Z
    invoke-static {v5, v4}, Landroid/widget/HorizontalScrollView;->access$1702(Landroid/widget/HorizontalScrollView;Z)Z

    goto/16 :goto_0

    .line 2338
    :cond_d
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mHoverScrollDirection:I
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1200(Landroid/widget/HorizontalScrollView;)I

    move-result v5

    if-ne v5, v9, :cond_9

    .line 2339
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mEdgeGlowRight:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1900(Landroid/widget/HorizontalScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2340
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1800(Landroid/widget/HorizontalScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v5

    if-nez v5, :cond_9

    .line 2341
    iget-object v5, p0, Landroid/widget/HorizontalScrollView$HoverScrollHandler;->this$0:Landroid/widget/HorizontalScrollView;

    #getter for: Landroid/widget/HorizontalScrollView;->mEdgeGlowLeft:Landroid/widget/EdgeEffect;
    invoke-static {v5}, Landroid/widget/HorizontalScrollView;->access$1800(Landroid/widget/HorizontalScrollView;)Landroid/widget/EdgeEffect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_3

    .line 2289
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
