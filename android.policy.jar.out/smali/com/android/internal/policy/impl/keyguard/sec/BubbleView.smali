.class public Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;
.super Landroid/widget/FrameLayout;
.source "BubbleView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/sec/UnlockView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$QuintEaseOut;,
        Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$LightBubble;
    }
.end annotation


# instance fields
.field private final DBG:Z

.field private final FLOAT_ANIMATION_DURATION:I

.field private final OUT_SCALE:F

.field private final PULL_ANIMATION_DURATION:I

.field private final PUSH_ANIMATION_DURATION:I

.field private final TAG:Ljava/lang/String;

.field private angleX:[F

.field private angleY:[F

.field private bgMovePixel:I

.field private bgMoveRatio:F

.field private bgOffsetByYTouchPoint:F

.field private bubble:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$LightBubble;

.field private bubbleCurrentPoint:[Landroid/graphics/PointF;

.field private bubbleFirstPoint:[Landroid/graphics/PointF;

.field private bubbleFirstPointLandscape:[Landroid/graphics/PointF;

.field private bubbleFirstPointPortrait:[Landroid/graphics/PointF;

.field private bubbleLeftBottom:Landroid/widget/ImageView;

.field private bubbleLeftTop:Landroid/widget/ImageView;

.field private bubbleRightBottom:Landroid/widget/ImageView;

.field private bubbleRightTop:Landroid/widget/ImageView;

.field private bubbleTotal:I

.field private bubbles:[Landroid/view/View;

.field private centerX:F

.field private centerY:F

.field private cloud:Landroid/widget/ImageView;

.field private cloudHeight:I

.field private cloudInY:F

.field private cloudOutY:F

.field private cloudWidth:I

.field private currentX:F

.field private currentY:F

.field private easingX:F

.field private easingY:F

.field private floatAnimator:Landroid/animation/ValueAnimator;

.field private grass:Landroid/widget/ImageView;

.field private grassHeight:I

.field private grassInY:F

.field private grassOutY:F

.field private grassWidth:I

.field private isTouched:Z

.field private mContext:Landroid/content/Context;

.field private pullAnimator:Landroid/animation/ValueAnimator;

.field private pushAnimationMax:F

.field private pushAnimationMin:F

.field private pushAnimationValue:F

.field private pushAnimator:Landroid/animation/ValueAnimator;

.field private range:[F

.field private resolutionRatio:F

.field private sky:Landroid/widget/ImageView;

.field private speedX:[F

.field private speedY:[F

.field private stageHeight:F

.field private stageWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/high16 v9, 0x430f

    const/high16 v8, 0x42d6

    const/high16 v7, 0x4264

    const/4 v6, 0x1

    const/4 v5, 0x5

    .line 155
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 26
    const-string v0, "Bubble"

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->TAG:Ljava/lang/String;

    .line 28
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->DBG:Z

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationMin:F

    .line 98
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bgMovePixel:I

    .line 102
    const v0, 0x186a0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->FLOAT_ANIMATION_DURATION:I

    .line 104
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->PUSH_ANIMATION_DURATION:I

    .line 106
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->PULL_ANIMATION_DURATION:I

    .line 108
    const/high16 v0, 0x3fc0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->OUT_SCALE:F

    .line 110
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->resolutionRatio:F

    .line 118
    new-array v0, v5, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x44408000

    const v4, 0x44bda000

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x43b08000

    const/high16 v3, 0x4404

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, -0x3c15

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x44664000

    invoke-direct {v2, v3, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x44af8000

    invoke-direct {v2, v9, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleFirstPointPortrait:[Landroid/graphics/PointF;

    .line 126
    new-array v0, v5, [Landroid/graphics/PointF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x44c44000

    const v4, 0x44334000

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/graphics/PointF;

    const v2, 0x443c4000

    const/high16 v3, 0x43a4

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v1, v0, v6

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, -0x3c79

    invoke-direct {v2, v3, v7}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/PointF;

    const v3, 0x44664000

    invoke-direct {v2, v3, v8}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/graphics/PointF;

    const/high16 v3, 0x4462

    invoke-direct {v2, v9, v3}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleFirstPointLandscape:[Landroid/graphics/PointF;

    .line 134
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->angleX:[F

    .line 138
    new-array v0, v5, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->angleY:[F

    .line 142
    new-array v0, v5, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->speedX:[F

    .line 146
    new-array v0, v5, [F

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->speedY:[F

    .line 150
    new-array v0, v5, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->range:[F

    .line 156
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->mContext:Landroid/content/Context;

    .line 158
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleInit()V

    .line 159
    return-void

    .line 134
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 138
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 142
    :array_2
    .array-data 0x4
        0x58t 0x39t 0x34t 0x3ct
        0x8ft 0xc2t 0x75t 0x3ct
        0xa6t 0x9bt 0x44t 0x3ct
        0x42t 0x60t 0xe5t 0x3bt
        0xbct 0x74t 0x13t 0x3ct
    .end array-data

    .line 146
    :array_3
    .array-data 0x4
        0xf4t 0xfdt 0x54t 0x3ct
        0x6ft 0x12t 0x3t 0x3ct
        0xbct 0x74t 0x13t 0x3ct
        0x58t 0x39t 0x34t 0x3ct
        0xat 0xd7t 0x23t 0x3ct
    .end array-data

    .line 150
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x48t 0x42t
        0x0t 0x0t 0x48t 0x42t
        0x0t 0x0t 0x48t 0x42t
        0x0t 0x0t 0x48t 0x42t
        0x0t 0x0t 0x48t 0x42t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->animatedFloat()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationValue:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationMin:F

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->animatedBubblePush()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationMax:F

    return v0
.end method

.method private addBubbles()V
    .locals 7

    .prologue
    const v5, 0x108044e

    const/4 v4, -0x2

    .line 249
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleLeftBottom:Landroid/widget/ImageView;

    .line 250
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleLeftBottom:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 251
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleLeftBottom:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 254
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleRightTop:Landroid/widget/ImageView;

    .line 255
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleRightTop:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 256
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleRightTop:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 259
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleLeftTop:Landroid/widget/ImageView;

    .line 260
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleLeftTop:Landroid/widget/ImageView;

    const v3, 0x108044d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 261
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleLeftTop:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 264
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$LightBubble;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$LightBubble;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubble:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$LightBubble;

    .line 265
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubble:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$LightBubble;

    invoke-virtual {p0, v2, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 268
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleRightBottom:Landroid/widget/ImageView;

    .line 269
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleRightBottom:Landroid/widget/ImageView;

    const v3, 0x108044f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 270
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleRightBottom:Landroid/widget/ImageView;

    invoke-virtual {p0, v2, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 272
    const/4 v2, 0x5

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleRightBottom:Landroid/widget/ImageView;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubble:Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$LightBubble;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleLeftTop:Landroid/widget/ImageView;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleRightTop:Landroid/widget/ImageView;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleLeftBottom:Landroid/widget/ImageView;

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbles:[Landroid/view/View;

    .line 276
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbles:[Landroid/view/View;

    array-length v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleTotal:I

    .line 277
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleFirstPoint:[Landroid/graphics/PointF;

    array-length v2, v2

    new-array v2, v2, [Landroid/graphics/PointF;

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleCurrentPoint:[Landroid/graphics/PointF;

    .line 278
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleTotal:I

    if-ge v1, v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleCurrentPoint:[Landroid/graphics/PointF;

    new-instance v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleFirstPoint:[Landroid/graphics/PointF;

    aget-object v4, v4, v1

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->resolutionRatio:F

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleFirstPoint:[Landroid/graphics/PointF;

    aget-object v5, v5, v1

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->resolutionRatio:F

    mul-float/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v3, v2, v1

    .line 280
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbles:[Landroid/view/View;

    aget-object v0, v2, v1

    .line 281
    .local v0, bb:Landroid/view/View;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleFirstPoint:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 282
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleFirstPoint:[Landroid/graphics/PointF;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setY(F)V

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v0           #bb:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private animatedBubblePush()V
    .locals 7

    .prologue
    .line 347
    const/high16 v4, 0x3f80

    const v5, 0x3e99999a

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationValue:F

    mul-float/2addr v5, v6

    sub-float v3, v4, v5

    .line 348
    .local v3, scale:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleTotal:I

    if-ge v2, v4, :cond_0

    .line 349
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbles:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 350
    .local v0, bb:Landroid/view/View;
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    .line 351
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    .line 348
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 354
    .end local v0           #bb:Landroid/view/View;
    :cond_0
    const/high16 v4, 0x3fc0

    const/high16 v5, 0x3f00

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationValue:F

    mul-float/2addr v5, v6

    sub-float v1, v4, v5

    .line 355
    .local v1, bgScale:F
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloud:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleX(F)V

    .line 356
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloud:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleY(F)V

    .line 357
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grass:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleX(F)V

    .line 358
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grass:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/view/View;->setScaleY(F)V

    .line 360
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->setCloudAndGrass()V

    .line 361
    return-void
.end method

.method private animatedFloat()V
    .locals 12

    .prologue
    const v10, 0x3e4ccccd

    .line 320
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stageWidth:F

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->currentX:F

    sub-float v4, v8, v9

    .line 321
    .local v4, targetX:F
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stageHeight:F

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->currentY:F

    sub-float v5, v8, v9

    .line 322
    .local v5, targetY:F
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->easingX:F

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->easingX:F

    sub-float v9, v4, v9

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->easingX:F

    .line 323
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->easingY:F

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->easingY:F

    sub-float v9, v5, v9

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->easingY:F

    .line 325
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleTotal:I

    if-ge v1, v8, :cond_0

    .line 326
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbles:[Landroid/view/View;

    aget-object v0, v8, v1

    .line 327
    .local v0, bb:Landroid/view/View;
    const/high16 v8, 0x3f80

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationValue:F

    iget v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleTotal:I

    sub-int/2addr v10, v1

    int-to-float v10, v10

    mul-float/2addr v9, v10

    const v10, 0x3d8f5c29

    mul-float/2addr v9, v10

    sub-float v3, v8, v9

    .line 328
    .local v3, percent:F
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v2, v8

    .line 329
    .local v2, offset:F
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleCurrentPoint:[Landroid/graphics/PointF;

    aget-object v8, v8, v1

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->easingX:F

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleFirstPoint:[Landroid/graphics/PointF;

    aget-object v10, v10, v1

    iget v10, v10, Landroid/graphics/PointF;->x:F

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->resolutionRatio:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v2

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->easingX:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    sub-float/2addr v9, v2

    iput v9, v8, Landroid/graphics/PointF;->x:F

    .line 331
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleCurrentPoint:[Landroid/graphics/PointF;

    aget-object v8, v8, v1

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->easingY:F

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleFirstPoint:[Landroid/graphics/PointF;

    aget-object v10, v10, v1

    iget v10, v10, Landroid/graphics/PointF;->y:F

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->resolutionRatio:F

    mul-float/2addr v10, v11

    add-float/2addr v10, v2

    iget v11, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->easingY:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v3

    add-float/2addr v9, v10

    sub-float/2addr v9, v2

    iput v9, v8, Landroid/graphics/PointF;->y:F

    .line 333
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleCurrentPoint:[Landroid/graphics/PointF;

    aget-object v8, v8, v1

    iget v8, v8, Landroid/graphics/PointF;->x:F

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->angleX:[F

    aget v9, v9, v1

    invoke-static {v9}, Landroid/util/FloatMath;->sin(F)F

    move-result v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->range:[F

    aget v10, v10, v1

    mul-float/2addr v9, v10

    add-float v6, v8, v9

    .line 334
    .local v6, tx:F
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleCurrentPoint:[Landroid/graphics/PointF;

    aget-object v8, v8, v1

    iget v8, v8, Landroid/graphics/PointF;->y:F

    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->angleY:[F

    aget v9, v9, v1

    invoke-static {v9}, Landroid/util/FloatMath;->sin(F)F

    move-result v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->range:[F

    aget v10, v10, v1

    mul-float/2addr v9, v10

    add-float v7, v8, v9

    .line 335
    .local v7, ty:F
    invoke-virtual {v0, v6}, Landroid/view/View;->setX(F)V

    .line 336
    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    .line 338
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->angleX:[F

    aget v9, v8, v1

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->speedX:[F

    aget v10, v10, v1

    add-float/2addr v9, v10

    aput v9, v8, v1

    .line 339
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->angleY:[F

    aget v9, v8, v1

    iget-object v10, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->speedY:[F

    aget v10, v10, v1

    add-float/2addr v9, v10

    aput v9, v8, v1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 342
    .end local v0           #bb:Landroid/view/View;
    .end local v2           #offset:F
    .end local v3           #percent:F
    .end local v6           #tx:F
    .end local v7           #ty:F
    :cond_0
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->easingY:F

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->centerY:F

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bgMoveRatio:F

    mul-float/2addr v8, v9

    iput v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bgOffsetByYTouchPoint:F

    .line 343
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pullAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v8}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->setCloudAndGrass()V

    .line 344
    :cond_1
    return-void
.end method

.method private bubbleInit()V
    .locals 6

    .prologue
    .line 162
    const-string v3, "Bubble"

    const-string v4, "bubbleInit"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v1, v3, Landroid/content/res/Configuration;->orientation:I

    .line 165
    .local v1, orientation:I
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->setOrientation(I)V

    .line 167
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v0, 0x1

    .line 168
    .local v0, isLandscape:Z
    :goto_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stageWidth:F

    .line 169
    .local v2, sLength:F
    :goto_1
    const/high16 v3, 0x44f0

    div-float v3, v2, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->resolutionRatio:F

    .line 170
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bgMovePixel:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->resolutionRatio:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bgMovePixel:I

    .line 171
    const-string v3, "Bubble"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolutionRatio(HD1080) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->resolutionRatio:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->setLayout()V

    .line 174
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->setCloudGrassPosition()V

    .line 175
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->setAnimator()V

    .line 176
    return-void

    .line 167
    .end local v0           #isLandscape:Z
    .end local v2           #sLength:F
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 168
    .restart local v0       #isLandscape:Z
    :cond_1
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stageHeight:F

    goto :goto_1
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1
    .parameter "animator"

    .prologue
    .line 395
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 397
    :cond_0
    return-void
.end method

.method private getResourceImageHeight(I)I
    .locals 2
    .parameter "resource"

    .prologue
    .line 484
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 485
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 486
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 487
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    return v1
.end method

.method private getResourceImageWidth(I)I
    .locals 2
    .parameter "resource"

    .prologue
    .line 477
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 478
    .local v0, opts:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 479
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 480
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    return v1
.end method

.method private setAnimator()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x3e8

    const/4 v3, 0x2

    .line 287
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->floatAnimator:Landroid/animation/ValueAnimator;

    .line 288
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->floatAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->floatAnimator:Landroid/animation/ValueAnimator;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->floatAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v1, 0x186a0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 291
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->floatAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 297
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimator:Landroid/animation/ValueAnimator;

    .line 298
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 308
    new-array v0, v3, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pullAnimator:Landroid/animation/ValueAnimator;

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pullAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$QuintEaseOut;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$QuintEaseOut;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 310
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pullAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 311
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pullAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView$3;-><init>(Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 317
    return-void

    .line 287
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 297
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 308
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private setCloudAndGrass()V
    .locals 6

    .prologue
    .line 364
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bgOffsetByYTouchPoint:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloudOutY:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationValue:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloudInY:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloudOutY:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float v0, v2, v3

    .line 365
    .local v0, cloudY:F
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloud:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setY(F)V

    .line 367
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bgOffsetByYTouchPoint:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grassOutY:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationValue:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grassInY:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grassOutY:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float v1, v2, v3

    .line 368
    .local v1, grassY:F
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grass:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setY(F)V

    .line 369
    return-void
.end method

.method private setCloudGrassPosition()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    .line 234
    const/high16 v0, 0x3e80

    .line 235
    .local v0, scaleOffset:F
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stageHeight:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grassHeight:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bgMovePixel:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grassInY:F

    .line 236
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stageHeight:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grassHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grassOutY:F

    .line 237
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grass:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stageWidth:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grassWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 238
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grass:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grassOutY:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 240
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloudHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloudHeight:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloudOutY:F

    .line 241
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bgMovePixel:I

    neg-int v1, v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloudInY:F

    .line 242
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloud:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stageWidth:F

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloudWidth:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setX(F)V

    .line 243
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloud:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloudOutY:F

    invoke-virtual {v1, v2}, Landroid/view/View;->setY(F)V

    .line 244
    return-void
.end method

.method private setLayout()V
    .locals 6

    .prologue
    const/high16 v5, 0x3fc0

    .line 203
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->sky:Landroid/widget/ImageView;

    .line 204
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->sky:Landroid/widget/ImageView;

    const v3, 0x1080450

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 205
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->sky:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 206
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->sky:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 209
    const v1, 0x108044c

    .line 210
    .local v1, grassId:I
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grass:Landroid/widget/ImageView;

    .line 211
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grass:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 212
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->getResourceImageWidth(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grassWidth:I

    .line 213
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->getResourceImageHeight(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grassHeight:I

    .line 214
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grass:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grassWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grassHeight:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 215
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grass:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    .line 216
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->grass:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    .line 220
    const v0, 0x108044b

    .line 221
    .local v0, cloudId:I
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloud:Landroid/widget/ImageView;

    .line 222
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloud:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 223
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->getResourceImageWidth(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloudWidth:I

    .line 224
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->getResourceImageHeight(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloudHeight:I

    .line 225
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloud:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloudWidth:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloudHeight:I

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 226
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloud:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleX(F)V

    .line 227
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cloud:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setScaleY(F)V

    .line 230
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->addBubbles()V

    .line 231
    return-void
.end method

.method private setOrientation(I)V
    .locals 5
    .parameter "orientation"

    .prologue
    const/high16 v4, 0x4000

    .line 179
    packed-switch p1, :pswitch_data_0

    .line 190
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 191
    .local v0, dm:Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stageWidth:F

    .line 192
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stageHeight:F

    .line 193
    const-string v1, "Bubble"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stageWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stageHeight:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stageWidth:F

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->centerX:F

    .line 195
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stageHeight:F

    div-float/2addr v1, v4

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->centerY:F

    .line 196
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->centerX:F

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->easingX:F

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->currentX:F

    .line 197
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->centerY:F

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->easingY:F

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->currentY:F

    .line 198
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bgMovePixel:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->centerY:F

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bgMoveRatio:F

    .line 199
    return-void

    .line 181
    .end local v0           #dm:Landroid/util/DisplayMetrics;
    :pswitch_0
    const-string v1, "Bubble"

    const-string v2, "setOrientation : ORIENTATION_LANDSCAPE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleFirstPointLandscape:[Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleFirstPoint:[Landroid/graphics/PointF;

    goto :goto_0

    .line 185
    :pswitch_1
    const-string v1, "Bubble"

    const-string v2, "setOrientation : ORIENTATION_PORTRAIT"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleFirstPointPortrait:[Landroid/graphics/PointF;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->bubbleFirstPoint:[Landroid/graphics/PointF;

    goto :goto_0

    .line 179
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private startBubbleFloating()V
    .locals 2

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->floatAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->floatAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 373
    const-string v0, "Bubble"

    const-string v1, "start floating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->setOrientation(I)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->floatAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 377
    :cond_0
    return-void
.end method

.method private stopBubbleFloating()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->floatAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->floatAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    const-string v0, "Bubble"

    const-string v1, "stop floating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->floatAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 383
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .prologue
    .line 441
    const-string v0, "Bubble"

    const-string v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stopBubbleFloating()V

    .line 443
    return-void
.end method

.method public getUnlockDelay()J
    .locals 2

    .prologue
    .line 459
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public handleHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 464
    const/4 v0, 0x0

    return v0
.end method

.method public handleTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 401
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 402
    const-string v0, "Bubble"

    const-string v1, "handleTouchEvent : ACTION_DOWN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->isTouched:Z

    .line 404
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pullAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 406
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->currentX:F

    .line 407
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->currentY:F

    .line 408
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationValue:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationMin:F

    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 425
    :cond_0
    :goto_0
    return v2

    .line 410
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    if-nez v0, :cond_2

    .line 412
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->currentX:F

    .line 413
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->currentY:F

    goto :goto_0

    .line 414
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 416
    :cond_3
    const-string v0, "Bubble"

    const-string v1, "handleTouchEvent : ACTION_UP || ACTION_CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->isTouched:Z

    .line 418
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pullAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->cancelAnimator(Landroid/animation/Animator;)V

    .line 420
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->centerX:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->currentX:F

    .line 421
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->centerY:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->currentY:F

    .line 422
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationValue:F

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pushAnimationMax:F

    .line 423
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->pullAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public handleUnlock(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2
    .parameter "view"
    .parameter "event"

    .prologue
    .line 453
    const-string v0, "Bubble"

    const-string v1, "handleUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stopBubbleFloating()V

    .line 455
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 387
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 388
    const-string v0, "Bubble"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->setOrientation(I)V

    .line 390
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->setCloudGrassPosition()V

    .line 391
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->animatedFloat()V

    .line 392
    return-void
.end method

.method public playLockSound()V
    .locals 0

    .prologue
    .line 475
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 447
    const-string v0, "Bubble"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->stopBubbleFloating()V

    .line 449
    return-void
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 435
    const-string v0, "Bubble"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/BubbleView;->startBubbleFloating()V

    .line 437
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 430
    const-string v0, "Bubble"

    const-string v1, "show"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    return-void
.end method

.method public showUnlockAffordance(JLandroid/graphics/Rect;)V
    .locals 2
    .parameter "startDelay"
    .parameter "rect"

    .prologue
    .line 469
    const-string v0, "Bubble"

    const-string v1, "showUnlockAffordance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    return-void
.end method
