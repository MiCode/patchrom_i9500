.class Landroid/widget/AbsListView$2;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 4862
    iput-object p1, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 4865
    iget-object v2, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    iget-boolean v2, v2, Landroid/widget/AbsListView;->mEndEffectEnabled:Z

    if-nez v2, :cond_1

    .line 4877
    :cond_0
    :goto_0
    return-void

    .line 4867
    :cond_1
    iget-object v2, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    iget-object v3, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    iget-object v4, v4, Landroid/widget/AbsListView;->mEndEffectController:Landroid/widget/EndEffectController;

    invoke-virtual {v4, v1}, Landroid/widget/EndEffectController;->getBounceViewHeight(Z)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a0

    mul-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    :goto_1
    #setter for: Landroid/widget/AbsListView;->mEndEffectHasEnoughHeight:Z
    invoke-static {v2, v1}, Landroid/widget/AbsListView;->access$1302(Landroid/widget/AbsListView;Z)Z

    .line 4869
    iget-object v1, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    #calls: Landroid/widget/AbsListView;->updateEdgeGlow()V
    invoke-static {v1}, Landroid/widget/AbsListView;->access$1400(Landroid/widget/AbsListView;)V

    .line 4871
    const-string v1, "endeffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGlobalLayout of EndEffect width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4873
    iget-object v1, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    iget-object v1, v1, Landroid/widget/AbsListView;->mEndEffectController:Landroid/widget/EndEffectController;

    iget-object v2, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, v2}, Landroid/widget/EndEffectController;->onGlobalLayout(Landroid/view/View;)Z

    move-result v0

    .line 4874
    .local v0, needsRelayout:Z
    if-eqz v0, :cond_0

    .line 4875
    iget-object v1, p0, Landroid/widget/AbsListView$2;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->requestLayout()V

    goto :goto_0

    .line 4867
    .end local v0           #needsRelayout:Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
