.class public Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;
.super Landroid/view/View$DragShadowBuilder;
.source "SimeDragShadowView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeDragShadowView"

.field private static mDragBgText:Landroid/widget/TextView;

.field public static mDragShadowView:Landroid/view/View;

.field private static shadow:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mInitX:I

.field private mInitY:I


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/content/Context;)V
    .locals 2
    .parameter "view"
    .parameter "context"

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 28
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const v1, -0xffff01

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->shadow:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->getView()Landroid/view/View;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mDragShadowView:Landroid/view/View;

    .line 30
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mDragBgText:Landroid/widget/TextView;

    .line 31
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mDragBgText:Landroid/widget/TextView;

    const-string v1, "drag bg text"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mDragBgText:Landroid/widget/TextView;

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 33
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mDragBgText:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mDragBgText:Landroid/widget/TextView;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    .line 35
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mDragBgText:Landroid/widget/TextView;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHeight(I)V

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mInitX:I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mInitY:I

    .line 43
    return-void
.end method

.method public static getDragBgTextCor()I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mDragBgText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getX()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public onDrawShadow(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 67
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mDragBgText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 72
    return-void
.end method

.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 7
    .parameter "size"
    .parameter "touch"

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 53
    .local v1, width:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 54
    .local v0, height:I
    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->shadow:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mInitX:I

    add-int/lit8 v3, v3, -0xa

    iget v4, p0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mInitY:I

    add-int/lit8 v4, v4, -0xa

    iget v5, p0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mInitX:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/samsung/inputmethod/tabmode/SimeDragShadowView;->mInitY:I

    add-int/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 55
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Point;->set(II)V

    .line 56
    div-int/lit8 v2, v1, 0x2

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 57
    return-void
.end method
