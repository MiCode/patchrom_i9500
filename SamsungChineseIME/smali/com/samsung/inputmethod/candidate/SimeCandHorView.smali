.class public Lcom/samsung/inputmethod/candidate/SimeCandHorView;
.super Landroid/view/View;
.source "SimeCandHorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;,
        Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final DEBUG:Z = false

.field private static MIN_ITEM_WIDTH:F = 0.0f

.field private static final SUSPENSION_POINTS:Ljava/lang/String; = "..."

.field private static final TAG:Ljava/lang/String; = "SimeCandHorView"


# instance fields
.field private mActiveCandInPage:I

.field private mActiveCandidateColor:I

.field private mActiveCellDrawable:Landroid/graphics/drawable/Drawable;

.field private mActiveCellRect:Landroid/graphics/RectF;

.field private mActiveFootNoteColor:I

.field private mArrowUpdater:Lcom/samsung/inputmethod/candidate/ArrowUpdater;

.field private mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

.field private mCandRects:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private mCandidateMargin:F

.field private mCandidateMarginExtra:F

.field private mCandidateSeperatorColor:I

.field private mCandidateSeperatorWidth:I

.field private mCandidateTextSize:I

.field private mCandidatesPaint:Landroid/graphics/Paint;

.field private mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

.field private mContentHeight:I

.field private mContentWidth:I

.field private mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

.field private mDimFootNoteColor:I

.field private mEnableActiveHighlight:Z

.field private mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

.field private mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

.field private mFootNoteSize:I

.field private mFootnoteHighlight:Z

.field private mFootnotePaint:Landroid/graphics/Paint;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHintPositionToInputView:[I

.field private mImeActiveCandidateColor:I

.field private mImeCandidateColor:I

.field private mImeCandidateTextSize:I

.field private mImeFloatingCandidateTextSize:I

.field private mLocationTmp:[I

.field private mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

.field private mNormalCandidateColor:I

.field private mPageNo:I

.field private mPageNoCalculated:I

.field private mPhonebookEntryDrawable:Landroid/graphics/drawable/Drawable;

.field private mPressCandidateColor:I

.field private mRecommendedCandidateColor:I

.field private mRecommendedCandidateTextSize:I

.field private mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mSeperatorPaint:Landroid/graphics/Paint;

.field private mShowFootnote:Z

.field private mSuspensionPointsWidth:F

.field private mTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;

.field private mUdbPhraseDrawable:Landroid/graphics/drawable/Drawable;

.field private mUpdateArrowStatusWhenDraw:Z

.field private volatile mWaitForTouchUp:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 291
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    iput-boolean v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mShowFootnote:Z

    .line 90
    iput-boolean v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnoteHighlight:Z

    .line 100
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mHintPositionToInputView:[I

    .line 123
    iput-boolean v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUpdateArrowStatusWhenDraw:Z

    .line 140
    iput-boolean v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mEnableActiveHighlight:Z

    .line 145
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNoCalculated:I

    .line 276
    iput-boolean v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    .line 278
    new-instance v2, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;

    .line 287
    new-array v2, v5, [I

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLocationTmp:[I

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 295
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 296
    .local v0, conf:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v4, :cond_0

    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v5, :cond_1

    .line 298
    :cond_0
    iput-boolean v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mShowFootnote:Z

    .line 301
    :cond_1
    const v2, 0x7f0202b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUdbPhraseDrawable:Landroid/graphics/drawable/Drawable;

    .line 303
    const v2, 0x7f02002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPhonebookEntryDrawable:Landroid/graphics/drawable/Drawable;

    .line 305
    const v2, 0x7f020029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellDrawable:Landroid/graphics/drawable/Drawable;

    .line 307
    const v2, 0x7f0202cc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 308
    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateMargin:F

    .line 312
    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateTextSize:I

    .line 313
    const v2, 0x7f0a001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootNoteSize:I

    .line 314
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeFloatingCandidateTextSize:I

    .line 318
    :cond_2
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateTextSize:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mRecommendedCandidateTextSize:I

    .line 319
    const v2, 0x7f080004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateColor:I

    .line 320
    const v2, 0x7f080008

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mRecommendedCandidateColor:I

    .line 321
    const v2, 0x7f080005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeActiveCandidateColor:I

    .line 322
    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPressCandidateColor:I

    .line 323
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateColor:I

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mNormalCandidateColor:I

    .line 324
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeActiveCandidateColor:I

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandidateColor:I

    .line 326
    const v2, 0x7f080019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateSeperatorColor:I

    .line 327
    const v2, 0x7f0a003f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateSeperatorWidth:I

    .line 330
    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mDimFootNoteColor:I

    .line 331
    const v2, 0x7f080009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveFootNoteColor:I

    .line 334
    const v2, 0x7f0a001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sput v2, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->MIN_ITEM_WIDTH:F

    .line 336
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    .line 337
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 339
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    .line 340
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 342
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveFootNoteColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootNoteSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 344
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellRect:Landroid/graphics/RectF;

    .line 346
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    .line 348
    new-instance v2, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-direct {v2, p0, p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandHorView;Lcom/samsung/inputmethod/candidate/SimeCandHorView;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    .line 350
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeperatorPaint:Landroid/graphics/Paint;

    .line 351
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeperatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 352
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeperatorPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateSeperatorColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 353
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeperatorPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateSeperatorWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 354
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    return v0
.end method

.method static synthetic access$102(Lcom/samsung/inputmethod/candidate/SimeCandHorView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)Lcom/samsung/inputmethod/candidate/SimeCandInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/candidate/SimeCandHorView;)Lcom/samsung/inputmethod/candidate/SimeCandViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    return-object v0
.end method

.method private calculatePage(I)Z
    .locals 17
    .parameter "pageNo"

    .prologue
    .line 598
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNoCalculated:I

    move/from16 v0, p1

    if-ne v0, v15, :cond_0

    const/4 v15, 0x1

    .line 673
    :goto_0
    return v15

    .line 600
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingLeft:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingRight:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    .line 601
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingTop:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingBottom:I

    move/from16 v16, v0

    sub-int v15, v15, v16

    move-object/from16 v0, p0

    iput v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentHeight:I

    .line 603
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    if-lez v15, :cond_1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentHeight:I

    if-gtz v15, :cond_2

    :cond_1
    const/4 v15, 0x0

    goto :goto_0

    .line 606
    :cond_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    .line 607
    .local v2, candSize:I
    if-gtz v2, :cond_3

    const/4 v15, 0x0

    goto :goto_0

    .line 611
    :cond_3
    const/4 v10, 0x0

    .line 613
    .local v10, onlyExtraMargin:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    add-int/lit8 v4, v15, -0x1

    .line 615
    .local v4, fromPage:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    add-int/lit8 v16, p1, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    .line 616
    const/4 v10, 0x1

    .line 617
    move/from16 v4, p1

    .line 621
    :cond_4
    move v11, v4

    .local v11, p:I
    :goto_1
    move/from16 v0, p1

    if-gt v11, v0, :cond_b

    .line 623
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 624
    .local v13, pStart:I
    const/4 v12, 0x0

    .line 625
    .local v12, pSize:I
    const/4 v3, 0x0

    .line 626
    .local v3, charNum:I
    const/4 v8, 0x0

    .line 629
    .local v8, lastItemWidth:F
    const/4 v14, 0x0

    .line 631
    .local v14, xPos:F
    :goto_2
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    int-to-float v15, v15

    cmpg-float v15, v14, v15

    if-gez v15, :cond_7

    add-int v15, v13, v12

    if-ge v15, v2, :cond_7

    .line 632
    add-int v5, v13, v12

    .line 634
    .local v5, itemPos:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15, v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v6

    .line 635
    .local v6, itemStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 636
    .local v7, itemWidth:F
    sget v15, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->MIN_ITEM_WIDTH:F

    cmpg-float v15, v7, v15

    if-gez v15, :cond_5

    sget v7, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->MIN_ITEM_WIDTH:F

    .line 638
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateMargin:F

    const/high16 v16, 0x4000

    mul-float v15, v15, v16

    add-float/2addr v7, v15

    .line 639
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateSeperatorWidth:I

    int-to-float v15, v15

    add-float/2addr v7, v15

    .line 640
    add-float v15, v14, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    cmpg-float v15, v15, v16

    if-lez v15, :cond_6

    if-nez v12, :cond_7

    .line 641
    :cond_6
    add-float/2addr v14, v7

    .line 642
    move v8, v7

    .line 643
    add-int/lit8 v12, v12, 0x1

    .line 644
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v3, v15

    .line 648
    goto :goto_2

    .line 649
    .end local v5           #itemPos:I
    .end local v6           #itemStr:Ljava/lang/String;
    .end local v7           #itemWidth:F
    :cond_7
    if-nez v10, :cond_8

    .line 652
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v15

    add-int v16, v13, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 653
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCnToPage()Ljava/util/Vector;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v15}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCnToPage()Ljava/util/Vector;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    add-int/2addr v15, v3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_8
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    int-to-float v15, v15

    sub-float/2addr v15, v14

    int-to-float v0, v12

    move/from16 v16, v0

    div-float v15, v15, v16

    const/high16 v16, 0x4000

    div-float v9, v15, v16

    .line 658
    .local v9, marginExtra:F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    int-to-float v15, v15

    sub-float/2addr v15, v14

    cmpl-float v15, v15, v8

    if-lez v15, :cond_a

    .line 664
    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateMarginExtra:F

    cmpg-float v15, v15, v9

    if-gtz v15, :cond_9

    .line 665
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateMarginExtra:F

    .line 670
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateMarginExtra:F

    .line 621
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    .line 667
    :cond_a
    const/4 v15, 0x1

    if-ne v12, v15, :cond_9

    .line 668
    const/4 v9, 0x0

    goto :goto_3

    .line 672
    .end local v3           #charNum:I
    .end local v8           #lastItemWidth:F
    .end local v9           #marginExtra:F
    .end local v12           #pSize:I
    .end local v13           #pStart:I
    .end local v14           #xPos:F
    :cond_b
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNoCalculated:I

    .line 673
    const/4 v15, 0x1

    goto/16 :goto_0
.end method

.method private drawVerticalSeparator(Landroid/graphics/Canvas;F)F
    .locals 6
    .parameter "canvas"
    .parameter "xPos"

    .prologue
    .line 864
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v1, p2

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingTop:I

    float-to-int v3, p2

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v4

    iget v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 867
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 868
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeparatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private drawVerticalSeparatorLine(Landroid/graphics/Canvas;F)F
    .locals 6
    .parameter "canvas"
    .parameter "xPos"

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3e80

    mul-float v2, v0, v1

    .line 873
    .local v2, startY:F
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f40

    mul-float v4, v0, v1

    .line 875
    .local v4, stopY:F
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSeperatorPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v1, p2

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 877
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateSeperatorWidth:I

    int-to-float v0, v0

    return v0
.end method

.method private getLimitedCandidateForDrawing(Ljava/lang/String;F)Ljava/lang/String;
    .locals 5
    .parameter "rawCandidate"
    .parameter "widthToDraw"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 851
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 852
    .local v0, subLen:I
    if-gt v0, v4, :cond_0

    .line 857
    .end local p1
    :goto_0
    return-object p1

    .line 854
    .restart local p1
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 855
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, p1, v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    .line 856
    .local v1, width:F
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSuspensionPointsWidth:F

    add-float/2addr v2, v1

    cmpg-float v2, v2, p2

    if-lez v2, :cond_1

    if-lt v4, v0, :cond_0

    .line 857
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

.method private mapToItemInPage(II)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v0, -0x1

    .line 884
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->pageReady(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNoCalculated:I

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 915
    :cond_0
    :goto_0
    return v0

    .line 891
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v5

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 892
    .local v3, pageStart:I
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v5

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v2, v5, v3

    .line 893
    .local v2, pageSize:I
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-lt v5, v2, :cond_0

    .line 898
    const/4 v1, -0x1

    .line 899
    .local v1, nearest:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 900
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/RectF;

    .line 901
    .local v4, r:Landroid/graphics/RectF;
    iget v5, v4, Landroid/graphics/RectF;->left:F

    int-to-float v6, p1

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    iget v5, v4, Landroid/graphics/RectF;->right:F

    int-to-float v6, p1

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    iget v5, v4, Landroid/graphics/RectF;->top:F

    int-to-float v6, p2

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v6, p2

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 899
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v4           #r:Landroid/graphics/RectF;
    :cond_3
    move v0, v1

    .line 915
    goto :goto_0
.end method

.method private onSizeChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 552
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    .line 553
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v1

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentHeight:I

    .line 569
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v1, :cond_0

    .line 570
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateTextSize:I

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateTextSize:I

    .line 571
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 572
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    .line 573
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSuspensionPointsWidth:F

    .line 580
    :goto_0
    const/4 v0, 0x1

    .line 581
    .local v0, textSize:I
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 582
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    .line 583
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentHeight:I

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    .line 584
    add-int/lit8 v0, v0, 0x1

    .line 585
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 586
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    goto :goto_1

    .line 577
    .end local v0           #textSize:I
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setCandidatesInfo(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V

    goto :goto_0

    .line 588
    .restart local v0       #textSize:I
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 589
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 590
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiFootnote:Landroid/graphics/Paint$FontMetricsInt;

    .line 593
    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    .line 594
    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 595
    return-void
.end method

.method private showBalloon(IZ)V
    .locals 17
    .parameter "candPos"
    .parameter "delayedShow"

    .prologue
    .line 1042
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->removeTimer()V

    .line 1044
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    move/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/graphics/RectF;

    .line 1045
    .local v16, r:Landroid/graphics/RectF;
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    float-to-int v6, v1

    .line 1046
    .local v6, desired_width:I
    move-object/from16 v0, v16

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, v16

    iget v2, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, v2

    float-to-int v7, v1

    .line 1051
    .local v7, desired_height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int v2, v2, p1

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x4230

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateColor:I

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonConfig(Ljava/lang/String;FZIII)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLocationTmp:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getLocationOnScreen([I)V

    .line 1055
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mHintPositionToInputView:[I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLocationTmp:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, v16

    iget v4, v0, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getWidth()I

    move-result v5

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-int v4, v4

    add-int/2addr v3, v4

    aput v3, v1, v2

    .line 1057
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mHintPositionToInputView:[I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getHeight()I

    move-result v3

    neg-int v3, v3

    aput v3, v1, v2

    .line 1059
    const-wide/16 v14, 0x0

    .line 1060
    .local v14, delay:J
    if-nez p2, :cond_0

    const-wide/16 v14, 0x0

    .line 1061
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->dismiss()V

    .line 1062
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1063
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mHintPositionToInputView:[I

    invoke-virtual {v1, v14, v15, v2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedShow(J[I)V

    .line 1067
    :goto_0
    return-void

    .line 1065
    :cond_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mHintPositionToInputView:[I

    const/4 v12, -0x1

    const/4 v13, -0x1

    invoke-virtual/range {v8 .. v13}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedUpdate(J[III)V

    goto :goto_0
.end method


# virtual methods
.method public activeCurseBackward()Z
    .locals 2

    .prologue
    .line 534
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    if-lez v0, :cond_0

    .line 536
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->showPage(II)V

    .line 537
    const/4 v0, 0x1

    .line 539
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public activeCursorForward()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 519
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->pageReady(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, v2

    .line 530
    :goto_0
    return v1

    .line 523
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v1

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v1

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sub-int v0, v3, v1

    .line 525
    .local v0, pageSize:I
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_2

    .line 527
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->showPage(II)V

    .line 528
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 530
    goto :goto_0
.end method

.method public getActiveCandiatePosGlobal()I
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->pageReady(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 446
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v0

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getActiveCandiatePosInPage()I
    .locals 1

    .prologue
    .line 439
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    return v0
.end method

.method public initialize(Lcom/samsung/inputmethod/candidate/ArrowUpdater;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Landroid/view/GestureDetector;Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V
    .locals 0
    .parameter "arrowUpdater"
    .parameter "balloonHint"
    .parameter "gestureDetector"
    .parameter "cvListener"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mArrowUpdater:Lcom/samsung/inputmethod/candidate/ArrowUpdater;

    .line 383
    iput-object p2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 384
    iput-object p3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 385
    iput-object p4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 386
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 30
    .parameter "canvas"

    .prologue
    .line 678
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandidatesListEmpty()Z

    move-result v24

    if-eqz v24, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->calculatePage(I)Z

    .line 692
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 697
    .local v18, pStart:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    move/from16 v24, v0

    add-int/lit8 v24, v24, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Vector;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Integer;

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    sub-int v17, v24, v18

    .line 701
    .local v17, pSize:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateMargin:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateMarginExtra:F

    move/from16 v25, v0

    add-float v6, v24, v25

    .line 702
    .local v6, candMargin:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    move/from16 v24, v0

    add-int/lit8 v25, v17, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_2

    .line 703
    add-int/lit8 v24, v17, -0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 706
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->removeAllElements()V

    .line 708
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingLeft:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v22, v0

    .line 709
    .local v22, xPos:F
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v25, v0

    sub-int v23, v24, v25

    .line 713
    .local v23, yPos:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move/from16 v0, v17

    if-ge v12, v0, :cond_15

    .line 714
    const/4 v10, 0x0

    .line 715
    .local v10, footnoteSize:F
    const/4 v9, 0x0

    .line 716
    .local v9, footnote:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mShowFootnote:Z

    move/from16 v24, v0

    if-eqz v24, :cond_3

    .line 717
    add-int/lit8 v24, v12, 0x1

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    .line 719
    sget-boolean v24, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->$assertionsDisabled:Z

    if-nez v24, :cond_3

    cmpg-float v24, v10, v6

    if-ltz v24, :cond_3

    new-instance v24, Ljava/lang/AssertionError;

    invoke-direct/range {v24 .. v24}, Ljava/lang/AssertionError;-><init>()V

    throw v24

    .line 722
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    add-int v25, v18, v12

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v5

    .line 723
    .local v5, cand:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 725
    .local v7, candidateWidth:F
    const/4 v8, 0x0

    .line 726
    .local v8, centerOffset:F
    sget v24, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->MIN_ITEM_WIDTH:F

    cmpg-float v24, v7, v24

    if-gez v24, :cond_4

    .line 727
    sget v24, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->MIN_ITEM_WIDTH:F

    sub-float v24, v24, v7

    const/high16 v25, 0x4000

    div-float v8, v24, v25

    .line 728
    sget v7, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->MIN_ITEM_WIDTH:F

    .line 731
    :cond_4
    const/high16 v24, 0x4000

    mul-float v24, v24, v6

    add-float v15, v7, v24

    .line 733
    .local v15, itemTotalWidth:F
    sget-boolean v24, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    if-eqz v24, :cond_7

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLinkToContacts()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    add-int v25, v18, v12

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDetailInfo(I)Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContentType()I

    move-result v24

    const/16 v25, 0xa

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_7

    .line 739
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingTop:I

    move/from16 v24, v0

    add-int/lit8 v20, v24, 0x1

    .line 740
    .local v20, top:I
    add-float v24, v22, v15

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 741
    .local v19, right:I
    float-to-int v0, v15

    move/from16 v21, v0

    .line 742
    .local v21, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getMeasuredHeight()I

    move-result v11

    .line 743
    .local v11, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPhonebookEntryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 744
    .local v14, iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPhonebookEntryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 746
    .local v13, iconHeight:I
    int-to-float v0, v14

    move/from16 v24, v0

    cmpl-float v24, v24, v6

    if-lez v24, :cond_5

    .line 747
    float-to-int v14, v6

    .line 748
    :cond_5
    if-le v13, v14, :cond_6

    .line 749
    move v13, v14

    .line 751
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPhonebookEntryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    sub-int v25, v19, v14

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v14

    move/from16 v26, v0

    sub-float v26, v6, v26

    const/high16 v27, 0x4000

    div-float v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int/lit8 v26, v20, 0x6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v14

    move/from16 v28, v0

    sub-float v28, v6, v28

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-int/lit8 v28, v20, 0x6

    add-int v28, v28, v13

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 754
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPhonebookEntryDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 760
    .end local v11           #height:I
    .end local v13           #iconHeight:I
    .end local v14           #iconWidth:I
    .end local v19           #right:I
    .end local v20           #top:I
    .end local v21           #width:I
    :cond_7
    sget-boolean v24, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DEL_UDB_FEATURE:Z

    if-eqz v24, :cond_a

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    add-int v25, v18, v12

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDetailInfo(I)Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->isContentTypeUDB()Z

    move-result v24

    if-eqz v24, :cond_a

    .line 764
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingTop:I

    move/from16 v24, v0

    add-int/lit8 v20, v24, 0x1

    .line 765
    .restart local v20       #top:I
    add-float v24, v22, v15

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v19, v0

    .line 766
    .restart local v19       #right:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUdbPhraseDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v14

    .line 767
    .restart local v14       #iconWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUdbPhraseDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v13

    .line 769
    .restart local v13       #iconHeight:I
    int-to-float v0, v14

    move/from16 v24, v0

    cmpl-float v24, v24, v6

    if-lez v24, :cond_8

    .line 770
    float-to-int v14, v6

    .line 771
    :cond_8
    if-le v13, v14, :cond_9

    .line 772
    move v13, v14

    .line 774
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUdbPhraseDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    sub-int v25, v19, v14

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v14

    move/from16 v26, v0

    sub-float v26, v6, v26

    const/high16 v27, 0x4000

    div-float v26, v26, v27

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int/lit8 v26, v20, 0x6

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v27, v0

    int-to-float v0, v14

    move/from16 v28, v0

    sub-float v28, v6, v28

    const/high16 v29, 0x4000

    div-float v28, v28, v29

    sub-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-int/lit8 v28, v20, 0x6

    add-int v28, v28, v13

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUdbPhraseDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 782
    .end local v13           #iconHeight:I
    .end local v14           #iconWidth:I
    .end local v19           #right:I
    .end local v20           #top:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v12, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mEnableActiveHighlight:Z

    move/from16 v24, v0

    if-eqz v24, :cond_b

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingTop:I

    move/from16 v25, v0

    add-int/lit8 v25, v25, 0x1

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v26, v22, v15

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getHeight()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPaddingBottom:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    add-int/lit8 v27, v27, -0x1

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, v24

    move/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 785
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v26, v0

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellRect:Landroid/graphics/RectF;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v28, v0

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCellDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 791
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/Vector;->size()I

    move-result v24

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    move-object/from16 v24, v0

    new-instance v25, Landroid/graphics/RectF;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/RectF;-><init>()V

    invoke-virtual/range {v24 .. v25}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 792
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandRects:Ljava/util/Vector;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/graphics/RectF;

    const/high16 v25, 0x3f80

    sub-float v25, v22, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v26, v0

    add-int v26, v26, v23

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    add-float v27, v22, v15

    const/high16 v28, 0x3f80

    add-float v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v28, v0

    add-int v28, v28, v23

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    invoke-virtual/range {v24 .. v28}, Landroid/graphics/RectF;->set(FFFF)V

    .line 796
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mShowFootnote:Z

    move/from16 v24, v0

    if-eqz v24, :cond_d

    .line 797
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnoteHighlight:Z

    move/from16 v24, v0

    if-eqz v24, :cond_11

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveFootNoteColor:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    .line 806
    :cond_d
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mShowFootnote:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    .line 807
    sub-float v24, v6, v10

    const/high16 v25, 0x4000

    div-float v24, v24, v25

    add-float v24, v24, v22

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v9, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 812
    :cond_e
    add-float v22, v22, v6

    .line 813
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v22

    sub-float v24, v24, v8

    cmpl-float v24, v7, v24

    if-lez v24, :cond_f

    .line 814
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mContentWidth:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sub-float v24, v24, v22

    sub-float v24, v24, v8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v5, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getLimitedCandidateForDrawing(Ljava/lang/String;F)Ljava/lang/String;

    move-result-object v5

    .line 818
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v12, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mEnableActiveHighlight:Z

    move/from16 v24, v0

    if-nez v24, :cond_12

    .line 819
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandidateColor:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    .line 826
    :goto_3
    add-float v24, v22, v8

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 830
    add-float v24, v7, v6

    add-float v22, v22, v24

    .line 834
    add-int/lit8 v24, v17, -0x1

    move/from16 v0, v24

    if-ne v12, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->pageForwardable(I)Z

    move-result v24

    if-eqz v24, :cond_14

    const/16 v16, 0x1

    .line 836
    .local v16, needNotSeparator:Z
    :goto_4
    if-nez v16, :cond_10

    .line 837
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->drawVerticalSeparatorLine(Landroid/graphics/Canvas;F)F

    move-result v24

    add-float v22, v22, v24

    .line 713
    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 800
    .end local v16           #needNotSeparator:Z
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnotePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mDimFootNoteColor:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 820
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ne v0, v12, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mEnableActiveHighlight:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPressCandidateColor:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 823
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mNormalCandidateColor:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_3

    .line 834
    :cond_14
    const/16 v16, 0x0

    goto :goto_4

    .line 843
    .end local v5           #cand:Ljava/lang/String;
    .end local v7           #candidateWidth:F
    .end local v8           #centerOffset:F
    .end local v9           #footnote:Ljava/lang/String;
    .end local v10           #footnoteSize:F
    .end local v15           #itemTotalWidth:F
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mArrowUpdater:Lcom/samsung/inputmethod/candidate/ArrowUpdater;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUpdateArrowStatusWhenDraw:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mArrowUpdater:Lcom/samsung/inputmethod/candidate/ArrowUpdater;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/samsung/inputmethod/candidate/ArrowUpdater;->updateArrowStatus()V

    .line 845
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUpdateArrowStatusWhenDraw:Z

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 367
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 378
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 923
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEventReal(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 928
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->pageReady(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNoCalculated:I

    iget v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    if-eq v3, v4, :cond_1

    .line 1038
    :cond_0
    :goto_0
    return v7

    .line 932
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 933
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 935
    .local v2, y:I
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 938
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 939
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    .line 941
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->removeTimer()Z

    .line 942
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 944
    iput-boolean v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    .line 945
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->removeTimer()Z

    goto :goto_0

    .line 949
    :cond_3
    const/4 v0, -0x1

    .line 951
    .local v0, clickedItemInPage:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1037
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    goto :goto_0

    .line 953
    :pswitch_0
    iget-boolean v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    if-eqz v3, :cond_4

    .line 954
    iput-boolean v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    .line 955
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->removeTimer()Z

    .line 960
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CAND_HIGHTLIGHT_ALWAYS:Z

    if-nez v3, :cond_5

    .line 961
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    .line 964
    :cond_5
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mapToItemInPage(II)I

    move-result v0

    .line 965
    if-eq v0, v5, :cond_6

    .line 966
    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 968
    :cond_6
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    if-ltz v3, :cond_7

    .line 969
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    .line 970
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    iget v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v3

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v3, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v3, v5

    invoke-interface {v4, v3}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onClickChoice(I)Z

    .line 974
    :cond_7
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mBalloonHint:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const-wide/16 v4, 0x96

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    goto :goto_1

    .line 980
    :pswitch_1
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mapToItemInPage(II)I

    move-result v0

    .line 981
    if-eq v0, v5, :cond_4

    .line 985
    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    .line 986
    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 988
    if-ltz v0, :cond_4

    .line 991
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->removeTimer()Z

    .line 992
    iput-boolean v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    .line 993
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->startTimer()V

    goto :goto_1

    .line 1005
    :pswitch_2
    iput-boolean v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    .line 1006
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->removeTimer()Z

    goto :goto_1

    .line 1011
    :pswitch_3
    iget-boolean v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    if-eqz v3, :cond_0

    .line 1012
    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mapToItemInPage(II)I

    move-result v0

    .line 1014
    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    .line 1016
    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    if-eq v0, v3, :cond_4

    if-eq v0, v5, :cond_4

    .line 1017
    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 1019
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->removeTimer()Z

    .line 1021
    iput-boolean v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mWaitForTouchUp:Z

    .line 1022
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->startTimer()V

    goto/16 :goto_1

    .line 951
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 394
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNoCalculated:I

    .line 395
    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    .line 396
    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 397
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 402
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CAND_HIGHTLIGHT_ALWAYS:Z

    if-eqz v0, :cond_0

    .line 403
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    .line 406
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mLongPressTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$LongPressTimer;->removeTimer()Z

    .line 407
    return-void

    .line 405
    :cond_0
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    goto :goto_0
.end method

.method public setActiveCurse(I)Z
    .locals 2
    .parameter "activeCandInPage"

    .prologue
    .line 543
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getCurrentPageSize(I)I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 544
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 545
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    .line 546
    const/4 v0, 0x1

    .line 548
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActiveHighlight(Z)Z
    .locals 2
    .parameter "isActiveHighlight"

    .prologue
    .line 476
    const/4 v0, 0x0

    .line 478
    .local v0, bRet:Z
    iget-boolean v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mEnableActiveHighlight:Z

    if-eq p1, v1, :cond_0

    .line 479
    iput-boolean p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mEnableActiveHighlight:Z

    .line 483
    const/4 v0, 0x1

    .line 486
    :cond_0
    return v0
.end method

.method public setCandidateViewListener(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V
    .locals 0
    .parameter "cvListener"

    .prologue
    .line 390
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 391
    return-void
.end method

.method public setCandidatesInfo(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V
    .locals 2
    .parameter "candsInfo"

    .prologue
    .line 410
    if-nez p1, :cond_0

    .line 436
    :goto_0
    return-void

    .line 411
    :cond_0
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 412
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNoCalculated:I

    .line 414
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->candidatesFromApp()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 415
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mRecommendedCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mNormalCandidateColor:I

    .line 416
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mRecommendedCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandidateColor:I

    .line 417
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mRecommendedCandidateTextSize:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateTextSize:I

    .line 427
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateTextSize:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 429
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFmiCandidates:Landroid/graphics/Paint$FontMetricsInt;

    .line 430
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidatesPaint:Landroid/graphics/Paint;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mSuspensionPointsWidth:F

    .line 435
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mTimer:Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView$PressTimer;->removeTimer()Z

    goto :goto_0

    .line 418
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mNormalCandidateColor:I

    .line 420
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeActiveCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandidateColor:I

    .line 421
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeFloatingCandidateTextSize:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateTextSize:I

    goto :goto_1

    .line 423
    :cond_3
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mNormalCandidateColor:I

    .line 424
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeActiveCandidateColor:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandidateColor:I

    .line 425
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mImeCandidateTextSize:I

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandidateTextSize:I

    goto :goto_1
.end method

.method public setFootNoteDisplay(Z)Z
    .locals 2
    .parameter "isShowFootNote"

    .prologue
    .line 491
    const/4 v0, 0x0

    .line 493
    .local v0, bRet:Z
    iget-boolean v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mShowFootnote:Z

    if-eq p1, v1, :cond_0

    .line 494
    iput-boolean p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mShowFootnote:Z

    .line 495
    const/4 v0, 0x1

    .line 497
    :cond_0
    return v0
.end method

.method public setFootNoteHighlight(Z)Z
    .locals 2
    .parameter "isHighlightFootNote"

    .prologue
    .line 507
    const/4 v0, 0x0

    .line 509
    .local v0, bRet:Z
    iget-boolean v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnoteHighlight:Z

    if-eq p1, v1, :cond_0

    .line 510
    iput-boolean p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mFootnoteHighlight:Z

    .line 511
    const/4 v0, 0x1

    .line 513
    :cond_0
    return v0
.end method

.method public showPage(II)V
    .locals 1
    .parameter "pageNo"
    .parameter "activeCandInPage"

    .prologue
    .line 461
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v0, :cond_0

    .line 472
    :goto_0
    return-void

    .line 462
    :cond_0
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    .line 463
    iput p2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mActiveCandInPage:I

    .line 465
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mPageNo:I

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->calculatePage(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUpdateArrowStatusWhenDraw:Z

    .line 471
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    goto :goto_0

    .line 468
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->mUpdateArrowStatusWhenDraw:Z

    goto :goto_1
.end method
