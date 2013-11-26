.class public Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "TwGLWheelList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLWheelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwGLWheelListGestureDetectorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v4, 0x435c

    .line 761
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollDirection:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 762
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    div-float v1, p4, v4

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$002(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;F)F

    .line 763
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mVelocityLimit:F
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mVelocityLimit:F
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mVelocityLimit:F
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v3

    sub-float/2addr v2, v3

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$002(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;F)F

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollDirection:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    div-float v1, p3, v4

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityX:F
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1202(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;F)F

    .line 770
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v0, 0x1

    const/high16 v6, 0x4120

    .line 741
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 753
    :goto_0
    return v0

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollDirection:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    mul-float v1, p4, v6

    neg-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$002(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;F)F

    .line 746
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mVelocityLimit:F
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 747
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mVelocityLimit:F
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mVelocityLimit:F
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1100(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v3

    sub-float/2addr v2, v3

    const v3, 0x3e4ccccd

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$002(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;F)F

    .line 750
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollDirection:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 751
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    mul-float v1, p3, v6

    neg-float v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float/2addr v1, v2

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityX:F
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$1202(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;F)F

    .line 753
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    goto :goto_0
.end method
