.class public Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
.super Landroid/widget/RelativeLayout;
.source "SimeCandHorContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/samsung/inputmethod/candidate/ArrowUpdater;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$1;,
        Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;
    }
.end annotation


# static fields
.field private static ANIMATION_TIME:I = 0x0

.field private static ARROW_ALPHA_DISABLED:I = 0x0

.field private static ARROW_ALPHA_ENABLED:I = 0x0

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CandidatesContainer"


# instance fields
.field private mCandDirectionGestureHandle:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;

.field private mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

.field private mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

.field private mCurrentArrowShowType:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

.field private mCurrentPage:I

.field private mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

.field private mDownArrowBtn:Landroid/widget/ImageButton;

.field private mFlipper:Landroid/widget/ViewFlipper;

.field private mGestureDetectorCandidates:Landroid/view/GestureDetector;

.field private mGestureListenerCandidates:Lcom/samsung/inputmethod/comm/SimeGestureListener;

.field private mInAnimInUse:Landroid/view/animation/Animation;

.field private mInAnimPushDown:Landroid/view/animation/Animation;

.field private mInAnimPushLeft:Landroid/view/animation/Animation;

.field private mInAnimPushRight:Landroid/view/animation/Animation;

.field private mInAnimPushUp:Landroid/view/animation/Animation;

.field private mLeftArrowBtn:Landroid/widget/ImageButton;

.field private mOutAnimInUse:Landroid/view/animation/Animation;

.field private mOutAnimPushDown:Landroid/view/animation/Animation;

.field private mOutAnimPushLeft:Landroid/view/animation/Animation;

.field private mOutAnimPushRight:Landroid/view/animation/Animation;

.field private mOutAnimPushUp:Landroid/view/animation/Animation;

.field private mRightArrowBtn:Landroid/widget/ImageButton;

.field private mUpArrowBtn:Landroid/widget/ImageButton;

.field private xOffsetForFlipper:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0xff

    sput v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ARROW_ALPHA_ENABLED:I

    .line 90
    const/16 v0, 0x40

    sput v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ARROW_ALPHA_DISABLED:I

    .line 95
    const/16 v0, 0xc8

    sput v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 223
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 208
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    .line 227
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeGestureListener;

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->SimeCandHorContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    invoke-direct {v0, p1, v1, v2}, Lcom/samsung/inputmethod/comm/SimeGestureListener;-><init>(Landroid/content/Context;ZLcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mGestureListenerCandidates:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    .line 231
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$1;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandDirectionGestureHandle:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;

    .line 232
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mGestureListenerCandidates:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandDirectionGestureHandle:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer$CandDirectionGesture;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/comm/SimeGestureListener;->setDirectionGestureHandle(Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;)V

    .line 233
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mGestureListenerCandidates:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mGestureDetectorCandidates:Landroid/view/GestureDetector;

    .line 236
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)Lcom/samsung/inputmethod/candidate/SimeCandManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)Lcom/samsung/inputmethod/candidate/SimeCandViewListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    return-object v0
.end method

.method private createAnimation(FFFFFFJ)Landroid/view/animation/Animation;
    .locals 13
    .parameter "xFrom"
    .parameter "xTo"
    .parameter "yFrom"
    .parameter "yTo"
    .parameter "alphaFrom"
    .parameter "alphaTo"
    .parameter "duration"

    .prologue
    .line 780
    new-instance v12, Landroid/view/animation/AnimationSet;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v12, v3, v4}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 781
    .local v12, animSet:Landroid/view/animation/AnimationSet;
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x1

    move v4, p1

    move v6, p2

    move/from16 v8, p3

    move/from16 v10, p4

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 785
    .local v2, trans:Landroid/view/animation/Animation;
    new-instance v11, Landroid/view/animation/AlphaAnimation;

    move/from16 v0, p5

    move/from16 v1, p6

    invoke-direct {v11, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 786
    .local v11, alpha:Landroid/view/animation/Animation;
    invoke-virtual {v12, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 787
    invoke-virtual {v12, v11}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 788
    move-wide/from16 v0, p7

    invoke-virtual {v12, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 789
    return-object v12
.end method

.method private enableArrow(Landroid/widget/ImageButton;Z)V
    .locals 1
    .parameter "arrowBtn"
    .parameter "enabled"

    .prologue
    .line 677
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 678
    if-eqz p2, :cond_0

    .line 679
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 689
    :goto_0
    return-void

    .line 682
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private showArrow(Landroid/widget/ImageButton;Z)V
    .locals 1
    .parameter "arrowBtn"
    .parameter "show"

    .prologue
    .line 692
    if-eqz p2, :cond_0

    .line 693
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 696
    :goto_0
    return-void

    .line 695
    :cond_0
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private startAnimation()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->showNext()V

    .line 794
    return-void
.end method

.method private stopAnimation()V
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 798
    return-void
.end method


# virtual methods
.method public activeCurseBackward()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 493
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v2, :cond_1

    .line 494
    :cond_0
    const/4 v1, 0x0

    .line 504
    :goto_0
    return v1

    .line 497
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 499
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->activeCurseBackward()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 500
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    goto :goto_0

    .line 504
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageBackward(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public activeCurseForward()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 509
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v2, :cond_1

    .line 510
    :cond_0
    const/4 v1, 0x0

    .line 520
    :goto_0
    return v1

    .line 513
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 515
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->activeCursorForward()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 516
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->invalidate()V

    goto :goto_0

    .line 520
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageForward(Z)Z

    move-result v1

    goto :goto_0
.end method

.method public enableActiveHighlight(Z)V
    .locals 2
    .parameter "isActiveHighlight"

    .prologue
    .line 402
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 405
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->invalidate()V

    .line 409
    :cond_0
    return-void
.end method

.method public enableFootNoteDisplay(ZZ)V
    .locals 0
    .parameter "isFootNoteDisplay"
    .parameter "bDrawDirectly"

    .prologue
    .line 416
    return-void
.end method

.method public enableFootNoteHighlight(ZZ)V
    .locals 5
    .parameter "isHighlightColor"
    .parameter "bDrawDirectly"

    .prologue
    .line 437
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 438
    .local v2, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setFootNoteHighlight(Z)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->invalidate()V

    .line 442
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v0

    .line 443
    .local v0, child:I
    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v1, v4, 0x2

    .line 444
    .local v1, childNext:I
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 445
    .local v3, cvNext:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setFootNoteHighlight(Z)Z

    .line 451
    return-void
.end method

.method public getActiveCandiatePos()I
    .locals 2

    .prologue
    .line 637
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v1, :cond_0

    const/4 v1, -0x1

    .line 639
    :goto_0
    return v1

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 639
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getActiveCandiatePosGlobal()I

    move-result v1

    goto :goto_0
.end method

.method public getArrowShowType()Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;
    .locals 1

    .prologue
    .line 455
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentArrowShowType:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    return-object v0
.end method

.method public getArrowWidth()F
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    return v0
.end method

.method public initialize(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 4
    .parameter "cvListener"
    .parameter "balloonHint"
    .parameter "candMgr"

    .prologue
    .line 240
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 241
    iput-object p3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    .line 243
    const v2, 0x7f0c0001

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    .line 244
    const v2, 0x7f0c0005

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    .line 245
    const v2, 0x7f0c0004

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    .line 246
    const v2, 0x7f0c0003

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    .line 248
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 249
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 250
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 251
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    const v2, 0x7f0c0006

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    .line 254
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ViewFlipper;->setMeasureAllChildren(Z)V

    .line 256
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->invalidate()V

    .line 257
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->requestLayout()V

    .line 259
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 261
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mGestureDetectorCandidates:Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    invoke-virtual {v0, p0, p2, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->initialize(Lcom/samsung/inputmethod/candidate/ArrowUpdater;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Landroid/view/GestureDetector;Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 263
    .end local v0           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    :cond_0
    return-void
.end method

.method public isFirstPage()Z
    .locals 2

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 526
    .local v0, bRet:Z
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    if-nez v1, :cond_0

    .line 527
    const/4 v0, 0x1

    .line 529
    :cond_0
    return v0
.end method

.method public loadAnimation(ZZ)V
    .locals 13
    .parameter "animLeftRight"
    .parameter "forward"

    .prologue
    const/high16 v12, -0x4080

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    .line 730
    if-eqz p1, :cond_3

    .line 731
    if-eqz p2, :cond_1

    .line 732
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushLeft:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 733
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v7, v0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move v5, v2

    move v6, v1

    invoke-direct/range {v0 .. v8}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushLeft:Landroid/view/animation/Animation;

    .line 735
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v12

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v2

    invoke-direct/range {v3 .. v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushLeft:Landroid/view/animation/Animation;

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushLeft:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    .line 739
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushLeft:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    .line 772
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    invoke-virtual {v0, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 774
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 775
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 776
    return-void

    .line 741
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushRight:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 742
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v12

    move v5, v2

    move v6, v2

    move v7, v2

    move v8, v2

    move v9, v1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushRight:Landroid/view/animation/Animation;

    .line 744
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v2

    move v8, v1

    move v9, v2

    invoke-direct/range {v3 .. v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushRight:Landroid/view/animation/Animation;

    .line 747
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushRight:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    .line 748
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushRight:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    goto :goto_0

    .line 751
    :cond_3
    if-eqz p2, :cond_5

    .line 752
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushUp:Landroid/view/animation/Animation;

    if-nez v0, :cond_4

    .line 753
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v1

    move v7, v2

    move v8, v2

    move v9, v1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushUp:Landroid/view/animation/Animation;

    .line 755
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v12

    move v8, v1

    move v9, v2

    invoke-direct/range {v3 .. v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushUp:Landroid/view/animation/Animation;

    .line 758
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushUp:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    .line 759
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushUp:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    goto :goto_0

    .line 761
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushDown:Landroid/view/animation/Animation;

    if-nez v0, :cond_6

    .line 762
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v12

    move v7, v2

    move v8, v2

    move v9, v1

    invoke-direct/range {v3 .. v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushDown:Landroid/view/animation/Animation;

    .line 764
    sget v0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->ANIMATION_TIME:I

    int-to-long v10, v0

    move-object v3, p0

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v1

    move v8, v1

    move v9, v2

    invoke-direct/range {v3 .. v11}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->createAnimation(FFFFFFJ)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushDown:Landroid/view/animation/Animation;

    .line 767
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimPushDown:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mInAnimInUse:Landroid/view/animation/Animation;

    .line 768
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimPushDown:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mOutAnimInUse:Landroid/view/animation/Animation;

    goto/16 :goto_0
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 807
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 810
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 813
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 465
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 466
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    .line 467
    .local v2, measuredWidth:I
    const/4 v1, 0x0

    .line 468
    .local v1, measuredHeight:I
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v3

    add-int/2addr v1, v3

    .line 473
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_2

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isImeInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 475
    int-to-float v3, v2

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v2, v3

    .line 481
    :cond_0
    :goto_0
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 483
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 485
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 487
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    if-eqz v3, :cond_1

    .line 488
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->xOffsetForFlipper:I

    .line 490
    :cond_1
    return-void

    .line 476
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isImeInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v2

    .line 479
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCandHeight()I

    move-result v1

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, isCandChange:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 701
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 702
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    invoke-interface {v1}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onToRightGesture()Z

    .line 715
    :cond_0
    :goto_0
    return v3

    .line 703
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 704
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    invoke-interface {v1}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onToLeftGesture()Z

    goto :goto_0

    .line 706
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 707
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 708
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getIsCandChange()Z

    move-result v0

    .line 709
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    invoke-interface {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onToBottomGesture(Z)Z

    goto :goto_0

    .line 710
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 711
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setIsCandChange(Z)V

    .line 712
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    invoke-interface {v1}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onToTopGesture()Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 723
    iget v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->xOffsetForFlipper:I

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 724
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 725
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->onTouchEventReal(Landroid/view/MotionEvent;)Z

    .line 726
    const/4 v1, 0x1

    return v1
.end method

.method public pageBackward(Z)Z
    .locals 9
    .parameter "animLeftRight"

    .prologue
    .line 534
    const/4 v1, 0x1

    .line 536
    .local v1, bRet:Z
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v6, :cond_1

    .line 537
    const/4 v1, 0x0

    .line 576
    :cond_0
    :goto_0
    return v1

    .line 538
    :cond_1
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    if-gtz v6, :cond_3

    .line 539
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 541
    :cond_3
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    .line 542
    .local v2, child:I
    add-int/lit8 v6, v2, 0x1

    rem-int/lit8 v3, v6, 0x2

    .line 543
    .local v3, childNext:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 544
    .local v4, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 547
    .local v5, cvNext:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    .line 548
    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getActiveCandiatePosInPage()I

    move-result v0

    .line 549
    .local v0, activeCandInPage:I
    if-eqz p1, :cond_5

    .line 554
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v6

    if-lez v6, :cond_4

    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lt v6, v7, :cond_6

    .line 556
    :cond_4
    const/4 v1, 0x0

    .line 567
    :cond_5
    :goto_1
    if-eqz v1, :cond_0

    .line 568
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    invoke-virtual {v5, v6, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->showPage(II)V

    .line 569
    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->loadAnimation(ZZ)V

    .line 570
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->startAnimation()V

    .line 572
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->updateArrowStatus()V

    goto :goto_0

    .line 561
    :cond_6
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v6

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getPageStart()Ljava/util/Vector;

    move-result-object v6

    iget v8, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    invoke-virtual {v6, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v7, v6

    add-int/lit8 v0, v6, -0x1

    goto :goto_1
.end method

.method public pageForward(Z)Z
    .locals 8
    .parameter "animLeftRight"

    .prologue
    .line 581
    const/4 v1, 0x1

    .line 584
    .local v1, bRet:Z
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    if-nez v6, :cond_1

    .line 585
    const/4 v1, 0x0

    .line 633
    :cond_0
    :goto_0
    return v1

    .line 586
    :cond_1
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->isFlipping()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 587
    const/4 v1, 0x0

    goto :goto_0

    .line 595
    :cond_2
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandFetchOver()Z

    move-result v6

    if-nez v6, :cond_5

    .line 596
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->preparePageCands()Z

    move-result v6

    if-nez v6, :cond_3

    .line 598
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->preparePage(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 599
    const/4 v1, 0x0

    .line 612
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 613
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6}, Landroid/widget/ViewFlipper;->getDisplayedChild()I

    move-result v2

    .line 614
    .local v2, child:I
    add-int/lit8 v6, v2, 0x1

    rem-int/lit8 v3, v6, 0x2

    .line 615
    .local v3, childNext:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v2}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 616
    .local v4, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->getActiveCandiatePosInPage()I

    move-result v0

    .line 620
    .local v0, activeCandInPage:I
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v6, v3}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 621
    .local v5, cvNext:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    .line 622
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    .line 624
    :cond_4
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    invoke-virtual {v5, v6, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->showPage(II)V

    .line 625
    const/4 v6, 0x1

    invoke-virtual {p0, p1, v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->loadAnimation(ZZ)V

    .line 626
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->startAnimation()V

    .line 628
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->updateArrowStatus()V

    goto :goto_0

    .line 605
    .end local v0           #activeCandInPage:I
    .end local v2           #child:I
    .end local v3           #childNext:I
    .end local v4           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    .end local v5           #cvNext:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    :cond_5
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->preparePage(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 606
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 668
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    .line 669
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 670
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 671
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->reset()V

    .line 669
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 674
    .end local v0           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    :cond_0
    return-void
.end method

.method public setActiveCand(I)Z
    .locals 2
    .parameter "activeCandIndex"

    .prologue
    .line 278
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 279
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveCurse(I)Z

    move-result v1

    return v1
.end method

.method public setCandidateViewListener(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V
    .locals 3
    .parameter "cvListener"

    .prologue
    .line 267
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 268
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 269
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 270
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setCandidateViewListener(Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v0           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    :cond_0
    return-void
.end method

.method public showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V
    .locals 6
    .parameter "candsInfo"
    .parameter "arrowType"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    .line 287
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 288
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    const v3, 0x7f020005

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 289
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    const v3, 0x7f020009

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 296
    :goto_0
    if-eqz p1, :cond_7

    .line 297
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 298
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    .line 299
    iput-object p2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentArrowShowType:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    .line 300
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandidatesListEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 301
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 302
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 303
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 304
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 324
    :cond_0
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 325
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 326
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setCandidatesInfo(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V

    .line 324
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 292
    .end local v0           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 293
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    const v3, 0x7f020008

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 306
    :cond_2
    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-ne p2, v2, :cond_3

    .line 307
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 308
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 309
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 310
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_1

    .line 311
    :cond_3
    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->Down:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-eq p2, v2, :cond_4

    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-ne p2, v2, :cond_5

    .line 312
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 313
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 314
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 315
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_1

    .line 316
    :cond_5
    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-ne p2, v2, :cond_0

    .line 317
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 318
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 319
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 320
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 328
    .restart local v1       #i:I
    :cond_6
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->stopAnimation()V

    .line 330
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 331
    .restart local v0       #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDefaultActiveIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->showPage(II)V

    .line 333
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->updateArrowStatus()V

    .line 334
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->invalidate()V

    .line 336
    .end local v0           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    .end local v1           #i:I
    :cond_7
    return-void
.end method

.method public showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;Z)V
    .locals 6
    .parameter "candsInfo"
    .parameter "arrowType"
    .parameter "isActiveHighlight"

    .prologue
    const/4 v5, 0x1

    const/16 v4, 0x8

    .line 342
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXXhSw360dpiScreen()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 343
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    const v3, 0x7f020005

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 344
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    const v3, 0x7f020009

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 350
    :goto_0
    if-eqz p1, :cond_7

    .line 351
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 352
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    .line 353
    iput-object p2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentArrowShowType:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    .line 355
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->isCandidatesListEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 356
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 357
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 358
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 359
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 379
    :cond_0
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 380
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 381
    .local v0, cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setCandidatesInfo(Lcom/samsung/inputmethod/candidate/SimeCandInfo;)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 347
    .end local v0           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    .end local v1           #i:I
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    const v3, 0x7f020004

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 348
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    const v3, 0x7f020008

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 361
    :cond_2
    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-ne p2, v2, :cond_3

    .line 362
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 363
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 364
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 365
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_1

    .line 366
    :cond_3
    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->Down:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-eq p2, v2, :cond_4

    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-ne p2, v2, :cond_5

    .line 367
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 368
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 369
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 370
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_1

    .line 371
    :cond_5
    sget-object v2, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-ne p2, v2, :cond_0

    .line 372
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mUpArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 373
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mDownArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 374
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 375
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 383
    .restart local v1       #i:I
    :cond_6
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->stopAnimation()V

    .line 385
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2}, Landroid/widget/ViewFlipper;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandHorView;

    .line 387
    .restart local v0       #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    invoke-virtual {v0, p3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->setActiveHighlight(Z)Z

    .line 390
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDefaultActiveIndex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorView;->showPage(II)V

    .line 392
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->updateArrowStatus()V

    .line 393
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->invalidate()V

    .line 395
    .end local v0           #cv:Lcom/samsung/inputmethod/candidate/SimeCandHorView;
    .end local v1           #i:I
    :cond_7
    return-void
.end method

.method public updateArrowStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 645
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CANDIDATE_INDICATOR_SHOW:Z

    if-nez v2, :cond_1

    .line 664
    :cond_0
    :goto_0
    return-void

    .line 647
    :cond_1
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    if-ltz v2, :cond_0

    .line 648
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->pageForwardable(I)Z

    move-result v1

    .line 649
    .local v1, forwardEnabled:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCandsInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    iget v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentPage:I

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->pageBackwardable(I)Z

    move-result v0

    .line 651
    .local v0, backwardEnabled:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentArrowShowType:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    sget-object v3, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRight:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mCurrentArrowShowType:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    sget-object v3, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    if-ne v2, v3, :cond_0

    .line 653
    :cond_2
    if-eqz v0, :cond_3

    .line 654
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableArrow(Landroid/widget/ImageButton;Z)V

    .line 658
    :goto_1
    if-eqz v1, :cond_4

    .line 659
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_0

    .line 656
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mLeftArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_1

    .line 661
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->mRightArrowBtn:Landroid/widget/ImageButton;

    invoke-direct {p0, v2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->enableArrow(Landroid/widget/ImageButton;Z)V

    goto :goto_0
.end method
