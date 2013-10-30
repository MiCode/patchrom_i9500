.class public Lcom/samsung/inputmethod/composing/SimeCompView;
.super Landroid/view/View;
.source "SimeCompView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LEFT_RIGHT_MARGIN:I = 0x5

.field private static final SUSPENSION_POINTS:Ljava/lang/String; = "..."

.field private static final TAG:Ljava/lang/String; = "ComposingView"


# instance fields
.field private mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

.field private mCursor:Landroid/graphics/drawable/Drawable;

.field mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

.field mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mFontSize:I

.field private mHlDrawable:Landroid/graphics/drawable/Drawable;

.field private mNeedSuspens:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mStrColor:I

.field private mStrColorHl:I

.field private mSuspensionPointsWidth:F

.field mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 132
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mNeedSuspens:Z

    .line 129
    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->DEFDECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    iput-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mHlDrawable:Landroid/graphics/drawable/Drawable;

    .line 136
    const v1, 0x7f02002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mCursor:Landroid/graphics/drawable/Drawable;

    .line 138
    const v1, 0x7f08000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mStrColor:I

    .line 139
    const v1, 0x7f08000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mStrColorHl:I

    .line 141
    const v1, 0x7f0a0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mFontSize:I

    .line 143
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    .line 144
    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mStrColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mFontSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 148
    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 149
    iget-object v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mSuspensionPointsWidth:F

    .line 150
    return-void
.end method

.method private drawCursor(Landroid/graphics/Canvas;F)V
    .locals 6
    .parameter "canvas"
    .parameter "x"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mCursor:Landroid/graphics/drawable/Drawable;

    float-to-int v1, p2

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingTop:I

    float-to-int v3, p2

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeCompView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 286
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mCursor:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 287
    return-void
.end method

.method private drawForPinyin(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 291
    iget v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingLeft:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v4, v0

    .line 292
    .local v4, x:F
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingTop:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    .line 294
    .local v5, y:F
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mStrColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 296
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v2, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9DECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v0, v2, :cond_2

    .line 297
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    .line 306
    .local v1, cmpsStr:Ljava/lang/String;
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mNeedSuspens:Z

    if-eqz v0, :cond_0

    .line 307
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/composing/SimeCompView;->getLimitedStringForDrawing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 311
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    .line 312
    .local v3, activeCmpsLen:I
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 313
    .end local v1           #cmpsStr:Ljava/lang/String;
    .end local v3           #activeCmpsLen:I
    :cond_1
    return-void

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v2, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9AWINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v0, v2, :cond_1

    .line 300
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #cmpsStr:Ljava/lang/String;
    goto :goto_0
.end method

.method private getLimitedStringForDrawing(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "cmpStr"

    .prologue
    const/4 v6, 0x0

    .line 316
    const/4 v0, 0x0

    .line 317
    .local v0, index:I
    const/4 v2, 0x0

    .line 318
    .local v2, width:F
    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeCompView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingLeft:I

    iget v5, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0xa

    sub-int v1, v3, v4

    .line 321
    .local v1, textMaxWidth:I
    sget-object v3, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->EDIT_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    if-ne v3, v4, :cond_1

    .line 323
    :goto_0
    int-to-float v3, v1

    iget v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mSuspensionPointsWidth:F

    sub-float/2addr v3, v4

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v0, v3, :cond_0

    .line 324
    add-int/lit8 v0, v0, 0x1

    .line 325
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v6, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    goto :goto_0

    .line 327
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    :goto_1
    return-object v3

    .line 330
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 332
    :goto_2
    int-to-float v3, v1

    iget v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mSuspensionPointsWidth:F

    sub-float/2addr v3, v4

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    if-ltz v0, :cond_2

    .line 333
    add-int/lit8 v0, v0, -0x1

    .line 334
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, p1, v0, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v2

    goto :goto_2

    .line 336
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public getComposingStatus()Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    .line 253
    sget-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->EDIT_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iget-object v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iget-object v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    if-ne v0, v2, :cond_2

    .line 255
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/composing/SimeCompView;->drawForPinyin(Landroid/graphics/Canvas;)V

    .line 281
    :cond_1
    :goto_0
    return-void

    .line 260
    :cond_2
    iget v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingLeft:I

    add-int/lit8 v0, v0, 0x5

    int-to-float v4, v0

    .line 261
    .local v4, x:F
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingTop:I

    add-int/2addr v0, v2

    int-to-float v5, v0

    .line 263
    .local v5, y:F
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mStrColorHl:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 264
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mHlDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingLeft:I

    iget v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingTop:I

    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeCompView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingRight:I

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeCompView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingBottom:I

    sub-int/2addr v7, v8

    invoke-virtual {v0, v2, v3, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 266
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mHlDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 268
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v2, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9DECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v0, v2, :cond_4

    .line 269
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getOrigianlSplStr()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, splStr:Ljava/lang/String;
    :goto_1
    iget-boolean v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mNeedSuspens:Z

    if-eqz v0, :cond_3

    .line 278
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/composing/SimeCompView;->getLimitedStringForDrawing(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v6, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 271
    .end local v1           #splStr:Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v2, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9AWINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v0, v2, :cond_1

    .line 272
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getOrigianlSplStr()Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #splStr:Ljava/lang/String;
    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v7, 0x1

    const/high16 v6, 0x3f00

    const/4 v5, 0x0

    .line 186
    iput-boolean v5, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mNeedSuspens:Z

    .line 187
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingTop:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingBottom:I

    add-int v0, v3, v4

    .line 189
    .local v0, height:I
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v4, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9DECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v3, v4, :cond_7

    .line 190
    iget v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingLeft:I

    iget v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xa

    int-to-float v2, v3

    .line 192
    .local v2, width:F
    sget-object v3, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    if-ne v3, v4, :cond_4

    .line 193
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getOrigianlSplStr()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, str:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 195
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    add-float/2addr v3, v6

    add-float/2addr v2, v3

    .line 204
    :cond_0
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_6

    .line 205
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v3

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingComposingWindowPadding()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 206
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v3

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingComposingWindowPadding()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v2, v3

    .line 207
    iput-boolean v7, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mNeedSuspens:Z

    .line 244
    .end local v1           #str:Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_2

    if-nez v0, :cond_3

    .line 245
    :cond_2
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/composing/SimeCompView;->setVisibility(I)V

    .line 246
    :cond_3
    float-to-int v3, v2

    invoke-virtual {p0, v3, v0}, Lcom/samsung/inputmethod/composing/SimeCompView;->setMeasuredDimension(II)V

    .line 248
    return-void

    .line 197
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    .line 199
    .restart local v1       #str:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 200
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getActiveCmpsDisplayLen()I

    move-result v4

    invoke-virtual {v3, v1, v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    add-float/2addr v3, v6

    add-float/2addr v2, v3

    .line 201
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getActiveCmpsDisplayLen()I

    move-result v3

    if-nez v3, :cond_0

    .line 202
    const/4 v2, 0x0

    goto :goto_0

    .line 210
    :cond_6
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 211
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    int-to-float v2, v3

    .line 212
    iput-boolean v7, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mNeedSuspens:Z

    goto :goto_1

    .line 216
    .end local v1           #str:Ljava/lang/String;
    .end local v2           #width:F
    :cond_7
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v4, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9AWINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v3, v4, :cond_b

    .line 218
    iget v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingLeft:I

    iget v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaddingRight:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xa

    int-to-float v2, v3

    .line 221
    .restart local v2       #width:F
    sget-object v3, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    if-ne v3, v4, :cond_9

    .line 222
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getOrigianlSplStr()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .restart local v1       #str:Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 224
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    add-float/2addr v3, v6

    add-float/2addr v2, v3

    .line 234
    :cond_8
    :goto_2
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    .line 235
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    int-to-float v2, v3

    .line 236
    iput-boolean v7, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mNeedSuspens:Z

    goto/16 :goto_1

    .line 227
    .end local v1           #str:Ljava/lang/String;
    :cond_9
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    .line 229
    .restart local v1       #str:Ljava/lang/String;
    if-eqz v1, :cond_a

    .line 230
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getActiveCmpsDisplayLen()I

    move-result v4

    invoke-virtual {v3, v1, v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v3

    add-float/2addr v3, v6

    add-float/2addr v2, v3

    .line 231
    :cond_a
    iget-object v3, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getActiveCmpsDisplayLen()I

    move-result v3

    if-nez v3, :cond_8

    .line 232
    const/4 v2, 0x0

    goto :goto_2

    .line 240
    .end local v1           #str:Ljava/lang/String;
    .end local v2           #width:F
    :cond_b
    const/4 v2, 0x0

    .restart local v2       #width:F
    goto/16 :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 153
    sget-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    .line 154
    return-void
.end method

.method public setDecodingInfo(Lcom/samsung/inputmethod/decoder/SimeDecManager;Lcom/samsung/inputmethod/SamsungIME$ImeState;)V
    .locals 3
    .parameter "mDecInfoMgr"
    .parameter "imeStatus"

    .prologue
    const/4 v2, -0x2

    .line 164
    invoke-virtual {p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDecType()Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    .line 165
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9DECINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v0, v1, :cond_1

    .line 166
    invoke-virtual {p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    .line 167
    sget-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    .line 173
    :cond_0
    :goto_0
    invoke-virtual {p0, v2, v2}, Lcom/samsung/inputmethod/composing/SimeCompView;->measure(II)V

    .line 174
    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeCompView;->requestLayout()V

    .line 175
    invoke-virtual {p0}, Lcom/samsung/inputmethod/composing/SimeCompView;->invalidate()V

    .line 176
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mDecInfoType:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;->T9AWINFO:Lcom/samsung/inputmethod/decoder/SimeDecManager$eDecInfoType;

    if-ne v0, v1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mT9AWDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    .line 171
    sget-object v0, Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;->SHOW_COMPOSING:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    iput-object v0, p0, Lcom/samsung/inputmethod/composing/SimeCompView;->mComposingStatus:Lcom/samsung/inputmethod/composing/SimeCompView$ComposingStatus;

    goto :goto_0
.end method
