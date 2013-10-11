.class Landroid/widget/EndEffectController$2;
.super Ljava/lang/Object;
.source "EndEffectController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/EndEffectController;->startTextShakingAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/EndEffectController;


# direct methods
.method constructor <init>(Landroid/widget/EndEffectController;)V
    .locals 0

    .prologue
    .line 354
    iput-object p1, p0, Landroid/widget/EndEffectController$2;->this$0:Landroid/widget/EndEffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .parameter "anim"

    .prologue
    .line 357
    iget-object v1, p0, Landroid/widget/EndEffectController$2;->this$0:Landroid/widget/EndEffectController;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    #setter for: Landroid/widget/EndEffectController;->mCurrentAnimationValue:F
    invoke-static {v1, v0}, Landroid/widget/EndEffectController;->access$202(Landroid/widget/EndEffectController;F)F

    .line 358
    return-void
.end method
