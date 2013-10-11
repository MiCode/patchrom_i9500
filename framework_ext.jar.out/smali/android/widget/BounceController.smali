.class public Landroid/widget/BounceController;
.super Ljava/lang/Object;
.source "BounceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/BounceController$BounceScrollRunnableDefault;,
        Landroid/widget/BounceController$AwakenScrollBarInterface;,
        Landroid/widget/BounceController$BOUNCETWEENER;,
        Landroid/widget/BounceController$Tweener;,
        Landroid/widget/BounceController$BounceRunnable;
    }
.end annotation


# static fields
.field private static final BOUNCE_EXTENT_ADJUSTMENT:F = 0.5f

.field public static final BOUNCE_FROM_DRAG_DURATION_MAX_DEF:I = 0x190

.field public static final BOUNCE_FROM_DRAG_DURATION_MIN_DEF:I = 0x190

.field public static final BOUNCE_FROM_FLING_DURATION_MAX_DEF:I = 0x258

.field public static final BOUNCE_FROM_FLING_DURATION_MIN_DEF:I = 0x258

.field public static final BOUNCE_RUNNABLE_DEFAULT:I = 0x0

.field public static final BOUNCE_RUNNABLE_NUM:I = 0x1

.field public static final EXP_COEFFICIENT_1:F = -10.0f

.field public static final EXP_COEFFICIENT_2:F = 26.0f

.field public static final HORIZONTAL:I = 0x0

.field public static final ID_DRAG_MAX:I = 0x1

.field public static final ID_DRAG_MIN:I = 0x0

.field public static final ID_FLING_MAX:I = 0x3

.field public static final ID_FLING_MIN:I = 0x2

.field private static final MAX_BOUNCE_RATIO:F = 0.8f

.field private static final MAX_FLING_SPEED:F = 6000.0f

.field public static final MIN_BOUNCE_EXTENT:F = 1.0f

.field public static final SIN_COEFFICIENT:F = 0.01f

.field public static final TAG:Ljava/lang/String; = "BounceController"

.field public static final VERTICAL:I = 0x1

.field public static mTweener:Landroid/widget/BounceController$Tweener;


# instance fields
.field private DEBUG_BOUNCE:Z

.field final MAX_DEGREE:I

.field MAX_SHIFT:F

.field public mBounceExtent:F

.field private mBounceRunnableClasses:[Ljava/lang/Class;

.field private mBounceRunnables:[Landroid/widget/BounceController$BounceRunnable;

.field private mDurations:[I

.field private mMaxBounceExtent:F

.field private mMaxBounceRatio:F

.field private mMaxFlingSpeed:F

.field private mOrientation:I

.field private mView:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 487
    sget-object v0, Landroid/widget/BounceController$BOUNCETWEENER;->QUINT_EASE_IN_OUT:Landroid/widget/BounceController$BOUNCETWEENER;

    invoke-virtual {v0}, Landroid/widget/BounceController$BOUNCETWEENER;->getTweener()Landroid/widget/BounceController$Tweener;

    move-result-object v0

    sput-object v0, Landroid/widget/BounceController;->mTweener:Landroid/widget/BounceController$Tweener;

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "bounceView"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v3, p0, Landroid/widget/BounceController;->DEBUG_BOUNCE:Z

    .line 24
    iput v2, p0, Landroid/widget/BounceController;->mBounceExtent:F

    .line 33
    iput v1, p0, Landroid/widget/BounceController;->mOrientation:I

    .line 56
    new-array v0, v1, [Landroid/widget/BounceController$BounceRunnable;

    iput-object v0, p0, Landroid/widget/BounceController;->mBounceRunnables:[Landroid/widget/BounceController$BounceRunnable;

    .line 58
    new-array v0, v1, [Ljava/lang/Class;

    const-class v1, Landroid/widget/BounceController$BounceScrollRunnableDefault;

    aput-object v1, v0, v3

    iput-object v0, p0, Landroid/widget/BounceController;->mBounceRunnableClasses:[Ljava/lang/Class;

    .line 79
    const/high16 v0, -0x4080

    iput v0, p0, Landroid/widget/BounceController;->MAX_SHIFT:F

    .line 81
    const/16 v0, 0x2d

    iput v0, p0, Landroid/widget/BounceController;->MAX_DEGREE:I

    .line 142
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    .line 180
    const v0, 0x45bb8000

    iput v0, p0, Landroid/widget/BounceController;->mMaxFlingSpeed:F

    .line 195
    const v0, 0x3f4ccccd

    iput v0, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    .line 210
    iput v2, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    .line 84
    iput-object p1, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    .line 86
    iget-object v0, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    .line 87
    return-void

    .line 142
    nop

    :array_0
    .array-data 0x4
        0x90t 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
        0x58t 0x2t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/widget/BounceController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-boolean v0, p0, Landroid/widget/BounceController;->DEBUG_BOUNCE:Z

    return v0
.end method

.method static synthetic access$100(Landroid/widget/BounceController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Landroid/widget/BounceController;->mOrientation:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/BounceController;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/BounceController;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/BounceController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Landroid/widget/BounceController;->mMaxFlingSpeed:F

    return v0
.end method

.method static synthetic access$500(Landroid/widget/BounceController;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget v0, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    return v0
.end method


# virtual methods
.method public adjustBounceExtent()F
    .locals 3

    .prologue
    .line 218
    iget v1, p0, Landroid/widget/BounceController;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    iget v2, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    .line 222
    iget v1, p0, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 223
    .local v0, extent:F
    iget v1, p0, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 224
    const/high16 v1, -0x4080

    mul-float/2addr v0, v1

    .line 226
    :cond_0
    return v0

    .line 218
    .end local v0           #extent:F
    :cond_1
    iget-object v1, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method public adjustBounceExtent(F)F
    .locals 3
    .parameter "maxExtentByBounceHeight"

    .prologue
    .line 230
    iget v1, p0, Landroid/widget/BounceController;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    iget v2, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    .line 233
    iget v1, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    .line 235
    iget v1, p0, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 236
    .local v0, extent:F
    iget v1, p0, Landroid/widget/BounceController;->mBounceExtent:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 237
    const/high16 v1, -0x4080

    mul-float/2addr v0, v1

    .line 239
    :cond_0
    return v0

    .line 230
    .end local v0           #extent:F
    :cond_1
    iget-object v1, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_0
.end method

.method public getBounceExtentRatio()F
    .locals 2

    .prologue
    .line 243
    iget v0, p0, Landroid/widget/BounceController;->mBounceExtent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    div-float/2addr v0, v1

    return v0
.end method

.method public getBounceExtentRatioOverEndEffect(F)F
    .locals 2
    .parameter "adjustedBounceViewHeight"

    .prologue
    const/4 v0, 0x0

    .line 247
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 249
    :cond_1
    iget v1, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    sub-float/2addr v1, p1

    div-float v0, p1, v1

    .line 250
    .local v0, ratio:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 251
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getBounceRunnable(I)Landroid/widget/BounceController$BounceRunnable;
    .locals 1
    .parameter "id"

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Landroid/widget/BounceController$BounceScrollRunnableDefault;

    invoke-direct {v0, p0}, Landroid/widget/BounceController$BounceScrollRunnableDefault;-><init>(Landroid/widget/BounceController;)V

    .line 68
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBounceRunnable(III)Landroid/widget/BounceController$BounceRunnable;
    .locals 1
    .parameter "id"
    .parameter "dragInterpolator"
    .parameter "flingInterpolator"

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Landroid/widget/BounceController$BounceScrollRunnableDefault;

    invoke-direct {v0, p0}, Landroid/widget/BounceController$BounceScrollRunnableDefault;-><init>(Landroid/widget/BounceController;)V

    .line 76
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration(I)I
    .locals 1
    .parameter "durationId"

    .prologue
    .line 148
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    aget v0, v0, p1

    return v0
.end method

.method public getMaxBounceRatio()F
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    return v0
.end method

.method public getMaxFlingSpeed()F
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Landroid/widget/BounceController;->mMaxFlingSpeed:F

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Landroid/widget/BounceController;->mOrientation:I

    return v0
.end method

.method public setDuration(II)V
    .locals 3
    .parameter "durationId"
    .parameter "duration"

    .prologue
    .line 152
    if-gez p2, :cond_0

    .line 153
    const-string v0, "BounceController"

    const-string v1, "Duration must be longer than 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    array-length v0, v0

    if-ge p1, v0, :cond_1

    if-gez p1, :cond_2

    .line 158
    :cond_1
    const-string v0, "BounceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Duration with id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") doens\'t exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 171
    :cond_3
    :pswitch_0
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    aput p2, v0, p1

    goto :goto_0

    .line 165
    :pswitch_1
    iget-object v0, p0, Landroid/widget/BounceController;->mDurations:[I

    aget v0, v0, p1

    iget-object v1, p0, Landroid/widget/BounceController;->mDurations:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    if-ge v0, v1, :cond_3

    .line 166
    const-string v0, "BounceController"

    const-string v1, "Max value cannot be smaller than Min value."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 162
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setMaxBounceRatio(F)V
    .locals 2
    .parameter "ratio"

    .prologue
    .line 202
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f80

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 203
    :cond_0
    const-string v0, "BounceController"

    const-string v1, "Bounce ratio must be within (0, 1)."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_0
    return-void

    .line 207
    :cond_1
    iput p1, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    goto :goto_0
.end method

.method public setMaxFlingSpeed(F)V
    .locals 2
    .parameter "maxSpeed"

    .prologue
    .line 187
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 188
    const-string v0, "BounceController"

    const-string v1, "Maximum Fling Speed must be larger than 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    :goto_0
    return-void

    .line 192
    :cond_0
    iput p1, p0, Landroid/widget/BounceController;->mMaxFlingSpeed:F

    goto :goto_0
.end method

.method public setOrientation(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 36
    iget v0, p0, Landroid/widget/BounceController;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 37
    iput p1, p0, Landroid/widget/BounceController;->mOrientation:I

    .line 39
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    iget v1, p0, Landroid/widget/BounceController;->mMaxBounceRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/widget/BounceController;->mMaxBounceExtent:F

    .line 42
    :cond_0
    return-void

    .line 39
    :cond_1
    iget-object v0, p0, Landroid/widget/BounceController;->mView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0
.end method
