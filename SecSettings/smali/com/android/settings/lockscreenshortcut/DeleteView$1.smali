.class Lcom/android/settings_ex/lockscreenshortcut/DeleteView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DeleteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->startTrashCanShakeAnimation()V
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
    .line 286
    iput-object p1, p0, Lcom/android/settings_ex/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    const/4 v1, 0x0

    .line 301
    iget-object v0, p0, Lcom/android/settings_ex/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;

    #setter for: Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->access$002(Lcom/android/settings_ex/lockscreenshortcut/DeleteView;Z)Z

    .line 302
    iget-object v0, p0, Lcom/android/settings_ex/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;

    #setter for: Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->mIsTrashCanShakeMode:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->access$202(Lcom/android/settings_ex/lockscreenshortcut/DeleteView;Z)Z

    .line 303
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/settings_ex/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;

    #calls: Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->isTrashCanShakeMode()Z
    invoke-static {v0}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->access$100(Lcom/android/settings_ex/lockscreenshortcut/DeleteView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/settings_ex/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;

    invoke-virtual {v0}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->startTrashCanShakeAnimation()V

    .line 297
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 307
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings_ex/lockscreenshortcut/DeleteView$1;->this$0:Lcom/android/settings_ex/lockscreenshortcut/DeleteView;

    const/4 v1, 0x1

    #setter for: Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->mIsAnimating:Z
    invoke-static {v0, v1}, Lcom/android/settings_ex/lockscreenshortcut/DeleteView;->access$002(Lcom/android/settings_ex/lockscreenshortcut/DeleteView;Z)Z

    .line 290
    return-void
.end method
