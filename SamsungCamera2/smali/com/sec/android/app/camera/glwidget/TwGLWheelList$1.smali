.class Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;
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
    .line 151
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    .line 153
    const/16 v0, 0x96

    .line 154
    .local v0, duration:I
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingStopThreshold:F
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    new-array v2, v3, [F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v3

    aput v3, v2, v6

    aput v5, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$202(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 156
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v1

    sub-float v1, v5, v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v1, v4}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$002(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;F)F

    .line 170
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Landroid/animation/ValueAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 172
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 173
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1$1;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 196
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$200(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 197
    return-void

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v1

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingStopThreshold:F
    invoke-static {v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$100(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    new-array v2, v3, [F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v3

    aput v3, v2, v6

    aput v4, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$202(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 159
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v0, v1

    goto :goto_0

    .line 161
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v1

    const/high16 v2, 0x3f00

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 162
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    new-array v2, v3, [F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v3

    aput v3, v2, v6

    aput v5, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$202(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 163
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v1

    sub-float v1, v5, v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v0, v1

    goto/16 :goto_0

    .line 165
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    new-array v2, v3, [F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v3}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v3

    aput v3, v2, v6

    aput v4, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$202(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 166
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    float-to-int v0, v1

    goto/16 :goto_0
.end method
