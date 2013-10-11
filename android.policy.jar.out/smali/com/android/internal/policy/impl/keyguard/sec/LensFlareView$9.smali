.class Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$9;
.super Ljava/lang/Object;
.source "LensFlareView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->setAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V
    .locals 0

    .prologue
    .line 526
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceAnimationValue:F
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$1302(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F

    .line 529
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedAffordance()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$1400(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    .line 530
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceAnimationValue:F
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$1300(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)F

    move-result v0

    const v1, 0x3f19999a

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOnAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$1500(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)Landroid/animation/ValueAnimator;

    move-result-object v1

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->cancelAnimator(Landroid/animation/Animator;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$1600(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;Landroid/animation/Animator;)V

    .line 532
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$9;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    #getter for: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->affordanceOffAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$1700(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 534
    :cond_0
    return-void
.end method
