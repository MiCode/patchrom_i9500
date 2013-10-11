.class public abstract Landroid/widget/AbsSeekBar;
.super Landroid/widget/ProgressBar;
.source "AbsSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/AbsSeekBar$QuintEaseOut;
    }
.end annotation


# static fields
.field private static final NO_ALPHA:I = 0xff

.field private static final SLIDING_DURATION:I = 0x190

.field private static final SLIDING_FOR_MUTE_DURATION:I = 0x64


# instance fields
.field private TAG:Ljava/lang/String;

.field private animationAllowdedMax:I

.field private animationTargetLevel:I

.field private currentDrawbleResource:I

.field private currentProgressLevel:I

.field private isAnimationAllowdedMax:Z

.field private isDraggingForSliding:Z

.field private isFirstSetProgress:Z

.field private isMuteNow:Z

.field private isThumbChanged:Z

.field private mDisabledAlpha:F

.field private mHoveringLevel:I

.field private mIsDragging:Z

.field mIsUserSeekable:Z

.field private mKeyProgressIncrement:I

.field private mMuteAnimation:Z

.field private mScaledTouchSlop:I

.field private mSlidingAnimation:Z

.field protected mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbOffset:I

.field private mTouchDownX:F

.field mTouchProgressOffset:F

.field private misCurrentThumbInit:Z

.field private misSeebarAnimationAvailable:Z

.field private mthumbDrawableDefault:Landroid/graphics/drawable/Drawable;

.field private mthumbDrawableForInit:Landroid/graphics/drawable/Drawable;

.field private muteAnimationSet:Landroid/animation/AnimatorSet;

.field private muteVibrateDistanceLevel:I

.field private muteVibrateDuration:I

.field private muteVibrateTotal:I

.field private slidingAnimation:Landroid/animation/ValueAnimator;

.field private thumbScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 63
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 69
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 78
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationAllowdedMax:I

    .line 90
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 91
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->isFirstSetProgress:Z

    .line 92
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Z

    .line 93
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mMuteAnimation:Z

    .line 94
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->isAnimationAllowdedMax:Z

    .line 98
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/widget/AbsSeekBar;->muteVibrateDuration:I

    .line 99
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsSeekBar;->muteVibrateTotal:I

    .line 100
    const/16 v0, 0x190

    iput v0, p0, Landroid/widget/AbsSeekBar;->muteVibrateDistanceLevel:I

    .line 103
    const-string v0, "AbsSeekBar"

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    .line 104
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mthumbDrawableForInit:Landroid/graphics/drawable/Drawable;

    .line 105
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mthumbDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 106
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->misCurrentThumbInit:Z

    .line 107
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->misSeebarAnimationAvailable:Z

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 69
    iput v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 78
    iput v1, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 89
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/AbsSeekBar;->animationAllowdedMax:I

    .line 90
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 91
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->isFirstSetProgress:Z

    .line 92
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Z

    .line 93
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->mMuteAnimation:Z

    .line 94
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->isAnimationAllowdedMax:Z

    .line 98
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/widget/AbsSeekBar;->muteVibrateDuration:I

    .line 99
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/AbsSeekBar;->muteVibrateTotal:I

    .line 100
    const/16 v0, 0x190

    iput v0, p0, Landroid/widget/AbsSeekBar;->muteVibrateDistanceLevel:I

    .line 103
    const-string v0, "AbsSeekBar"

    iput-object v0, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    .line 104
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mthumbDrawableForInit:Landroid/graphics/drawable/Drawable;

    .line 105
    iput-object v3, p0, Landroid/widget/AbsSeekBar;->mthumbDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 106
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->misCurrentThumbInit:Z

    .line 107
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->misSeebarAnimationAvailable:Z

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    .line 69
    iput v5, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 78
    iput v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 89
    iput v6, p0, Landroid/widget/AbsSeekBar;->animationAllowdedMax:I

    .line 90
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 91
    iput-boolean v5, p0, Landroid/widget/AbsSeekBar;->isFirstSetProgress:Z

    .line 92
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Z

    .line 93
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->mMuteAnimation:Z

    .line 94
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->isAnimationAllowdedMax:Z

    .line 98
    const/16 v3, 0x1f4

    iput v3, p0, Landroid/widget/AbsSeekBar;->muteVibrateDuration:I

    .line 99
    const/4 v3, 0x4

    iput v3, p0, Landroid/widget/AbsSeekBar;->muteVibrateTotal:I

    .line 100
    const/16 v3, 0x190

    iput v3, p0, Landroid/widget/AbsSeekBar;->muteVibrateDistanceLevel:I

    .line 103
    const-string v3, "AbsSeekBar"

    iput-object v3, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    .line 104
    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mthumbDrawableForInit:Landroid/graphics/drawable/Drawable;

    .line 105
    iput-object v7, p0, Landroid/widget/AbsSeekBar;->mthumbDrawableDefault:Landroid/graphics/drawable/Drawable;

    .line 106
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->misCurrentThumbInit:Z

    .line 107
    iput-boolean v4, p0, Landroid/widget/AbsSeekBar;->misSeebarAnimationAvailable:Z

    .line 120
    sget-object v3, Lcom/android/internal/R$styleable;->SeekBar:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 139
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 153
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 156
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbOffset()I

    move-result v3

    invoke-virtual {v0, v5, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 158
    .local v2, thumbOffset:I
    invoke-virtual {p0, v2}, Landroid/widget/AbsSeekBar;->setThumbOffset(I)V

    .line 159
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 161
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, p2, v3, v4, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 163
    const/high16 v3, 0x3f00

    invoke-virtual {v0, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    .line 164
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 166
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    .line 167
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->initMuteAnimation()V

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/AbsSeekBar;->misSeebarAnimationAvailable:Z

    .line 170
    iget-object v3, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AbsSeekBar Constructor: misSeebarAnimationAvailable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/widget/AbsSeekBar;->misSeebarAnimationAvailable:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method static synthetic access$000(Landroid/widget/AbsSeekBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Landroid/widget/AbsSeekBar;->currentProgressLevel:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/AbsSeekBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    iput p1, p0, Landroid/widget/AbsSeekBar;->currentProgressLevel:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/AbsSeekBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->isMuteNow:Z

    return v0
.end method

.method private attemptClaimDrag()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 662
    :cond_0
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 781
    :cond_0
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->muteAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->muteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->muteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 782
    :cond_1
    return-void
.end method

.method private initMuteAnimation()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 790
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Landroid/widget/AbsSeekBar;->muteAnimationSet:Landroid/animation/AnimatorSet;

    .line 792
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 793
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/animation/Animator;>;"
    iget v9, p0, Landroid/widget/AbsSeekBar;->muteVibrateTotal:I

    mul-int/lit8 v6, v9, 0x2

    .line 794
    .local v6, total:I
    iget v9, p0, Landroid/widget/AbsSeekBar;->muteVibrateDuration:I

    div-int v1, v9, v6

    .line 795
    .local v1, duration:I
    iget v0, p0, Landroid/widget/AbsSeekBar;->muteVibrateDistanceLevel:I

    .line 796
    .local v0, distance:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_3

    .line 797
    rem-int/lit8 v9, v2, 0x2

    if-nez v9, :cond_1

    move v3, v7

    .line 798
    .local v3, isGoingDirection:Z
    :goto_1
    if-eqz v3, :cond_2

    new-array v9, v13, [I

    aput v8, v9, v8

    aput v0, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 799
    .local v5, progressZeroAnimation:Landroid/animation/ValueAnimator;
    :goto_2
    int-to-long v9, v1

    invoke-virtual {v5, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 800
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 801
    new-instance v9, Landroid/widget/AbsSeekBar$2;

    invoke-direct {v9, p0}, Landroid/widget/AbsSeekBar$2;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 807
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 808
    if-eqz v3, :cond_0

    int-to-double v9, v0

    const-wide v11, 0x3fe3333333333333L

    mul-double/2addr v9, v11

    double-to-int v0, v9

    .line 796
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v3           #isGoingDirection:Z
    .end local v5           #progressZeroAnimation:Landroid/animation/ValueAnimator;
    :cond_1
    move v3, v8

    .line 797
    goto :goto_1

    .line 798
    .restart local v3       #isGoingDirection:Z
    :cond_2
    new-array v9, v13, [I

    aput v0, v9, v8

    aput v8, v9, v7

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    goto :goto_2

    .line 810
    .end local v3           #isGoingDirection:Z
    :cond_3
    iget-object v7, p0, Landroid/widget/AbsSeekBar;->muteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 811
    return-void
.end method

.method private setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 10
    .parameter "w"
    .parameter "thumb"
    .parameter "scale"
    .parameter "gap"

    .prologue
    .line 469
    iget v8, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v8, p1, v8

    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v8, v9

    .line 470
    .local v0, available:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 471
    .local v6, thumbWidth:I
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 472
    .local v4, thumbHeight:I
    sub-int/2addr v0, v6

    .line 475
    iget v8, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v0, v8

    .line 477
    int-to-float v8, v0

    mul-float/2addr v8, p3

    float-to-int v5, v8

    .line 480
    .local v5, thumbPos:I
    const/high16 v8, -0x8000

    if-ne p4, v8, :cond_0

    .line 481
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 482
    .local v3, oldBounds:Landroid/graphics/Rect;
    iget v7, v3, Landroid/graphics/Rect;->top:I

    .line 483
    .local v7, topBound:I
    iget v1, v3, Landroid/graphics/Rect;->bottom:I

    .line 490
    .end local v3           #oldBounds:Landroid/graphics/Rect;
    .local v1, bottomBound:I
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v8

    if-eqz v8, :cond_1

    sub-int v2, v0, v5

    .line 491
    .local v2, left:I
    :goto_1
    add-int v8, v2, v6

    invoke-virtual {p2, v2, v7, v8, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 492
    return-void

    .line 485
    .end local v1           #bottomBound:I
    .end local v2           #left:I
    .end local v7           #topBound:I
    :cond_0
    move v7, p4

    .line 486
    .restart local v7       #topBound:I
    add-int v1, p4, v4

    .restart local v1       #bottomBound:I
    goto :goto_0

    :cond_1
    move v2, v5

    .line 490
    goto :goto_1
.end method

.method private trackHoverEvent(II)V
    .locals 7
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 887
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 888
    .local v4, width:I
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v5, v4, v5

    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 890
    .local v0, available:I
    const/4 v1, 0x0

    .line 892
    .local v1, hoverLevel:F
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge p1, v5, :cond_0

    .line 893
    const/4 v3, 0x0

    .line 901
    .local v3, scale:F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    .line 902
    .local v2, max:I
    int-to-float v5, v2

    mul-float/2addr v5, v3

    add-float/2addr v1, v5

    .line 903
    float-to-int v5, v1

    iput v5, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    .line 904
    return-void

    .line 894
    .end local v2           #max:I
    .end local v3           #scale:F
    :cond_0
    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v5, v4, v5

    if-le p1, v5, :cond_1

    .line 895
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_0

    .line 897
    .end local v3           #scale:F
    :cond_1
    iget v5, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v5, p1, v5

    int-to-float v5, v5

    int-to-float v6, v0

    div-float v3, v5, v6

    .line 898
    .restart local v3       #scale:F
    iget v1, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    .line 624
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 625
    .local v4, width:I
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, v4, v6

    iget v7, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v0, v6, v7

    .line 626
    .local v0, available:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v5, v6

    .line 628
    .local v5, x:I
    const/4 v2, 0x0

    .line 629
    .local v2, progress:F
    invoke-virtual {p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 630
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_0

    .line 631
    const/4 v3, 0x0

    .line 648
    .local v3, scale:F
    :goto_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    .line 649
    .local v1, max:I
    int-to-float v6, v1

    mul-float/2addr v6, v3

    add-float/2addr v2, v6

    .line 651
    float-to-int v6, v2

    const/4 v7, 0x1

    invoke-virtual {p0, v6, v7}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 652
    return-void

    .line 632
    .end local v1           #max:I
    .end local v3           #scale:F
    :cond_0
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v5, v6, :cond_1

    .line 633
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_0

    .line 635
    .end local v3           #scale:F
    :cond_1
    sub-int v6, v0, v5

    iget v7, p0, Landroid/view/View;->mPaddingLeft:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 636
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0

    .line 639
    .end local v3           #scale:F
    :cond_2
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    if-ge v5, v6, :cond_3

    .line 640
    const/4 v3, 0x0

    .restart local v3       #scale:F
    goto :goto_0

    .line 641
    .end local v3           #scale:F
    :cond_3
    iget v6, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v6, v4, v6

    if-le v5, v6, :cond_4

    .line 642
    const/high16 v3, 0x3f80

    .restart local v3       #scale:F
    goto :goto_0

    .line 644
    .end local v3           #scale:F
    :cond_4
    iget v6, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int v6, v5, v6

    int-to-float v6, v6

    int-to-float v7, v0

    div-float v3, v6, v7

    .line 645
    .restart local v3       #scale:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchProgressOffset:F

    goto :goto_0
.end method

.method private updateThumbPos(II)V
    .locals 12
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v8, 0x0

    .line 429
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 430
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 431
    .local v5, thumb:Landroid/graphics/drawable/Drawable;
    if-nez v5, :cond_3

    move v6, v8

    .line 434
    .local v6, thumbHeight:I
    :goto_0
    iget v9, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    iget v10, p0, Landroid/view/View;->mPaddingTop:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 436
    .local v7, trackHeight:I
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v3

    .line 437
    .local v3, max:I
    if-lez v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v3

    div-float v4, v9, v10

    .line 439
    .local v4, scale:F
    :goto_1
    if-le v6, v7, :cond_5

    .line 440
    if-eqz v5, :cond_0

    .line 441
    invoke-direct {p0, p1, v5, v4, v8}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 443
    :cond_0
    sub-int v9, v6, v7

    div-int/lit8 v2, v9, 0x2

    .line 444
    .local v2, gapForCenteringTrack:I
    if-eqz v0, :cond_1

    .line 446
    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v10, p2, v10

    sub-int/2addr v10, v2

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v2, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 461
    .end local v2           #gapForCenteringTrack:I
    :cond_1
    :goto_2
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_2

    .line 462
    iget-object v8, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    iget v10, p0, Landroid/view/View;->mPaddingRight:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    iput v8, p0, Landroid/widget/AbsSeekBar;->thumbScale:F

    .line 463
    :cond_2
    return-void

    .line 431
    .end local v3           #max:I
    .end local v4           #scale:F
    .end local v6           #thumbHeight:I
    .end local v7           #trackHeight:I
    :cond_3
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    goto :goto_0

    .line 437
    .restart local v3       #max:I
    .restart local v6       #thumbHeight:I
    .restart local v7       #trackHeight:I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    .line 451
    .restart local v4       #scale:F
    :cond_5
    if-eqz v0, :cond_6

    .line 453
    iget v9, p0, Landroid/view/View;->mPaddingRight:I

    sub-int v9, p1, v9

    iget v10, p0, Landroid/view/View;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Landroid/view/View;->mPaddingBottom:I

    sub-int v10, p2, v10

    iget v11, p0, Landroid/view/View;->mPaddingTop:I

    sub-int/2addr v10, v11

    invoke-virtual {v0, v8, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 456
    :cond_6
    sub-int v8, v7, v6

    div-int/lit8 v1, v8, 0x2

    .line 457
    .local v1, gap:I
    if-eqz v5, :cond_1

    .line 458
    invoke-direct {p0, p1, v5, v4, v1}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .prologue
    .line 324
    invoke-super {p0}, Landroid/widget/ProgressBar;->drawableStateChanged()V

    .line 326
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 327
    .local v0, progressDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xff

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 331
    :cond_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 333
    .local v1, state:[I
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 335
    .end local v1           #state:[I
    :cond_1
    return-void

    .line 328
    :cond_2
    const/high16 v2, 0x437f

    iget v3, p0, Landroid/widget/AbsSeekBar;->mDisabledAlpha:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    goto :goto_0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    .prologue
    .line 289
    iget v0, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbOffset()I
    .locals 1

    .prologue
    .line 256
    iget v0, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "dr"

    .prologue
    .line 312
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 314
    return-void
.end method

.method public isDeviceDefaultTheme()Z
    .locals 5

    .prologue
    .line 174
    const/4 v1, 0x0

    .line 176
    .local v1, result:Z
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 177
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101042c

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 180
    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 182
    const/4 v1, 0x1

    .line 189
    :goto_0
    return v1

    .line 186
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMuteAnimation()Z
    .locals 1

    .prologue
    .line 823
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mMuteAnimation:Z

    return v0
.end method

.method public isSlidingAnimation()Z
    .locals 1

    .prologue
    .line 814
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Z

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 318
    invoke-super {p0}, Landroid/widget/ProgressBar;->jumpDrawablesToCurrentState()V

    .line 319
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 320
    :cond_0
    return-void
.end method

.method public muteAnimationStart()V
    .locals 1

    .prologue
    .line 785
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelAnimation()V

    .line 786
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->muteAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 787
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 508
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 509
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 510
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 513
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 514
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 515
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 517
    :cond_0
    monitor-exit p0

    return-void

    .line 508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method onHoverChanged(III)V
    .locals 0
    .parameter "hoverLevel"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 884
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 841
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-ne v5, v4, :cond_1

    :cond_0
    move v1, v4

    .line 852
    .local v1, isPossibleTooltype:Z
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v1, :cond_2

    .line 853
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 854
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v2, v4

    .line 855
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v3, v4

    .line 856
    .local v3, y:I
    const/16 v4, 0x9

    if-ne v0, v4, :cond_3

    .line 858
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    .line 859
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onStartTrackingHover(III)V

    .line 874
    .end local v0           #action:I
    .end local v2           #x:I
    .end local v3           #y:I
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 861
    .restart local v0       #action:I
    .restart local v2       #x:I
    .restart local v3       #y:I
    :cond_3
    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    .line 862
    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->trackHoverEvent(II)V

    .line 863
    iget v4, p0, Landroid/widget/AbsSeekBar;->mHoveringLevel:I

    invoke-virtual {p0, v4, v2, v3}, Landroid/widget/AbsSeekBar;->onHoverChanged(III)V

    .line 866
    iget v4, p0, Landroid/view/View;->mHoverPopupType:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 867
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 868
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow;->updateHoverPopup()V

    goto :goto_0

    .line 870
    :cond_4
    const/16 v4, 0xa

    if-ne v0, v4, :cond_2

    .line 871
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingHover()V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 709
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 710
    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 711
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .parameter "info"

    .prologue
    .line 715
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 716
    const-class v1, Landroid/widget/AbsSeekBar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 718
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 719
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 720
    .local v0, progress:I
    if-lez v0, :cond_0

    .line 721
    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 723
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 724
    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 727
    .end local v0           #progress:I
    :cond_1
    return-void
.end method

.method onKeyChange()V
    .locals 0

    .prologue
    .line 683
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 687
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 688
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    .line 689
    .local v0, progress:I
    packed-switch p1, :pswitch_data_0

    .line 704
    .end local v0           #progress:I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 691
    .restart local v0       #progress:I
    :pswitch_0
    if-lez v0, :cond_0

    .line 692
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    sub-int v2, v0, v2

    invoke-virtual {p0, v2, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 693
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 697
    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 698
    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2, v1}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 699
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 689
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 532
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 534
    .local v0, d:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 535
    .local v3, thumbHeight:I
    :goto_0
    const/4 v2, 0x0

    .line 536
    .local v2, dw:I
    const/4 v1, 0x0

    .line 537
    .local v1, dh:I
    if-eqz v0, :cond_0

    .line 538
    iget v4, p0, Landroid/widget/ProgressBar;->mMinWidth:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxWidth:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 539
    iget v4, p0, Landroid/widget/ProgressBar;->mMinHeight:I

    iget v5, p0, Landroid/widget/ProgressBar;->mMaxHeight:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 540
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 542
    :cond_0
    iget v4, p0, Landroid/view/View;->mPaddingLeft:I

    iget v5, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 543
    iget v4, p0, Landroid/view/View;->mPaddingTop:I

    iget v5, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    .line 545
    const/4 v4, 0x0

    invoke-static {v2, p1, v4}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v1, p2, v5}, Landroid/widget/AbsSeekBar;->resolveSizeAndState(III)I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/view/View;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    .line 534
    .end local v1           #dh:I
    .end local v2           #dw:I
    .end local v3           #thumbHeight:I
    :cond_1
    :try_start_1
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    goto :goto_0

    .line 532
    .end local v0           #d:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method onProgressRefresh(FZ)V
    .locals 10
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    const v8, 0x461c4000

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 340
    mul-float v7, p1, v8

    float-to-int v3, v7

    .line 341
    .local v3, targetLevel:I
    iget v7, p0, Landroid/widget/AbsSeekBar;->currentProgressLevel:I

    sub-int v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    iget v8, p0, Landroid/widget/AbsSeekBar;->thumbScale:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-lez v7, :cond_2

    move v1, v5

    .line 349
    .local v1, isAnimationNeeded:Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isSlidingAnimation()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    if-eqz v7, :cond_0

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->isAnimationAllowdedMax:Z

    if-eqz v7, :cond_3

    :cond_0
    if-eqz v1, :cond_3

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->isFirstSetProgress:Z

    if-nez v7, :cond_3

    move v2, v5

    .line 357
    .local v2, isStartingAnimator:Z
    :goto_1
    if-eqz v2, :cond_6

    .line 358
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelAnimation()V

    .line 360
    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mMuteAnimation:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    if-nez v7, :cond_4

    iget v7, p0, Landroid/widget/AbsSeekBar;->currentProgressLevel:I

    if-eqz v7, :cond_4

    if-nez v3, :cond_4

    move v7, v5

    :goto_2
    iput-boolean v7, p0, Landroid/widget/AbsSeekBar;->isMuteNow:Z

    .line 365
    iput v3, p0, Landroid/widget/AbsSeekBar;->animationTargetLevel:I

    .line 366
    const/4 v7, 0x2

    new-array v7, v7, [I

    iget v8, p0, Landroid/widget/AbsSeekBar;->currentProgressLevel:I

    aput v8, v7, v6

    aput v3, v7, v5

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    .line 367
    iget-boolean v5, p0, Landroid/widget/AbsSeekBar;->isMuteNow:Z

    if-eqz v5, :cond_5

    .line 368
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 369
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 374
    :goto_3
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/AbsSeekBar$1;

    invoke-direct {v6, p0}, Landroid/widget/AbsSeekBar$1;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 381
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 409
    :cond_1
    :goto_4
    return-void

    .end local v1           #isAnimationNeeded:Z
    .end local v2           #isStartingAnimator:Z
    :cond_2
    move v1, v6

    .line 341
    goto :goto_0

    .restart local v1       #isAnimationNeeded:Z
    :cond_3
    move v2, v6

    .line 349
    goto :goto_1

    .restart local v2       #isStartingAnimator:Z
    :cond_4
    move v7, v6

    .line 360
    goto :goto_2

    .line 371
    :cond_5
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x190

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 372
    iget-object v5, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/widget/AbsSeekBar$QuintEaseOut;

    invoke-direct {v6, p0}, Landroid/widget/AbsSeekBar$QuintEaseOut;-><init>(Landroid/widget/AbsSeekBar;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_3

    .line 383
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/ProgressBar;->onProgressRefresh(FZ)V

    .line 385
    iget-object v7, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/widget/AbsSeekBar;->slidingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 386
    iget v7, p0, Landroid/widget/AbsSeekBar;->animationTargetLevel:I

    sub-int/2addr v7, v3

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    div-int/lit8 v7, v7, 0x64

    int-to-float v0, v7

    .line 387
    .local v0, diff:F
    const/high16 v7, 0x41a0

    cmpl-float v7, v0, v7

    if-lez v7, :cond_7

    .line 388
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->cancelAnimation()V

    .line 389
    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 392
    .end local v0           #diff:F
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isSlidingAnimation()Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    if-nez v7, :cond_8

    if-nez v1, :cond_8

    iget-boolean v7, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v7, :cond_8

    .line 393
    invoke-virtual {p0, v5}, Landroid/view/View;->setPressed(Z)V

    .line 396
    :cond_8
    iput-boolean v6, p0, Landroid/widget/AbsSeekBar;->isFirstSetProgress:Z

    .line 397
    iput v3, p0, Landroid/widget/AbsSeekBar;->currentProgressLevel:I

    .line 398
    iget-object v4, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 399
    .local v4, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_1

    .line 400
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    const/high16 v6, -0x8000

    invoke-direct {p0, v5, v4, p1, v6}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 406
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_4
.end method

.method public onResolveDrawables(I)V
    .locals 1
    .parameter "layoutDirection"

    .prologue
    .line 499
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onResolveDrawables(I)V

    .line 501
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 504
    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5
    .parameter "layoutDirection"

    .prologue
    .line 762
    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    .line 764
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    .line 765
    .local v0, max:I
    if-lez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 767
    .local v1, scale:F
    :goto_0
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 768
    .local v2, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 769
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, -0x8000

    invoke-direct {p0, v3, v2, v1, v4}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 775
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 777
    :cond_0
    return-void

    .line 765
    .end local v1           #scale:F
    .end local v2           #thumb:Landroid/graphics/drawable/Drawable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 424
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ProgressBar;->onSizeChanged(IIII)V

    .line 425
    invoke-direct {p0, p1, p2}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 426
    return-void
.end method

.method protected onSlidingRefresh(I)V
    .locals 4
    .parameter "level"

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onSlidingRefresh(I)V

    .line 414
    iget-object v1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 415
    .local v1, thumb:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 416
    int-to-float v2, p1

    const v3, 0x461c4000

    div-float v0, v2, v3

    .line 417
    .local v0, scale:F
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    const/high16 v3, -0x8000

    invoke-direct {p0, v2, v1, v0, v3}, Landroid/widget/AbsSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V

    .line 418
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 420
    .end local v0           #scale:F
    :cond_0
    return-void
.end method

.method onStartTrackingHover(III)V
    .locals 0
    .parameter "hoverLevel"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 878
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 668
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 669
    return-void
.end method

.method public onStopDraggingState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 922
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->TAG:Ljava/lang/String;

    const-string v1, "onStopDraggingState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    if-eqz v0, :cond_0

    .line 925
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 927
    :cond_0
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v0, :cond_1

    .line 928
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 929
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 932
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 933
    return-void
.end method

.method onStopTrackingHover()V
    .locals 0

    .prologue
    .line 881
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    .line 677
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 551
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsUserSeekable:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 620
    :cond_1
    :goto_0
    return v1

    .line 555
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 557
    :pswitch_0
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 558
    invoke-virtual {p0}, Landroid/view/View;->isInScrollingContainer()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 559
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    goto :goto_0

    .line 561
    :cond_3
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->isSlidingAnimation()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 562
    :cond_4
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 563
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 565
    :cond_5
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 566
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 567
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 572
    :pswitch_1
    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 573
    iget-boolean v2, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v2, :cond_6

    .line 574
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 575
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 577
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 578
    .local v0, x:F
    iget v2, p0, Landroid/widget/AbsSeekBar;->mTouchDownX:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/widget/AbsSeekBar;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 579
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 580
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_7

    .line 581
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 583
    :cond_7
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 584
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 585
    invoke-direct {p0}, Landroid/widget/AbsSeekBar;->attemptClaimDrag()V

    goto :goto_0

    .line 591
    .end local v0           #x:F
    :pswitch_2
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    if-eqz v3, :cond_8

    .line 592
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 594
    :cond_8
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_9

    .line 595
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 596
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 597
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 608
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 601
    :cond_9
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStartTrackingTouch()V

    .line 602
    invoke-direct {p0, p1}, Landroid/widget/AbsSeekBar;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 603
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    goto :goto_1

    .line 612
    :pswitch_3
    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->isDraggingForSliding:Z

    .line 613
    iget-boolean v3, p0, Landroid/widget/AbsSeekBar;->mIsDragging:Z

    if-eqz v3, :cond_a

    .line 614
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onStopTrackingTouch()V

    .line 615
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 617
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 555
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6
    .parameter "action"
    .parameter "arguments"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 731
    invoke-super {p0, p1, p2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 757
    :goto_0
    return v2

    .line 734
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 735
    goto :goto_0

    .line 737
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    .line 738
    .local v1, progress:I
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40a0

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 739
    .local v0, increment:I
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 757
    goto :goto_0

    .line 741
    :sswitch_0
    if-gtz v1, :cond_2

    move v2, v3

    .line 742
    goto :goto_0

    .line 744
    :cond_2
    sub-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 745
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 749
    :sswitch_1
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v4

    if-lt v1, v4, :cond_3

    move v2, v3

    .line 750
    goto :goto_0

    .line 752
    :cond_3
    add-int v3, v1, v0

    invoke-virtual {p0, v3, v2}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    .line 753
    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->onKeyChange()V

    goto :goto_0

    .line 739
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public setHoverPopupType(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 908
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 909
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0x3231

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setPopupGravity(I)V

    .line 911
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 912
    .local v0, contentHeight:I
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/4 v2, 0x0

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 913
    invoke-virtual {p0}, Landroid/view/View;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/widget/HoverPopupWindow;->setHoverDetectTime(I)V

    .line 916
    .end local v0           #contentHeight:I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->setHoverPopupType(I)V

    .line 917
    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0
    .parameter "increment"

    .prologue
    .line 277
    if-gez p1, :cond_0

    neg-int p1, p1

    .end local p1
    :cond_0
    iput p1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    .line 278
    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 4
    .parameter "max"

    .prologue
    const/4 v0, 0x1

    .line 294
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 295
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/AbsSeekBar;->isFirstSetProgress:Z

    .line 296
    iget v1, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    iget v2, p0, Landroid/widget/AbsSeekBar;->mKeyProgressIncrement:I

    div-int/2addr v1, v2

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 299
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x41a0

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/AbsSeekBar;->setKeyProgressIncrement(I)V

    .line 301
    :cond_1
    iget v1, p0, Landroid/widget/AbsSeekBar;->animationAllowdedMax:I

    if-gt p1, v1, :cond_2

    :goto_0
    iput-boolean v0, p0, Landroid/widget/AbsSeekBar;->isAnimationAllowdedMax:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    monitor-exit p0

    return-void

    .line 301
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMuteAnimation(Z)V
    .locals 1
    .parameter "muteAnimation"

    .prologue
    .line 827
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->misSeebarAnimationAvailable:Z

    if-eqz v0, :cond_0

    .line 828
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mMuteAnimation:Z

    .line 829
    :cond_0
    return-void
.end method

.method public setSlidingAnimation(Z)V
    .locals 1
    .parameter "slidingAnimation"

    .prologue
    .line 818
    iget-boolean v0, p0, Landroid/widget/AbsSeekBar;->misSeebarAnimationAvailable:Z

    if-eqz v0, :cond_0

    .line 819
    iput-boolean p1, p0, Landroid/widget/AbsSeekBar;->mSlidingAnimation:Z

    .line 820
    :cond_0
    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "thumb"

    .prologue
    .line 200
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/AbsSeekBar;->isThumbChanged:Z

    .line 205
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v2, :cond_4

    .line 206
    iget-object v2, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 207
    const/4 v0, 0x1

    .line 211
    .local v0, needUpdate:Z
    :goto_0
    if-eqz p1, :cond_2

    .line 212
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)V

    .line 220
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 223
    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    .line 226
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 229
    :cond_2
    iput-object p1, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 230
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 231
    if-eqz v0, :cond_3

    .line 232
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/widget/AbsSeekBar;->updateThumbPos(II)V

    .line 233
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 236
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v1

    .line 237
    .local v1, state:[I
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 240
    .end local v1           #state:[I
    :cond_3
    return-void

    .line 209
    .end local v0           #needUpdate:Z
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #needUpdate:Z
    goto :goto_0
.end method

.method public setThumbOffset(I)V
    .locals 0
    .parameter "thumbOffset"

    .prologue
    .line 266
    iput p1, p0, Landroid/widget/AbsSeekBar;->mThumbOffset:I

    .line 267
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 268
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .parameter "who"

    .prologue
    .line 306
    iget-object v0, p0, Landroid/widget/AbsSeekBar;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
