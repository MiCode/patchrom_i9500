.class Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;
.super Ljava/lang/Object;
.source "TwGLWheelList.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 241
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastCenterIndex:I
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$400(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 231
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;->onCenterItemChanged(I)V

    .line 232
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    iget-object v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I
    invoke-static {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$500(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I

    move-result v1

    #setter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastCenterIndex:I
    invoke-static {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$402(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;I)I

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnScrollListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2$1;->this$1:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;->this$0:Lcom/sec/android/app/camera/glwidget/TwGLWheelList;

    #getter for: Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnScrollListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;
    invoke-static {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->access$600(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;->onScrollEnd()V

    .line 237
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 245
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 249
    return-void
.end method
