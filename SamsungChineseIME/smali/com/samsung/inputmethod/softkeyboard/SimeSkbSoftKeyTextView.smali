.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;
.super Landroid/widget/TextView;
.source "SimeSkbSoftKeyTextView.java"


# instance fields
.field private mTextFixedWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->mTextFixedWidth:I

    .line 32
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->initialize()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->mTextFixedWidth:I

    .line 42
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->initialize()V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->mTextFixedWidth:I

    .line 37
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->initialize()V

    .line 38
    return-void
.end method


# virtual methods
.method public getFixedWidth()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->mTextFixedWidth:I

    return v0
.end method

.method public initialize()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 46
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080031

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 48
    .local v0, csl:Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0202ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 50
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 52
    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setGravity(I)V

    .line 53
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setSingleLine()V

    .line 54
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 55
    invoke-virtual {p0, v4, v4, v4, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->setPadding(IIII)V

    .line 56
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/high16 v7, -0x4080

    .line 68
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    .line 69
    .local v1, paint:Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    invoke-virtual {v1}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 88
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 90
    return-void

    .line 72
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 73
    .local v0, mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isNeedShadow()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 74
    const/4 v2, 0x1

    .line 75
    .local v2, radius:I
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v3

    const/16 v4, 0x140

    if-ne v3, v4, :cond_1

    .line 76
    const/4 v2, 0x2

    .line 78
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    const/high16 v3, 0x3f80

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v3, v4, v7, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 82
    :cond_2
    int-to-float v3, v2

    const/high16 v4, -0x100

    invoke-virtual {v1, v3, v7, v7, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    .line 85
    .end local v2           #radius:I
    :cond_3
    invoke-virtual {v1}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto :goto_0
.end method

.method public setFixedWidth(I)V
    .locals 0
    .parameter "viewWidth"

    .prologue
    .line 59
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->mTextFixedWidth:I

    .line 60
    return-void
.end method
