.class Lcom/android/internal/widget/ActionBarView$HomeView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ActionBarView$HomeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ActionBarView$HomeView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/ActionBarView$HomeView;)V
    .locals 0

    .prologue
    .line 1899
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView$HomeView$1;->this$0:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .parameter "animation"

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView$1;->this$0:Lcom/android/internal/widget/ActionBarView$HomeView;

    #getter for: Lcom/android/internal/widget/ActionBarView$HomeView;->mUpView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/widget/ActionBarView$HomeView;->access$1000(Lcom/android/internal/widget/ActionBarView$HomeView;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1903
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView$HomeView$1;->this$0:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 1904
    return-void
.end method
