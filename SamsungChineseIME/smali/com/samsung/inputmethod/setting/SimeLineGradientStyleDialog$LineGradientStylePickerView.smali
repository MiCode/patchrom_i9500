.class Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;
.super Landroid/view/View;
.source "SimeLineGradientStyleDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LineGradientStylePickerView"
.end annotation


# static fields
.field public static CENTER_X:I

.field public static CENTER_Y:I


# instance fields
.field private final LPAD:I

.field private final RPAD:I

.field private mColorChangedListener:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mTextPath:Landroid/graphics/Path;

.field private mlineGradient:Landroid/graphics/LinearGradient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x64

    .line 155
    sput v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_X:I

    .line 156
    sput v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_Y:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$OnLineGradientChangedListener;ILcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;)V
    .locals 8
    .parameter "c"
    .parameter "l"
    .parameter "color"
    .parameter "ColorChangedListener"

    .prologue
    const/high16 v7, 0x4120

    const/high16 v4, 0x4248

    const/4 v6, 0x1

    const/high16 v5, 0x4000

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 97
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->LPAD:I

    .line 99
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->RPAD:I

    .line 105
    iput-object p4, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mColorChangedListener:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;

    .line 106
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPath:Landroid/graphics/Path;

    .line 107
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPaint:Landroid/graphics/Paint;

    .line 108
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mInitialLine:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 110
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPaint:Landroid/graphics/Paint;

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mMLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setLinearText(Z)V

    .line 112
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 113
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    const/high16 v3, 0x4040

    mul-float/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 114
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 115
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v7, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 116
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPath:Landroid/graphics/Path;

    const/high16 v2, 0x4220

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 117
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 118
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPath:Landroid/graphics/Path;

    const/high16 v2, 0x4270

    const/high16 v3, 0x428c

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPath:Landroid/graphics/Path;

    const/high16 v2, 0x42c8

    const/high16 v3, 0x42c8

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 120
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPath:Landroid/graphics/Path;

    const/high16 v2, 0x42f0

    const/high16 v3, 0x4302

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 121
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPath:Landroid/graphics/Path;

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_X:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    sget v3, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_Y:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 122
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPath:Landroid/graphics/Path;

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_X:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x14

    int-to-float v2, v2

    const/high16 v3, 0x4198

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 123
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPath:Landroid/graphics/Path;

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_Y:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x50

    int-to-float v2, v2

    sget v3, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_X:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    sget v4, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_Y:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x14

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 125
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mTextPath:Landroid/graphics/Path;

    .line 126
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mTextPath:Landroid/graphics/Path;

    invoke-virtual {v0, v5, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 127
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mTextPath:Landroid/graphics/Path;

    const/high16 v2, 0x41a0

    sget v3, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_Y:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x50

    int-to-float v3, v3

    sget v4, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_X:I

    add-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    sget v5, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_Y:I

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, -0x14

    int-to-float v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 129
    new-instance v0, Landroid/graphics/LinearGradient;

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_X:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    const/4 v2, 0x3

    new-array v5, v2, [I

    const/4 v2, 0x0

    sget v4, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSLineColor:I

    aput v4, v5, v2

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mMLineColor:I

    aput v2, v5, v6

    const/4 v2, 0x2

    sget v4, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mELineColor:I

    aput v4, v5, v2

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mlineGradient:Landroid/graphics/LinearGradient;

    .line 132
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mlineGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 133
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mlineGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 146
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 147
    const/high16 v1, 0x4080

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->getWidth()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    int-to-float v4, v0

    iget-object v5, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 148
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 152
    sget v0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_X:I

    mul-int/lit8 v0, v0, 0x2

    sget v1, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_Y:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->setMeasuredDimension(II)V

    .line 153
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 161
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 162
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 194
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 164
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->invalidate()V

    goto :goto_0

    .line 167
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->invalidate()V

    goto :goto_0

    .line 170
    :pswitch_2
    if-lez v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->getHeight()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 172
    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    if-ge v1, v3, :cond_1

    .line 173
    sget v3, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->STARTREGION:I

    sput v3, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSelectRegion:I

    .line 174
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mColorChangedListener:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;

    sget v5, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSLineColor:I

    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;I)V

    .line 176
    .local v0, dlg:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->show()V

    .line 177
    const v3, 0x7f0b00bf

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->setTitle(I)V

    goto :goto_0

    .line 178
    .end local v0           #dlg:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x3

    if-lt v1, v3, :cond_2

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    if-ge v1, v3, :cond_2

    .line 179
    sget v3, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->MIDREGION:I

    sput v3, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSelectRegion:I

    .line 180
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mColorChangedListener:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;

    sget v5, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mMLineColor:I

    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;I)V

    .line 182
    .restart local v0       #dlg:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->show()V

    .line 183
    const v3, 0x7f0b00be

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->setTitle(I)V

    goto :goto_0

    .line 184
    .end local v0           #dlg:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->getWidth()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    if-lt v1, v3, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->getWidth()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 185
    sget v3, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->ENDREGION:I

    sput v3, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSelectRegion:I

    .line 186
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mColorChangedListener:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;

    sget v5, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mELineColor:I

    invoke-direct {v0, v3, v4, v5}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;-><init>(Landroid/content/Context;Lcom/samsung/inputmethod/setting/SimeColorPickerDialog$OnColorChangedListener;I)V

    .line 188
    .restart local v0       #dlg:Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->show()V

    .line 189
    const v3, 0x7f0b00bd

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/setting/SimeColorPickerDialog;->setTitle(I)V

    goto/16 :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public updateGradient()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 136
    new-instance v0, Landroid/graphics/LinearGradient;

    sget v2, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->CENTER_X:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v3, v2

    const/4 v2, 0x3

    new-array v5, v2, [I

    const/4 v2, 0x0

    sget v4, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mSLineColor:I

    aput v4, v5, v2

    const/4 v2, 0x1

    sget v4, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mMLineColor:I

    aput v4, v5, v2

    const/4 v2, 0x2

    sget v4, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog;->mELineColor:I

    aput v4, v5, v2

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v4, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mlineGradient:Landroid/graphics/LinearGradient;

    .line 139
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->mlineGradient:Landroid/graphics/LinearGradient;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 140
    invoke-virtual {p0}, Lcom/samsung/inputmethod/setting/SimeLineGradientStyleDialog$LineGradientStylePickerView;->invalidate()V

    .line 141
    return-void
.end method
