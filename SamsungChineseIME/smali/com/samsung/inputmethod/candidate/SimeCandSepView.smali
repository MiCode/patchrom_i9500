.class public Lcom/samsung/inputmethod/candidate/SimeCandSepView;
.super Landroid/view/View;
.source "SimeCandSepView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeCandSepView"


# instance fields
.field private mColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mSepType:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mPaint:Landroid/graphics/Paint;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mPaint:Landroid/graphics/Paint;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mPaint:Landroid/graphics/Paint;

    .line 34
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, startX:F
    const/4 v2, 0x0

    .line 63
    .local v2, startY:F
    const/4 v3, 0x0

    .line 64
    .local v3, stopX:F
    const/4 v4, 0x0

    .line 66
    .local v4, stopY:F
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mSepType:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;->VERTICAL:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    if-ne v0, v5, :cond_0

    .line 67
    const/4 v1, 0x0

    .line 68
    const/4 v2, 0x0

    .line 69
    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->getMeasuredHeight()I

    move-result v0

    int-to-float v4, v0

    .line 87
    :goto_0
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 89
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mSepType:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;->HORIZON_EXPAND:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    if-ne v0, v5, :cond_1

    .line 72
    const/4 v1, 0x0

    .line 73
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->getMeasuredWidth()I

    move-result v0

    int-to-float v3, v0

    .line 75
    const/4 v4, 0x0

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mSepType:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;->VERTICAL_PINYIN:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    if-ne v0, v5, :cond_2

    .line 77
    const/4 v1, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v5, 0x3e4ccccd

    mul-float v2, v0, v5

    .line 79
    const/4 v3, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const v5, 0x3f4ccccd

    mul-float v4, v0, v5

    goto :goto_0

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v5, 0x3dcccccd

    mul-float v1, v0, v5

    .line 83
    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const v5, 0x3f666666

    mul-float v3, v0, v5

    .line 85
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setAttribute(Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;II)V
    .locals 2
    .parameter "type"
    .parameter "color"
    .parameter "width"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mSepType:Lcom/samsung/inputmethod/candidate/SimeCandSepView$sepType;

    .line 50
    iput p2, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mColor:I

    .line 51
    iput p3, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mWidth:I

    .line 52
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandSepView;->mWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    return-void
.end method
