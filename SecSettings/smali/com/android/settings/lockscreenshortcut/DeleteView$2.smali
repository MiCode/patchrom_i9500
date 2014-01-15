.class Lcom/android/settings_ex/lockscreenshortcut/DeleteView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeleteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->startTrashCanFillUnfillAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/lockscreenshortcut/DeleteView;)V
    .locals 0

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/settings_ex/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/settings_ex/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->setAnimating(Z)V

    .line 453
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 445
    iget-object v0, p0, Lcom/android/settings_ex/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->setAnimating(Z)V

    .line 446
    iget-object v0, p0, Lcom/android/settings_ex/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;

    #setter for: Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->mIsOnDeleting:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->access$302(Lcom/android/settings_ex/lockscreenshortcut/DeleteView;Z)Z

    .line 447
    iget-object v0, p0, Lcom/android/settings_ex/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->setVisibility(I)V

    .line 448
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 457
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/settings_ex/lockscreenshortcut/DeleteView$2;->this$0:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->setAnimating(Z)V

    .line 441
    return-void
.end method
