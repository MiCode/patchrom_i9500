.class public Lcom/samsung/inputmethod/setting/SimeCurveView;
.super Landroid/view/View;
.source "SimeCurveView.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeCurveView"


# instance fields
.field private mColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mPointEnd:Landroid/graphics/Point;

.field private mPointStart:Landroid/graphics/Point;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 20
    const/high16 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mColor:I

    .line 21
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mWidth:I

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/high16 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mColor:I

    .line 21
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mWidth:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/high16 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mColor:I

    .line 21
    const/4 v0, 0x5

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mWidth:I

    .line 44
    return-void
.end method

.method private getCurvePath(Landroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 10
    .parameter "p1"
    .parameter "p2"
    .parameter "heightControl"

    .prologue
    .line 80
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPath:Landroid/graphics/Path;

    iget v6, p1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, p1, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 81
    const/4 v4, 0x0

    .line 82
    .local v4, widthControl:I
    new-instance v3, Landroid/graphics/Point;

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->x:I

    iget v7, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    iget v6, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 84
    .local v3, pmid:Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Point;

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, p3

    invoke-direct {v0, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 85
    .local v0, ctn1:Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v6, p3

    invoke-direct {v1, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 86
    .local v1, ctn2:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPath:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 88
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 89
    .local v2, ph1:Landroid/graphics/Path;
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 90
    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 91
    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 92
    return-void
.end method

.method private measureHeight(I)I
    .locals 4
    .parameter "measureSpec"

    .prologue
    .line 104
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 105
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 107
    .local v2, specSize:I
    const/16 v0, 0x1f4

    .line 109
    .local v0, result:I
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_1

    .line 110
    move v0, v2

    .line 115
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_0

    .line 112
    move v0, v2

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 4
    .parameter "measureSpec"

    .prologue
    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 120
    .local v1, specMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 122
    .local v2, specSize:I
    const/16 v0, 0x1f4

    .line 124
    .local v0, result:I
    const/high16 v3, -0x8000

    if-ne v1, v3, :cond_1

    .line 125
    move v0, v2

    .line 130
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    const/high16 v3, 0x4000

    if-ne v1, v3, :cond_0

    .line 127
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 50
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPointStart:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPointStart:Landroid/graphics/Point;

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPointEnd:Landroid/graphics/Point;

    if-nez v0, :cond_1

    .line 54
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPointEnd:Landroid/graphics/Point;

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPath:Landroid/graphics/Path;

    if-nez v0, :cond_2

    .line 57
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPath:Landroid/graphics/Path;

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_3

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 65
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeCurveView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeCurveView;->getHeight()I

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPointStart:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeCurveView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeCurveView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeCurveView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 69
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPointEnd:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeCurveView;->getRight()I

    move-result v1

    add-int/lit8 v1, v1, -0x16

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeCurveView;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeCurveView;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 70
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 71
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPointStart:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPointEnd:Landroid/graphics/Point;

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeCurveView;->getCurvePath(Landroid/graphics/Point;Landroid/graphics/Point;I)V

    .line 72
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 75
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 96
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/setting/SimeCurveView;->measureHeight(I)I

    move-result v0

    .line 98
    .local v0, measuredHeight:I
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/setting/SimeCurveView;->measureWidth(I)I

    move-result v1

    .line 100
    .local v1, measuredWidth:I
    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/setting/SimeCurveView;->setMeasuredDimension(II)V

    .line 101
    return-void
.end method

.method public setPaint(Landroid/graphics/Paint;)V
    .locals 0
    .parameter "pt"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPaint:Landroid/graphics/Paint;

    .line 32
    return-void
.end method

.method public setParams(Landroid/graphics/Paint;II)V
    .locals 0
    .parameter "pt"
    .parameter "cr"
    .parameter "wr"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mPaint:Landroid/graphics/Paint;

    .line 26
    iput p2, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mColor:I

    .line 27
    iput p3, p0, Lcom/samsung/inputmethod/setting/SimeCurveView;->mWidth:I

    .line 28
    return-void
.end method
