.class Landroid/widget/EndEffectController$1$1;
.super Ljava/lang/Object;
.source "EndEffectController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/EndEffectController$1;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/EndEffectController$1;


# direct methods
.method constructor <init>(Landroid/widget/EndEffectController$1;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Landroid/widget/EndEffectController$1$1;->this$1:Landroid/widget/EndEffectController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Landroid/widget/EndEffectController$1$1;->this$1:Landroid/widget/EndEffectController$1;

    iget-object v0, v0, Landroid/widget/EndEffectController$1;->this$0:Landroid/widget/EndEffectController;

    const/4 v1, 0x0

    #setter for: Landroid/widget/EndEffectController;->mTextShakeAnimStatus:I
    invoke-static {v0, v1}, Landroid/widget/EndEffectController;->access$102(Landroid/widget/EndEffectController;I)I

    .line 338
    return-void
.end method
