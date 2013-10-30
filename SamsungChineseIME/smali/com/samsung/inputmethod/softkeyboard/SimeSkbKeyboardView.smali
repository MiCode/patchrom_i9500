.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
.super Landroid/view/View;
.source "SimeSkbKeyboardView.java"


# static fields
.field private static final ACCESSIBILITY_SPEAK_PASSWORD:Ljava/lang/String; = "speak_password"

.field private static final DEBUG:Z = false

.field private static final ENABLE_ACCESSIBILITY:Z = true

.field private static final TAG:Ljava/lang/String; = "SamsungKeyboardView"

.field public static mKeyDetecter:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityViewId:I

.field private mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

.field private mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

.field protected mBuffer:Landroid/graphics/Bitmap;

.field protected mCanvas:Landroid/graphics/Canvas;

.field private final mClipRegion:Landroid/graphics/Rect;

.field private mDimSkb:Z

.field private mDirtyRect:Landroid/graphics/Rect;

.field private mDrawPending:Z

.field private mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mFirstLineEnd:F

.field private mFirstStartY:F

.field private mFmi:Landroid/graphics/Paint$FontMetricsInt;

.field private mHintLocationToSkbContainer:[I

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mInvalidatedKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

.field private mKeyLongPressed:Z

.field private mKeyPressed:Z

.field private mKeyboardChanged:Z

.field private mLastMoveStartPointX:I

.field private mLocalInputMethod:I

.field private mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

.field private mMovingNeverHidePopupBalloon:Z

.field private mNextLanguage:Ljava/lang/String;

.field private mNoSoundNoVibrateKeyboard:Z

.field private mOffsetToSkbContainer:[I

.field private mPaint:Landroid/graphics/Paint;

.field private mPreLanguage:Ljava/lang/String;

.field private mRepeatForLongPress:Z

.field private mService:Landroid/inputmethodservice/InputMethodService;

.field mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

.field private mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

.field private mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

.field private mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

.field private mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

.field public mSpaceKeyStart:I

.field private padDoubleX:I

.field private padDoubleY:I

.field private qwtDoubleX:I

.field private qwtDoubleY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 204
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyPressed:Z

    .line 119
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyLongPressed:Z

    .line 124
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mOffsetToSkbContainer:[I

    .line 129
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    .line 139
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mRepeatForLongPress:Z

    .line 145
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mMovingNeverHidePopupBalloon:Z

    .line 147
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mNoSoundNoVibrateKeyboard:Z

    .line 155
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mClipRegion:Landroid/graphics/Rect;

    .line 158
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyboardChanged:Z

    .line 159
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDrawPending:Z

    .line 161
    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 162
    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 164
    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInvalidatedKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 170
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->qwtDoubleX:I

    .line 171
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->qwtDoubleY:I

    .line 172
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->padDoubleX:I

    .line 173
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->padDoubleY:I

    .line 177
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSpaceKeyStart:I

    .line 178
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mLocalInputMethod:I

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFirstLineEnd:F

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mAccessibilityViewId:I

    .line 206
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    .line 208
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    .line 209
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 211
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 212
    invoke-static {}, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->getInstance()Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyDetecter:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    .line 213
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    .line 215
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHelveFont()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 218
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 220
    return-void
.end method

.method private drawKeyUnite(Landroid/graphics/Canvas;Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;II)V
    .locals 20
    .parameter "canvas"
    .parameter "keyUnite"
    .parameter "keyXMargin"
    .parameter "keyYMargin"

    .prologue
    .line 1672
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->getKeyBg()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1673
    .local v4, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->getColor()I

    move-result v11

    .line 1675
    .local v11, textColor:I
    if-eqz v4, :cond_0

    .line 1676
    move-object/from16 v0, p2

    iget v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mLeft:I

    add-int v14, v14, p3

    move-object/from16 v0, p2

    iget v15, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mTop:I

    add-int v15, v15, p4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mRight:I

    move/from16 v16, v0

    sub-int v16, v16, p3

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mBottom:I

    move/from16 v17, v0

    sub-int v17, v17, p4

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v4, v14, v15, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1678
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1681
    :cond_0
    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mSoftKeys:Ljava/util/List;

    .line 1683
    .local v10, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-ge v5, v14, :cond_1

    .line 1684
    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 1685
    .local v9, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->drawKeyUniteChild(Landroid/graphics/Canvas;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;II)V

    .line 1683
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1688
    .end local v9           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->getLable()Ljava/lang/String;

    move-result-object v6

    .line 1689
    .local v6, keyLabel:Ljava/lang/String;
    if-eqz v6, :cond_3

    .line 1690
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v14, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 1691
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v14}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isNeedShadow()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1692
    const/4 v8, 0x1

    .line 1693
    .local v8, radius:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v14}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v14

    const/16 v15, 0x140

    if-ne v14, v15, :cond_2

    .line 1694
    const/4 v8, 0x2

    .line 1696
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v14}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1697
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    const/high16 v15, 0x3f80

    const/16 v16, 0x0

    const/high16 v17, -0x4080

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f08001f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1706
    .end local v8           #radius:I
    :goto_1
    move-object/from16 v0, p2

    iget v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mLeft:I

    int-to-float v14, v14

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->width()I

    move-result v15

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v16

    sub-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v15, v15, v16

    add-float v12, v14, v15

    .line 1707
    .local v12, x:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 1708
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->height()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v14, v15

    int-to-float v14, v14

    const/high16 v15, 0x4000

    div-float v7, v14, v15

    .line 1709
    .local v7, marginY:F
    move-object/from16 v0, p2

    iget v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mTop:I

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    iget v15, v15, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    int-to-float v15, v15

    const/high16 v16, 0x3f40

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    add-float v13, v14, v7

    .line 1710
    .local v13, y:F
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1713
    .end local v7           #marginY:F
    .end local v12           #x:F
    .end local v13           #y:F
    :cond_3
    return-void

    .line 1700
    .restart local v8       #radius:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    int-to-float v15, v8

    const/high16 v16, -0x4080

    const/high16 v17, -0x4080

    const/high16 v18, -0x100

    invoke-virtual/range {v14 .. v18}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 1703
    .end local v8           #radius:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v14}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto/16 :goto_1
.end method

.method private drawKeyUniteChild(Landroid/graphics/Canvas;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;II)V
    .locals 17
    .parameter "canvas"
    .parameter "softKey"
    .parameter "keyXMargin"
    .parameter "keyYMargin"

    .prologue
    .line 1718
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v7

    check-cast v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;

    .line 1719
    .local v7, keyUnite:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;
    iget-object v12, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mOrientation:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    .line 1720
    .local v12, ori:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyType()I

    move-result v6

    .line 1722
    .local v6, keyTypeId:I
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyPressed:Z

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1723
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyHlIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1724
    .local v5, keyIcon:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_0

    .line 1725
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1727
    :cond_0
    sget-object v13, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;->UNITE_HORIZONTAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    if-ne v12, v13, :cond_6

    .line 1728
    const/4 v13, 0x5

    if-ne v6, v13, :cond_5

    .line 1729
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020154

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1747
    .local v2, hlBg:Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 1748
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v13

    iget v13, v13, Landroid/content/res/Configuration;->orientation:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_9

    const/4 v4, 0x1

    .line 1750
    .local v4, isLandscape:Z
    :goto_1
    if-eqz v2, :cond_1

    .line 1751
    iget v13, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mLeft:I

    add-int v13, v13, p3

    iget v14, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mTop:I

    add-int v14, v14, p4

    iget v15, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mRight:I

    sub-int v15, v15, p3

    iget v0, v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mBottom:I

    move/from16 v16, v0

    sub-int v16, v16, p4

    move/from16 v0, v16

    invoke-virtual {v2, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1753
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1756
    :cond_1
    if-eqz v5, :cond_4

    .line 1757
    move-object v3, v5

    .line 1758
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 1759
    .local v9, marginLeft:I
    const/4 v10, 0x0

    .line 1760
    .local v10, marginRight:I
    const/4 v11, 0x0

    .line 1761
    .local v11, marginTop:I
    const/4 v8, 0x0

    .line 1763
    .local v8, marginBottom:I
    sget-object v13, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;->UNITE_HORIZONTAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    if-ne v12, v13, :cond_11

    .line 1765
    const/4 v13, 0x5

    if-ne v6, v13, :cond_d

    .line 1766
    if-eqz v4, :cond_b

    .line 1767
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v13

    const/16 v14, 0x140

    if-ne v13, v14, :cond_a

    .line 1768
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v9, v13, 0x2

    .line 1779
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int v10, v13, v9

    .line 1797
    :cond_2
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v11, v13, 0x2

    .line 1798
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int v8, v13, v11

    .line 1836
    :cond_3
    :goto_4
    move-object/from16 v0, p2

    iget v13, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/2addr v13, v9

    move-object/from16 v0, p2

    iget v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    add-int/2addr v14, v11

    move-object/from16 v0, p2

    iget v15, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    sub-int/2addr v15, v10

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    move/from16 v16, v0

    sub-int v16, v16, v8

    move/from16 v0, v16

    invoke-virtual {v3, v13, v14, v15, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1838
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1842
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v8           #marginBottom:I
    .end local v9           #marginLeft:I
    .end local v10           #marginRight:I
    .end local v11           #marginTop:I
    :cond_4
    return-void

    .line 1731
    .end local v1           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .end local v2           #hlBg:Landroid/graphics/drawable/Drawable;
    .end local v4           #isLandscape:Z
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020155

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2       #hlBg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 1734
    .end local v2           #hlBg:Landroid/graphics/drawable/Drawable;
    :cond_6
    const/4 v13, 0x5

    if-ne v6, v13, :cond_7

    .line 1735
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020156

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2       #hlBg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 1737
    .end local v2           #hlBg:Landroid/graphics/drawable/Drawable;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f020153

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .restart local v2       #hlBg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 1742
    .end local v2           #hlBg:Landroid/graphics/drawable/Drawable;
    .end local v5           #keyIcon:Landroid/graphics/drawable/Drawable;
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1743
    .restart local v5       #keyIcon:Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x0

    .restart local v2       #hlBg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_0

    .line 1748
    .restart local v1       #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1770
    .restart local v3       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #isLandscape:Z
    .restart local v8       #marginBottom:I
    .restart local v9       #marginLeft:I
    .restart local v10       #marginRight:I
    .restart local v11       #marginTop:I
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v9, v13, 0x2

    goto/16 :goto_2

    .line 1773
    :cond_b
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v13

    const/16 v14, 0x140

    if-ne v13, v14, :cond_c

    .line 1774
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v13

    div-int/lit8 v9, v13, 0x6

    goto/16 :goto_2

    .line 1776
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v13

    div-int/lit8 v9, v13, 0x3

    goto/16 :goto_2

    .line 1781
    :cond_d
    const/4 v13, 0x6

    if-ne v6, v13, :cond_2

    .line 1782
    if-eqz v4, :cond_f

    .line 1783
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v13

    const/16 v14, 0x140

    if-ne v13, v14, :cond_e

    .line 1784
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v10, v13, 0x2

    .line 1795
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int v9, v13, v10

    goto/16 :goto_3

    .line 1786
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v10, v13, 0x2

    goto :goto_5

    .line 1789
    :cond_f
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v13

    const/16 v14, 0x140

    if-ne v13, v14, :cond_10

    .line 1790
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v13

    div-int/lit8 v9, v13, 0x6

    move v10, v9

    goto :goto_5

    .line 1792
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v13

    div-int/lit8 v10, v13, 0x3

    goto :goto_5

    .line 1799
    :cond_11
    sget-object v13, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;->UNITE_VERTICAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    if-ne v12, v13, :cond_3

    .line 1800
    const/4 v13, 0x5

    if-ne v6, v13, :cond_16

    .line 1801
    if-eqz v4, :cond_14

    .line 1802
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v13

    const/16 v14, 0x140

    if-ne v13, v14, :cond_13

    .line 1803
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v13

    div-int/lit8 v11, v13, 0x5

    .line 1814
    :goto_6
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int v8, v13, v11

    .line 1833
    :cond_12
    :goto_7
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    sub-int/2addr v13, v14

    div-int/lit8 v9, v13, 0x2

    .line 1834
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int v10, v13, v9

    goto/16 :goto_4

    .line 1805
    :cond_13
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v13

    div-int/lit8 v11, v13, 0x4

    goto :goto_6

    .line 1808
    :cond_14
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v13

    const/16 v14, 0x140

    if-ne v13, v14, :cond_15

    .line 1809
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v13

    div-int/lit8 v11, v13, 0x4

    goto :goto_6

    .line 1811
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v13

    div-int/lit8 v11, v13, 0x4

    goto :goto_6

    .line 1816
    :cond_16
    const/4 v13, 0x6

    if-ne v6, v13, :cond_12

    .line 1817
    if-eqz v4, :cond_18

    .line 1818
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v13

    const/16 v14, 0x140

    if-ne v13, v14, :cond_17

    .line 1819
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v13

    div-int/lit8 v8, v13, 0x5

    .line 1831
    :goto_8
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v13

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    sub-int/2addr v13, v14

    sub-int v11, v13, v8

    goto :goto_7

    .line 1821
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v13

    div-int/lit8 v8, v13, 0x4

    goto :goto_8

    .line 1825
    :cond_18
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v13

    const/16 v14, 0x140

    if-ne v13, v14, :cond_19

    .line 1826
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v13

    div-int/lit8 v8, v13, 0x4

    goto :goto_8

    .line 1828
    :cond_19
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v13

    div-int/lit8 v8, v13, 0x4

    goto :goto_8
.end method

.method private drawMiniKeyboardDivideLines(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 1291
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1293
    .local v5, r:Landroid/content/res/Resources;
    const v9, 0x7f0201c6

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 1294
    .local v6, verticalLine:Landroid/graphics/drawable/Drawable;
    const v9, 0x7f0201c7

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1295
    .local v1, horizontalLine:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getHorizontalLinenum()I

    move-result v2

    .line 1296
    .local v2, horizontalLineCount:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getVerticalLinenum()I

    move-result v7

    .line 1297
    .local v7, verticalLineCount:I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    .line 1298
    .local v8, verticalLineWidth:I
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 1302
    .local v3, horizontalLineHeight:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v9

    invoke-virtual {v9, v12, v12}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKey(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v0

    .line 1303
    .local v0, firstKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    const/4 v4, 0x1

    .local v4, i:I
    :goto_0
    if-gt v4, v7, :cond_0

    .line 1304
    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLeft()I

    move-result v9

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v10

    mul-int/2addr v10, v4

    add-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1306
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v9

    invoke-virtual {v6, v12, v12, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1308
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1309
    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLeft()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v10

    mul-int/2addr v10, v4

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1303
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1313
    :cond_0
    const/4 v4, 0x1

    :goto_1
    if-gt v4, v2, :cond_1

    .line 1314
    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLeft()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v10

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v11

    mul-int/2addr v11, v4

    add-int/2addr v10, v11

    div-int/lit8 v11, v3, 0x2

    sub-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1316
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v9

    invoke-virtual {v1, v12, v12, v9, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1318
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1319
    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLeft()I

    move-result v9

    neg-int v9, v9

    int-to-float v9, v9

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v10

    neg-int v10, v10

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v11

    mul-int/2addr v11, v4

    sub-int/2addr v10, v11

    div-int/lit8 v11, v3, 0x2

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-virtual {p1, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1313
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1322
    :cond_1
    return-void
.end method

.method private drawSoftKey(Landroid/graphics/Canvas;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;IIII)V
    .locals 58
    .parameter "canvas"
    .parameter "softKey"
    .parameter "keyXMargin"
    .parameter "keyYMargin"
    .parameter "rowTopMargin"
    .parameter "rowBottomMargin"

    .prologue
    .line 1861
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyPressed:Z

    move/from16 v52, v0

    if-eqz v52, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v52, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_9

    .line 1862
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyHlBg()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1863
    .local v5, bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getColorHl()I

    move-result v39

    .line 1864
    .local v39, textColor:I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyHlIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 1865
    .local v18, keyIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyExtraHlIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1866
    .local v17, keyExtraIcon:Landroid/graphics/drawable/Drawable;
    if-nez v18, :cond_0

    .line 1867
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 1869
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 1896
    :goto_0
    if-eqz v5, :cond_1

    .line 1907
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    add-int v52, v52, p3

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v53, v0

    add-int v53, v53, p4

    add-int v53, v53, p5

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    move/from16 v54, v0

    sub-int v54, v54, p3

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    move/from16 v55, v0

    add-int v56, p4, p6

    sub-int v55, v55, v56

    move/from16 v0, v52

    move/from16 v1, v53

    move/from16 v2, v54

    move/from16 v3, v55

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1918
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1920
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v19

    .line 1921
    .local v19, keyLabel:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v20

    .line 1924
    .local v20, keyLongLabel:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyType()I

    move-result v22

    .line 1931
    .local v22, keyTypeId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v52

    if-nez v52, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isTwoLanguageAvailable()Z

    move-result v52

    if-eqz v52, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->isLanguageKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    move-result v52

    if-eqz v52, :cond_2

    .line 1933
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getLanguageKeyImage(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 1936
    :cond_2
    if-eqz v18, :cond_4

    .line 1938
    move-object/from16 v11, v18

    .line 1946
    .local v11, icon:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v52

    sget-object v53, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-eq v0, v1, :cond_3

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v52

    sget-object v53, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_d

    :cond_3
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getIconNoResize()Z

    move-result v52

    if-nez v52, :cond_d

    .line 1949
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v52

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v53

    mul-int/lit8 v53, v53, 0x3

    div-int/lit8 v53, v53, 0x4

    sub-int v52, v52, v53

    div-int/lit8 v24, v52, 0x2

    .line 1950
    .local v24, marginLeft:I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v52

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v53

    mul-int/lit8 v53, v53, 0x3

    div-int/lit8 v53, v53, 0x4

    sub-int v52, v52, v53

    sub-int v25, v52, v24

    .line 1951
    .local v25, marginRight:I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v52

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v53

    mul-int/lit8 v53, v53, 0x3

    div-int/lit8 v53, v53, 0x4

    sub-int v52, v52, v53

    div-int/lit8 v26, v52, 0x2

    .line 1952
    .local v26, marginTop:I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v52

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v53

    mul-int/lit8 v53, v53, 0x3

    div-int/lit8 v53, v53, 0x4

    sub-int v52, v52, v53

    sub-int v23, v52, v26

    .line 1969
    .local v23, marginBottom:I
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    add-int v52, v52, v24

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v53, v0

    add-int v53, v53, v26

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    move/from16 v54, v0

    sub-int v54, v54, v25

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    move/from16 v55, v0

    sub-int v55, v55, v23

    move/from16 v0, v52

    move/from16 v1, v53

    move/from16 v2, v54

    move/from16 v3, v55

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1976
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1979
    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    .end local v23           #marginBottom:I
    .end local v24           #marginLeft:I
    .end local v25           #marginRight:I
    .end local v26           #marginTop:I
    :cond_4
    if-eqz v17, :cond_5

    .line 1980
    move-object/from16 v11, v17

    .line 1981
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    const/16 v24, 0x0

    .line 1982
    .restart local v24       #marginLeft:I
    move/from16 v25, p3

    .line 1983
    .restart local v25       #marginRight:I
    add-int v26, p4, p5

    .line 1988
    .restart local v26       #marginTop:I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v52

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v53

    sub-int v52, v52, v53

    sub-int v23, v52, v26

    .line 1992
    .restart local v23       #marginBottom:I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v52

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v53

    sub-int v52, v52, v53

    sub-int v24, v52, v25

    .line 1994
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    add-int v52, v52, v24

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v53, v0

    add-int v53, v53, v26

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    move/from16 v54, v0

    sub-int v54, v54, v25

    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    move/from16 v55, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v56, v0

    add-int v55, v55, v56

    move/from16 v0, v52

    move/from16 v1, v53

    move/from16 v2, v54

    move/from16 v3, v55

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1996
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 2000
    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    .end local v23           #marginBottom:I
    .end local v24           #marginLeft:I
    .end local v25           #marginRight:I
    .end local v26           #marginTop:I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x7f0a000f

    invoke-virtual/range {v52 .. v53}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v42

    .line 2002
    .local v42, textSizeTwoLineLang:F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x7f0a000d

    invoke-virtual/range {v52 .. v53}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v41

    .line 2003
    .local v41, textSizeExtra:F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x7f080028

    invoke-virtual/range {v52 .. v53}, Landroid/content/res/Resources;->getColor(I)I

    move-result v40

    .line 2005
    .local v40, textColorExtra:I
    const v30, 0x3f4ccccd

    .line 2006
    .local v30, oneHandRatio:F
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v52

    sget-object v53, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-eq v0, v1, :cond_6

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v52

    sget-object v53, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_7

    .line 2008
    :cond_6
    mul-float v41, v41, v30

    .line 2011
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 2012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v53, v0

    sub-int v52, v52, v53

    move/from16 v0, v52

    int-to-float v8, v0

    .line 2013
    .local v8, fontH:F
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    sub-float v52, v52, v8

    const/high16 v53, 0x4000

    div-float v28, v52, v53

    .line 2016
    .local v28, marginY:F
    invoke-static {}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v6

    .line 2017
    .local v6, curLanguage:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v52, v0

    const/16 v53, 0x2

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_e

    const/4 v15, 0x1

    .line 2018
    .local v15, isLandscape:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mService:Landroid/inputmethodservice/InputMethodService;

    move-object/from16 v52, v0

    if-eqz v52, :cond_8

    .line 2019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mService:Landroid/inputmethodservice/InputMethodService;

    move-object/from16 v52, v0

    check-cast v52, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v12

    .line 2021
    .local v12, imeInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    if-eqz v15, :cond_8

    if-eqz v12, :cond_8

    invoke-virtual {v12}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v52

    if-eqz v52, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0xf0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_8

    .line 2024
    const v51, 0x3f59999a

    .line 2025
    .local v51, zhuyinRadio:F
    mul-float v41, v41, v51

    .line 2029
    .end local v12           #imeInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    .end local v51           #zhuyinRadio:F
    :cond_8
    if-eqz v19, :cond_13

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2032
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v53

    sub-float v21, v52, v53

    .line 2033
    .local v21, keyOffset:F
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const v53, 0x3dcccccd

    mul-float v52, v52, v53

    cmpg-float v52, v21, v52

    if-gtz v52, :cond_f

    .line 2034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Landroid/graphics/Paint;->getTextSize()F

    move-result v53

    const/high16 v54, 0x4040

    sub-float v53, v53, v54

    invoke-virtual/range {v52 .. v53}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 2038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v53, v0

    sub-int v52, v52, v53

    move/from16 v0, v52

    int-to-float v8, v0

    .line 2039
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v53, v0

    sub-int v52, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v53, v0

    add-int v52, v52, v53

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x4000

    div-float v28, v52, v53

    .line 2040
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v53

    sub-float v21, v52, v53

    goto/16 :goto_3

    .line 1872
    .end local v5           #bg:Landroid/graphics/drawable/Drawable;
    .end local v6           #curLanguage:Ljava/lang/String;
    .end local v8           #fontH:F
    .end local v15           #isLandscape:Z
    .end local v17           #keyExtraIcon:Landroid/graphics/drawable/Drawable;
    .end local v18           #keyIcon:Landroid/graphics/drawable/Drawable;
    .end local v19           #keyLabel:Ljava/lang/String;
    .end local v20           #keyLongLabel:Ljava/lang/String;
    .end local v21           #keyOffset:F
    .end local v22           #keyTypeId:I
    .end local v28           #marginY:F
    .end local v30           #oneHandRatio:F
    .end local v39           #textColor:I
    .end local v40           #textColorExtra:I
    .end local v41           #textSizeExtra:F
    .end local v42           #textSizeTwoLineLang:F
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyBg()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 1873
    .restart local v5       #bg:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getColor()I

    move-result v39

    .line 1874
    .restart local v39       #textColor:I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 1875
    .restart local v18       #keyIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyExtraIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1876
    .restart local v17       #keyExtraIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isNeedShadow()Z

    move-result v52

    if-eqz v52, :cond_c

    .line 1877
    const/16 v35, 0x1

    .line 1878
    .local v35, radius:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0x140

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_a

    .line 1879
    const/16 v35, 0x2

    .line 1881
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v52

    if-eqz v52, :cond_b

    .line 1882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    const/high16 v53, 0x3f80

    const/16 v54, 0x0

    const/high16 v55, -0x4080

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v56

    const v57, 0x7f08001f

    invoke-virtual/range {v56 .. v57}, Landroid/content/res/Resources;->getColor(I)I

    move-result v56

    invoke-virtual/range {v52 .. v56}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    .line 1885
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v53, v0

    const/high16 v54, -0x4080

    const/high16 v55, -0x4080

    const/high16 v56, -0x100

    invoke-virtual/range {v52 .. v56}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_0

    .line 1888
    .end local v35           #radius:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto/16 :goto_0

    .line 1954
    .restart local v11       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v19       #keyLabel:Ljava/lang/String;
    .restart local v20       #keyLongLabel:Ljava/lang/String;
    .restart local v22       #keyTypeId:I
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v37

    .line 1955
    .local v37, softKeyWidth:I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 1958
    .local v14, inconOrigWidth:I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v36

    .line 1959
    .local v36, softKeyHeight:I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 1963
    .local v13, inconOrigHeight:I
    sub-int v52, v37, v14

    div-int/lit8 v24, v52, 0x2

    .line 1964
    .restart local v24       #marginLeft:I
    sub-int v52, v37, v14

    sub-int v25, v52, v24

    .line 1966
    .restart local v25       #marginRight:I
    sub-int v52, v36, v13

    div-int/lit8 v26, v52, 0x2

    .line 1967
    .restart local v26       #marginTop:I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v52

    sub-int v52, v52, v13

    sub-int v23, v52, v26

    .restart local v23       #marginBottom:I
    goto/16 :goto_1

    .line 2017
    .end local v11           #icon:Landroid/graphics/drawable/Drawable;
    .end local v13           #inconOrigHeight:I
    .end local v14           #inconOrigWidth:I
    .end local v23           #marginBottom:I
    .end local v24           #marginLeft:I
    .end local v25           #marginRight:I
    .end local v26           #marginTop:I
    .end local v36           #softKeyHeight:I
    .end local v37           #softKeyWidth:I
    .restart local v6       #curLanguage:Ljava/lang/String;
    .restart local v8       #fontH:F
    .restart local v28       #marginY:F
    .restart local v30       #oneHandRatio:F
    .restart local v40       #textColorExtra:I
    .restart local v41       #textSizeExtra:F
    .restart local v42       #textSizeTwoLineLang:F
    :cond_e
    const/4 v15, 0x0

    goto/16 :goto_2

    .line 2043
    .restart local v15       #isLandscape:Z
    .restart local v21       #keyOffset:F
    :cond_f
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x4000

    div-float v53, v21, v53

    add-float v43, v52, v53

    .line 2044
    .local v43, x:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x3f40

    mul-float v53, v53, v8

    add-float v52, v52, v53

    add-float v47, v52, v28

    .line 2046
    .local v47, y:F
    sparse-switch v22, :sswitch_data_0

    .line 2294
    :cond_10
    :goto_4
    const/16 v52, 0x21

    move/from16 v0, v22

    move/from16 v1, v52

    if-ne v0, v1, :cond_11

    .line 2295
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x7f080020

    invoke-virtual/range {v52 .. v53}, Landroid/content/res/Resources;->getColor(I)I

    move-result v39

    .line 2296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 2299
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v52

    if-nez v52, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isTwoLanguageAvailable()Z

    move-result v52

    if-eqz v52, :cond_12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->isLanguageKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    move-result v52

    if-nez v52, :cond_13

    .line 2304
    :cond_12
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyTypeId:I

    move/from16 v52, v0

    const/16 v53, 0x17

    move/from16 v0, v52

    move/from16 v1, v53

    if-eq v0, v1, :cond_13

    .line 2305
    const-string v52, "\u3002"

    move-object/from16 v0, v52

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2e

    .line 2307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x41a0

    div-float v52, v52, v53

    add-float v52, v52, v43

    const/high16 v53, 0x4000

    sub-float v53, v47, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v54, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v52

    move/from16 v3, v53

    move-object/from16 v4, v54

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2317
    .end local v21           #keyOffset:F
    .end local v43           #x:F
    .end local v47           #y:F
    :cond_13
    :goto_5
    if-eqz v20, :cond_15

    .line 2319
    new-instance v33, Landroid/graphics/Paint;

    invoke-direct/range {v33 .. v33}, Landroid/graphics/Paint;-><init>()V

    .line 2320
    .local v33, paintTmp:Landroid/graphics/Paint;
    const/16 v52, 0x1

    move-object/from16 v0, v33

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 2321
    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2322
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyPressed:Z

    move/from16 v52, v0

    if-eqz v52, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v52, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2f

    .line 2323
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x7f080029

    invoke-virtual/range {v52 .. v53}, Landroid/content/res/Resources;->getColor(I)I

    move-result v40

    .line 2324
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 2341
    :goto_6
    move-object/from16 v0, v33

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHelveFont()Landroid/graphics/Typeface;

    move-result-object v52

    move-object/from16 v0, v33

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2344
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v7

    .line 2345
    .local v7, fmiTmp:Landroid/graphics/Paint$FontMetricsInt;
    iget v0, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v52, v0

    iget v0, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v53, v0

    sub-int v52, v52, v53

    move/from16 v0, v52

    int-to-float v9, v0

    .line 2349
    .local v9, fontHTmp:F
    const/16 v52, 0x4

    move/from16 v0, v52

    move/from16 v1, v22

    if-ne v0, v1, :cond_44

    .line 2351
    const v29, 0x3ea3d70a

    .line 2360
    .local v29, nRatio:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    add-int v52, v52, v53

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3df5c28f

    mul-float v53, v53, v54

    sub-float v52, v52, v53

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v53

    sub-float v44, v52, v53

    .line 2362
    .local v44, x1:F
    if-eqz v6, :cond_14

    .line 2363
    const-string v52, "zh_TW"

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_3c

    .line 2364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0x78

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_34

    .line 2365
    if-eqz v15, :cond_33

    .line 2366
    const v29, 0x3ec28f5c

    .line 2420
    :cond_14
    :goto_7
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    mul-float v53, v53, v29

    add-float v48, v52, v53

    .line 2421
    .local v48, y1:F
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v44

    move/from16 v3, v48

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 2553
    .end local v7           #fmiTmp:Landroid/graphics/Paint$FontMetricsInt;
    .end local v9           #fontHTmp:F
    .end local v29           #nRatio:F
    .end local v33           #paintTmp:Landroid/graphics/Paint;
    .end local v44           #x1:F
    .end local v48           #y1:F
    :cond_15
    :goto_8
    return-void

    .line 2052
    .restart local v21       #keyOffset:F
    .restart local v43       #x:F
    .restart local v47       #y:F
    :sswitch_0
    const/16 v52, 0x7

    move/from16 v0, v52

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 2053
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v53

    const v54, 0x7f0a000c

    invoke-virtual/range {v53 .. v54}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v53

    move/from16 v0, v53

    float-to-int v0, v0

    move/from16 v53, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2058
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    .line 2059
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v53, v0

    sub-int v52, v52, v53

    move/from16 v0, v52

    int-to-float v8, v0

    .line 2060
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x4000

    mul-float v53, v53, v8

    sub-float v52, v52, v53

    const/high16 v53, 0x4000

    div-float v28, v52, v53

    .line 2062
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v54

    sub-float v53, v53, v54

    const/high16 v54, 0x4000

    div-float v53, v53, v54

    add-float v43, v52, v53

    .line 2063
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    add-float v52, v52, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v53, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    sub-float v47, v52, v53

    .line 2065
    add-float v52, v47, v8

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFirstLineEnd:F

    goto/16 :goto_4

    .line 2054
    :cond_16
    const/16 v52, 0x1c

    move/from16 v0, v52

    move/from16 v1, v22

    if-ne v0, v1, :cond_17

    .line 2055
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_9

    .line 2057
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_9

    .line 2070
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v52

    if-eqz v52, :cond_18

    .line 2071
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3f333333

    mul-float v53, v53, v54

    add-float v47, v52, v53

    goto/16 :goto_4

    .line 2073
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0x140

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_19

    .line 2074
    if-nez v15, :cond_10

    .line 2075
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3f30a3d7

    mul-float v53, v53, v54

    add-float v47, v52, v53

    goto/16 :goto_4

    .line 2078
    :cond_19
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const/high16 v54, 0x3f40

    mul-float v53, v53, v54

    add-float v47, v52, v53

    .line 2081
    goto/16 :goto_4

    .line 2083
    :sswitch_2
    if-eqz v6, :cond_10

    .line 2084
    const-string v52, "en"

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-nez v52, :cond_1a

    const-string v52, "zh_CN"

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_1f

    .line 2086
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0x140

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_1c

    .line 2087
    if-eqz v15, :cond_1b

    .line 2088
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x3f40

    mul-float v53, v53, v8

    add-float v52, v52, v53

    add-float v47, v52, v28

    goto/16 :goto_4

    .line 2090
    :cond_1b
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const v53, 0x3f59999a

    mul-float v53, v53, v8

    add-float v52, v52, v53

    add-float v47, v52, v28

    goto/16 :goto_4

    .line 2093
    :cond_1c
    if-eqz v15, :cond_1d

    .line 2094
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x3f40

    mul-float v53, v53, v8

    add-float v52, v52, v53

    add-float v47, v52, v28

    goto/16 :goto_4

    .line 2096
    :cond_1d
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v52

    sget-object v53, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_1e

    .line 2097
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const v53, 0x3f4f5c29

    mul-float v53, v53, v8

    add-float v52, v52, v53

    add-float v47, v52, v28

    goto/16 :goto_4

    .line 2099
    :cond_1e
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const v53, 0x3f51eb85

    mul-float v53, v53, v8

    add-float v52, v52, v53

    add-float v47, v52, v28

    goto/16 :goto_4

    .line 2103
    :cond_1f
    const-string v52, "zh_TW"

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_22

    .line 2104
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v52

    sget-object v53, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_20

    .line 2105
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const v53, 0x3f666666

    mul-float v53, v53, v8

    add-float v52, v52, v53

    add-float v47, v52, v28

    goto/16 :goto_4

    .line 2107
    :cond_20
    if-eqz v15, :cond_21

    .line 2108
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x3f40

    mul-float v53, v53, v8

    add-float v52, v52, v53

    add-float v47, v52, v28

    goto/16 :goto_4

    .line 2110
    :cond_21
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const v53, 0x3f6147ae

    mul-float v53, v53, v8

    add-float v52, v52, v53

    add-float v47, v52, v28

    goto/16 :goto_4

    .line 2113
    :cond_22
    const-string v52, "zh_HK"

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_25

    .line 2114
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v52

    sget-object v53, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_23

    .line 2115
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const v53, 0x3f6e147b

    mul-float v53, v53, v8

    add-float v52, v52, v53

    add-float v47, v52, v28

    goto/16 :goto_4

    .line 2117
    :cond_23
    if-eqz v15, :cond_24

    .line 2118
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x3f40

    mul-float v53, v53, v8

    add-float v52, v52, v53

    add-float v47, v52, v28

    goto/16 :goto_4

    .line 2120
    :cond_24
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const v53, 0x3f666666

    mul-float v53, v53, v8

    add-float v52, v52, v53

    add-float v47, v52, v28

    goto/16 :goto_4

    .line 2123
    :cond_25
    const-string v52, "ko"

    move-object/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_10

    .line 2124
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const v53, 0x3f51eb85

    mul-float v53, v53, v8

    add-float v52, v52, v53

    add-float v47, v52, v28

    goto/16 :goto_4

    .line 2131
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v53, v0

    invoke-virtual/range {v53 .. v53}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHelveFont()Landroid/graphics/Typeface;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v52

    if-eqz v52, :cond_27

    .line 2135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXLargeScreen()Z

    move-result v52

    if-eqz v52, :cond_26

    .line 2136
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3e4ccccd

    mul-float v53, v53, v54

    add-float v43, v52, v53

    .line 2137
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    add-float v52, v52, v28

    const v53, 0x3f666666

    mul-float v53, v53, v8

    add-float v47, v52, v53

    goto/16 :goto_4

    .line 2139
    :cond_26
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3e19999a

    mul-float v53, v53, v54

    add-float v43, v52, v53

    .line 2140
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    add-float v52, v52, v28

    const v53, 0x3f333333

    mul-float v53, v53, v8

    add-float v47, v52, v53

    goto/16 :goto_4

    .line 2143
    :cond_27
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v52

    sget-object v53, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_28

    .line 2144
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3d8f5c29

    mul-float v53, v53, v54

    add-float v43, v52, v53

    goto/16 :goto_4

    .line 2146
    :cond_28
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3dcccccd

    mul-float v53, v53, v54

    add-float v43, v52, v53

    .line 2148
    if-eqz v15, :cond_10

    .line 2149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v53

    const v54, 0x7f0a0013

    invoke-virtual/range {v53 .. v54}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v53

    move/from16 v0, v53

    float-to-int v0, v0

    move/from16 v53, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    invoke-virtual/range {v52 .. v53}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_4

    .line 2156
    :sswitch_4
    const v52, 0x3ea353f8

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    mul-float v27, v52, v53

    .line 2159
    .local v27, marginX:F
    const v52, 0x3e4fdf3b

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    mul-float v28, v52, v53

    .line 2166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    const v53, -0x777778

    invoke-virtual/range {v52 .. v53}, Landroid/graphics/Paint;->setColor(I)V

    .line 2174
    const/16 v52, 0x3

    move/from16 v0, v52

    new-array v0, v0, [F

    move-object/from16 v45, v0

    const/16 v52, 0x0

    const/high16 v53, 0x40c0

    aput v53, v45, v52

    const/16 v52, 0x1

    const/high16 v53, 0x40c0

    add-float v53, v53, v27

    aput v53, v45, v52

    const/16 v52, 0x2

    const/high16 v53, 0x4000

    const/high16 v54, 0x40c0

    add-float v54, v54, v27

    mul-float v53, v53, v54

    aput v53, v45, v52

    .line 2181
    .local v45, xPos:[F
    const/16 v52, 0x3

    move/from16 v0, v52

    new-array v0, v0, [F

    move-object/from16 v49, v0

    const/16 v52, 0x0

    const/high16 v53, 0x4150

    aput v53, v49, v52

    const/16 v52, 0x1

    const/high16 v53, 0x4180

    const/high16 v54, 0x40a0

    add-float v54, v54, v28

    add-float v53, v53, v54

    const/high16 v54, 0x4040

    sub-float v53, v53, v54

    aput v53, v49, v52

    const/16 v52, 0x2

    const/high16 v53, 0x4180

    const/high16 v54, 0x4000

    const/high16 v55, 0x40a0

    add-float v55, v55, v28

    mul-float v54, v54, v55

    add-float v53, v53, v54

    const/high16 v54, 0x4040

    sub-float v53, v53, v54

    aput v53, v49, v52

    .line 2192
    .local v49, yPos:[F
    const/high16 v52, 0x4150

    const/high16 v53, 0x4040

    mul-float v53, v53, v28

    add-float v52, v52, v53

    const/high16 v53, 0x4170

    add-float v52, v52, v53

    const v53, 0x3f59999a

    mul-float v53, v53, v28

    add-float v52, v52, v53

    const/high16 v53, 0x4000

    add-float v50, v52, v53

    .line 2193
    .local v50, y_1:F
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x4000

    div-float v52, v52, v53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v53, v0

    const-string v54, "1/6"

    invoke-virtual/range {v53 .. v54}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v53

    const/high16 v54, 0x4000

    div-float v53, v53, v54

    sub-float v46, v52, v53

    .line 2196
    .local v46, x_1:F
    const/16 v52, 0x6

    move/from16 v0, v52

    new-array v0, v0, [[I

    move-object/from16 v32, v0

    const/16 v52, 0x0

    const/16 v53, 0x9

    move/from16 v0, v53

    new-array v0, v0, [I

    move-object/from16 v53, v0

    fill-array-data v53, :array_0

    aput-object v53, v32, v52

    const/16 v52, 0x1

    const/16 v53, 0x9

    move/from16 v0, v53

    new-array v0, v0, [I

    move-object/from16 v53, v0

    fill-array-data v53, :array_1

    aput-object v53, v32, v52

    const/16 v52, 0x2

    const/16 v53, 0x9

    move/from16 v0, v53

    new-array v0, v0, [I

    move-object/from16 v53, v0

    fill-array-data v53, :array_2

    aput-object v53, v32, v52

    const/16 v52, 0x3

    const/16 v53, 0x9

    move/from16 v0, v53

    new-array v0, v0, [I

    move-object/from16 v53, v0

    fill-array-data v53, :array_3

    aput-object v53, v32, v52

    const/16 v52, 0x4

    const/16 v53, 0x9

    move/from16 v0, v53

    new-array v0, v0, [I

    move-object/from16 v53, v0

    fill-array-data v53, :array_4

    aput-object v53, v32, v52

    const/16 v52, 0x5

    const/16 v53, 0x9

    move/from16 v0, v53

    new-array v0, v0, [I

    move-object/from16 v53, v0

    fill-array-data v53, :array_5

    aput-object v53, v32, v52

    .line 2248
    .local v32, pageSymbolImgId:[[I
    const/16 v52, 0x9

    move/from16 v0, v52

    new-array v0, v0, [I

    move-object/from16 v34, v0

    fill-array-data v34, :array_6

    .line 2258
    .local v34, phonePageSymbolImgId:[I
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v52

    const/16 v53, -0x21

    move/from16 v0, v52

    move/from16 v1, v53

    if-gt v0, v1, :cond_2b

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v52

    const/16 v53, -0x26

    move/from16 v0, v52

    move/from16 v1, v53

    if-lt v0, v1, :cond_2b

    .line 2259
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v52

    rsub-int/lit8 v31, v52, -0x21

    .line 2261
    .local v31, pageNum:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_a
    const/16 v52, 0x3

    move/from16 v0, v52

    if-ge v10, v0, :cond_2a

    .line 2262
    const/16 v16, 0x0

    .local v16, j:I
    :goto_b
    const/16 v52, 0x3

    move/from16 v0, v16

    move/from16 v1, v52

    if-ge v0, v1, :cond_29

    .line 2263
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    aget-object v53, v32, v31

    mul-int/lit8 v54, v10, 0x3

    add-int v54, v54, v16

    aget v53, v53, v54

    invoke-static/range {v52 .. v53}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v38

    .line 2265
    .local v38, symBitmap:Landroid/graphics/Bitmap;
    aget v52, v45, v16

    aget v53, v49, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v54, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    move/from16 v2, v52

    move/from16 v3, v53

    move-object/from16 v4, v54

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2262
    add-int/lit8 v16, v16, 0x1

    goto :goto_b

    .line 2261
    .end local v38           #symBitmap:Landroid/graphics/Bitmap;
    :cond_29
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 2269
    .end local v16           #j:I
    :cond_2a
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v53, v31, 0x1

    invoke-static/range {v53 .. v53}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v53

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    const-string v53, "/6"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v53, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    move/from16 v2, v46

    move/from16 v3, v50

    move-object/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 2270
    .end local v10           #i:I
    .end local v31           #pageNum:I
    :cond_2b
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v52

    const/16 v53, -0x32

    move/from16 v0, v52

    move/from16 v1, v53

    if-gt v0, v1, :cond_10

    .line 2273
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_c
    const/16 v52, 0x3

    move/from16 v0, v52

    if-ge v10, v0, :cond_2d

    .line 2274
    const/16 v16, 0x0

    .restart local v16       #j:I
    :goto_d
    const/16 v52, 0x3

    move/from16 v0, v16

    move/from16 v1, v52

    if-ge v0, v1, :cond_2c

    .line 2275
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    mul-int/lit8 v53, v10, 0x3

    add-int v53, v53, v16

    aget v53, v34, v53

    invoke-static/range {v52 .. v53}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v38

    .line 2277
    .restart local v38       #symBitmap:Landroid/graphics/Bitmap;
    aget v52, v45, v16

    aget v53, v49, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v54, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    move/from16 v2, v52

    move/from16 v3, v53

    move-object/from16 v4, v54

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2274
    add-int/lit8 v16, v16, 0x1

    goto :goto_d

    .line 2273
    .end local v38           #symBitmap:Landroid/graphics/Bitmap;
    :cond_2c
    add-int/lit8 v10, v10, 0x1

    goto :goto_c

    .line 2281
    .end local v16           #j:I
    :cond_2d
    const-string v52, "1/1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v53, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v52

    move/from16 v2, v46

    move/from16 v3, v50

    move-object/from16 v4, v53

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 2287
    .end local v10           #i:I
    .end local v27           #marginX:F
    .end local v32           #pageSymbolImgId:[[I
    .end local v34           #phonePageSymbolImgId:[I
    .end local v45           #xPos:[F
    .end local v46           #x_1:F
    .end local v49           #yPos:[F
    .end local v50           #y_1:F
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0x1e0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_10

    if-eqz v15, :cond_10

    .line 2288
    const/high16 v52, 0x4000

    sub-float v47, v47, v52

    goto/16 :goto_4

    .line 2309
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v43

    move/from16 v3, v47

    move-object/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_5

    .line 2326
    .end local v21           #keyOffset:F
    .end local v43           #x:F
    .end local v47           #y:F
    .restart local v33       #paintTmp:Landroid/graphics/Paint;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isNeedShadow()Z

    move-result v52

    if-eqz v52, :cond_32

    .line 2327
    const/16 v35, 0x1

    .line 2328
    .restart local v35       #radius:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0x140

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_30

    .line 2329
    const/16 v35, 0x2

    .line 2331
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v52

    if-eqz v52, :cond_31

    .line 2332
    const/high16 v52, 0x3f80

    const/16 v53, 0x0

    const/high16 v54, -0x4080

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v55

    const v56, 0x7f08001f

    invoke-virtual/range {v55 .. v56}, Landroid/content/res/Resources;->getColor(I)I

    move-result v55

    move-object/from16 v0, v33

    move/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_6

    .line 2335
    :cond_31
    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, -0x4080

    const/high16 v54, -0x4080

    const/high16 v55, -0x100

    move-object/from16 v0, v33

    move/from16 v1, v52

    move/from16 v2, v53

    move/from16 v3, v54

    move/from16 v4, v55

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto/16 :goto_6

    .line 2338
    .end local v35           #radius:I
    :cond_32
    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Paint;->clearShadowLayer()V

    goto/16 :goto_6

    .line 2368
    .restart local v7       #fmiTmp:Landroid/graphics/Paint$FontMetricsInt;
    .restart local v9       #fontHTmp:F
    .restart local v29       #nRatio:F
    .restart local v44       #x1:F
    :cond_33
    const v29, 0x3ea8f5c3

    goto/16 :goto_7

    .line 2369
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0x140

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_37

    .line 2370
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v52

    sget-object v53, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_35

    .line 2371
    const v29, 0x3eb33333

    goto/16 :goto_7

    .line 2373
    :cond_35
    if-eqz v15, :cond_36

    .line 2374
    const v29, 0x3ecccccd

    goto/16 :goto_7

    .line 2376
    :cond_36
    const v29, 0x3e99999a

    goto/16 :goto_7

    .line 2378
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0x1e0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_3a

    .line 2379
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v52

    sget-object v53, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_38

    .line 2380
    const/high16 v29, 0x3e80

    goto/16 :goto_7

    .line 2382
    :cond_38
    if-eqz v15, :cond_39

    .line 2383
    const v29, 0x3eb33333

    goto/16 :goto_7

    .line 2385
    :cond_39
    const/high16 v29, 0x3e80

    goto/16 :goto_7

    .line 2387
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0xa0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_14

    .line 2388
    if-eqz v15, :cond_3b

    .line 2389
    const v29, 0x3ecccccd

    goto/16 :goto_7

    .line 2391
    :cond_3b
    const v29, 0x3ea3d70a

    goto/16 :goto_7

    .line 2394
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0x140

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_3f

    .line 2395
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v52

    sget-object v53, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_3d

    .line 2396
    const v29, 0x3e99999a

    goto/16 :goto_7

    .line 2398
    :cond_3d
    if-eqz v15, :cond_3e

    .line 2399
    const v29, 0x3ec28f5c

    goto/16 :goto_7

    .line 2401
    :cond_3e
    const v29, 0x3e99999a

    goto/16 :goto_7

    .line 2403
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0xf0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_42

    .line 2404
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v52

    sget-object v53, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_40

    .line 2405
    const v29, 0x3e99999a

    goto/16 :goto_7

    .line 2407
    :cond_40
    if-eqz v15, :cond_41

    .line 2408
    const v29, 0x3ec28f5c

    goto/16 :goto_7

    .line 2410
    :cond_41
    const/high16 v29, 0x3e80

    goto/16 :goto_7

    .line 2412
    :cond_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0x1e0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_14

    .line 2413
    if-eqz v15, :cond_43

    .line 2414
    const v29, 0x3e99999a

    goto/16 :goto_7

    .line 2416
    :cond_43
    const/high16 v29, 0x3e80

    goto/16 :goto_7

    .line 2422
    .end local v29           #nRatio:F
    .end local v44           #x1:F
    :cond_44
    const/16 v52, 0x3

    move/from16 v0, v52

    move/from16 v1, v22

    if-eq v0, v1, :cond_45

    const/16 v52, 0x24

    move/from16 v0, v52

    move/from16 v1, v22

    if-ne v0, v1, :cond_4f

    .line 2425
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v52

    if-eqz v52, :cond_48

    .line 2426
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    add-int v52, v52, v53

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3cf5c28f

    mul-float v53, v53, v54

    sub-float v52, v52, v53

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v53, v0

    sub-float v52, v52, v53

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v53

    const v54, 0x3faccccd

    mul-float v53, v53, v54

    sub-float v44, v52, v53

    .line 2428
    .restart local v44       #x1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXLargeScreen()Z

    move-result v52

    if-eqz v52, :cond_47

    .line 2429
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v52

    move-object/from16 v0, v52

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v52, v0

    const/16 v53, 0x2

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_46

    .line 2430
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x3f40

    mul-float v53, v53, v9

    add-float v48, v52, v53

    .line 2481
    .restart local v48       #y1:F
    :goto_e
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v44

    move/from16 v3, v48

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 2432
    .end local v48           #y1:F
    :cond_46
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3d03126f

    mul-float v53, v53, v54

    add-float v52, v52, v53

    const/high16 v53, 0x3f40

    mul-float v53, v53, v9

    add-float v48, v52, v53

    .restart local v48       #y1:F
    goto :goto_e

    .line 2435
    .end local v48           #y1:F
    :cond_47
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3da3d70a

    mul-float v53, v53, v54

    add-float v52, v52, v53

    const/high16 v53, 0x3f40

    mul-float v53, v53, v9

    add-float v48, v52, v53

    .restart local v48       #y1:F
    goto :goto_e

    .line 2438
    .end local v44           #x1:F
    .end local v48           #y1:F
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0x1e0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_4a

    .line 2439
    if-eqz v15, :cond_49

    .line 2440
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    add-int v52, v52, v53

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3dcccccd

    mul-float v53, v53, v54

    sub-float v52, v52, v53

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v53

    sub-float v44, v52, v53

    .line 2442
    .restart local v44       #x1:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3eb33333

    mul-float v53, v53, v54

    add-float v48, v52, v53

    .line 2448
    .restart local v48       #y1:F
    :goto_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x7f0a000e

    invoke-virtual/range {v52 .. v53}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v41

    .line 2449
    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_e

    .line 2444
    .end local v44           #x1:F
    .end local v48           #y1:F
    :cond_49
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    add-int v52, v52, v53

    add-int/lit8 v52, v52, -0x1b

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v53

    sub-float v44, v52, v53

    .line 2446
    .restart local v44       #x1:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x39

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v48, v0

    .restart local v48       #y1:F
    goto :goto_f

    .line 2450
    .end local v44           #x1:F
    .end local v48           #y1:F
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0x140

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_4b

    .line 2451
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    add-int v52, v52, v53

    add-int/lit8 v52, v52, -0xf

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v53

    sub-float v44, v52, v53

    .line 2453
    .restart local v44       #x1:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x1e

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v48, v0

    .restart local v48       #y1:F
    goto/16 :goto_e

    .line 2454
    .end local v44           #x1:F
    .end local v48           #y1:F
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v52

    const/16 v53, 0xf0

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_4e

    .line 2456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHSw270dpiScreen()Z

    move-result v52

    if-eqz v52, :cond_4c

    .line 2457
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    add-int v52, v52, v53

    add-int/lit8 v52, v52, -0xc

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v53

    sub-float v44, v52, v53

    .line 2464
    .restart local v44       #x1:F
    :goto_10
    if-eqz v15, :cond_4d

    .line 2465
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x14

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v48, v0

    .restart local v48       #y1:F
    goto/16 :goto_e

    .line 2460
    .end local v44           #x1:F
    .end local v48           #y1:F
    :cond_4c
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    add-int v52, v52, v53

    add-int/lit8 v52, v52, -0x8

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v53

    sub-float v44, v52, v53

    .restart local v44       #x1:F
    goto :goto_10

    .line 2467
    :cond_4d
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    add-int/lit8 v52, v52, 0x17

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v48, v0

    .restart local v48       #y1:F
    goto/16 :goto_e

    .line 2473
    .end local v44           #x1:F
    .end local v48           #y1:F
    :cond_4e
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    add-int v52, v52, v53

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3dcccccd

    mul-float v53, v53, v54

    sub-float v52, v52, v53

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v53

    sub-float v44, v52, v53

    .line 2477
    .restart local v44       #x1:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3eb33333

    mul-float v53, v53, v54

    add-float v48, v52, v53

    .restart local v48       #y1:F
    goto/16 :goto_e

    .line 2483
    .end local v44           #x1:F
    .end local v48           #y1:F
    :cond_4f
    const/16 v52, 0xd

    move/from16 v0, v52

    move/from16 v1, v22

    if-ne v0, v1, :cond_50

    .line 2485
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v54

    sub-float v53, v53, v54

    const/high16 v54, 0x4000

    div-float v53, v53, v54

    add-float v44, v52, v53

    .line 2489
    .restart local v44       #x1:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFirstLineEnd:F

    move/from16 v48, v0

    .line 2490
    .restart local v48       #y1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v52, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v44

    move/from16 v3, v48

    move-object/from16 v4, v52

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 2492
    .end local v44           #x1:F
    .end local v48           #y1:F
    :cond_50
    const/16 v52, 0xb

    move/from16 v0, v52

    move/from16 v1, v22

    if-ne v0, v1, :cond_51

    .line 2494
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->padDoubleX:I

    move/from16 v53, v0

    add-int v52, v52, v53

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->padDoubleX:I

    move/from16 v54, v0

    sub-int v53, v53, v54

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v54, v0

    move-object/from16 v0, v54

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v54

    sub-float v53, v53, v54

    const/high16 v54, 0x4000

    div-float v53, v53, v54

    add-float v44, v52, v53

    .line 2496
    .restart local v44       #x1:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x3f40

    mul-float v53, v53, v9

    add-float v52, v52, v53

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->padDoubleY:I

    move/from16 v53, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    sub-float v53, v53, v9

    const/high16 v54, 0x4000

    div-float v53, v53, v54

    add-float v48, v52, v53

    .line 2499
    .restart local v48       #y1:F
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v44

    move/from16 v3, v48

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 2500
    .end local v44           #x1:F
    .end local v48           #y1:F
    :cond_51
    const/16 v52, 0x7

    move/from16 v0, v52

    move/from16 v1, v22

    if-eq v0, v1, :cond_52

    const/16 v52, 0x8

    move/from16 v0, v52

    move/from16 v1, v22

    if-eq v0, v1, :cond_52

    const/16 v52, 0x1c

    move/from16 v0, v52

    move/from16 v1, v22

    if-ne v0, v1, :cond_55

    .line 2503
    :cond_52
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x4000

    mul-float v53, v53, v8

    sub-float v52, v52, v53

    const/high16 v53, 0x4000

    div-float v52, v52, v53

    const/high16 v53, 0x3f40

    mul-float v53, v53, v8

    add-float v28, v52, v53

    .line 2505
    const/16 v52, 0x7

    move/from16 v0, v52

    move/from16 v1, v22

    if-ne v0, v1, :cond_53

    .line 2506
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x7f0a000c

    invoke-virtual/range {v52 .. v53}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v52

    move/from16 v0, v52

    float-to-int v0, v0

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    move-object/from16 v0, v33

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2511
    :goto_11
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v54

    sub-float v53, v53, v54

    const/high16 v54, 0x4000

    div-float v53, v53, v54

    add-float v44, v52, v53

    .line 2512
    .restart local v44       #x1:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    add-float v52, v52, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mFmi:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v53, v0

    move-object/from16 v0, v53

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v53, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    sub-float v48, v52, v53

    .line 2514
    .restart local v48       #y1:F
    move-object/from16 v0, v33

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2515
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v44

    move/from16 v3, v48

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 2507
    .end local v44           #x1:F
    .end local v48           #y1:F
    :cond_53
    const/16 v52, 0x1c

    move/from16 v0, v52

    move/from16 v1, v22

    if-ne v0, v1, :cond_54

    .line 2508
    move-object/from16 v0, v33

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_11

    .line 2510
    :cond_54
    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_11

    .line 2516
    :cond_55
    const/16 v52, 0x10

    move/from16 v0, v52

    move/from16 v1, v22

    if-eq v0, v1, :cond_56

    const/16 v52, 0x16

    move/from16 v0, v52

    move/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 2518
    :cond_56
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v52

    const v53, 0x7f0a0014

    invoke-virtual/range {v52 .. v53}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v41

    .line 2519
    move-object/from16 v0, v33

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2520
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v52

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    sub-float v52, v52, v9

    const/high16 v53, 0x4000

    div-float v28, v52, v53

    .line 2522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v52

    if-eqz v52, :cond_58

    .line 2523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXLargeScreen()Z

    move-result v52

    if-eqz v52, :cond_57

    .line 2524
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v54

    sub-float v53, v53, v54

    const/high16 v54, 0x3f40

    mul-float v53, v53, v54

    add-float v44, v52, v53

    .line 2526
    .restart local v44       #x1:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    add-float v52, v52, v28

    const v53, 0x3f266666

    mul-float v53, v53, v8

    add-float v48, v52, v53

    .line 2548
    .restart local v48       #y1:F
    :goto_12
    move-object/from16 v0, v33

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2549
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    move/from16 v2, v44

    move/from16 v3, v48

    move-object/from16 v4, v33

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 2528
    .end local v44           #x1:F
    .end local v48           #y1:F
    :cond_57
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v54

    sub-float v53, v53, v54

    const/high16 v54, 0x3f40

    mul-float v53, v53, v54

    add-float v44, v52, v53

    .line 2530
    .restart local v44       #x1:F
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    add-float v52, v52, v28

    const v53, 0x3e99999a

    mul-float v53, v53, v8

    add-float v48, v52, v53

    .restart local v48       #y1:F
    goto :goto_12

    .line 2533
    .end local v44           #x1:F
    .end local v48           #y1:F
    :cond_58
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v52

    sget-object v53, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-object/from16 v0, v52

    move-object/from16 v1, v53

    if-ne v0, v1, :cond_59

    .line 2534
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3f266666

    mul-float v53, v53, v54

    add-float v52, v52, v53

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v53

    const/high16 v54, 0x4000

    div-float v53, v53, v54

    sub-float v44, v52, v53

    .line 2545
    .restart local v44       #x1:F
    :goto_13
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    const/high16 v53, 0x3f40

    mul-float v53, v53, v9

    add-float v52, v52, v53

    add-float v48, v52, v28

    .restart local v48       #y1:F
    goto/16 :goto_12

    .line 2537
    .end local v44           #x1:F
    .end local v48           #y1:F
    :cond_59
    if-eqz v15, :cond_5a

    .line 2538
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3f0ccccd

    mul-float v53, v53, v54

    add-float v52, v52, v53

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v53

    const/high16 v54, 0x4000

    div-float v53, v53, v54

    sub-float v44, v52, v53

    .restart local v44       #x1:F
    goto :goto_13

    .line 2541
    .end local v44           #x1:F
    :cond_5a
    move-object/from16 v0, p2

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v52, v0

    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v52, v0

    invoke-virtual/range {p2 .. p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v53

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v53, v0

    const v54, 0x3f333333

    mul-float v53, v53, v54

    add-float v52, v52, v53

    move-object/from16 v0, v33

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v53

    const/high16 v54, 0x4000

    div-float v53, v53, v54

    sub-float v44, v52, v53

    .restart local v44       #x1:F
    goto :goto_13

    .line 2046
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0xd -> :sswitch_0
        0x10 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x1b -> :sswitch_5
        0x1c -> :sswitch_0
        0x24 -> :sswitch_1
    .end sparse-switch

    .line 2196
    :array_0
    .array-data 0x4
        0xd7t 0x0t 0x2t 0x7ft
        0xd8t 0x0t 0x2t 0x7ft
        0xd9t 0x0t 0x2t 0x7ft
        0xdat 0x0t 0x2t 0x7ft
        0xdbt 0x0t 0x2t 0x7ft
        0xdct 0x0t 0x2t 0x7ft
        0xddt 0x0t 0x2t 0x7ft
        0xdet 0x0t 0x2t 0x7ft
        0xdft 0x0t 0x2t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0xe0t 0x0t 0x2t 0x7ft
        0xe1t 0x0t 0x2t 0x7ft
        0xe2t 0x0t 0x2t 0x7ft
        0xe3t 0x0t 0x2t 0x7ft
        0xe4t 0x0t 0x2t 0x7ft
        0xe5t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
        0xe7t 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0xe9t 0x0t 0x2t 0x7ft
        0xeat 0x0t 0x2t 0x7ft
        0xebt 0x0t 0x2t 0x7ft
        0xect 0x0t 0x2t 0x7ft
        0xedt 0x0t 0x2t 0x7ft
        0xeet 0x0t 0x2t 0x7ft
        0xeft 0x0t 0x2t 0x7ft
        0xf0t 0x0t 0x2t 0x7ft
        0xf1t 0x0t 0x2t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xf2t 0x0t 0x2t 0x7ft
        0xf3t 0x0t 0x2t 0x7ft
        0xf4t 0x0t 0x2t 0x7ft
        0xf5t 0x0t 0x2t 0x7ft
        0xf6t 0x0t 0x2t 0x7ft
        0xf7t 0x0t 0x2t 0x7ft
        0xf8t 0x0t 0x2t 0x7ft
        0xf9t 0x0t 0x2t 0x7ft
        0xfat 0x0t 0x2t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0xfbt 0x0t 0x2t 0x7ft
        0xfct 0x0t 0x2t 0x7ft
        0xfdt 0x0t 0x2t 0x7ft
        0xfet 0x0t 0x2t 0x7ft
        0xfft 0x0t 0x2t 0x7ft
        0x0t 0x1t 0x2t 0x7ft
        0x1t 0x1t 0x2t 0x7ft
        0x2t 0x1t 0x2t 0x7ft
        0x3t 0x1t 0x2t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x4t 0x1t 0x2t 0x7ft
        0x5t 0x1t 0x2t 0x7ft
        0x6t 0x1t 0x2t 0x7ft
        0x7t 0x1t 0x2t 0x7ft
        0x8t 0x1t 0x2t 0x7ft
        0x9t 0x1t 0x2t 0x7ft
        0xat 0x1t 0x2t 0x7ft
        0xbt 0x1t 0x2t 0x7ft
        0xct 0x1t 0x2t 0x7ft
    .end array-data

    .line 2248
    :array_6
    .array-data 0x4
        0xe4t 0x0t 0x2t 0x7ft
        0xf4t 0x0t 0x2t 0x7ft
        0xe5t 0x0t 0x2t 0x7ft
        0xe1t 0x0t 0x2t 0x7ft
        0xd7t 0x0t 0x2t 0x7ft
        0xdet 0x0t 0x2t 0x7ft
        0xe8t 0x0t 0x2t 0x7ft
        0xe2t 0x0t 0x2t 0x7ft
        0xe6t 0x0t 0x2t 0x7ft
    .end array-data
.end method

.method private drawSoftKeyView(Landroid/graphics/Canvas;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;IIII)V
    .locals 0
    .parameter "canvas"
    .parameter "softKeyView"
    .parameter "keyXMargin"
    .parameter "keyYMargin"
    .parameter "rowTopMargin"
    .parameter "rowBottomMargin"

    .prologue
    .line 1849
    return-void
.end method

.method private getLanguageKeyImage(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "currentKey"

    .prologue
    const v6, 0x7f020141

    .line 2581
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    .line 2582
    .local v2, mImeService:Lcom/samsung/inputmethod/SamsungIME;
    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2584
    .local v3, r:Landroid/content/res/Resources;
    const/4 v1, 0x0

    .line 2585
    .local v1, keyIcon:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .line 2588
    .local v0, keyHlIcon:Landroid/graphics/drawable/Drawable;
    const-string v4, "En"

    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2589
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2590
    const v4, 0x7f020135

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 2606
    :goto_0
    return-object v4

    .line 2591
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2592
    const v4, 0x7f020137

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 2594
    :cond_1
    const v4, 0x7f020136

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 2596
    :cond_2
    const-string v4, "\u4e2d"

    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2597
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2598
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 2599
    :cond_3
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2600
    const v4, 0x7f020143

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 2602
    :cond_4
    const v4, 0x7f020142

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0

    .line 2606
    :cond_5
    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_0
.end method

.method private isDrawSingleKey(Landroid/graphics/Canvas;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z
    .locals 2
    .parameter "canvas"
    .parameter "invalidKey"

    .prologue
    .line 1325
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mClipRegion:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    iget v0, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mClipRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_0

    iget v0, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mClipRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_0

    iget v0, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    invoke-virtual {p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mClipRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_0

    iget v0, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    invoke-virtual {p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mClipRegion:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_0

    .line 1331
    const/4 v0, 0x1

    .line 1334
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLanguageKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z
    .locals 4
    .parameter "currentKey"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2562
    if-nez p1, :cond_1

    .line 2575
    :cond_0
    :goto_0
    return v0

    .line 2565
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2569
    const-string v2, "En"

    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 2570
    goto :goto_0

    .line 2571
    :cond_2
    const-string v2, "\u4e2d"

    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 2572
    goto :goto_0
.end method

.method private updateBalloon(Lcom/samsung/inputmethod/comm/SimeBalloonHint;[IZ)V
    .locals 6
    .parameter "balloon"
    .parameter "balloonLocationToSkb"
    .parameter "movePress"

    .prologue
    const-wide/16 v1, 0x0

    .line 600
    invoke-virtual {p1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 601
    invoke-virtual {p1, v1, v2, p2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedShow(J[I)V

    .line 607
    :goto_0
    return-void

    .line 603
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedUpdate(J[III)V

    goto :goto_0
.end method


# virtual methods
.method public dimSoftKeyboard(Z)V
    .locals 0
    .parameter "dimSkb"

    .prologue
    .line 1232
    iput-boolean p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDimSkb:Z

    .line 1233
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidate()V

    .line 1234
    return-void
.end method

.method public dismissBalloonHint()V
    .locals 3

    .prologue
    const-wide/16 v1, 0x0

    .line 613
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 617
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getCharPreview()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 620
    :cond_1
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 226
    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected getAccessibilityDescription(I)Ljava/lang/CharSequence;
    .locals 9
    .parameter "keyCode"

    .prologue
    const v8, 0x7f0b02aa

    const v7, 0x7f0b02a8

    const v6, 0x7f0b02a7

    const v5, 0x7f0b02a6

    const v4, 0x7f0b029f

    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, description:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 356
    .local v2, multiModalStatus:I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getMultiModalStatus()I

    move-result v2

    .line 358
    sparse-switch p1, :sswitch_data_0

    .line 440
    :cond_0
    :goto_0
    return-object v0

    .line 360
    :sswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 361
    goto :goto_0

    .line 363
    :sswitch_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getEnterKeyLabel()Ljava/lang/String;

    move-result-object v0

    .line 364
    if-nez v0, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 369
    :sswitch_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b029e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 370
    goto :goto_0

    .line 372
    :sswitch_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 374
    goto :goto_0

    .line 376
    :sswitch_4
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 378
    goto :goto_0

    .line 380
    :sswitch_5
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 382
    goto :goto_0

    .line 384
    :sswitch_6
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v1

    .line 385
    .local v1, mInputMode:I
    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->getHW123ModeState(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 386
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 389
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 392
    goto :goto_0

    .line 394
    .end local v1           #mInputMode:I
    :sswitch_7
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 397
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 399
    goto :goto_0

    .line 402
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    goto/16 :goto_0

    .line 407
    :pswitch_3
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 408
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b02a9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 412
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 415
    goto/16 :goto_0

    .line 417
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 419
    goto/16 :goto_0

    .line 425
    :sswitch_8
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 426
    goto/16 :goto_0

    .line 428
    :sswitch_9
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 429
    goto/16 :goto_0

    .line 431
    :sswitch_a
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 432
    goto/16 :goto_0

    .line 434
    :sswitch_b
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 435
    goto/16 :goto_0

    .line 358
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7d -> :sswitch_b
        -0x79 -> :sswitch_a
        -0x78 -> :sswitch_9
        -0x77 -> :sswitch_8
        -0x75 -> :sswitch_7
        -0x17 -> :sswitch_6
        -0x12 -> :sswitch_5
        -0x3 -> :sswitch_4
        -0x1 -> :sswitch_3
        0x3e -> :sswitch_0
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch

    .line 394
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getAccessibilityViewId()I
    .locals 1

    .prologue
    .line 471
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mAccessibilityViewId:I

    return v0
.end method

.method protected getEnterKeyLabel()Ljava/lang/String;
    .locals 4

    .prologue
    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, label:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 446
    .local v1, res:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStateForEnter()I

    move-result v2

    .line 447
    .local v2, state:I
    const v3, 0x7f0b019d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 449
    const v3, 0x7f0b0123

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 463
    :cond_0
    :goto_0
    return-object v0

    .line 450
    :cond_1
    const v3, 0x7f0b019e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 452
    const v3, 0x7f0b0124

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 453
    :cond_2
    const v3, 0x7f0b019f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 455
    const v3, 0x7f0b0125

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 456
    :cond_3
    const v3, 0x7f0b01a0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 458
    const v3, 0x7f0b02a1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 459
    :cond_4
    const v3, 0x7f0b01a1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 461
    const v3, 0x7f0b0126

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getFontSizeByType(I)I
    .locals 8
    .parameter "keyType"

    .prologue
    const v7, 0x7f0a0015

    const v6, 0x7f0a0003

    const v5, 0x7f0a0001

    .line 1339
    const/4 v1, 0x0

    .line 1340
    .local v1, fontSize:I
    const/high16 v2, 0x3f80

    .line 1343
    .local v2, resizeRatio:F
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-eq v3, v4, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_1

    .line 1345
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->ishSw360dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1346
    const v2, 0x3f19999a

    .line 1353
    :cond_1
    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 1459
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->isQwertyUpperCase()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-static {}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1462
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1466
    :goto_1
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1471
    :goto_2
    return v1

    .line 1348
    :cond_2
    const v2, 0x3f4ccccd

    goto :goto_0

    .line 1360
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1361
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1362
    goto :goto_2

    .line 1364
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1365
    goto :goto_2

    .line 1367
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1368
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1369
    goto :goto_2

    .line 1372
    :pswitch_4
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1373
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1374
    goto :goto_2

    .line 1376
    :pswitch_5
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1377
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1378
    goto :goto_2

    .line 1381
    :pswitch_6
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0010

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1382
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1383
    goto :goto_2

    .line 1385
    :pswitch_7
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 1386
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isMSw320dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw360dpiScreen()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1389
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto/16 :goto_2

    .line 1391
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->isQwertyUpperCase()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1394
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1398
    :goto_3
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1400
    goto/16 :goto_2

    .line 1396
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto :goto_3

    .line 1405
    .end local v0           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    :pswitch_8
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1406
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1407
    goto/16 :goto_2

    .line 1409
    :pswitch_9
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0040

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1410
    int-to-float v3, v1

    mul-float v4, v2, v2

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 1411
    goto/16 :goto_2

    .line 1414
    :pswitch_a
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1415
    goto/16 :goto_2

    .line 1417
    :pswitch_b
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1418
    goto/16 :goto_2

    .line 1420
    :pswitch_c
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1421
    goto/16 :goto_2

    .line 1423
    :pswitch_d
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1424
    goto/16 :goto_2

    .line 1426
    :pswitch_e
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a001a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1427
    goto/16 :goto_2

    .line 1429
    :pswitch_f
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->isQwertyUpperCase()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "en"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1432
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1436
    :goto_4
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1437
    goto/16 :goto_2

    .line 1434
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto :goto_4

    .line 1439
    :pswitch_10
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1440
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1441
    goto/16 :goto_2

    .line 1443
    :pswitch_11
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1444
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1445
    goto/16 :goto_2

    .line 1447
    :pswitch_12
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0017

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1448
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1449
    goto/16 :goto_2

    .line 1451
    :pswitch_13
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0018

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1452
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1453
    goto/16 :goto_2

    .line 1455
    :pswitch_14
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    .line 1456
    int-to-float v3, v1

    mul-float/2addr v3, v2

    float-to-int v1, v3

    .line 1457
    goto/16 :goto_2

    .line 1464
    :cond_9
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v1, v3

    goto/16 :goto_1

    .line 1353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_9
        :pswitch_0
        :pswitch_1
        :pswitch_a
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_8
        :pswitch_a
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public getSkbSoftkeyView()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2556
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeyViews()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    return-object v0
.end method

.method public invalidateAll()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1237
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 1242
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v3

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    .line 1244
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->printRect(Landroid/graphics/Rect;)V

    .line 1245
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDrawPending:Z

    .line 1246
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidate()V

    .line 1247
    return-void
.end method

.method public invalidateDirtyRect()V
    .locals 3

    .prologue
    .line 1256
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1257
    .local v0, canvas:Landroid/graphics/Canvas;
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1258
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidate(Landroid/graphics/Rect;)V

    .line 1259
    return-void
.end method

.method public invalidateKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 6
    .parameter "softKeyDown"

    .prologue
    .line 1264
    if-nez p1, :cond_0

    .line 1288
    :goto_0
    return-void

    .line 1267
    :cond_0
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInvalidatedKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 1273
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingLeft:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    iget v3, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingLeft:I

    add-int/2addr v3, v4

    iget v4, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 1277
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 1278
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onBufferDraw()V

    .line 1285
    :cond_1
    iget v0, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingTop:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v3

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingLeft:I

    add-int/2addr v2, v3

    iget v3, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingTop:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidate(IIII)V

    goto :goto_0
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    .line 292
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTalkbackEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 296
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 297
    .local v1, context:Landroid/content/Context;
    const-string v0, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 299
    .local v0, TALKBACK_PKG_NAME:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 300
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enabled_accessibility_services"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, enabledServices:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v4, :cond_0

    .line 304
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    .line 308
    .end local v2           #enabledServices:Ljava/lang/String;
    :cond_0
    return v3
.end method

.method public isTouchExplorationEnabled()Z
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 278
    .local v0, enabled:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    const/4 v0, 0x1

    .line 285
    :cond_0
    return v0
.end method

.method public onBufferDraw()V
    .locals 33

    .prologue
    .line 1502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    if-nez v2, :cond_1

    .line 1666
    :cond_0
    :goto_0
    return-void

    .line 1505
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v20

    .line 1507
    .local v20, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyboardChanged:Z

    if-eqz v2, :cond_7

    .line 1508
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getWidth()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getHeight()I

    move-result v2

    if-lez v2, :cond_0

    .line 1513
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getHeight()I

    move-result v30

    .line 1515
    .local v30, skbHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v2, :cond_3

    .line 1516
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v9, :cond_b

    .line 1517
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v30

    .line 1523
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyboardChanged:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getWidth()I

    move-result v9

    if-ne v2, v9, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    move/from16 v0, v30

    if-eq v2, v0, :cond_6

    .line 1527
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_5

    .line 1528
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 1534
    :cond_5
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getWidth()I

    move-result v2

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v30

    invoke-static {v2, v0, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    .line 1535
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v2, :cond_c

    .line 1536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v9}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    .line 1549
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyboardChanged:Z

    .line 1551
    .end local v30           #skbHeight:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1552
    .local v3, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->printRect(Landroid/graphics/Rect;)V

    .line 1553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    sget-object v9, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v3, v2, v9}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 1554
    const/4 v2, 0x0

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v2, v9}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1558
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    const/16 v9, 0xf0

    if-lt v2, v9, :cond_e

    .line 1559
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    int-to-float v2, v2

    const v9, 0x3dcccccd

    mul-float/2addr v2, v9

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->qwtDoubleX:I

    .line 1560
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    int-to-float v2, v2

    const v9, 0x3df7ced9

    mul-float/2addr v2, v9

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->qwtDoubleY:I

    .line 1561
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v26

    .line 1562
    .local v26, mConfiguration:Landroid/content/res/Configuration;
    move-object/from16 v0, v26

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v27, v0

    .line 1563
    .local v27, mOrientation:I
    const/4 v2, 0x2

    move/from16 v0, v27

    if-ne v0, v2, :cond_d

    .line 1564
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    int-to-float v2, v2

    const v9, 0x3f0ccccd

    mul-float/2addr v2, v9

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->padDoubleX:I

    .line 1568
    :cond_8
    :goto_3
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    int-to-float v2, v2

    const v9, 0x3e010625

    mul-float/2addr v2, v9

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->padDoubleY:I

    .line 1581
    .end local v26           #mConfiguration:Landroid/content/res/Configuration;
    .end local v27           #mOrientation:I
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getRowNum()I

    move-result v29

    .line 1582
    .local v29, rowNum:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeyXMargin()I

    move-result v5

    .line 1583
    .local v5, keyXMargin:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeyYMargin()I

    move-result v6

    .line 1584
    .local v6, keyYMargin:I
    const/4 v7, 0x0

    .line 1585
    .local v7, rowTopMargin:I
    const/4 v8, 0x0

    .line 1587
    .local v8, rowBottomMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInvalidatedKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v22, v0

    .line 1588
    .local v22, invalidKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    const/16 v18, 0x0

    .line 1590
    .local v18, drawSingleKey:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v3, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->isDrawSingleKey(Landroid/graphics/Canvas;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z

    move-result v18

    .line 1591
    const/16 v23, 0x0

    .line 1595
    .local v23, isDrawKey:Z
    const/16 v28, 0x0

    .local v28, row:I
    :goto_5
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_1a

    if-nez v23, :cond_1a

    .line 1596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move/from16 v0, v28

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeyRowForDisplay(I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    move-result-object v25

    .line 1597
    .local v25, keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    const/16 v24, 0x0

    .line 1598
    .local v24, keyNum:I
    if-nez v25, :cond_10

    .line 1595
    :cond_a
    add-int/lit8 v28, v28, 0x1

    goto :goto_5

    .line 1519
    .end local v3           #canvas:Landroid/graphics/Canvas;
    .end local v5           #keyXMargin:I
    .end local v6           #keyYMargin:I
    .end local v7           #rowTopMargin:I
    .end local v8           #rowBottomMargin:I
    .end local v18           #drawSingleKey:Z
    .end local v22           #invalidKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .end local v23           #isDrawKey:Z
    .end local v24           #keyNum:I
    .end local v25           #keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    .end local v28           #row:I
    .end local v29           #rowNum:I
    .restart local v30       #skbHeight:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v30

    goto/16 :goto_1

    .line 1538
    :cond_c
    :try_start_1
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v2, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    .line 1539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingLeft:I

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingTop:I

    int-to-float v10, v10

    invoke-virtual {v2, v9, v10}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1541
    :catch_0
    move-exception v19

    .line 1542
    .local v19, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "SamsungKeyboardView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OutOfMemoryError occurs in createBitmap("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1565
    .end local v19           #e:Ljava/lang/OutOfMemoryError;
    .end local v30           #skbHeight:I
    .restart local v3       #canvas:Landroid/graphics/Canvas;
    .restart local v26       #mConfiguration:Landroid/content/res/Configuration;
    .restart local v27       #mOrientation:I
    :cond_d
    const/4 v2, 0x1

    move/from16 v0, v27

    if-ne v0, v2, :cond_8

    .line 1566
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    int-to-float v2, v2

    const v9, 0x3e8ac083

    mul-float/2addr v2, v9

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->padDoubleX:I

    goto/16 :goto_3

    .line 1569
    .end local v26           #mConfiguration:Landroid/content/res/Configuration;
    .end local v27           #mOrientation:I
    :cond_e
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    const/16 v9, 0xa0

    if-lt v2, v9, :cond_f

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    const/16 v9, 0xf0

    if-ge v2, v9, :cond_f

    .line 1570
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    int-to-float v2, v2

    const v9, 0x3df5c28f

    mul-float/2addr v2, v9

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->qwtDoubleX:I

    .line 1571
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    int-to-float v2, v2

    const v9, 0x3df7ced9

    mul-float/2addr v2, v9

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->qwtDoubleY:I

    .line 1572
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    int-to-float v2, v2

    const v9, 0x3f122d0e

    mul-float/2addr v2, v9

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->padDoubleX:I

    .line 1573
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    int-to-float v2, v2

    const v9, 0x3df7ced9

    mul-float/2addr v2, v9

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->padDoubleY:I

    goto/16 :goto_4

    .line 1574
    :cond_f
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    const/16 v9, 0x78

    if-lt v2, v9, :cond_9

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    const/16 v9, 0xa0

    if-ge v2, v9, :cond_9

    .line 1575
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    int-to-float v2, v2

    const v9, 0x3e0f5c29

    mul-float/2addr v2, v9

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->qwtDoubleX:I

    .line 1576
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    int-to-float v2, v2

    const v9, 0x3df7ced9

    mul-float/2addr v2, v9

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->qwtDoubleY:I

    .line 1577
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    int-to-float v2, v2

    const v9, 0x3f122d0e

    mul-float/2addr v2, v9

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->padDoubleX:I

    .line 1578
    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v2

    int-to-float v2, v2

    const v9, 0x3df7ced9

    mul-float/2addr v2, v9

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->padDoubleY:I

    goto/16 :goto_4

    .line 1600
    .restart local v5       #keyXMargin:I
    .restart local v6       #keyYMargin:I
    .restart local v7       #rowTopMargin:I
    .restart local v8       #rowBottomMargin:I
    .restart local v18       #drawSingleKey:Z
    .restart local v22       #invalidKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .restart local v23       #isDrawKey:Z
    .restart local v24       #keyNum:I
    .restart local v25       #keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    .restart local v28       #row:I
    .restart local v29       #rowNum:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getRowTopMargin(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;)I

    move-result v7

    .line 1601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getRowBottomMargin(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;)I

    move-result v8

    .line 1604
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeyViews:Ljava/util/List;

    move-object/from16 v31, v0

    .line 1605
    .local v31, softKeyViews:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;>;"
    if-eqz v31, :cond_11

    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 1606
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->size()I

    move-result v24

    .line 1608
    :cond_11
    const/16 v21, 0x0

    .local v21, i:I
    :goto_6
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_15

    .line 1609
    move-object/from16 v0, v31

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;

    .line 1611
    .local v4, softKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    if-eqz v18, :cond_13

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLeft()I

    move-result v2

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->getKeyLeft()I

    move-result v9

    if-ne v2, v9, :cond_12

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v2

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->getKeyTop()I

    move-result v9

    if-eq v2, v9, :cond_13

    .line 1608
    :cond_12
    :goto_7
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 1615
    :cond_13
    if-eqz v18, :cond_14

    .line 1616
    const/16 v23, 0x1

    .line 1618
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->getKeyType()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getFontSizeByType(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1619
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHelveFont()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-object/from16 v2, p0

    .line 1621
    invoke-direct/range {v2 .. v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->drawSoftKeyView(Landroid/graphics/Canvas;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;IIII)V

    goto :goto_7

    .line 1625
    .end local v4           #softKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    :cond_15
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    move-object/from16 v32, v0

    .line 1626
    .local v32, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v24

    .line 1627
    const/16 v21, 0x0

    :goto_8
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    .line 1629
    move-object/from16 v0, v32

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 1631
    .local v11, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    if-eqz v18, :cond_17

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLeft()I

    move-result v2

    invoke-virtual {v11}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLeft()I

    move-result v9

    if-ne v2, v9, :cond_16

    invoke-virtual/range {v22 .. v22}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v2

    invoke-virtual {v11}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v9

    if-eq v2, v9, :cond_17

    .line 1627
    .end local v11           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_16
    :goto_9
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 1635
    .restart local v11       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_17
    if-eqz v18, :cond_18

    .line 1636
    const/16 v23, 0x1

    .line 1638
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v11}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyType()I

    move-result v9

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getFontSizeByType(I)I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHelveFont()Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 1642
    instance-of v2, v11, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;

    if-eqz v2, :cond_19

    .line 1643
    check-cast v11, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;

    .end local v11           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v5, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->drawKeyUnite(Landroid/graphics/Canvas;Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;II)V

    goto :goto_9

    .restart local v11       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_19
    move-object/from16 v9, p0

    move-object v10, v3

    move v12, v5

    move v13, v6

    move v14, v7

    move v15, v8

    .line 1645
    invoke-direct/range {v9 .. v15}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->drawSoftKey(Landroid/graphics/Canvas;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;IIII)V

    goto :goto_9

    .line 1652
    .end local v11           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .end local v21           #i:I
    .end local v24           #keyNum:I
    .end local v25           #keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    .end local v31           #softKeyViews:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;>;"
    .end local v32           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    :cond_1a
    if-eqz v18, :cond_1b

    .line 1653
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInvalidatedKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 1656
    :cond_1b
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->drawMiniKeyboardDivideLines(Landroid/graphics/Canvas;)V

    .line 1658
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDimSkb:Z

    if-eqz v2, :cond_1c

    .line 1659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->clearShadowLayer()V

    .line 1660
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    const/high16 v9, -0x6000

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 1661
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingLeft:I

    neg-int v2, v2

    int-to-float v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingTop:I

    neg-int v2, v2

    int-to-float v14, v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getWidth()I

    move-result v2

    int-to-float v15, v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getHeight()I

    move-result v2

    int-to-float v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object v12, v3

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1664
    :cond_1c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDrawPending:Z

    .line 1665
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->setEmpty()V

    goto/16 :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    .line 1488
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDrawPending:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyboardChanged:Z

    if-eqz v0, :cond_1

    .line 1489
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onBufferDraw()V

    .line 1492
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 1493
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBuffer:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1495
    :cond_2
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 238
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ACCESSIBILITY_FEATURE:Z

    if-eqz v2, :cond_2

    .line 239
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/samsung/inputmethod/SamsungIME;

    .line 241
    .local v1, ime:Lcom/samsung/inputmethod/SamsungIME;
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 243
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 262
    .end local v0           #action:I
    :cond_0
    :goto_0
    :pswitch_0
    if-eqz v1, :cond_1

    .line 263
    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v2, :cond_2

    .line 267
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getAccessibilityViewId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setAccessibilityViewId(I)V

    .line 268
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->onTouchEvent(Landroid/view/MotionEvent;Z)Z

    .line 272
    .end local v1           #ime:Lcom/samsung/inputmethod/SamsungIME;
    :cond_2
    return v3

    .line 245
    .restart local v0       #action:I
    .restart local v1       #ime:Lcom/samsung/inputmethod/SamsungIME;
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 248
    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 254
    :pswitch_3
    const/4 v2, 0x3

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 243
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyLongPress()V
    .locals 23

    .prologue
    .line 1114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    if-nez v2, :cond_1

    .line 1229
    :cond_0
    :goto_0
    return-void

    .line 1115
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setLongPressed(Z)V

    .line 1120
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v11

    .line 1123
    .local v11, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    if-eqz v2, :cond_8

    .line 1124
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyHlBg()Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1125
    .local v14, keyHlBg:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v2, v14}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeyXMargin()I

    move-result v15

    .line 1129
    .local v15, keyXMargin:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeyYMargin()I

    move-result v16

    .line 1130
    .local v16, keyYMargin:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v2

    mul-int/lit8 v5, v15, 0x2

    sub-int v7, v2, v5

    .line 1131
    .local v7, desired_width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v2

    mul-int/lit8 v5, v16, 0x2

    sub-int v8, v2, v5

    .line 1132
    .local v8, desired_height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    iget-object v2, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v2, v2, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyTypeId:I

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v11, v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getKeyTextSize(Z)I

    move-result v2

    int-to-float v4, v2

    .line 1134
    .local v4, textSize:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 1135
    .local v12, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_7

    .line 1136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v2, v12, v7, v8}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonConfig(Landroid/graphics/drawable/Drawable;II)V

    .line 1145
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v20, v0

    add-int v6, v6, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v21

    sub-int v20, v20, v21

    div-int/lit8 v20, v20, 0x2

    sub-int v6, v6, v20

    aput v6, v2, v5

    .line 1147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v5, 0x0

    aget v6, v2, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mOffsetToSkbContainer:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    add-int v6, v6, v20

    aput v6, v2, v5

    .line 1149
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v2

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v2, v5, :cond_2

    .line 1150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v5, 0x0

    aget v6, v2, v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0032

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v6, v6, v20

    aput v6, v2, v5

    .line 1153
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    move/from16 v20, v0

    sub-int v20, v20, v16

    add-int v6, v6, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getHeight()I

    move-result v20

    sub-int v6, v6, v20

    aput v6, v2, v5

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v5, 0x1

    aget v6, v2, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mOffsetToSkbContainer:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    add-int v6, v6, v20

    aput v6, v2, v5

    .line 1157
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->showBalloon(Lcom/samsung/inputmethod/comm/SimeBalloonHint;[IZ)V

    .line 1170
    .end local v4           #textSize:F
    .end local v7           #desired_width:I
    .end local v8           #desired_height:I
    .end local v12           #icon:Landroid/graphics/drawable/Drawable;
    .end local v14           #keyHlBg:Landroid/graphics/drawable/Drawable;
    .end local v15           #keyXMargin:I
    .end local v16           #keyYMargin:I
    :goto_3
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getCharPreview()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getBalloonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 1173
    .local v9, balloonBg:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v2, v9}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    iget-object v2, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v2, v2, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyTypeId:I

    invoke-virtual {v11, v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getBalloonAttr(I)Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    move-result-object v19

    .line 1175
    .local v19, softKeyBalloonAttr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v2

    move-object/from16 v0, v19

    iget v5, v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    add-int v7, v2, v5

    .line 1176
    .restart local v7       #desired_width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v2

    move-object/from16 v0, v19

    iget v5, v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    add-int v8, v2, v5

    .line 1178
    .restart local v8       #desired_height:I
    move-object/from16 v0, v19

    iget v2, v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    int-to-float v4, v2

    .line 1179
    .restart local v4       #textSize:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongIconPopup()Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 1180
    .local v17, longPressIconPopup:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v3

    .line 1182
    .local v3, longPressLabel:Ljava/lang/String;
    if-eqz v17, :cond_a

    .line 1183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v7, v8}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonConfig(Landroid/graphics/drawable/Drawable;II)V

    .line 1193
    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move/from16 v20, v0

    add-int v6, v6, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v21

    sub-int v20, v20, v21

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    add-int v6, v6, v20

    aput v6, v2, v5

    .line 1195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v5, 0x0

    aget v6, v2, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mOffsetToSkbContainer:[I

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aget v20, v20, v21

    add-int v6, v6, v20

    aput v6, v2, v5

    .line 1197
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v2

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v2, v5, :cond_4

    .line 1198
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v5, 0x0

    aget v6, v2, v5

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x7f0a0032

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    add-int v6, v6, v20

    aput v6, v2, v5

    .line 1201
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move/from16 v20, v0

    add-int v6, v6, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getHeight()I

    move-result v20

    sub-int v6, v6, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getBallonDistanceFromButton()I

    move-result v20

    sub-int v6, v6, v20

    aput v6, v2, v5

    .line 1203
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v5, 0x1

    aget v6, v2, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mOffsetToSkbContainer:[I

    move-object/from16 v20, v0

    const/16 v21, 0x1

    aget v20, v20, v21

    add-int v6, v6, v20

    aput v6, v2, v5

    .line 1204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v13, Lcom/samsung/inputmethod/SamsungIME;

    .line 1205
    .local v13, ime:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v5, :cond_b

    .line 1206
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getDummyInputView()Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setParentView(Landroid/view/View;)V

    .line 1207
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setInScreen(Z)V

    .line 1208
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v5, 0x0

    aget v6, v2, v5

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    add-int v6, v6, v20

    aput v6, v2, v5

    .line 1209
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v5, 0x1

    aget v6, v2, v5

    invoke-virtual {v11}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v20

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v21, v0

    invoke-virtual {v11}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v22

    add-int v21, v21, v22

    sub-int v20, v20, v21

    add-int v6, v6, v20

    aput v6, v2, v5

    .line 1215
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->showBalloon(Lcom/samsung/inputmethod/comm/SimeBalloonHint;[IZ)V

    .line 1217
    if-nez v17, :cond_5

    if-nez v3, :cond_5

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 1224
    .end local v3           #longPressLabel:Ljava/lang/String;
    .end local v4           #textSize:F
    .end local v7           #desired_width:I
    .end local v8           #desired_height:I
    .end local v9           #balloonBg:Landroid/graphics/drawable/Drawable;
    .end local v13           #ime:Lcom/samsung/inputmethod/SamsungIME;
    .end local v17           #longPressIconPopup:Landroid/graphics/drawable/Drawable;
    .end local v19           #softKeyBalloonAttr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->isPointingAction()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1226
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->getMultiDirection()I

    move-result v10

    .line 1227
    .local v10, direction:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v2, v10}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->onDownKeyEvent(I)V

    goto/16 :goto_0

    .line 1132
    .end local v10           #direction:I
    .restart local v7       #desired_width:I
    .restart local v8       #desired_height:I
    .restart local v14       #keyHlBg:Landroid/graphics/drawable/Drawable;
    .restart local v15       #keyXMargin:I
    .restart local v16       #keyYMargin:I
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 1139
    .restart local v4       #textSize:F
    .restart local v12       #icon:Landroid/graphics/drawable/Drawable;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getColorHl()I

    move-result v6

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonConfig(Ljava/lang/String;FZIII)V

    goto/16 :goto_2

    .line 1159
    .end local v4           #textSize:F
    .end local v7           #desired_width:I
    .end local v8           #desired_height:I
    .end local v12           #icon:Landroid/graphics/drawable/Drawable;
    .end local v14           #keyHlBg:Landroid/graphics/drawable/Drawable;
    .end local v15           #keyXMargin:I
    .end local v16           #keyYMargin:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v18

    .line 1162
    .local v18, mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto/16 :goto_3

    .line 1164
    .end local v18           #mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto/16 :goto_3

    .line 1185
    .restart local v3       #longPressLabel:Ljava/lang/String;
    .restart local v4       #textSize:F
    .restart local v7       #desired_width:I
    .restart local v8       #desired_height:I
    .restart local v9       #balloonBg:Landroid/graphics/drawable/Drawable;
    .restart local v17       #longPressIconPopup:Landroid/graphics/drawable/Drawable;
    .restart local v19       #softKeyBalloonAttr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    :cond_a
    if-eqz v3, :cond_3

    .line 1186
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v20, 0x7f08002c

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonConfig(Ljava/lang/String;FZIII)V

    goto/16 :goto_4

    .line 1212
    .restart local v13       #ime:Lcom/samsung/inputmethod/SamsungIME;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v13}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setParentView(Landroid/view/View;)V

    .line 1213
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setInScreen(Z)V

    goto/16 :goto_5
.end method

.method public onKeyMove(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    .line 949
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 993
    :goto_0
    return-object v1

    .line 951
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingTop:I

    sub-int v3, p2, v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->moveWithinKey(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 960
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    goto :goto_0

    .line 964
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 965
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v0

    .line 967
    .local v0, mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 972
    .end local v0           #mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :goto_1
    iget-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mRepeatForLongPress:Z

    if-eqz v1, :cond_7

    .line 973
    iget-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mMovingNeverHidePopupBalloon:Z

    if-eqz v1, :cond_3

    .line 974
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {p0, p1, p2, v1, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onKeyPress(IILcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;Z)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v1

    goto :goto_0

    .line 969
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto :goto_1

    .line 977
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    if-eqz v1, :cond_4

    .line 978
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v1, v5, v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 983
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->needBalloon()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getCharPreview()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 984
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v1, v5, v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 987
    :cond_5
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    if-eqz v1, :cond_6

    .line 988
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->removeTimer()Z

    .line 990
    :cond_6
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {p0, p1, p2, v1, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onKeyPress(IILcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;Z)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v1

    goto :goto_0

    .line 993
    :cond_7
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {p0, p1, p2, v1, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onKeyPress(IILcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;Z)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v1

    goto :goto_0
.end method

.method public onKeyPress(IILcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;Z)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 31
    .parameter "x"
    .parameter "y"
    .parameter "longPressTimer"
    .parameter "movePress"

    .prologue
    .line 651
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyPressed:Z

    .line 653
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mLastMoveStartPointX:I

    .line 655
    const/16 v23, 0x0

    .line 657
    .local v23, moveWithinPreviousKey:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    if-nez v2, :cond_0

    .line 658
    const/4 v2, 0x0

    .line 886
    :goto_0
    return-object v2

    .line 661
    :cond_0
    if-eqz p4, :cond_6

    .line 663
    const/16 v24, 0x0

    .line 664
    .local v24, newKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDynamicCharacterRecognitionEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 665
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->upEvent:Z

    .line 666
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->dynamicMapToKey(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v24

    .line 671
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 672
    const/16 v23, 0x1

    .line 673
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyPressed:Z

    .line 677
    :cond_1
    if-nez v23, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    if-eqz v2, :cond_2

    .line 679
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 680
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v22

    .line 681
    .local v22, mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 687
    .end local v22           #mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_2
    :goto_2
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 697
    .end local v24           #newKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :goto_3
    if-nez v23, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    if-nez v2, :cond_8

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    goto :goto_0

    .line 668
    .restart local v24       #newKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mapToKey(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v24

    goto :goto_1

    .line 683
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto :goto_2

    .line 690
    .end local v24           #newKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDynamicCharacterRecognitionEnable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 691
    const/4 v2, 0x0

    sput-boolean v2, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->upEvent:Z

    .line 692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->dynamicMapToKey(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    goto :goto_3

    .line 694
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mapToKey(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    goto :goto_3

    .line 698
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyPressed:Z

    .line 699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setLongPressed(Z)V

    .line 701
    if-nez p4, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isDisable()Z

    move-result v2

    if-nez v2, :cond_12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mNoSoundNoVibrateKeyboard:Z

    if-nez v2, :cond_12

    .line 702
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v15

    .line 704
    .local v15, keyCode:I
    const/16 v2, 0x3e

    if-ne v15, v2, :cond_f

    .line 705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    .line 726
    .end local v15           #keyCode:I
    :cond_9
    :goto_4
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    .line 728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getPopupResId()I

    move-result v2

    if-gtz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->repeatable()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongIconPopup()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->isPointingAction()Z

    move-result v2

    if-eqz v2, :cond_14

    :cond_a
    const/4 v10, 0x1

    .line 732
    .local v10, canProcessLongPress:Z
    :goto_5
    if-nez p4, :cond_15

    .line 733
    if-eqz v10, :cond_b

    .line 734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->startTimer()V

    .line 746
    :cond_b
    :goto_6
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v11

    .line 748
    .local v11, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    if-eqz v2, :cond_18

    .line 749
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyHlBg()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 750
    .local v16, keyHlBg:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 753
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeyXMargin()I

    move-result v17

    .line 754
    .local v17, keyXMargin:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeyYMargin()I

    move-result v18

    .line 755
    .local v18, keyYMargin:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v2

    mul-int/lit8 v3, v17, 0x2

    sub-int v7, v2, v3

    .line 756
    .local v7, desired_width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v2

    mul-int/lit8 v3, v18, 0x2

    sub-int v8, v2, v3

    .line 757
    .local v8, desired_height:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    iget-object v2, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v2, v2, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyTypeId:I

    if-eqz v2, :cond_16

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v11, v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getKeyTextSize(Z)I

    move-result v2

    int-to-float v4, v2

    .line 758
    .local v4, textSize:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 759
    .local v12, icon:Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_17

    .line 760
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v2, v12, v7, v8}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonConfig(Landroid/graphics/drawable/Drawable;II)V

    .line 768
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    iget v6, v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v29

    sub-int v6, v6, v29

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    aput v5, v2, v3

    .line 770
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mOffsetToSkbContainer:[I

    const/16 v29, 0x0

    aget v6, v6, v29

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 772
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v2, v3, :cond_c

    .line 773
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v29, 0x7f0a0032

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 776
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    iget v6, v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    sub-int v6, v6, v18

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v2, v3

    .line 779
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x1

    aget v5, v2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mOffsetToSkbContainer:[I

    const/16 v29, 0x1

    aget v6, v6, v29

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 780
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->showBalloon(Lcom/samsung/inputmethod/comm/SimeBalloonHint;[IZ)V

    .line 797
    .end local v4           #textSize:F
    .end local v7           #desired_width:I
    .end local v8           #desired_height:I
    .end local v12           #icon:Landroid/graphics/drawable/Drawable;
    .end local v16           #keyHlBg:Landroid/graphics/drawable/Drawable;
    .end local v17           #keyXMargin:I
    .end local v18           #keyYMargin:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->needBalloon()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getCharPreview()Z

    move-result v2

    if-eqz v2, :cond_22

    .line 798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getBalloonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 799
    .local v9, balloonBg:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v2, v9}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v20

    .line 802
    .local v20, mConfiguration:Landroid/content/res/Configuration;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    .line 803
    .local v21, mOrientation:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    iget-object v2, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyType:Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;

    iget v2, v2, Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;->mKeyTypeId:I

    invoke-virtual {v11, v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getBalloonAttr(I)Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    move-result-object v28

    .line 805
    .local v28, softKeyBalloonAttr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    invoke-virtual {v11}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXhSw400dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 806
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v2

    move-object/from16 v0, v28

    iget v3, v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    add-int v7, v2, v3

    .line 807
    .restart local v7       #desired_width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v2

    move-object/from16 v0, v28

    iget v3, v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    add-int v8, v2, v3

    .line 842
    .restart local v8       #desired_height:I
    :goto_a
    move-object/from16 v0, v28

    iget v2, v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    int-to-float v4, v2

    .line 843
    .restart local v4       #textSize:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyIconPopup()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    .line 844
    .local v13, iconPopup:Landroid/graphics/drawable/Drawable;
    if-eqz v13, :cond_20

    .line 845
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v2, v13, v7, v8}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonConfig(Landroid/graphics/drawable/Drawable;II)V

    .line 855
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    iget v6, v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v29

    sub-int v6, v6, v29

    neg-int v6, v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mOffsetToSkbContainer:[I

    const/16 v29, 0x0

    aget v6, v6, v29

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 859
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_d

    .line 860
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v2, v3, :cond_d

    .line 861
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v29, 0x7f0a0032

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 866
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    iget v6, v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getBallonDistanceFromButton()I

    move-result v6

    sub-int/2addr v5, v6

    aput v5, v2, v3

    .line 868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x1

    aget v5, v2, v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mOffsetToSkbContainer:[I

    const/16 v29, 0x1

    aget v6, v6, v29

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 869
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v14, Lcom/samsung/inputmethod/SamsungIME;

    .line 870
    .local v14, ime:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_21

    .line 871
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v14}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getDummyInputView()Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setParentView(Landroid/view/View;)V

    .line 872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setInScreen(Z)V

    .line 873
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x0

    aget v5, v2, v3

    invoke-virtual {v14}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    const/4 v3, 0x1

    aget v5, v2, v3

    invoke-virtual {v11}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v6

    invoke-virtual {v14}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v29

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    invoke-virtual {v11}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v30

    add-int v29, v29, v30

    sub-int v6, v6, v29

    add-int/2addr v5, v6

    aput v5, v2, v3

    .line 880
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mHintLocationToSkbContainer:[I

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->showBalloon(Lcom/samsung/inputmethod/comm/SimeBalloonHint;[IZ)V

    .line 885
    .end local v4           #textSize:F
    .end local v7           #desired_width:I
    .end local v8           #desired_height:I
    .end local v9           #balloonBg:Landroid/graphics/drawable/Drawable;
    .end local v13           #iconPopup:Landroid/graphics/drawable/Drawable;
    .end local v14           #ime:Lcom/samsung/inputmethod/SamsungIME;
    .end local v20           #mConfiguration:Landroid/content/res/Configuration;
    .end local v21           #mOrientation:I
    .end local v28           #softKeyBalloonAttr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mRepeatForLongPress:Z

    if-eqz v2, :cond_e

    invoke-virtual/range {p3 .. p3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->startTimer()V

    .line 886
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    goto/16 :goto_0

    .line 707
    .end local v10           #canProcessLongPress:Z
    .end local v11           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .restart local v15       #keyCode:I
    :cond_f
    const/16 v2, 0x43

    if-ne v15, v2, :cond_10

    .line 708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    const/4 v3, 0x7

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    goto/16 :goto_4

    .line 710
    :cond_10
    const/16 v2, 0x42

    if-ne v15, v2, :cond_11

    .line 711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    goto/16 :goto_4

    .line 714
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    goto/16 :goto_4

    .line 718
    .end local v15           #keyCode:I
    :cond_12
    if-eqz p4, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isDisable()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mNoSoundNoVibrateKeyboard:Z

    if-nez v2, :cond_9

    .line 721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v2

    const/16 v3, 0x26

    if-ne v2, v3, :cond_9

    .line 722
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    goto/16 :goto_4

    .line 728
    :cond_14
    const/4 v10, 0x0

    goto/16 :goto_5

    .line 737
    .restart local v10       #canProcessLongPress:Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->removeTimer()Z

    .line 738
    if-eqz v10, :cond_b

    .line 739
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->startTimer()V

    goto/16 :goto_6

    .line 757
    .restart local v7       #desired_width:I
    .restart local v8       #desired_height:I
    .restart local v11       #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .restart local v16       #keyHlBg:Landroid/graphics/drawable/Drawable;
    .restart local v17       #keyXMargin:I
    .restart local v18       #keyYMargin:I
    :cond_16
    const/4 v2, 0x0

    goto/16 :goto_7

    .line 763
    .restart local v4       #textSize:F
    .restart local v12       #icon:Landroid/graphics/drawable/Drawable;
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getColorHl()I

    move-result v6

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonConfig(Ljava/lang/String;FZIII)V

    goto/16 :goto_8

    .line 783
    .end local v4           #textSize:F
    .end local v7           #desired_width:I
    .end local v8           #desired_height:I
    .end local v12           #icon:Landroid/graphics/drawable/Drawable;
    .end local v16           #keyHlBg:Landroid/graphics/drawable/Drawable;
    .end local v17           #keyXMargin:I
    .end local v18           #keyYMargin:I
    :cond_18
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ACCESSIBILITY_FEATURE:Z

    if-eqz v2, :cond_19

    .line 784
    const/16 v2, 0x4000

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->sendAccessibilityEvent(ILcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 786
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v22

    .line 789
    .restart local v22       #mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto/16 :goto_9

    .line 791
    .end local v22           #mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto/16 :goto_9

    .line 808
    .restart local v9       #balloonBg:Landroid/graphics/drawable/Drawable;
    .restart local v20       #mConfiguration:Landroid/content/res/Configuration;
    .restart local v21       #mOrientation:I
    .restart local v28       #softKeyBalloonAttr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    :cond_1b
    invoke-virtual {v11}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 812
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_1c

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0032

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v19, v0

    .line 814
    .local v19, leftPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0033

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 815
    .local v25, rightPadding:I
    invoke-virtual {v11}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int v2, v2, v19

    sub-int v27, v2, v25

    .line 817
    .local v27, skbWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getOneHandCoreHeight(I)I

    move-result v26

    .line 830
    .local v26, skbHeight:I
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getBalloonWidth()F

    move-result v2

    move/from16 v0, v27

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v7, v2

    .line 831
    .restart local v7       #desired_width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getBalloonHeight()F

    move-result v2

    move/from16 v0, v26

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v8, v2

    .line 832
    .restart local v8       #desired_height:I
    goto/16 :goto_a

    .line 818
    .end local v7           #desired_width:I
    .end local v8           #desired_height:I
    .end local v19           #leftPadding:I
    .end local v25           #rightPadding:I
    .end local v26           #skbHeight:I
    .end local v27           #skbWidth:I
    :cond_1c
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_1d

    .line 819
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0056

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v19, v0

    .line 820
    .restart local v19       #leftPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0057

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v25, v0

    .line 821
    .restart local v25       #rightPadding:I
    invoke-virtual {v11}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v2

    sub-int v2, v2, v19

    sub-int v27, v2, v25

    .line 822
    .restart local v27       #skbWidth:I
    invoke-virtual {v11}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCoreHeight()I

    move-result v26

    .restart local v26       #skbHeight:I
    goto :goto_e

    .line 824
    .end local v19           #leftPadding:I
    .end local v25           #rightPadding:I
    .end local v26           #skbHeight:I
    .end local v27           #skbWidth:I
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingLeft()I

    move-result v19

    .line 825
    .restart local v19       #leftPadding:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingRight()I

    move-result v25

    .line 826
    .restart local v25       #rightPadding:I
    invoke-virtual {v11}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    sub-int v2, v2, v19

    sub-int v27, v2, v25

    .line 827
    .restart local v27       #skbWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v2

    invoke-virtual {v11, v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbCoreHeight(I)I

    move-result v26

    .restart local v26       #skbHeight:I
    goto :goto_e

    .line 833
    .end local v19           #leftPadding:I
    .end local v25           #rightPadding:I
    .end local v26           #skbHeight:I
    .end local v27           #skbWidth:I
    :cond_1e
    const/4 v2, 0x2

    move/from16 v0, v21

    if-ne v0, v2, :cond_1f

    .line 834
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v2

    move-object/from16 v0, v28

    iget v3, v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    add-int v7, v2, v3

    .line 835
    .restart local v7       #desired_width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v2

    move-object/from16 v0, v28

    iget v3, v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    add-int v8, v2, v3

    .restart local v8       #desired_height:I
    goto/16 :goto_a

    .line 837
    .end local v7           #desired_width:I
    .end local v8           #desired_height:I
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->width()I

    move-result v2

    move-object/from16 v0, v28

    iget v3, v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->widthPlus:I

    add-int v7, v2, v3

    .line 838
    .restart local v7       #desired_width:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v2

    move-object/from16 v0, v28

    iget v3, v0, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->heightPlus:I

    add-int v8, v2, v3

    .restart local v8       #desired_height:I
    goto/16 :goto_a

    .line 848
    .restart local v4       #textSize:F
    .restart local v13       #iconPopup:Landroid/graphics/drawable/Drawable;
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v29, 0x7f08002c

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonConfig(Ljava/lang/String;FZIII)V

    goto/16 :goto_b

    .line 877
    .restart local v14       #ime:Lcom/samsung/inputmethod/SamsungIME;
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v14}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setParentView(Landroid/view/View;)V

    .line 878
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setInScreen(Z)V

    goto/16 :goto_c

    .line 882
    .end local v4           #textSize:F
    .end local v7           #desired_width:I
    .end local v8           #desired_height:I
    .end local v9           #balloonBg:Landroid/graphics/drawable/Drawable;
    .end local v13           #iconPopup:Landroid/graphics/drawable/Drawable;
    .end local v14           #ime:Lcom/samsung/inputmethod/SamsungIME;
    .end local v20           #mConfiguration:Landroid/content/res/Configuration;
    .end local v21           #mOrientation:I
    .end local v28           #softKeyBalloonAttr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v5, v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    goto/16 :goto_d
.end method

.method public onKeyRelease(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v3, 0x96

    const/4 v1, 0x0

    .line 890
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyPressed:Z

    .line 891
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    if-nez v2, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-object v1

    .line 893
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDynamicCharacterRecognitionEnable()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 894
    const/4 v2, 0x1

    sput-boolean v2, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->upEvent:Z

    .line 895
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->dynamicMapToKey(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 898
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->stopLocalRingPlayer()V

    .line 899
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->removeTimer()Z

    .line 901
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isDisable()Z

    move-result v2

    if-nez v2, :cond_0

    .line 903
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    if-eqz v2, :cond_5

    .line 904
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 914
    :goto_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->needBalloon()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongIconPopup()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getCharPreview()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 916
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 919
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingLeft:I

    sub-int v3, p1, v3

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingTop:I

    sub-int v4, p2, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->moveWithinKey(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 921
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3e

    if-eq v1, v2, :cond_7

    .line 922
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    goto :goto_0

    .line 906
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 907
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v0

    .line 908
    .local v0, mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto :goto_1

    .line 910
    .end local v0           #mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto :goto_1

    .line 943
    :cond_7
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 554
    const/4 v1, 0x0

    .line 555
    .local v1, measuredWidth:I
    const/4 v0, 0x0

    .line 556
    .local v0, measuredHeight:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    if-eqz v2, :cond_0

    .line 557
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v1

    .line 558
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v0

    .line 559
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingLeft:I

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingRight:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 560
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingTop:I

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mPaddingBottom:I

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 562
    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setMeasuredDimension(II)V

    .line 563
    return-void
.end method

.method public printRect(Landroid/graphics/Rect;)V
    .locals 0
    .parameter "rect"

    .prologue
    .line 1251
    return-void
.end method

.method public resetKeyPress(J)V
    .locals 2
    .parameter "balloonDelay"

    .prologue
    .line 623
    iget-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyPressed:Z

    if-nez v1, :cond_1

    .line 644
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyPressed:Z

    .line 625
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    if-eqz v1, :cond_3

    .line 626
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 642
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getCharPreview()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    goto :goto_0

    .line 628
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    if-eqz v1, :cond_5

    .line 629
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 630
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 631
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getParentKey()Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v0

    .line 632
    .local v0, mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto :goto_1

    .line 634
    .end local v0           #mParentKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto :goto_1

    .line 638
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    goto :goto_1
.end method

.method public resizeKeyboard(II)V
    .locals 1
    .parameter "skbWidth"
    .parameter "skbHeight"

    .prologue
    .line 536
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setSkbCoreSize(II)V

    .line 537
    return-void
.end method

.method public sendAccessibilityEvent(ILcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 6
    .parameter "eventType"
    .parameter "mSoftKeyDown"

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->isTouchExplorationEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->isAccessibilityEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 314
    :cond_0
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 315
    .local v1, event:Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 316
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 318
    .local v2, resolver:Landroid/content/ContentResolver;
    sparse-switch p1, :sswitch_data_0

    .line 348
    :goto_0
    :sswitch_0
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 350
    .end local v1           #event:Landroid/view/accessibility/AccessibilityEvent;
    .end local v2           #resolver:Landroid/content/ContentResolver;
    :cond_1
    return-void

    .line 321
    .restart local v1       #event:Landroid/view/accessibility/AccessibilityEvent;
    .restart local v2       #resolver:Landroid/content/ContentResolver;
    :sswitch_1
    const/4 v0, 0x0

    .line 322
    .local v0, description:Ljava/lang/CharSequence;
    invoke-virtual {p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getAccessibilityDescription(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 325
    :cond_2
    invoke-virtual {p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 326
    invoke-virtual {p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, smallLabel:Ljava/lang/String;
    :goto_1
    if-nez p2, :cond_6

    const-string v0, ""

    .line 332
    .end local v3           #smallLabel:Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPassWordEditor()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "speak_password"

    const/4 v5, 0x0

    invoke-static {v2, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_4

    .line 335
    const-string v0, ""

    .line 337
    :cond_4
    if-eqz v0, :cond_1

    .line 340
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    :cond_5
    invoke-virtual {p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #smallLabel:Ljava/lang/String;
    goto :goto_1

    :cond_6
    move-object v0, v3

    .line 329
    goto :goto_2

    .line 318
    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_1
        0x100 -> :sswitch_0
        0x4000 -> :sswitch_1
    .end sparse-switch
.end method

.method public setAccessibilityViewId(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 467
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mAccessibilityViewId:I

    .line 468
    return-void
.end method

.method public setBalloonHint(Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Z)V
    .locals 3
    .parameter "balloonOnKey"
    .parameter "balloonPopup"
    .parameter "movingNeverHidePopup"

    .prologue
    .line 541
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 542
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 543
    iput-boolean p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mMovingNeverHidePopupBalloon:Z

    .line 544
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 545
    return-void
.end method

.method public setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 0
    .parameter "inputModeSwitcher"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 533
    return-void
.end method

.method public setNoSoundNoVibrate(Z)V
    .locals 0
    .parameter "val"

    .prologue
    .line 476
    iput-boolean p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mNoSoundNoVibrateKeyboard:Z

    .line 477
    return-void
.end method

.method public setOffsetToSkbContainer([I)V
    .locals 4
    .parameter "offsetToSkbContainer"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 548
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mOffsetToSkbContainer:[I

    aget v1, p1, v2

    aput v1, v0, v2

    .line 549
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mOffsetToSkbContainer:[I

    aget v1, p1, v3

    aput v1, v0, v3

    .line 550
    return-void
.end method

.method public setService(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 524
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 525
    return-void
.end method

.method public setSoftKeyboard(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;)Z
    .locals 6
    .parameter "softSkb"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 480
    if-nez p1, :cond_0

    .line 481
    const/4 v2, 0x0

    .line 520
    :goto_0
    return v2

    .line 484
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbXmlId()I

    move-result v3

    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbXmlId()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 486
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 489
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    if-eqz v3, :cond_1

    .line 490
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->removeTimer()Z

    .line 494
    :cond_1
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    .line 497
    sget-boolean v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    .line 498
    .local v1, isMiniKeyboard:Z
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDynamicCharacterRecognitionEnable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 499
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;)V

    .line 500
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mSoftKeyboard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setSkbSoftKeys()V

    .line 501
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyDetecter:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    invoke-virtual {v3, p1, v5, v5, v1}, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->setKeyboard(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;FFZ)V

    .line 510
    :cond_2
    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 511
    .local v0, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 518
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyboardChanged:Z

    goto :goto_0
.end method

.method public showBalloon(Lcom/samsung/inputmethod/comm/SimeBalloonHint;[IZ)V
    .locals 7
    .parameter "balloon"
    .parameter "balloonLocationToSkb"
    .parameter "movePress"

    .prologue
    const-wide/16 v4, 0x0

    .line 567
    const-wide/16 v1, 0x0

    .line 568
    .local v1, delay:J
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v6

    .line 571
    .local v6, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    if-eqz p3, :cond_0

    .line 572
    const-wide/16 v3, 0xa

    invoke-virtual {p1, v3, v4}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 594
    :goto_0
    return-void

    .line 577
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->needForceDismiss()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    invoke-virtual {p1, v4, v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 581
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 582
    invoke-virtual {p1, v1, v2, p2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedShow(J[I)V

    goto :goto_0

    .line 585
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSdkVersion()I

    move-result v0

    const/16 v3, 0x10

    if-ne v0, v3, :cond_3

    .line 586
    invoke-virtual {p1, v4, v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 587
    invoke-virtual {p1, v1, v2, p2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedShow(J[I)V

    goto :goto_0

    .line 589
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getHeight()I

    move-result v5

    move-object v0, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedUpdate(J[III)V

    goto :goto_0
.end method
