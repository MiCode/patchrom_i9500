.class Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;
.super Landroid/view/View;
.source "SimeBalloonHint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/comm/SimeBalloonHint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BalloonView"
.end annotation


# static fields
.field private static final SUSPENSION_POINTS:Ljava/lang/String; = "..."


# instance fields
.field private mCurrLan:Ljava/lang/String;

.field private mDiff:F

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIsSpace:Z

.field private mLabeColor:I

.field private mLabel:Ljava/lang/String;

.field private mNextLan:Ljava/lang/String;

.field private mPaintLabel:Landroid/graphics/Paint;

.field private mPrevLan:Ljava/lang/String;

.field private mSuspensionPointsWidth:F

.field private mTextBounds:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/samsung/inputmethod/comm/SimeBalloonHint;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/comm/SimeBalloonHint;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 407
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->this$0:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 408
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 385
    const/high16 v0, -0x100

    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mLabeColor:I

    .line 409
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    .line 410
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mLabeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 411
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 412
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 413
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 416
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHelveFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 419
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mTextBounds:Landroid/graphics/Rect;

    .line 421
    return-void
.end method

.method private getLimitedLabelForDrawing(Ljava/lang/String;F)Ljava/lang/String;
    .locals 5
    .parameter "rawLabel"
    .parameter "widthToDraw"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 590
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 591
    .local v0, subLen:I
    if-gt v0, v4, :cond_0

    .line 596
    .end local p1
    :goto_0
    return-object p1

    .line 593
    .restart local p1
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 594
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    .line 595
    .local v1, width:F
    iget v2, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mSuspensionPointsWidth:F

    add-float/2addr v2, v1

    cmpg-float v2, v2, p2

    if-lez v2, :cond_1

    if-lt v4, v0, :cond_0

    .line 596
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 28
    .parameter "canvas"

    .prologue
    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->getWidth()I

    move-result v20

    .line 499
    .local v20, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->getHeight()I

    move-result v7

    .line 500
    .local v7, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    sub-int v23, v20, v23

    div-int/lit8 v13, v23, 0x2

    .line 502
    .local v13, marginLeft:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    sub-int v23, v20, v23

    sub-int v14, v23, v13

    .line 504
    .local v14, marginRight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    sub-int v23, v7, v23

    div-int/lit8 v15, v23, 0x2

    .line 505
    .local v15, marginTop:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    sub-int v23, v7, v23

    sub-int v12, v23, v15

    .line 507
    .local v12, marginBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    sub-int v24, v20, v14

    sub-int v25, v7, v12

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v13, v15, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 549
    .end local v12           #marginBottom:I
    .end local v13           #marginLeft:I
    .end local v14           #marginRight:I
    .end local v15           #marginTop:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIsSpace:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0201c8

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 552
    .local v9, leftIcon:Landroid/graphics/drawable/Drawable;
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v25

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v26

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v9, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 553
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    div-int/lit8 v10, v23, 0x2

    .line 554
    .local v10, leftX:I
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    sub-int v23, v7, v23

    div-int/lit8 v11, v23, 0x3

    .line 555
    .local v11, leftY:I
    int-to-float v0, v10

    move/from16 v23, v0

    int-to-float v0, v11

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 556
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 557
    neg-int v0, v10

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    neg-int v0, v11

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0201c9

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 561
    .local v17, rightIcon:Landroid/graphics/drawable/Drawable;
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v25

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v26

    move-object/from16 v0, v17

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 562
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    mul-int/lit8 v23, v23, 0x2

    sub-int v18, v20, v23

    .line 563
    .local v18, rightX:I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    sub-int v23, v7, v23

    div-int/lit8 v19, v23, 0x3

    .line 564
    .local v19, rightY:I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 565
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 566
    move/from16 v0, v18

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v19

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 569
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingLeft:I

    move/from16 v24, v0

    add-int v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v25

    sub-int v25, v20, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingRight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 570
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingLeft:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v21, v0

    .line 572
    .local v21, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    const/high16 v24, 0x41f0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 574
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mCurrLan:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v24

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingLeft:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingRight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v21, v21, v23

    .line 577
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mDiff:F

    move/from16 v23, v0

    add-float v21, v21, v23

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mCurrLan:Ljava/lang/String;

    move-object/from16 v23, v0

    div-int/lit8 v24, v7, 0x3

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPrevLan:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPrevLan:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "  "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v24

    sub-float v24, v21, v24

    div-int/lit8 v25, v7, 0x3

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mNextLan:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mCurrLan:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "  "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v24

    add-float v24, v24, v21

    div-int/lit8 v25, v7, 0x3

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 584
    .end local v9           #leftIcon:Landroid/graphics/drawable/Drawable;
    .end local v10           #leftX:I
    .end local v11           #leftY:I
    .end local v17           #rightIcon:Landroid/graphics/drawable/Drawable;
    .end local v18           #rightX:I
    .end local v19           #rightY:I
    .end local v21           #x:F
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 586
    return-void

    .line 510
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 512
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingLeft:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v21, v0

    .line 521
    .restart local v21       #x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    .line 522
    .local v6, fontSize:F
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v24

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingLeft:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingRight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v8, v23, v24

    .line 523
    .local v8, keyOffset:F
    :goto_1
    const/16 v23, 0x0

    cmpg-float v23, v8, v23

    if-gtz v23, :cond_3

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Paint;->getTextSize()F

    move-result v24

    const/high16 v25, 0x4040

    sub-float v24, v24, v25

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 525
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v24

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingLeft:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingRight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v8, v23, v24

    goto :goto_1

    .line 527
    :cond_3
    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v24

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingLeft:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingRight:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v21, v21, v23

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v24, v0

    sub-int v5, v23, v24

    .line 530
    .local v5, fontHeight:I
    sub-int v23, v7, v5

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4000

    div-float v16, v23, v24

    .line 531
    .local v16, marginY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sub-float v22, v16, v23

    .line 534
    .local v22, y:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 536
    div-int/lit8 v23, v7, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    rsub-int/lit8 v24, v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mTextBounds:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v22, v0

    .line 540
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "\u3002"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 541
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x4120

    div-float v23, v23, v24

    add-float v21, v21, v23

    .line 544
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, -0x8000

    .line 458
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 459
    .local v5, widthMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 460
    .local v0, heightMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 461
    .local v6, widthSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 463
    .local v1, heightSize:I
    const/high16 v7, 0x4000

    if-ne v5, v7, :cond_0

    .line 464
    invoke-virtual {p0, v6, v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->setMeasuredDimension(II)V

    .line 492
    :goto_0
    return-void

    .line 468
    :cond_0
    iget v7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingLeft:I

    iget v8, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingRight:I

    add-int v4, v7, v8

    .line 469
    .local v4, measuredWidth:I
    iget v7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingTop:I

    iget v8, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingBottom:I

    add-int v3, v7, v8

    .line 470
    .local v3, measuredHeight:I
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_7

    .line 471
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    add-int/2addr v4, v7

    .line 472
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v3, v7

    .line 477
    :cond_1
    :goto_1
    if-gt v6, v4, :cond_2

    if-ne v5, v9, :cond_3

    .line 478
    :cond_2
    move v4, v6

    .line 481
    :cond_3
    if-gt v1, v3, :cond_4

    if-ne v0, v9, :cond_5

    .line 483
    :cond_4
    move v3, v1

    .line 486
    :cond_5
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v7

    iget v8, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 488
    .local v2, maxWidth:I
    if-le v4, v2, :cond_6

    .line 489
    move v4, v2

    .line 491
    :cond_6
    invoke-virtual {p0, v4, v3}, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 473
    .end local v2           #maxWidth:I
    :cond_7
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 474
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v4, v7

    .line 475
    iget-object v7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v7, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v8, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v8, v8, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v7, v8

    add-int/2addr v3, v7

    goto :goto_1
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "icon"

    .prologue
    .line 424
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 425
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIsSpace:Z

    .line 426
    return-void
.end method

.method public setSpaceConfig(FFZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "diff"
    .parameter "textSize"
    .parameter "textBold"
    .parameter "textColor"
    .parameter "prev"
    .parameter "current"
    .parameter "next"

    .prologue
    .line 443
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 444
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 445
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 446
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 447
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mSuspensionPointsWidth:F

    .line 448
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIsSpace:Z

    .line 449
    iput p1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mDiff:F

    .line 450
    iput-object p5, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPrevLan:Ljava/lang/String;

    .line 451
    iput-object p6, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mCurrLan:Ljava/lang/String;

    .line 452
    iput-object p7, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mNextLan:Ljava/lang/String;

    .line 453
    return-void
.end method

.method public setTextConfig(Ljava/lang/String;FZI)V
    .locals 2
    .parameter "label"
    .parameter "fontSize"
    .parameter "textBold"
    .parameter "textColor"

    .prologue
    .line 431
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 432
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mLabel:Ljava/lang/String;

    .line 433
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 434
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 435
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 436
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 437
    iget-object v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mPaintLabel:Landroid/graphics/Paint;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mSuspensionPointsWidth:F

    .line 438
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/comm/SimeBalloonHint$BalloonView;->mIsSpace:Z

    .line 439
    return-void
.end method
