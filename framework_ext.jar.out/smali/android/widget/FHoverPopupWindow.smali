.class public Landroid/widget/FHoverPopupWindow;
.super Landroid/widget/HoverPopupWindow;
.source "FHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FHoverPopupWindow$FHPopupContainer;,
        Landroid/widget/FHoverPopupWindow$QuintEaseOut;
    }
.end annotation


# static fields
.field private static final MSG_TIMEOUT:I = 0x1

.field static final TAG:Ljava/lang/String; = "FHoverPopupWindow"

.field private static final TIMEOUT_DELAY:I = 0x1f4


# instance fields
.field protected DEBUG:Z

.field private H:F

.field private MOVE_CENTER:I

.field private MOVE_LEFT:I

.field private MOVE_LEFT_TO_CENTER:I

.field private MOVE_RIGHT:I

.field private MOVE_RIGHT_TO_CENTER:I

.field private final SHOW_ANIMATION_DURATION:I

.field private TW:F

.field private W:F

.field private mCenterPoint:Landroid/graphics/PointF;

.field private mContainerLeftOnWindow:I

.field private mDirection:I

.field protected mDismissHandler:Landroid/os/Handler;

.field private mDisplayWidthToComputeAniWidth:I

.field protected mHandler:Landroid/os/Handler;

.field private mLeftPoint:Landroid/graphics/PointF;

.field private mPickerPadding:F

.field private mPickerXoffset:I

.field private mReferncedAnchorRect:Landroid/graphics/Rect;

.field private mRightPoint:Landroid/graphics/PointF;

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 3
    .parameter "parentView"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 35
    iput-boolean v2, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    .line 37
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->W:F

    .line 40
    const/high16 v0, 0x4120

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->H:F

    .line 43
    const/high16 v0, 0x4170

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->TW:F

    .line 45
    iput-object v1, p0, Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    .line 47
    iput-object v1, p0, Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    .line 49
    iput-object v1, p0, Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    .line 51
    const/high16 v0, 0x4258

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->mPickerPadding:F

    .line 53
    iput-object v1, p0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    .line 59
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->SHOW_ANIMATION_DURATION:I

    .line 61
    iput v2, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I

    .line 65
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_CENTER:I

    .line 67
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    .line 69
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    .line 71
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_CENTER:I

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->mDirection:I

    .line 73
    iput v2, p0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    .line 75
    iput v2, p0, Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I

    .line 77
    iput v2, p0, Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I

    .line 79
    iput-object v1, p0, Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    .line 81
    iput-object v1, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    .line 92
    new-instance v0, Landroid/widget/FHoverPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/FHoverPopupWindow$1;-><init>(Landroid/widget/FHoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    .line 161
    new-instance v0, Landroid/widget/FHoverPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/FHoverPopupWindow$2;-><init>(Landroid/widget/FHoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    .line 175
    return-void
.end method

.method static synthetic access$000(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    return v0
.end method

.method static synthetic access$100(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mDirection:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/FHoverPopupWindow;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->H:F

    return v0
.end method

.method static synthetic access$102(Landroid/widget/FHoverPopupWindow;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Landroid/widget/FHoverPopupWindow;->mDirection:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/widget/FHoverPopupWindow;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->W:F

    return v0
.end method

.method static synthetic access$1202(Landroid/widget/FHoverPopupWindow;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Landroid/widget/FHoverPopupWindow;->W:F

    return p1
.end method

.method static synthetic access$1300(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/widget/FHoverPopupWindow;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mPickerPadding:F

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/FHoverPopupWindow;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/FHoverPopupWindow;->setAnimator(II)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/FHoverPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/FHoverPopupWindow;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimationValue:F

    return v0
.end method

.method static synthetic access$802(Landroid/widget/FHoverPopupWindow;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Landroid/widget/FHoverPopupWindow;->objAnimationValue:F

    return p1
.end method

.method static synthetic access$900(Landroid/widget/FHoverPopupWindow;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->TW:F

    return v0
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 217
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 222
    :cond_0
    iget-boolean v0, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 223
    const-string v0, "FHoverPopupWindow"

    const-string v1, "resetTimeout: Call sendMessageDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 227
    :cond_2
    return-void
.end method

.method private setAnimator(II)V
    .locals 5
    .parameter "movelength"
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 180
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I

    if-ne p2, v0, :cond_1

    .line 181
    :cond_0
    new-array v0, v1, [F

    aput v2, v0, v3

    int-to-float v1, p1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    .line 188
    :goto_0
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/FHoverPopupWindow$QuintEaseOut;

    invoke-direct {v1, p0}, Landroid/widget/FHoverPopupWindow$QuintEaseOut;-><init>(Landroid/widget/FHoverPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 189
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 190
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/FHoverPopupWindow$3;

    invoke-direct {v1, p0}, Landroid/widget/FHoverPopupWindow$3;-><init>(Landroid/widget/FHoverPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 203
    return-void

    .line 182
    :cond_1
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    if-ne p2, v0, :cond_3

    .line 183
    :cond_2
    new-array v0, v1, [F

    int-to-float v1, p1

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 185
    :cond_3
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public computePopupPosition(Landroid/view/View;III)V
    .locals 46
    .parameter "anchor"
    .parameter "gravity"
    .parameter "offX"
    .parameter "offY"

    .prologue
    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 706
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 360
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 361
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 362
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 364
    if-eqz p1, :cond_14

    move-object/from16 v13, p1

    .line 365
    .local v13, anchorView:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v25

    .line 368
    .local v25, displayMetrics:Landroid/util/DisplayMetrics;
    const/4 v12, 0x0

    .line 369
    .local v12, anchorRect:Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v11, v4, [I

    .line 370
    .local v11, anchorLocOnScr:[I
    const/4 v4, 0x2

    new-array v10, v4, [I

    .line 371
    .local v10, anchorLocInWindow:[I
    invoke-virtual {v13, v11}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 372
    invoke-virtual {v13, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 375
    new-instance v24, Landroid/graphics/Rect;

    invoke-direct/range {v24 .. v24}, Landroid/graphics/Rect;-><init>()V

    .line 376
    .local v24, displayFrame:Landroid/graphics/Rect;
    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 379
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v36

    .line 380
    .local v36, rootview:Landroid/view/View;
    const/16 v30, 0x0

    .line 381
    .local v30, isRootViewFullScreen:Z
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getWidth()I

    move-result v38

    .line 382
    .local v38, rootviewWidth:I
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getHeight()I

    move-result v37

    .line 384
    .local v37, rootviewHeight:I
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v0, v38

    if-ne v0, v4, :cond_2

    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v0, v37

    if-ne v0, v4, :cond_2

    .line 386
    const/16 v30, 0x1

    .line 390
    :cond_2
    invoke-virtual {v13}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v13}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_15

    .line 394
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x0

    aget v5, v10, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 395
    const/4 v4, 0x1

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v10, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 397
    new-instance v12, Landroid/graphics/Rect;

    .end local v12           #anchorRect:Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v10, v4

    const/4 v5, 0x1

    aget v5, v10, v5

    const/4 v6, 0x0

    aget v6, v10, v6

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x1

    aget v9, v10, v9

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v45

    add-int v9, v9, v45

    invoke-direct {v12, v4, v5, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 421
    .restart local v12       #anchorRect:Landroid/graphics/Rect;
    :goto_2
    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_4

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_4

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v35

    .line 423
    .local v35, root:Landroid/view/View;
    invoke-virtual/range {v35 .. v35}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v42

    .line 425
    .local v42, vlp:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v42

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_4

    move-object/from16 v44, v42

    .line 426
    check-cast v44, Landroid/view/WindowManager$LayoutParams;

    .line 427
    .local v44, wlp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v44

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object/from16 v0, v44

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0x404

    if-nez v4, :cond_16

    const/16 v31, 0x1

    .line 429
    .local v31, isSystemUiVisible:Z
    :goto_3
    const/16 v41, 0x0

    .line 431
    .local v41, statusBarHeight:I
    move-object/from16 v0, v44

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    if-eqz v31, :cond_3

    .line 433
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v41

    .line 436
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 437
    move/from16 v0, v41

    move-object/from16 v1, v24

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 438
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 439
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 444
    .end local v31           #isSystemUiVisible:Z
    .end local v35           #root:Landroid/view/View;
    .end local v41           #statusBarHeight:I
    .end local v42           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v44           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 445
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 446
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 447
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int/2addr v4, v5

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 450
    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    .line 451
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_5

    .line 452
    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: mDisplayWidthToComputeAniWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    if-nez v4, :cond_17

    .line 462
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x8000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v43

    .line 464
    .local v43, widthMeasureSpec:I
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x8000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    .line 485
    .local v28, heightMeasureSpec:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move/from16 v0, v43

    move/from16 v1, v28

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 486
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 488
    .local v23, contentWidth:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v21

    .line 490
    .local v21, contentHeight:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 491
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 494
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, v21

    invoke-virtual {v0, v12, v1, v2, v3}, Landroid/widget/FHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 496
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v12, Landroid/graphics/Rect;->left:I

    iget v6, v12, Landroid/graphics/Rect;->top:I

    iget v9, v12, Landroid/graphics/Rect;->right:I

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v45, v0

    move/from16 v0, v45

    invoke-direct {v4, v5, v6, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    .line 501
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v33, v0

    .line 502
    .local v33, posX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v34, v0

    .line 503
    .local v34, posY:I
    const/4 v14, 0x0

    .line 505
    .local v14, canDraw:Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 506
    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: posY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: displayFrame.top = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: anchorRect.bottom = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_6
    add-int v4, v34, v21

    iget v5, v12, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_7

    iget v4, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v34

    if-ge v0, v4, :cond_7

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v34

    iget v5, v12, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_8

    .line 513
    :cond_7
    const/4 v14, 0x1

    .line 516
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_21

    :cond_9
    if-eqz v14, :cond_21

    .line 518
    const/16 v29, 0x1

    .line 520
    .local v29, isPopupAboveHorizontal:Z
    const/high16 v4, 0x4100

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v4, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v32

    .line 523
    .local v32, marginForHoverRing:I
    iget v4, v12, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, v32

    move/from16 v0, v33

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 525
    .local v15, containerLeftOnWindow:I
    add-int v4, v33, v23

    iget v5, v12, Landroid/graphics/Rect;->right:I

    add-int v5, v5, v32

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v24

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 529
    .local v20, containerRightOnWindow:I
    move-object/from16 v0, p0

    iput v15, v0, Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I

    .line 532
    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move/from16 v0, v34

    if-gt v0, v4, :cond_a

    move-object/from16 v0, v24

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v34

    invoke-virtual {v12}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    if-le v4, v5, :cond_1a

    .line 533
    :cond_a
    const/16 v29, 0x0

    .line 546
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-nez v4, :cond_b

    .line 547
    new-instance v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;-><init>(Landroid/widget/FHoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 548
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 549
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 562
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v4, v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_d

    .line 563
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v4, :cond_1b

    .line 564
    :cond_c
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(true)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    .line 573
    :cond_d
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    .line 574
    .local v22, contentLP:Landroid/view/ViewGroup$LayoutParams;
    if-nez v22, :cond_1c

    .line 575
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v23

    move/from16 v1, v21

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 583
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 585
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 588
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_f

    .line 589
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 592
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 593
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 596
    sub-int v4, v15, v33

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v17

    .line 597
    .local v17, containerPaddingLeft:I
    add-int v4, v33, v23

    sub-int v4, v20, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v18

    .line 598
    .local v18, containerPaddingRight:I
    const/16 v19, 0x0

    .line 599
    .local v19, containerPaddingTop:I
    const/16 v16, 0x0

    .line 600
    .local v16, containerPaddingBottom:I
    if-eqz v29, :cond_1d

    .line 601
    iget v4, v12, Landroid/graphics/Rect;->bottom:I

    add-int v4, v4, v32

    add-int v5, v34, v21

    sub-int v16, v4, v5

    .line 603
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v16

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 612
    :goto_8
    if-eqz v29, :cond_1e

    .line 613
    move/from16 v33, v15

    .line 623
    :goto_9
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    sub-int v4, v4, v33

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int v7, v4, v5

    .line 624
    .local v7, hoverPointXonContainer:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    sub-int v4, v4, v34

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int v8, v4, v5

    .line 626
    .local v8, hoverPointYonContainer:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_10

    .line 627
    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow.computePopupPosition(): hoverPointXonContainer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow.computePopupPosition(): hoverPointYonContainer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_10
    if-eqz v29, :cond_1f

    .line 636
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_11

    .line 637
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v23, 0x2

    add-int v5, v5, v17

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v21, v6

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZ)V

    .line 644
    div-int/lit8 v4, v23, 0x2

    add-int v39, v17, v4

    .line 645
    .local v39, startx:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v40, v21, v4

    .line 646
    .local v40, starty:I
    move/from16 v26, v7

    .line 647
    .local v26, endx:I
    move/from16 v27, v8

    .line 649
    .local v27, endy:I
    add-int/lit8 v4, v17, 0xa

    move/from16 v0, v26

    if-ge v0, v4, :cond_12

    .line 684
    .end local v7           #hoverPointXonContainer:I
    .end local v8           #hoverPointYonContainer:I
    .end local v15           #containerLeftOnWindow:I
    .end local v16           #containerPaddingBottom:I
    .end local v17           #containerPaddingLeft:I
    .end local v18           #containerPaddingRight:I
    .end local v19           #containerPaddingTop:I
    .end local v20           #containerRightOnWindow:I
    .end local v22           #contentLP:Landroid/view/ViewGroup$LayoutParams;
    .end local v26           #endx:I
    .end local v27           #endy:I
    .end local v29           #isPopupAboveHorizontal:Z
    .end local v32           #marginForHoverRing:I
    .end local v39           #startx:I
    .end local v40           #starty:I
    :cond_12
    :goto_a
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 685
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 692
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v4, :cond_25

    .line 694
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const v5, 0x1030340

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 700
    :goto_b
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-nez v4, :cond_0

    .line 701
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v4, v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_0

    .line 702
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow.computePopupPosition() : Call setFHmoveAnimationOffset(0)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setFHmoveAnimationOffset(I)V

    goto/16 :goto_0

    .line 364
    .end local v10           #anchorLocInWindow:[I
    .end local v11           #anchorLocOnScr:[I
    .end local v12           #anchorRect:Landroid/graphics/Rect;
    .end local v13           #anchorView:Landroid/view/View;
    .end local v14           #canDraw:Z
    .end local v21           #contentHeight:I
    .end local v23           #contentWidth:I
    .end local v24           #displayFrame:Landroid/graphics/Rect;
    .end local v25           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v28           #heightMeasureSpec:I
    .end local v30           #isRootViewFullScreen:Z
    .end local v33           #posX:I
    .end local v34           #posY:I
    .end local v36           #rootview:Landroid/view/View;
    .end local v37           #rootviewHeight:I
    .end local v38           #rootviewWidth:I
    .end local v43           #widthMeasureSpec:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 403
    .restart local v10       #anchorLocInWindow:[I
    .restart local v11       #anchorLocOnScr:[I
    .restart local v12       #anchorRect:Landroid/graphics/Rect;
    .restart local v13       #anchorView:Landroid/view/View;
    .restart local v24       #displayFrame:Landroid/graphics/Rect;
    .restart local v25       #displayMetrics:Landroid/util/DisplayMetrics;
    .restart local v30       #isRootViewFullScreen:Z
    .restart local v36       #rootview:Landroid/view/View;
    .restart local v37       #rootviewHeight:I
    .restart local v38       #rootviewWidth:I
    :cond_15
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 404
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 406
    new-instance v12, Landroid/graphics/Rect;

    .end local v12           #anchorRect:Landroid/graphics/Rect;
    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x0

    aget v6, v11, v6

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x1

    aget v9, v11, v9

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v45

    add-int v9, v9, v45

    invoke-direct {v12, v4, v5, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 414
    .restart local v12       #anchorRect:Landroid/graphics/Rect;
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 415
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 416
    const/4 v4, 0x0

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 417
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 427
    .restart local v35       #root:Landroid/view/View;
    .restart local v42       #vlp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v44       #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_16
    const/16 v31, 0x0

    goto/16 :goto_3

    .line 467
    .end local v35           #root:Landroid/view/View;
    .end local v42           #vlp:Landroid/view/ViewGroup$LayoutParams;
    .end local v44           #wlp:Landroid/view/WindowManager$LayoutParams;
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_18

    .line 468
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v43

    .line 475
    .restart local v43       #widthMeasureSpec:I
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_19

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x4000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    .restart local v28       #heightMeasureSpec:I
    goto/16 :goto_4

    .line 471
    .end local v28           #heightMeasureSpec:I
    .end local v43           #widthMeasureSpec:I
    :cond_18
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x8000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v43

    .restart local v43       #widthMeasureSpec:I
    goto :goto_c

    .line 479
    :cond_19
    move-object/from16 v0, v25

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x8000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v28

    .restart local v28       #heightMeasureSpec:I
    goto/16 :goto_4

    .line 535
    .restart local v14       #canDraw:Z
    .restart local v15       #containerLeftOnWindow:I
    .restart local v20       #containerRightOnWindow:I
    .restart local v21       #contentHeight:I
    .restart local v23       #contentWidth:I
    .restart local v29       #isPopupAboveHorizontal:Z
    .restart local v32       #marginForHoverRing:I
    .restart local v33       #posX:I
    .restart local v34       #posY:I
    :cond_1a
    const/16 v29, 0x1

    goto/16 :goto_5

    .line 567
    :cond_1b
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    goto/16 :goto_6

    .line 578
    .restart local v22       #contentLP:Landroid/view/ViewGroup$LayoutParams;
    :cond_1c
    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 579
    move/from16 v0, v21

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_7

    .line 606
    .restart local v16       #containerPaddingBottom:I
    .restart local v17       #containerPaddingLeft:I
    .restart local v18       #containerPaddingRight:I
    .restart local v19       #containerPaddingTop:I
    :cond_1d
    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v32

    sub-int v19, v34, v4

    .line 607
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_8

    .line 616
    :cond_1e
    move/from16 v33, v15

    .line 617
    sub-int v34, v34, v19

    goto/16 :goto_9

    .line 658
    .restart local v7       #hoverPointXonContainer:I
    .restart local v8       #hoverPointYonContainer:I
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_20

    .line 659
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint4"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v23, 0x2

    add-int v5, v5, v17

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v19

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZ)V

    goto/16 :goto_a

    .line 667
    .end local v7           #hoverPointXonContainer:I
    .end local v8           #hoverPointYonContainer:I
    .end local v15           #containerLeftOnWindow:I
    .end local v16           #containerPaddingBottom:I
    .end local v17           #containerPaddingLeft:I
    .end local v18           #containerPaddingRight:I
    .end local v19           #containerPaddingTop:I
    .end local v20           #containerRightOnWindow:I
    .end local v22           #contentLP:Landroid/view/ViewGroup$LayoutParams;
    .end local v29           #isPopupAboveHorizontal:Z
    .end local v32           #marginForHoverRing:I
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_24

    .line 668
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-nez v4, :cond_22

    .line 669
    new-instance v4, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    .line 671
    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_23

    .line 672
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_a

    .line 673
    :cond_23
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 674
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 675
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_a

    .line 677
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_12

    .line 679
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 680
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_a

    .line 697
    :cond_25
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const v5, 0x103033f

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_b
.end method

.method public computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 0
    .parameter "anchorRect"
    .parameter "displayFrame"
    .parameter "contentWidth"
    .parameter "contentHeight"

    .prologue
    .line 711
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 718
    return-void
.end method

.method public isHoverPopupPossible()Z
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x1

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/widget/HoverPopupWindow;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 232
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 233
    const-string v7, "FHoverPopupWindow"

    const-string v8, "***** Start FingerHoverPopupWindow.onHoverEvent() *****"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 236
    .local v0, action:I
    const/4 v7, 0x7

    if-ne v0, v7, :cond_d

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v5, v7

    .line 238
    .local v5, rawX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v6, v7

    .line 239
    .local v6, rawY:I
    invoke-virtual {p0, v5, v6}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 242
    iget-boolean v7, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v7, :cond_7

    :cond_1
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 243
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    .line 245
    .local v4, popupView:Landroid/view/View;
    instance-of v7, v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v7, :cond_7

    move-object v1, v4

    .line 248
    check-cast v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    .line 249
    .local v1, containerView:Landroid/widget/FHoverPopupWindow$FHPopupContainer;
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 250
    const-string v7, "FHoverPopupWindow"

    const-string v8, "FingerHoverPopupWindow: kdhpoint1"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_2
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v7, v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v7, :cond_4

    .line 255
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 257
    .local v2, infopickerLeftLimit:I
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v3, v7, v2

    .line 259
    .local v3, infopickerRightLimit:I
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 260
    const-string v7, "FHoverPopupWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FingerHoverPopupWindow.onHoverEvent():  mContentView.getWidth() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const-string v8, "FHoverPopupWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FingerHoverPopupWindow.onHoverEvent():  ((FHPopupContainer)mContentContainer).getWidth() = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v7, "FHoverPopupWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): infopicker_leftLimit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v7, "FHoverPopupWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): infopicker_rightLimit = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_3
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v7, v2, v3}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setPickerLimit(II)V

    .line 277
    .end local v2           #infopickerLeftLimit:I
    .end local v3           #infopickerRightLimit:I
    :cond_4
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 278
    const-string v7, "FHoverPopupWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): rawX = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const-string v7, "FHoverPopupWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): mPopupPosX = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v7, "FHoverPopupWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): mWindowGapX = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    const-string v7, "FHoverPopupWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): endx = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    sub-int v9, v5, v9

    iget v10, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_5
    iget v7, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    sub-int v7, v5, v7

    iget v8, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v7, v8

    iget v8, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    sub-int v8, v6, v8

    iget v9, p0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int/2addr v8, v9

    invoke-virtual {v1, v7, v8}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    .line 293
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_7

    .line 294
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-nez v7, :cond_a

    .line 295
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 296
    const-string v7, "FHoverPopupWindow"

    const-string v8, "FingerHoverPopupWindow.onHoverEvent(): not showing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const-string v7, "FHoverPopupWindow"

    const-string v8, "FingerHoverPopupWindow.onHoverEvent(): not showing: Call containerView.updateDecoration()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_6
    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    .line 319
    .end local v1           #containerView:Landroid/widget/FHoverPopupWindow$FHPopupContainer;
    .end local v4           #popupView:Landroid/view/View;
    :cond_7
    :goto_0
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_8

    .line 320
    const-string v7, "FHoverPopupWindow"

    const-string v8, "ACTION_HOVER_MOVE: FingerHoverPopupWindow.onHoverEvent(): Call resetTimeout()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_8
    invoke-direct {p0}, Landroid/widget/FHoverPopupWindow;->resetTimeout()V

    .line 323
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_9

    .line 324
    const-string v7, "FHoverPopupWindow"

    const-string v8, "***** End FingerHoverPopupWindow.onHoverEvent(): return true *****"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_9
    const/4 v7, 0x1

    .line 347
    .end local v5           #rawX:I
    .end local v6           #rawY:I
    :goto_1
    return v7

    .line 302
    .restart local v1       #containerView:Landroid/widget/FHoverPopupWindow$FHPopupContainer;
    .restart local v4       #popupView:Landroid/view/View;
    .restart local v5       #rawX:I
    .restart local v6       #rawY:I
    :cond_a
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_b

    .line 303
    const-string v7, "FHoverPopupWindow"

    const-string v8, "FingerHoverPopupWindow.onHoverEvent(): showing"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const-string v7, "FHoverPopupWindow"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): showing: mIsFHAnimationEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_b
    iget-boolean v7, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-eqz v7, :cond_7

    .line 309
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_c

    .line 310
    const-string v7, "FHoverPopupWindow"

    const-string v8, "FingerHoverPopupWindow.onHoverEvent(): showing:  Call containerView.updateDecoration()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_c
    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    goto :goto_0

    .line 327
    .end local v1           #containerView:Landroid/widget/FHoverPopupWindow$FHPopupContainer;
    .end local v4           #popupView:Landroid/view/View;
    .end local v5           #rawX:I
    .end local v6           #rawY:I
    :cond_d
    const/16 v7, 0xa

    if-ne v0, v7, :cond_10

    .line 330
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_e

    .line 331
    const-string v7, "FHoverPopupWindow"

    const-string v8, "FingerHoverPopupWindow.onHoverEvent(): ACTION_HOVER_EXIT"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_e
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v7, v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v7, :cond_10

    .line 333
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_f

    .line 334
    const-string v7, "FHoverPopupWindow"

    const-string v8, "FingerHoverPopupWindow.onHoverEvent(): ACTION_HOVER_EXIT: setPopupState(center)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_f
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setPopupState(I)V

    .line 344
    :cond_10
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_11

    .line 345
    const-string v7, "FHoverPopupWindow"

    const-string v8, "***** End FingerHoverPopupWindow.onHoverEvent(): return false *****"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_11
    const/4 v7, 0x0

    goto :goto_1
.end method

.method public setOverTopPickerOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 206
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setOverTopPickerOffset(I)V

    .line 209
    :cond_0
    return-void
.end method

.method public setPickerXOffset(I)V
    .locals 0
    .parameter "Xoffset"

    .prologue
    .line 86
    iput p1, p0, Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I

    .line 87
    return-void
.end method

.method public updateHoverPopup(Landroid/view/View;III)V
    .locals 0
    .parameter "anchor"
    .parameter "gravity"
    .parameter "offsetX"
    .parameter "offsetY"

    .prologue
    .line 723
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    .line 729
    return-void
.end method
