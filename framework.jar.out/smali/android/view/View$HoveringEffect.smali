.class final Landroid/view/View$HoveringEffect;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HoveringEffect"
.end annotation


# instance fields
.field private isPlaying:Z

.field private isPlayingReverse:Z

.field private mFingerHovered:Z

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8431
    iput-object p1, p0, Landroid/view/View$HoveringEffect;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8432
    iput-boolean v0, p0, Landroid/view/View$HoveringEffect;->isPlaying:Z

    .line 8433
    iput-boolean v0, p0, Landroid/view/View$HoveringEffect;->mFingerHovered:Z

    .line 8434
    iput-boolean v0, p0, Landroid/view/View$HoveringEffect;->isPlayingReverse:Z

    return-void
.end method


# virtual methods
.method public play()V
    .locals 3

    .prologue
    .line 8453
    iget-boolean v0, p0, Landroid/view/View$HoveringEffect;->isPlaying:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View$HoveringEffect;->stop()V

    .line 8454
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/View$HoveringEffect;->isPlaying:Z

    .line 8455
    iget-object v0, p0, Landroid/view/View$HoveringEffect;->this$0:Landroid/view/View;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 8456
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    const/16 v2, 0x1f4

    .line 8438
    iget-object v1, p0, Landroid/view/View$HoveringEffect;->this$0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHoveringDrawable()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    .line 8440
    .local v0, transition:Landroid/graphics/drawable/TransitionDrawable;
    iget-boolean v1, p0, Landroid/view/View$HoveringEffect;->isPlaying:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 8441
    iget-boolean v1, p0, Landroid/view/View$HoveringEffect;->isPlayingReverse:Z

    if-eqz v1, :cond_1

    .line 8442
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 8443
    iget-object v1, p0, Landroid/view/View$HoveringEffect;->this$0:Landroid/view/View;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    .line 8448
    :goto_0
    iget-boolean v1, p0, Landroid/view/View$HoveringEffect;->isPlayingReverse:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Landroid/view/View$HoveringEffect;->isPlayingReverse:Z

    .line 8450
    :cond_0
    return-void

    .line 8445
    :cond_1
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 8446
    iget-object v1, p0, Landroid/view/View$HoveringEffect;->this$0:Landroid/view/View;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, p0, v2, v3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 8448
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8459
    iget-boolean v1, p0, Landroid/view/View$HoveringEffect;->isPlaying:Z

    if-nez v1, :cond_1

    .line 8468
    :cond_0
    :goto_0
    return-void

    .line 8462
    :cond_1
    iput-boolean v2, p0, Landroid/view/View$HoveringEffect;->isPlaying:Z

    .line 8463
    iput-boolean v2, p0, Landroid/view/View$HoveringEffect;->isPlayingReverse:Z

    .line 8465
    iget-object v1, p0, Landroid/view/View$HoveringEffect;->this$0:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8466
    iget-object v1, p0, Landroid/view/View$HoveringEffect;->this$0:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHoveringDrawable()Landroid/graphics/drawable/TransitionDrawable;

    move-result-object v0

    .line 8467
    .local v0, transition:Landroid/graphics/drawable/TransitionDrawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    goto :goto_0
.end method
