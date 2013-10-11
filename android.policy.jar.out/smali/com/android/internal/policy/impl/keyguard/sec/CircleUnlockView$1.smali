.class Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;
.super Landroid/os/Handler;
.source "CircleUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->setHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)V
    .locals 0

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--------------------- mHandler, isAffordanceLoop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isAffordanceLoop:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isAffordanceLoop:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$000(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isAffordanceLoop:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$002(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;Z)Z

    .line 206
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isAnimationOn:Z
    invoke-static {v0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$102(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;Z)Z

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleInPress:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 210
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenter:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$600(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->mCircleCenterAlphaAnimUp:Landroid/view/animation/AlphaAnimation;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$500(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->clearCircleAnimation()V

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->circleUpSet:Landroid/animation/AnimatorSet;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$700(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 218
    :goto_0
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->startCircleAnimation()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$800(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)V

    goto :goto_0
.end method
