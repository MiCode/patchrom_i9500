.class Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$1;
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
    .line 439
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 441
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    #setter for: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->objAnimationValue:F
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$002(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;F)F

    .line 442
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;

    #calls: Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->animatedDragPos()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;->access$100(Lcom/android/internal/policy/impl/keyguard/sec/LensFlareView;)V

    .line 443
    return-void
.end method
