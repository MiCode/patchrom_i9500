.class public Landroid/widget/EndEffectController;
.super Ljava/lang/Object;
.source "EndEffectController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/EndEffectController$FloatShakeEvaluator;
    }
.end annotation


# static fields
.field public static final BOUNCE_EXTENT_COEF:F = 0.3f

.field protected static final BOUNCE_HEIGHT_MULTIPLIER:F = 5.0f

.field private static final DELAY_AFTER_SHAKE_ANIM:I = 0x190

.field public static final FADING_EDGE_COEF:F = 0.333f

.field private static final TAG:Ljava/lang/String; = "EndEffectController"

.field private static final TEXT_SHAKE_ANIM_DURATION:I = 0x320

.field public static final TEXT_SHAKE_ANIM_IDLE:I = 0x0

.field public static final TEXT_SHAKE_ANIM_ONGOING:I = 0x1

.field public static final TEXT_SHAKING_START_OVERHEAD_COEF:F = 1.5f

.field private static TYPE_HORIZONTALSCROLL:I

.field private static TYPE_LIST:I

.field private static TYPE_VERTICALSCROLL:I


# instance fields
.field private BOUNCE_VIEW_BOTTOM_PADDING:I

.field private BOUNCE_VIEW_CHILD_RIGHT_PADDING:I

.field public BOUNCE_VIEW_EDGE_HEIGHT:I

.field private BOUNCE_VIEW_TOP_PADDING:I

.field private MINIMUM_WIDTH_TO_FIT_TEXT:I

.field private TEXT_SHAKE_RANGE:I

.field private mAccelDecelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

.field private mBounceViewBottom:Landroid/widget/FrameLayout;

.field private mBounceViewMargin:I

.field private mBounceViewTop:Landroid/widget/FrameLayout;

.field private mBounceViewsSupplied:Z

.field private mCircleBgResId:I

.field private mCircleDrawableBottom:Landroid/graphics/drawable/AnimationDrawable;

.field private mCircleDrawableBottomHasBeenReset:Z

.field private mCircleDrawableTop:Landroid/graphics/drawable/AnimationDrawable;

.field private mCircleDrawableTopHasBeenReset:Z

.field private mCurrentAnimationValue:F

.field private mFloatShakeEvaluator:Landroid/widget/EndEffectController$FloatShakeEvaluator;

.field private mParentType:I

.field private mParentView:Landroid/view/View;

.field private mResources:Landroid/content/res/Resources;

.field private mShakeAnimation:Landroid/animation/ValueAnimator;

.field private mTextShakeAnimStatus:I

.field private mTextViewIsNeeded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0x37

    sput v0, Landroid/widget/EndEffectController;->TYPE_HORIZONTALSCROLL:I

    .line 52
    const/16 v0, 0x38

    sput v0, Landroid/widget/EndEffectController;->TYPE_VERTICALSCROLL:I

    .line 53
    const/16 v0, 0x39

    sput v0, Landroid/widget/EndEffectController;->TYPE_LIST:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter "context"
    .parameter "parent"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput v1, p0, Landroid/widget/EndEffectController;->MINIMUM_WIDTH_TO_FIT_TEXT:I

    .line 60
    new-instance v0, Landroid/widget/EndEffectController$FloatShakeEvaluator;

    invoke-direct {v0, p0}, Landroid/widget/EndEffectController$FloatShakeEvaluator;-><init>(Landroid/widget/EndEffectController;)V

    iput-object v0, p0, Landroid/widget/EndEffectController;->mFloatShakeEvaluator:Landroid/widget/EndEffectController$FloatShakeEvaluator;

    .line 62
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/widget/EndEffectController;->mAccelDecelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 66
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EndEffectController;->mCurrentAnimationValue:F

    .line 68
    iput v1, p0, Landroid/widget/EndEffectController;->mTextShakeAnimStatus:I

    .line 78
    iput-boolean v2, p0, Landroid/widget/EndEffectController;->mCircleDrawableTopHasBeenReset:Z

    .line 79
    iput-boolean v2, p0, Landroid/widget/EndEffectController;->mCircleDrawableBottomHasBeenReset:Z

    .line 81
    iput v1, p0, Landroid/widget/EndEffectController;->mBounceViewMargin:I

    .line 87
    iput-boolean v1, p0, Landroid/widget/EndEffectController;->mBounceViewsSupplied:Z

    .line 89
    iput-boolean v2, p0, Landroid/widget/EndEffectController;->mTextViewIsNeeded:Z

    .line 92
    iput-object p2, p0, Landroid/widget/EndEffectController;->mParentView:Landroid/view/View;

    .line 94
    instance-of v0, p2, Landroid/widget/AbsListView;

    if-eqz v0, :cond_1

    .line 95
    sget v0, Landroid/widget/EndEffectController;->TYPE_LIST:I

    iput v0, p0, Landroid/widget/EndEffectController;->mParentType:I

    .line 102
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroid/widget/EndEffectController;->initBounceView(Landroid/content/Context;)V

    .line 103
    return-void

    .line 96
    :cond_1
    instance-of v0, p2, Landroid/widget/ScrollView;

    if-eqz v0, :cond_2

    .line 97
    sget v0, Landroid/widget/EndEffectController;->TYPE_VERTICALSCROLL:I

    iput v0, p0, Landroid/widget/EndEffectController;->mParentType:I

    goto :goto_0

    .line 98
    :cond_2
    instance-of v0, p2, Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_0

    .line 99
    sget v0, Landroid/widget/EndEffectController;->TYPE_HORIZONTALSCROLL:I

    iput v0, p0, Landroid/widget/EndEffectController;->mParentType:I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/widget/EndEffectController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Landroid/widget/EndEffectController;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Landroid/widget/EndEffectController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Landroid/widget/EndEffectController;->mTextShakeAnimStatus:I

    return p1
.end method

.method static synthetic access$202(Landroid/widget/EndEffectController;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Landroid/widget/EndEffectController;->mCurrentAnimationValue:F

    return p1
.end method

.method private configureBounceViewInnerLayout()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 442
    const-string v0, "endeffect3"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EndEffectController.configureBounceViewInnerLayout(), BOUNCE_VIEW_TOP_PADDING="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/EndEffectController;->BOUNCE_VIEW_TOP_PADDING:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", BOUNCE_VIEW_BOTTOM_PADDING="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/widget/EndEffectController;->BOUNCE_VIEW_BOTTOM_PADDING:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object v0, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    iget v1, p0, Landroid/widget/EndEffectController;->BOUNCE_VIEW_TOP_PADDING:I

    iget v2, p0, Landroid/widget/EndEffectController;->BOUNCE_VIEW_BOTTOM_PADDING:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 444
    iget-object v0, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    iget v1, p0, Landroid/widget/EndEffectController;->BOUNCE_VIEW_BOTTOM_PADDING:I

    iget v2, p0, Landroid/widget/EndEffectController;->BOUNCE_VIEW_TOP_PADDING:I

    invoke-virtual {v0, v3, v1, v3, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 445
    return-void
.end method

.method private convertDipToPx(I)I
    .locals 4
    .parameter "dip"

    .prologue
    .line 493
    iget-object v1, p0, Landroid/widget/EndEffectController;->mResources:Landroid/content/res/Resources;

    if-nez v1, :cond_0

    .line 494
    const/4 v1, 0x0

    .line 498
    :goto_0
    return v1

    .line 496
    :cond_0
    const/4 v1, 0x1

    int-to-float v2, p1

    iget-object v3, p0, Landroid/widget/EndEffectController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 498
    .local v0, px:F
    float-to-int v1, v0

    goto :goto_0
.end method

.method private initBounceView(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 107
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 109
    .local v2, mInflater:Landroid/view/LayoutInflater;
    const v11, 0x1090030

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    iput-object v11, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    .line 111
    const v11, 0x1090030

    const/4 v12, 0x0

    invoke-virtual {v2, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout;

    iput-object v11, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    .line 114
    sget-object v11, Lcom/android/internal/R$styleable;->EndEffectStyle:[I

    invoke-virtual {p1, v11}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 116
    .local v4, ta:Landroid/content/res/TypedArray;
    iget v11, p0, Landroid/widget/EndEffectController;->mParentType:I

    sget v12, Landroid/widget/EndEffectController;->TYPE_LIST:I

    if-eq v11, v12, :cond_0

    iget v11, p0, Landroid/widget/EndEffectController;->mParentType:I

    sget v12, Landroid/widget/EndEffectController;->TYPE_VERTICALSCROLL:I

    if-ne v11, v12, :cond_3

    .line 117
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 118
    .local v8, topBg:Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 119
    .local v0, bottomBg:Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    .line 120
    const-string v11, "EndEffectController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "top and bottom drawables are properly extracted, topBg.intrinsicWidth="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", bottomBg.intrinsicHeight="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v11, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 122
    iget-object v11, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    .end local v0           #bottomBg:Landroid/graphics/drawable/Drawable;
    .end local v8           #topBg:Landroid/graphics/drawable/Drawable;
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10500ea

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 140
    .local v7, textSize:F
    const/4 v11, 0x4

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .line 141
    .local v5, textColor:I
    const/4 v11, 0x5

    const/4 v12, -0x1

    invoke-virtual {v4, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    iput v11, p0, Landroid/widget/EndEffectController;->mCircleBgResId:I

    .line 142
    const-string v11, "EndEffectController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "textSize="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", textColor="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mCircleBgResId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Landroid/widget/EndEffectController;->mCircleBgResId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 146
    invoke-direct {p0}, Landroid/widget/EndEffectController;->resetCircleImgBgTop()V

    .line 147
    invoke-direct {p0}, Landroid/widget/EndEffectController;->resetCircleImgBgBottom()V

    .line 149
    iget v11, p0, Landroid/widget/EndEffectController;->mParentType:I

    sget v12, Landroid/widget/EndEffectController;->TYPE_HORIZONTALSCROLL:I

    if-ne v11, v12, :cond_5

    .line 151
    invoke-direct {p0}, Landroid/widget/EndEffectController;->removeTextViews()V

    .line 174
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    iput-object v11, p0, Landroid/widget/EndEffectController;->mResources:Landroid/content/res/Resources;

    .line 175
    const/4 v11, 0x2

    invoke-direct {p0, v11}, Landroid/widget/EndEffectController;->convertDipToPx(I)I

    move-result v11

    iput v11, p0, Landroid/widget/EndEffectController;->TEXT_SHAKE_RANGE:I

    .line 177
    const/4 v11, 0x5

    invoke-direct {p0, v11}, Landroid/widget/EndEffectController;->convertDipToPx(I)I

    move-result v11

    iput v11, p0, Landroid/widget/EndEffectController;->BOUNCE_VIEW_EDGE_HEIGHT:I

    .line 179
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Landroid/widget/EndEffectController;->convertDipToPx(I)I

    move-result v11

    iput v11, p0, Landroid/widget/EndEffectController;->BOUNCE_VIEW_TOP_PADDING:I

    .line 180
    const/4 v11, 0x3

    invoke-direct {p0, v11}, Landroid/widget/EndEffectController;->convertDipToPx(I)I

    move-result v11

    iget v12, p0, Landroid/widget/EndEffectController;->BOUNCE_VIEW_EDGE_HEIGHT:I

    add-int/2addr v11, v12

    iput v11, p0, Landroid/widget/EndEffectController;->BOUNCE_VIEW_BOTTOM_PADDING:I

    .line 182
    const/16 v11, 0xc8

    invoke-direct {p0, v11}, Landroid/widget/EndEffectController;->convertDipToPx(I)I

    move-result v11

    iput v11, p0, Landroid/widget/EndEffectController;->MINIMUM_WIDTH_TO_FIT_TEXT:I

    .line 184
    const/16 v11, 0xf

    invoke-direct {p0, v11}, Landroid/widget/EndEffectController;->convertDipToPx(I)I

    move-result v11

    iput v11, p0, Landroid/widget/EndEffectController;->BOUNCE_VIEW_CHILD_RIGHT_PADDING:I

    .line 186
    invoke-direct {p0}, Landroid/widget/EndEffectController;->configureBounceViewInnerLayout()V

    .line 187
    return-void

    .line 124
    .end local v5           #textColor:I
    .end local v7           #textSize:F
    .restart local v0       #bottomBg:Landroid/graphics/drawable/Drawable;
    .restart local v8       #topBg:Landroid/graphics/drawable/Drawable;
    :cond_2
    const-string v11, "EndEffectController"

    const-string v12, "top and/or bottom drawables are NULL"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 126
    .end local v0           #bottomBg:Landroid/graphics/drawable/Drawable;
    .end local v8           #topBg:Landroid/graphics/drawable/Drawable;
    :cond_3
    iget v11, p0, Landroid/widget/EndEffectController;->mParentType:I

    sget v12, Landroid/widget/EndEffectController;->TYPE_HORIZONTALSCROLL:I

    if-ne v11, v12, :cond_1

    .line 127
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 128
    .local v1, leftBg:Landroid/graphics/drawable/Drawable;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 130
    .local v3, rightBg:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    if-eqz v3, :cond_4

    .line 131
    const-string v11, "EndEffectController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "left and right drawables are properly extracted, leftBg.intrinsicWidth="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", rightBg.intrinsicHeight="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v11, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v11, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v11, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 135
    :cond_4
    const-string v11, "EndEffectController"

    const-string v12, "left and/or right drawables are NULL"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 153
    .end local v1           #leftBg:Landroid/graphics/drawable/Drawable;
    .end local v3           #rightBg:Landroid/graphics/drawable/Drawable;
    .restart local v5       #textColor:I
    .restart local v7       #textSize:F
    :cond_5
    iget-object v11, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    const v12, 0x10202b8

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 154
    .local v10, txtTop:Landroid/widget/TextView;
    iget-object v11, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    const v12, 0x10202b8

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 157
    .local v9, txtBottom:Landroid/widget/TextView;
    const/4 v11, -0x1

    if-eq v5, v11, :cond_6

    .line 158
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 159
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 161
    :cond_6
    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 162
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 164
    const/4 v6, 0x0

    .line 165
    .local v6, textResourceId:I
    iget v11, p0, Landroid/widget/EndEffectController;->mParentType:I

    sget v12, Landroid/widget/EndEffectController;->TYPE_VERTICALSCROLL:I

    if-ne v11, v12, :cond_8

    .line 166
    const v6, 0x10408f3

    .line 170
    :cond_7
    :goto_2
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(I)V

    .line 171
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_1

    .line 167
    :cond_8
    iget v11, p0, Landroid/widget/EndEffectController;->mParentType:I

    sget v12, Landroid/widget/EndEffectController;->TYPE_LIST:I

    if-ne v11, v12, :cond_7

    .line 168
    const v6, 0x10408f2

    goto :goto_2
.end method

.method private removeTextViews()V
    .locals 8

    .prologue
    const v7, 0x10202b8

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 294
    const-string v2, "endeffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EndEffect.removeTextViews this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 297
    .local v1, txtTop:Landroid/widget/TextView;
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 299
    .local v0, txtBottom:Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 300
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 301
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 302
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 303
    return-void
.end method

.method private resetCircleImgBgBottom()V
    .locals 3

    .prologue
    .line 200
    iget v1, p0, Landroid/widget/EndEffectController;->mCircleBgResId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 206
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    const v2, 0x10202b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 203
    .local v0, imgBottom:Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 204
    iget v1, p0, Landroid/widget/EndEffectController;->mCircleBgResId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 205
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Landroid/widget/EndEffectController;->mCircleDrawableBottom:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0
.end method

.method private resetCircleImgBgTop()V
    .locals 3

    .prologue
    .line 190
    iget v1, p0, Landroid/widget/EndEffectController;->mCircleBgResId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 197
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    const v2, 0x10202b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 193
    .local v0, imgTop:Landroid/widget/ImageView;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 194
    iget v1, p0, Landroid/widget/EndEffectController;->mCircleBgResId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v1, p0, Landroid/widget/EndEffectController;->mCircleDrawableTop:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0
.end method

.method private showTextViews()V
    .locals 7

    .prologue
    const v6, 0x10202b8

    const/4 v5, 0x0

    .line 282
    const-string v2, "endeffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EndEffect.showTextViews this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 285
    .local v1, txtTop:Landroid/widget/TextView;
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 287
    .local v0, txtBottom:Landroid/widget/TextView;
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 288
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Landroid/widget/EndEffectController;->BOUNCE_VIEW_CHILD_RIGHT_PADDING:I

    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 290
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Landroid/widget/EndEffectController;->BOUNCE_VIEW_CHILD_RIGHT_PADDING:I

    invoke-virtual {v2, v5, v5, v3, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 291
    return-void
.end method


# virtual methods
.method public areBounceViewsReady()Z
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public cancelTextShakeAnimation()V
    .locals 2

    .prologue
    .line 365
    iget v0, p0, Landroid/widget/EndEffectController;->mTextShakeAnimStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/EndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 366
    const-string v0, "EndEffectController"

    const-string v1, "cancel animation()"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    iget-object v0, p0, Landroid/widget/EndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 368
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EndEffectController;->mTextShakeAnimStatus:I

    .line 370
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/EndEffectController;->mCurrentAnimationValue:F

    .line 371
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Z)V
    .locals 1
    .parameter "canvas"
    .parameter "top"

    .prologue
    .line 485
    if-eqz p2, :cond_0

    .line 486
    iget-object v0, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 490
    :goto_0
    return-void

    .line 488
    :cond_0
    iget-object v0, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getBounceViewHeight(Z)I
    .locals 1
    .parameter "top"

    .prologue
    .line 457
    if-eqz p1, :cond_0

    .line 458
    iget-object v0, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 460
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getBounceViewMargin()I
    .locals 1

    .prologue
    .line 415
    iget v0, p0, Landroid/widget/EndEffectController;->mBounceViewMargin:I

    return v0
.end method

.method public getMaxExtentByBounceHeight(Z)F
    .locals 2
    .parameter "top"

    .prologue
    .line 502
    invoke-virtual {p0, p1}, Landroid/widget/EndEffectController;->getBounceViewHeight(Z)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc0

    mul-float/2addr v0, v1

    const v1, 0x3e99999a

    div-float/2addr v0, v1

    return v0
.end method

.method public getbounceViewWidth(Z)I
    .locals 1
    .parameter "top"

    .prologue
    .line 470
    if-eqz p1, :cond_0

    .line 471
    iget-object v0, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 473
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method public layoutBounceViews(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 235
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 237
    .local v0, measuredHeight:I
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 238
    .local v1, measuredWidth:I
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    iget v3, p0, Landroid/widget/EndEffectController;->mBounceViewMargin:I

    add-int/2addr v3, p1

    add-int v4, p1, v1

    iget v5, p0, Landroid/widget/EndEffectController;->mBounceViewMargin:I

    sub-int/2addr v4, v5

    add-int v5, p2, v0

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 240
    const-string v2, "endeffect3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layoutBounceViews() custom top measuredHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0           #measuredHeight:I
    .end local v1           #measuredWidth:I
    :cond_0
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 243
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 244
    .restart local v0       #measuredHeight:I
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 245
    .restart local v1       #measuredWidth:I
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    iget v3, p0, Landroid/widget/EndEffectController;->mBounceViewMargin:I

    add-int/2addr v3, p1

    add-int v4, p1, v1

    iget v5, p0, Landroid/widget/EndEffectController;->mBounceViewMargin:I

    sub-int/2addr v4, v5

    add-int v5, p2, v0

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 247
    const-string v2, "endeffect3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layoutBounceViews() custom bottom measuredHeight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    .end local v0           #measuredHeight:I
    .end local v1           #measuredWidth:I
    :cond_1
    return-void
.end method

.method public measureBounceViews(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 215
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, -0x8000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 222
    .local v0, modifiedHeightMeasureSpec:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    const/high16 v3, 0x4000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 225
    .local v1, modifiedWidthMeasureSpec:I
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 226
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 228
    :cond_0
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1, v0}, Landroid/view/View;->measure(II)V

    .line 231
    :cond_1
    return-void
.end method

.method public onBounceViewsShownFully(Z)V
    .locals 3
    .parameter "top"

    .prologue
    const/4 v2, 0x0

    .line 507
    iget-boolean v0, p0, Landroid/widget/EndEffectController;->mBounceViewsSupplied:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/EndEffectController;->mCircleDrawableTop:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/EndEffectController;->mCircleDrawableBottom:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_1

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    if-eqz p1, :cond_2

    .line 510
    const-string v0, "EndEffectController"

    const-string v1, "onBounceViewsShownFully() top"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    iget-object v0, p0, Landroid/widget/EndEffectController;->mCircleDrawableTop:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 512
    iput-boolean v2, p0, Landroid/widget/EndEffectController;->mCircleDrawableTopHasBeenReset:Z

    goto :goto_0

    .line 514
    :cond_2
    const-string v0, "EndEffectController"

    const-string v1, "onBounceViewsShownFully() bottom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Landroid/widget/EndEffectController;->mCircleDrawableBottom:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 516
    iput-boolean v2, p0, Landroid/widget/EndEffectController;->mCircleDrawableBottomHasBeenReset:Z

    goto :goto_0
.end method

.method public onGlobalLayout(Landroid/view/View;)Z
    .locals 6
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 257
    iget-boolean v3, p0, Landroid/widget/EndEffectController;->mBounceViewsSupplied:Z

    if-eqz v3, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v2

    .line 259
    :cond_1
    iget v3, p0, Landroid/widget/EndEffectController;->mParentType:I

    sget v4, Landroid/widget/EndEffectController;->TYPE_LIST:I

    if-eq v3, v4, :cond_2

    iget v3, p0, Landroid/widget/EndEffectController;->mParentType:I

    sget v4, Landroid/widget/EndEffectController;->TYPE_VERTICALSCROLL:I

    if-ne v3, v4, :cond_0

    .line 264
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/widget/EndEffectController;->MINIMUM_WIDTH_TO_FIT_TEXT:I

    if-lt v3, v4, :cond_3

    move v0, v1

    .line 265
    .local v0, showTextView:Z
    :goto_1
    const-string v4, "endeffect3"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EndEffect.OnGlobalLayout() view width ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v0, :cond_4

    const-string v3, ">="

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " MINIMUM_WIDTH_TO_FIT_TEXT("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/widget/EndEffectController;->MINIMUM_WIDTH_TO_FIT_TEXT:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ") this="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-boolean v3, p0, Landroid/widget/EndEffectController;->mTextViewIsNeeded:Z

    if-eq v0, v3, :cond_0

    .line 268
    iput-boolean v0, p0, Landroid/widget/EndEffectController;->mTextViewIsNeeded:Z

    .line 269
    if-eqz v0, :cond_5

    .line 270
    invoke-direct {p0}, Landroid/widget/EndEffectController;->showTextViews()V

    :goto_3
    move v2, v1

    .line 274
    goto :goto_0

    .end local v0           #showTextView:Z
    :cond_3
    move v0, v2

    .line 264
    goto :goto_1

    .line 265
    .restart local v0       #showTextView:Z
    :cond_4
    const-string v3, "<"

    goto :goto_2

    .line 272
    :cond_5
    invoke-direct {p0}, Landroid/widget/EndEffectController;->removeTextViews()V

    goto :goto_3
.end method

.method public resetCircleAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 521
    iget-boolean v0, p0, Landroid/widget/EndEffectController;->mBounceViewsSupplied:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/EndEffectController;->mCircleDrawableTop:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/EndEffectController;->mCircleDrawableBottom:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-boolean v0, p0, Landroid/widget/EndEffectController;->mCircleDrawableTopHasBeenReset:Z

    if-nez v0, :cond_2

    .line 524
    const-string v0, "EndEffectController"

    const-string v1, "resetCircleAnimation() top"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iput-boolean v2, p0, Landroid/widget/EndEffectController;->mCircleDrawableTopHasBeenReset:Z

    .line 526
    invoke-direct {p0}, Landroid/widget/EndEffectController;->resetCircleImgBgTop()V

    .line 529
    :cond_2
    iget-boolean v0, p0, Landroid/widget/EndEffectController;->mCircleDrawableBottomHasBeenReset:Z

    if-nez v0, :cond_0

    .line 530
    const-string v0, "EndEffectController"

    const-string v1, "resetCircleAnimation() bottom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iput-boolean v2, p0, Landroid/widget/EndEffectController;->mCircleDrawableBottomHasBeenReset:Z

    .line 532
    invoke-direct {p0}, Landroid/widget/EndEffectController;->resetCircleImgBgBottom()V

    goto :goto_0
.end method

.method public setBounceViewMargin(I)V
    .locals 0
    .parameter "padding"

    .prologue
    .line 411
    iput p1, p0, Landroid/widget/EndEffectController;->mBounceViewMargin:I

    .line 412
    return-void
.end method

.method public setBounceViews(Landroid/view/View;Landroid/view/View;)Z
    .locals 4
    .parameter "topBounceView"
    .parameter "bottomBounceView"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 420
    if-eqz p1, :cond_1

    move v1, v2

    .line 421
    .local v1, topViewExists:Z
    :goto_0
    if-eqz p2, :cond_2

    move v0, v2

    .line 423
    .local v0, bottomViewExists:Z
    :goto_1
    if-eqz v1, :cond_0

    if-nez v0, :cond_3

    :cond_0
    move v2, v3

    .line 437
    :goto_2
    return v2

    .end local v0           #bottomViewExists:Z
    .end local v1           #topViewExists:Z
    :cond_1
    move v1, v3

    .line 420
    goto :goto_0

    .restart local v1       #topViewExists:Z
    :cond_2
    move v0, v3

    .line 421
    goto :goto_1

    .line 427
    .restart local v0       #bottomViewExists:Z
    :cond_3
    iget-object v3, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 428
    iget-object v3, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 430
    iget-object v3, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 431
    iget-object v3, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v3, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 433
    iput-boolean v2, p0, Landroid/widget/EndEffectController;->mBounceViewsSupplied:Z

    .line 435
    invoke-direct {p0}, Landroid/widget/EndEffectController;->configureBounceViewInnerLayout()V

    goto :goto_2
.end method

.method public startTextShakingAnimation(Z)V
    .locals 9
    .parameter "top"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 306
    iget v3, p0, Landroid/widget/EndEffectController;->mTextShakeAnimStatus:I

    if-ne v3, v1, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 309
    :cond_1
    iget-object v3, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    move v0, v1

    .line 311
    .local v0, hasChild:Z
    :goto_1
    if-eqz v0, :cond_0

    .line 314
    if-eqz p1, :cond_3

    .line 315
    iget-object v3, p0, Landroid/widget/EndEffectController;->mBounceViewTop:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "translationY"

    iget-object v5, p0, Landroid/widget/EndEffectController;->mFloatShakeEvaluator:Landroid/widget/EndEffectController$FloatShakeEvaluator;

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2

    iget v2, p0, Landroid/widget/EndEffectController;->TEXT_SHAKE_RANGE:I

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/EndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    .line 322
    :goto_2
    iget-object v1, p0, Landroid/widget/EndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Landroid/widget/EndEffectController;->mAccelDecelInterpolator:Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 323
    iget-object v1, p0, Landroid/widget/EndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x320

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 324
    iget-object v1, p0, Landroid/widget/EndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/widget/EndEffectController$1;

    invoke-direct {v2, p0}, Landroid/widget/EndEffectController$1;-><init>(Landroid/widget/EndEffectController;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 354
    iget-object v1, p0, Landroid/widget/EndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/widget/EndEffectController$2;

    invoke-direct {v2, p0}, Landroid/widget/EndEffectController$2;-><init>(Landroid/widget/EndEffectController;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .end local v0           #hasChild:Z
    :cond_2
    move v0, v2

    .line 309
    goto :goto_1

    .line 318
    .restart local v0       #hasChild:Z
    :cond_3
    iget-object v3, p0, Landroid/widget/EndEffectController;->mBounceViewBottom:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const-string v4, "translationY"

    iget-object v5, p0, Landroid/widget/EndEffectController;->mFloatShakeEvaluator:Landroid/widget/EndEffectController$FloatShakeEvaluator;

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Landroid/widget/EndEffectController;->TEXT_SHAKE_RANGE:I

    neg-int v7, v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v6, v1

    invoke-static {v3, v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/EndEffectController;->mShakeAnimation:Landroid/animation/ValueAnimator;

    goto :goto_2
.end method
