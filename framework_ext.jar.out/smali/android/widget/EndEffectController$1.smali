.class Landroid/widget/EndEffectController$1;
.super Ljava/lang/Object;
.source "EndEffectController.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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
    .line 324
    iput-object p1, p0, Landroid/widget/EndEffectController$1;->this$0:Landroid/widget/EndEffectController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 328
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "anim"

    .prologue
    .line 332
    iget-object v0, p0, Landroid/widget/EndEffectController$1;->this$0:Landroid/widget/EndEffectController;

    #getter for: Landroid/widget/EndEffectController;->mParentView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/EndEffectController;->access$000(Landroid/widget/EndEffectController;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 341
    :goto_0
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Landroid/widget/EndEffectController$1;->this$0:Landroid/widget/EndEffectController;

    #getter for: Landroid/widget/EndEffectController;->mParentView:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/EndEffectController;->access$000(Landroid/widget/EndEffectController;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/EndEffectController$1$1;

    invoke-direct {v1, p0}, Landroid/widget/EndEffectController$1$1;-><init>(Landroid/widget/EndEffectController$1;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 340
    const-string v0, "EndEffectController"

    const-string v1, "animation ended()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 345
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4
    .parameter "anim"

    .prologue
    .line 349
    iget-object v0, p0, Landroid/widget/EndEffectController$1;->this$0:Landroid/widget/EndEffectController;

    const/4 v1, 0x1

    #setter for: Landroid/widget/EndEffectController;->mTextShakeAnimStatus:I
    invoke-static {v0, v1}, Landroid/widget/EndEffectController;->access$102(Landroid/widget/EndEffectController;I)I

    .line 350
    const-string v0, "EndEffectController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animation started(), duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void
.end method
