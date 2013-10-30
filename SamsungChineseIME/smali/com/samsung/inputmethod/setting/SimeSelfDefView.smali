.class public Lcom/samsung/inputmethod/setting/SimeSelfDefView;
.super Landroid/view/View;
.source "SimeSelfDefView.java"


# static fields
.field private static final TOUCH_TOLERANCE:I = 0x3


# instance fields
.field mIsDisabled:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field protected mPointData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mIsDisabled:Z

    .line 60
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPointData:Ljava/util/Vector;

    .line 69
    const v0, -0x333334

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->setBackgroundColor(I)V

    .line 71
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPath:Landroid/graphics/Path;

    .line 73
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 77
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 78
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 80
    return-void
.end method

.method private touch_move(II)V
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v3, 0x4040

    .line 104
    iget v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mX:I

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v0, v2

    .line 105
    .local v0, dx:F
    iget v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mY:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v1, v2

    .line 106
    .local v1, dy:F
    cmpl-float v2, v0, v3

    if-gez v2, :cond_0

    cmpl-float v2, v1, v3

    if-ltz v2, :cond_1

    .line 107
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mX:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mY:I

    int-to-float v4, v4

    iget v5, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mX:I

    add-int/2addr v5, p1

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mY:I

    add-int/2addr v6, p2

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->handwrite_save_point(II)Z

    .line 109
    iput p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mX:I

    .line 110
    iput p2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mY:I

    .line 111
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->invalidate()V

    .line 113
    :cond_1
    return-void
.end method

.method private touch_start(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->handwrite_save_point(II)Z

    .line 95
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPath:Landroid/graphics/Path;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 96
    iput p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mX:I

    .line 97
    iput p2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mY:I

    .line 98
    return-void
.end method

.method private touch_up(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 119
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->handwrite_save_point(II)Z

    .line 120
    iput p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mX:I

    .line 121
    iput p2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mY:I

    .line 122
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x1fc

    if-gt v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPointData:Ljava/util/Vector;

    const v1, 0xffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPointData:Ljava/util/Vector;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 133
    :cond_0
    return-void
.end method


# virtual methods
.method public disAbleDraw(Z)V
    .locals 0
    .parameter "isDisabled"

    .prologue
    .line 241
    iput-boolean p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mIsDisabled:Z

    .line 242
    return-void
.end method

.method public getPoint()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPointData:Ljava/util/Vector;

    return-object v0
.end method

.method public getPointCount()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method handwrite_save_point(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/16 v1, 0x1fa

    if-gt v0, v1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPointData:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPointData:Ljava/util/Vector;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 85
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "me"

    .prologue
    .line 154
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 155
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 156
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 158
    .local v2, y:I
    iget-boolean v3, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mIsDisabled:Z

    if-eqz v3, :cond_0

    .line 159
    const/4 v3, 0x0

    .line 174
    :goto_0
    return v3

    .line 162
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 174
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 164
    :pswitch_0
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->touch_start(II)V

    goto :goto_1

    .line 167
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->touch_move(II)V

    goto :goto_1

    .line 170
    :pswitch_2
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->touch_up(II)V

    .line 171
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->invalidate()V

    goto :goto_1

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 179
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->invalidate()V

    .line 183
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 184
    return-void
.end method

.method public setPoint([II)V
    .locals 3
    .parameter "point"
    .parameter "count"

    .prologue
    .line 204
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 205
    if-gtz p2, :cond_0

    .line 221
    :goto_0
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x1

    .line 210
    .local v0, i:I
    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    aget v2, p1, v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->touch_start(II)V

    .line 211
    const/4 v0, 0x1

    :goto_1
    add-int/lit8 v1, p2, -0x2

    if-ge v0, v1, :cond_2

    .line 212
    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x2

    aget v1, p1, v1

    const v2, 0xffff

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget v1, p1, v1

    if-nez v1, :cond_1

    .line 213
    mul-int/lit8 v1, v0, 0x2

    aget v1, p1, v1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->touch_up(II)V

    .line 214
    add-int/lit8 v1, v0, 0x2

    mul-int/lit8 v1, v1, 0x2

    aget v1, p1, v1

    add-int/lit8 v2, v0, 0x2

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->touch_start(II)V

    .line 215
    add-int/lit8 v0, v0, 0x1

    .line 211
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 217
    :cond_1
    mul-int/lit8 v1, v0, 0x2

    aget v1, p1, v1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->touch_move(II)V

    goto :goto_2

    .line 220
    :cond_2
    mul-int/lit8 v1, v0, 0x2

    aget v1, p1, v1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeSelfDefView;->touch_up(II)V

    goto :goto_0
.end method
