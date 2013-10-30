.class Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;
.super Landroid/view/View;
.source "SimeColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorPickerView"
.end annotation


# static fields
.field public static CENTER_X:I = 0x0

.field public static CENTER_Y:I = 0x0

.field private static final PI:F = 3.1415925f


# instance fields
.field private mCenterPaint:Landroid/graphics/Paint;

.field private mCenterRadius:F

.field private final mColors:[I

.field private mHighlightCenter:Z

.field private mListener:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mTrackingCenter:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 119
    sput v0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_X:I

    .line 120
    sput v0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_Y:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;I)V
    .locals 5
    .parameter "c"
    .parameter "l"
    .parameter "color"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 56
    iput v3, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterRadius:F

    .line 60
    iput-object p2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mListener:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;

    .line 61
    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mColors:[I

    .line 65
    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mColors:[I

    const/4 v2, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 67
    .local v0, s:Landroid/graphics/Shader;
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    .line 68
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 69
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 72
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    .line 73
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    return-void

    .line 61
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0xfft 0xfft
        0xfft 0x0t 0xfft 0xfft
        0xfft 0x0t 0x0t 0xfft
        0xfft 0xfft 0x0t 0xfft
        0x0t 0xfft 0x0t 0xfft
        0x0t 0xfft 0xfft 0xfft
        0x0t 0x0t 0xfft 0xfft
    .end array-data
.end method

.method private ave(IIF)I
    .locals 1
    .parameter "s"
    .parameter "d"
    .parameter "p"

    .prologue
    .line 136
    sub-int v0, p2, p1

    int-to-float v0, v0

    mul-float/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private floatToByte(F)I
    .locals 1
    .parameter "x"

    .prologue
    .line 123
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 124
    .local v0, n:I
    return v0
.end method

.method private interpColor([IF)I
    .locals 10
    .parameter "colors"
    .parameter "unit"

    .prologue
    .line 140
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gtz v8, :cond_0

    .line 141
    const/4 v8, 0x0

    aget v8, p1, v8

    .line 159
    :goto_0
    return v8

    .line 143
    :cond_0
    const/high16 v8, 0x3f80

    cmpl-float v8, p2, v8

    if-ltz v8, :cond_1

    .line 144
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    aget v8, p1, v8

    goto :goto_0

    .line 147
    :cond_1
    array-length v8, p1

    add-int/lit8 v8, v8, -0x1

    int-to-float v8, v8

    mul-float v6, p2, v8

    .line 148
    .local v6, p:F
    float-to-int v5, v6

    .line 149
    .local v5, i:I
    int-to-float v8, v5

    sub-float/2addr v6, v8

    .line 152
    aget v2, p1, v5

    .line 153
    .local v2, c0:I
    add-int/lit8 v8, v5, 0x1

    aget v3, p1, v8

    .line 154
    .local v3, c1:I
    invoke-static {v2}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v0

    .line 155
    .local v0, a:I
    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v7

    .line 156
    .local v7, r:I
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v4

    .line 157
    .local v4, g:I
    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    invoke-direct {p0, v8, v9, v6}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v1

    .line 159
    .local v1, b:I
    invoke-static {v0, v7, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v8

    goto :goto_0
.end method

.method private pinToByte(I)I
    .locals 1
    .parameter "n"

    .prologue
    .line 127
    if-gez p1, :cond_1

    .line 128
    const/4 p1, 0x0

    .line 132
    :cond_0
    :goto_0
    return p1

    .line 129
    :cond_1
    const/16 v0, 0xff

    if-le p1, v0, :cond_0

    .line 130
    const/16 p1, 0xff

    goto :goto_0
.end method

.method private rotateColor(IF)I
    .locals 14
    .parameter "color"
    .parameter "rad"

    .prologue
    .line 164
    const/high16 v10, 0x4334

    mul-float v10, v10, p2

    const v11, 0x40490fdb

    div-float v3, v10, v11

    .line 165
    .local v3, deg:F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v8

    .line 166
    .local v8, r:I
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 167
    .local v4, g:I
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 169
    .local v1, b:I
    new-instance v2, Landroid/graphics/ColorMatrix;

    invoke-direct {v2}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 170
    .local v2, cm:Landroid/graphics/ColorMatrix;
    new-instance v9, Landroid/graphics/ColorMatrix;

    invoke-direct {v9}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 172
    .local v9, tmp:Landroid/graphics/ColorMatrix;
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->setRGB2YUV()V

    .line 173
    const/4 v10, 0x0

    invoke-virtual {v9, v10, v3}, Landroid/graphics/ColorMatrix;->setRotate(IF)V

    .line 174
    invoke-virtual {v2, v9}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 175
    invoke-virtual {v9}, Landroid/graphics/ColorMatrix;->setYUV2RGB()V

    .line 176
    invoke-virtual {v2, v9}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 178
    invoke-virtual {v2}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    .line 180
    .local v0, a:[F
    const/4 v10, 0x0

    aget v10, v0, v10

    int-to-float v11, v8

    mul-float/2addr v10, v11

    const/4 v11, 0x1

    aget v11, v0, v11

    int-to-float v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x2

    aget v11, v0, v11

    int-to-float v12, v1

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result v7

    .line 181
    .local v7, ir:I
    const/4 v10, 0x5

    aget v10, v0, v10

    int-to-float v11, v8

    mul-float/2addr v10, v11

    const/4 v11, 0x6

    aget v11, v0, v11

    int-to-float v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/4 v11, 0x7

    aget v11, v0, v11

    int-to-float v12, v1

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result v6

    .line 182
    .local v6, ig:I
    const/16 v10, 0xa

    aget v10, v0, v10

    int-to-float v11, v8

    mul-float/2addr v10, v11

    const/16 v11, 0xb

    aget v11, v0, v11

    int-to-float v12, v4

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    const/16 v11, 0xc

    aget v11, v0, v11

    int-to-float v12, v1

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-direct {p0, v10}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result v5

    .line 184
    .local v5, ib:I
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v10

    invoke-direct {p0, v7}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result v11

    invoke-direct {p0, v6}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result v12

    invoke-direct {p0, v5}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result v13

    invoke-static {v10, v11, v12, v13}, Landroid/graphics/Color;->argb(IIII)I

    move-result v10

    return v10
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const/4 v5, 0x0

    .line 83
    sget v2, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_Y:I

    int-to-float v2, v2

    const v3, 0x404ccccd

    div-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterRadius:F

    .line 84
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterRadius:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 86
    sget v2, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_Y:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 88
    .local v1, r:F
    sget v2, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_X:I

    int-to-float v2, v2

    sget v3, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_Y:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 90
    new-instance v2, Landroid/graphics/RectF;

    neg-float v3, v1

    neg-float v4, v1

    invoke-direct {v2, v3, v4, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 92
    iget v2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterRadius:F

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 94
    iget-boolean v2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 96
    .local v0, c:I
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 97
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterRadius:F

    const/high16 v4, 0x40c0

    div-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 99
    iget-boolean v2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    if-eqz v2, :cond_1

    .line 100
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 105
    :goto_0
    iget v2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterRadius:F

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 109
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 110
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    .end local v0           #c:I
    :cond_0
    return-void

    .line 102
    .restart local v0       #c:I
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 116
    sget v0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_X:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_Y:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->setMeasuredDimension(II)V

    .line 117
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 192
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    sget v8, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_X:I

    int-to-float v8, v8

    sub-float v3, v7, v8

    .line 193
    .local v3, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    sget v8, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->CENTER_Y:I

    int-to-float v8, v8

    sub-float v4, v7, v8

    .line 194
    .local v4, y:F
    const/4 v1, 0x0

    .line 196
    .local v1, inCenter:Z
    mul-float v7, v3, v3

    mul-float v8, v4, v4

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    iget v9, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterRadius:F

    float-to-double v9, v9

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_1

    move v1, v5

    .line 198
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 233
    :cond_0
    :goto_1
    return v5

    :cond_1
    move v1, v6

    .line 196
    goto :goto_0

    .line 200
    :pswitch_0
    iput-boolean v1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    .line 201
    if-eqz v1, :cond_2

    .line 202
    iput-boolean v5, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    .line 203
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    .line 207
    :cond_2
    :pswitch_1
    iget-boolean v6, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v6, :cond_3

    .line 208
    iget-boolean v6, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    if-eq v6, v1, :cond_0

    .line 209
    iput-boolean v1, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    .line 210
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    .line 213
    :cond_3
    float-to-double v6, v4

    float-to-double v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    double-to-float v0, v6

    .line 215
    .local v0, angle:F
    const v6, 0x40c90fda

    div-float v2, v0, v6

    .line 216
    .local v2, unit:F
    const/4 v6, 0x0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_4

    .line 217
    const/high16 v6, 0x3f80

    add-float/2addr v2, v6

    .line 219
    :cond_4
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mColors:[I

    invoke-direct {p0, v7, v2}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->interpColor([IF)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 220
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    .line 224
    .end local v0           #angle:F
    .end local v2           #unit:F
    :pswitch_2
    iget-boolean v7, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v7, :cond_0

    .line 225
    if-eqz v1, :cond_5

    .line 226
    iget-object v7, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mListener:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;

    iget-object v8, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColor()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 228
    :cond_5
    iput-boolean v6, p0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    .line 229
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
