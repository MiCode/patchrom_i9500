.class Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;
.super Ljava/lang/Object;
.source "TwGLWheelList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/glwidget/TwGLWheelList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/high16 v6, 0x4316

    const/4 v5, 0x2

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, layoutIndexDiff:I
    const/16 v0, 0x96

    .line 204
    .local v0, duration:I
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 252
    :goto_0
    return-void

    .line 207
    :cond_0
    monitor-enter p0

    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, mInnerScrollToCenterAnimator:Landroid/animation/ValueAnimator;
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v3

    if-ge v3, v5, :cond_1

    .line 210
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v3

    add-int/lit8 v1, v3, -0x2

    .line 211
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    neg-int v5, v1

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 212
    neg-int v3, v1

    int-to-float v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v0, v3

    .line 220
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v3, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$802(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 222
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$002(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;F)F

    .line 223
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    const/4 v4, 0x0

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I
    invoke-static {v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$902(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;I)I

    .line 224
    int-to-long v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 225
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 226
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 227
    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;)V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 250
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 251
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 213
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v3

    if-le v3, v5, :cond_2

    .line 214
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$700(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v3

    add-int/lit8 v1, v3, -0x2

    .line 215
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    neg-int v5, v1

    int-to-float v5, v5

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 216
    int-to-float v3, v1

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v4}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v4

    add-float/2addr v3, v4

    mul-float/2addr v3, v6

    float-to-int v0, v3

    goto :goto_1

    .line 218
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method
