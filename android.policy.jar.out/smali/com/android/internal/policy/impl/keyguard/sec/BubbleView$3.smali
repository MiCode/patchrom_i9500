.class Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$3;
.super Ljava/lang/Object;
.source "BubbleView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 313
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationMax:F
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->access$400(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)F

    move-result v2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float/2addr v0, v2

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationValue:F
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->access$102(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;F)F

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->animatedBubblePush()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->access$300(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)V

    .line 315
    return-void
.end method
