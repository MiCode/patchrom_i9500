.class Landroid/widget/FHoverPopupWindow$3;
.super Ljava/lang/Object;
.source "FHoverPopupWindow.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/FHoverPopupWindow;->setAnimator(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/FHoverPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/FHoverPopupWindow;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .parameter "animation"

    .prologue
    const/4 v3, -0x1

    .line 192
    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    #setter for: Landroid/widget/FHoverPopupWindow;->objAnimationValue:F
    invoke-static {v1, v0}, Landroid/widget/FHoverPopupWindow;->access$802(Landroid/widget/FHoverPopupWindow;F)F

    .line 194
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    .line 195
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v0}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I
    invoke-static {v1}, Landroid/widget/FHoverPopupWindow;->access$500(Landroid/widget/FHoverPopupWindow;)I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v0}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I
    invoke-static {v1}, Landroid/widget/FHoverPopupWindow;->access$600(Landroid/widget/FHoverPopupWindow;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 196
    :cond_0
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v1, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->objAnimationValue:F
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$800(Landroid/widget/FHoverPopupWindow;)F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 197
    :cond_2
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v0}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I
    invoke-static {v1}, Landroid/widget/FHoverPopupWindow;->access$200(Landroid/widget/FHoverPopupWindow;)I

    move-result v1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->mDirection:I
    invoke-static {v0}, Landroid/widget/FHoverPopupWindow;->access$100(Landroid/widget/FHoverPopupWindow;)I

    move-result v0

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I
    invoke-static {v1}, Landroid/widget/FHoverPopupWindow;->access$700(Landroid/widget/FHoverPopupWindow;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 198
    :cond_3
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget-object v0, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v1, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    int-to-float v1, v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    #getter for: Landroid/widget/FHoverPopupWindow;->objAnimationValue:F
    invoke-static {v2}, Landroid/widget/FHoverPopupWindow;->access$800(Landroid/widget/FHoverPopupWindow;)F

    move-result v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Landroid/widget/FHoverPopupWindow$3;->this$0:Landroid/widget/FHoverPopupWindow;

    iget v2, v2, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_0
.end method
