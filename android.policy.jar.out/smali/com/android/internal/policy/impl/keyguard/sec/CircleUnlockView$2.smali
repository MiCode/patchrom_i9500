.class Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$2;
.super Ljava/lang/Object;
.source "CircleUnlockView.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->createArrowAnimation()V
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
    .line 300
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->isAnimationOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/widget/LinearLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->arrowFadeSet:Landroid/view/animation/AnimationSet;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;->access$900(Lcom/android/internal/policy/impl/keyguard/sec/CircleUnlockView;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 313
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 307
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 303
    return-void
.end method
