.class public Lcom/sec/android/app/camera/glwidget/TwGLWheelList;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLWheelList.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Lcom/sec/android/glview/TwGLView$OnFocusListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;,
        Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x96

.field private static final CENTER_LAYOUT_INDEX:I = 0x2

.field private static final DEFAULT_SCROLL_THRESHOLD_DIP:F = 10.0f

.field private static final FLING_DECELERATION_DIP:F = 1.0f

.field private static final FLING_STOP_THRESHOLD_DIP:F = 10.0f

.field private static final FLING_VELOCITY_DIVIDE_FACTOR:I = 0xdc

.field private static final LAYOUT_POSITIONS:I = 0x7

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM1_LANDSCAPE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM1_LANDSCAPE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM1_PORTRAIT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM1_PORTRAIT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM1_POS_Z:I = 0x0

.field private static final LIST_ITEM1_SCALE:F = 0.65f

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM2_LANDSCAPE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM2_LANDSCAPE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM2_PORTRAIT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM2_PORTRAIT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM2_POS_Z:I = 0x0

.field private static final LIST_ITEM2_SCALE:F = 0.8f

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM3_LANDSCAPE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM3_LANDSCAPE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM3_PORTRAIT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM3_PORTRAIT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM3_POS_Z:I = 0x0

.field private static final LIST_ITEM3_SCALE:F = 1.0f

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM4_LANDSCAPE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM4_LANDSCAPE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM4_PORTRAIT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM4_PORTRAIT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM4_POS_Z:I = 0x0

.field private static final LIST_ITEM4_SCALE:F = 0.8f

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM5_LANDSCAPE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM5_LANDSCAPE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM5_PORTRAIT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM5_PORTRAIT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LIST_ITEM5_POS_Z:I = 0x0

.field private static final LIST_ITEM5_SCALE:F = 0.65f

#the value of this static final field might be set in the static constructor
.field private static final MODE_MENU_ITEM_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final MODE_MENU_ITEM_WIDTH:I = 0x0

.field public static final SCROLL_LANDSCAPE:I = 0x2

.field public static final SCROLL_PORTRAIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TwGLWheelList"

.field private static final VELOCITY_MODERATION_RATIO:F = 0.2f

.field private static final VELOCITY_REVISE_LIMIT_DIP:F = 30.0f

.field private static final VISIBLE_ITEMS:I = 0x5


# instance fields
.field private alignAnimation:Ljava/lang/Runnable;

.field private mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

.field private mAlignAnimator:Landroid/animation/ValueAnimator;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBaseOffset:F

.field private mCenterIndex:I

.field private mCurrentScrollRatio:F

.field private final mFlingStopThreshold:F

.field private mFlingVelocity:F

.field private mFlingVelocityX:F

.field private mFlingVelocityY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mItemOrientation:I

.field private mLastCenterIndex:I

.field private mLastScrollRatio:F

.field private mLastTouchedLayoutIndex:I

.field private mLayoutIndexCompensation:I

.field private mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

.field protected mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

.field private mOnScrollListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

.field private mOrientationUpdatePended:Z

.field private mPlaySwipeSoundThread:Ljava/lang/Thread;

.field private mPreviousAnimatedValue:F

.field private mScrollDirection:I

.field private mScrollThreshold:F

.field private mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

.field private mScrollX:F

.field private mScrollY:F

.field private mScrolling:Z

.field private mStartIndex:I

.field private mStreamVolume:I

.field private mSwipeSoundId:I

.field private mSwipeSoundPool:Landroid/media/SoundPool;

.field private final mVelocityLimit:F

.field private mViewIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private scrollToCenterAnimation:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const v0, 0x7f08003b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    .line 30
    const v0, 0x7f08003c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    .line 32
    const v0, 0x7f080043

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_X:I

    .line 33
    const v0, 0x7f080044

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_Y:I

    .line 34
    const v0, 0x7f080045

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_X:I

    .line 35
    const v0, 0x7f080046

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_Y:I

    .line 36
    const v0, 0x7f080047

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    .line 37
    const v0, 0x7f080048

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_LANDSCAPE_POS_X:I

    .line 38
    const v0, 0x7f080049

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_LANDSCAPE_POS_Y:I

    .line 39
    const v0, 0x7f08004a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_PORTRAIT_POS_X:I

    .line 40
    const v0, 0x7f08004b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_PORTRAIT_POS_Y:I

    .line 41
    const v0, 0x7f08004c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_POS_Z:I

    .line 42
    const v0, 0x7f08004d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_LANDSCAPE_POS_X:I

    .line 43
    const v0, 0x7f08004e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_LANDSCAPE_POS_Y:I

    .line 44
    const v0, 0x7f08004f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_PORTRAIT_POS_X:I

    .line 45
    const v0, 0x7f080050

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_PORTRAIT_POS_Y:I

    .line 46
    const v0, 0x7f080051

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_POS_Z:I

    .line 47
    const v0, 0x7f080052

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_LANDSCAPE_POS_X:I

    .line 48
    const v0, 0x7f080053

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_LANDSCAPE_POS_Y:I

    .line 49
    const v0, 0x7f080054

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_PORTRAIT_POS_X:I

    .line 50
    const v0, 0x7f080055

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_PORTRAIT_POS_Y:I

    .line 51
    const v0, 0x7f080056

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_POS_Z:I

    .line 52
    const v0, 0x7f080057

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_X:I

    .line 53
    const v0, 0x7f080058

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_Y:I

    .line 54
    const v0, 0x7f080059

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_X:I

    .line 55
    const v0, 0x7f08005a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->MODE_MENU_ITEM_HEIGHT:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_Y:I

    .line 56
    const v0, 0x7f08005b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/glview/TwGLContext;FFFF)V
    .locals 6
    .parameter "glContext"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v5, 0x4120

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 256
    invoke-direct/range {p0 .. p5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    .line 94
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mViewIds:Ljava/util/ArrayList;

    .line 98
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollDirection:I

    .line 101
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollThreshold:F

    .line 103
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollX:F

    .line 104
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollY:F

    .line 105
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityX:F

    .line 106
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    .line 107
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocity:F

    .line 110
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    .line 111
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mPreviousAnimatedValue:F

    .line 113
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mItemOrientation:I

    .line 115
    iput-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    .line 116
    iput-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    .line 118
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    .line 119
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    .line 120
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastCenterIndex:I

    .line 122
    iput-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOrientationUpdatePended:Z

    .line 124
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mBaseOffset:F

    .line 125
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    .line 126
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastScrollRatio:F

    .line 127
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I

    .line 129
    iput v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I

    .line 131
    iput-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    .line 151
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->alignAnimation:Ljava/lang/Runnable;

    .line 200
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->scrollToCenterAnimation:Ljava/lang/Runnable;

    .line 257
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollThreshold:F

    .line 258
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocity:F

    .line 259
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    const/high16 v1, 0x41f0

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mVelocityLimit:F

    .line 260
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getDensity()F

    move-result v0

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingStopThreshold:F

    .line 261
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v2, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundPool:Landroid/media/SoundPool;

    .line 263
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAudioManager:Landroid/media/AudioManager;

    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundPool:Landroid/media/SoundPool;

    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f06001b

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundId:I

    .line 266
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->init(I)V

    .line 267
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingStopThreshold:F

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollDirection:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mVelocityLimit:F

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityX:F

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundId:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStreamVolume:I

    return v0
.end method

.method static synthetic access$1500(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastCenterIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastCenterIndex:I

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnScrollListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$902(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I

    return p1
.end method

.method private init(I)V
    .locals 8
    .parameter "orientation"

    .prologue
    .line 270
    packed-switch p1, :pswitch_data_0

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mBaseOffset:F

    .line 298
    return-void

    .line 273
    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_LANDSCAPE_POS_X:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_LANDSCAPE_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_Y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_POS_Z:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f133332

    const/high16 v5, -0x4080

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 275
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f266666

    const/high16 v5, 0x3f80

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 276
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x2

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd

    const/high16 v5, 0x3f80

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 277
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x3

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_POS_Z:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 278
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x4

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd

    const/high16 v5, 0x3f80

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 279
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x5

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f266666

    const/high16 v5, 0x3f80

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 280
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x6

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_LANDSCAPE_POS_X:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_LANDSCAPE_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_LANDSCAPE_POS_Y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_POS_Z:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f133332

    const/high16 v5, -0x4080

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    goto/16 :goto_0

    .line 285
    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_PORTRAIT_POS_X:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_PORTRAIT_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_Y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_POS_Z:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f133332

    const/high16 v5, -0x4080

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 287
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM1_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f266666

    const/high16 v5, 0x3f80

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 288
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x2

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM2_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd

    const/high16 v5, 0x3f80

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 289
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x3

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM3_POS_Z:I

    int-to-float v3, v3

    const/high16 v4, 0x3f80

    const/high16 v5, 0x3f80

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 290
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x4

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f4ccccd

    const/high16 v5, 0x3f80

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 291
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x5

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_X:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_Y:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    int-to-float v3, v3

    const v4, 0x3f266666

    const/high16 v5, 0x3f80

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    .line 292
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v7, 0x6

    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_X:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_X:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_PORTRAIT_POS_X:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_Y:I

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_PORTRAIT_POS_Y:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_PORTRAIT_POS_Y:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM4_POS_Z:I

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->LIST_ITEM5_POS_Z:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    const v4, 0x3f133332

    const/high16 v5, -0x4080

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    aput-object v0, v6, v7

    goto/16 :goto_0

    .line 270
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private scrollItems(F)V
    .locals 12
    .parameter "offset"

    .prologue
    .line 556
    const/4 v9, 0x0

    cmpl-float v9, p1, v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 652
    :goto_0
    return-void

    .line 559
    :cond_0
    const/4 v4, 0x0

    .line 560
    .local v4, newLayout:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mBaseOffset:F

    div-float v9, p1, v9

    float-to-int v5, v9

    .line 561
    .local v5, offsetQuotient:I
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mBaseOffset:F

    rem-float v9, p1, v9

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mBaseOffset:F

    div-float v7, v9, v10

    .line 562
    .local v7, scrollRatio:F
    const/4 v6, 0x0

    .line 563
    .local v6, roundedStartIndex:I
    const/4 v2, 0x0

    .line 564
    .local v2, isRounded:Z
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    add-float/2addr v9, v7

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    .line 566
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    const/high16 v10, 0x3f80

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_3

    .line 567
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    const/high16 v10, 0x3f80

    sub-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    .line 568
    add-int/lit8 v5, v5, 0x1

    .line 573
    :cond_1
    :goto_1
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    sub-int/2addr v9, v5

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    .line 574
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v10}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v10

    rem-int/2addr v9, v10

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    .line 575
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    const/high16 v10, 0x3f00

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_4

    .line 576
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    .line 577
    add-int/lit8 v9, v6, 0x2

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v3

    .line 578
    .local v3, newCenterIndex:I
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    if-eq v9, v3, :cond_2

    .line 579
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->playSwipeSound()V

    .line 581
    :cond_2
    add-int/lit8 v9, v6, 0x2

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    .line 591
    :goto_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v9}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v9

    if-ge v0, v9, :cond_e

    .line 592
    add-int v9, v6, v0

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v1

    .line 593
    .local v1, index:I
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mViewIds:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/android/glview/TwGLViewGroup;->findViewById(I)Lcom/sec/android/glview/TwGLView;

    move-result-object v8

    .line 594
    .local v8, view:Lcom/sec/android/glview/TwGLView;
    if-nez v8, :cond_6

    .line 591
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 569
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v3           #newCenterIndex:I
    .end local v8           #view:Lcom/sec/android/glview/TwGLView;
    :cond_3
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1

    .line 570
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    const/high16 v10, 0x3f80

    add-float/2addr v9, v10

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    .line 571
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 583
    :cond_4
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    add-int/lit8 v9, v9, 0x1

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v10}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v10

    rem-int v6, v9, v10

    .line 584
    add-int/lit8 v9, v6, 0x2

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v3

    .line 585
    .restart local v3       #newCenterIndex:I
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    if-eq v9, v3, :cond_5

    .line 586
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->playSwipeSound()V

    .line 588
    :cond_5
    add-int/lit8 v9, v6, 0x2

    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v9

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    .line 589
    const/4 v2, 0x1

    goto :goto_2

    .line 597
    .restart local v0       #i:I
    .restart local v1       #index:I
    .restart local v8       #view:Lcom/sec/android/glview/TwGLView;
    :cond_6
    const/4 v9, 0x5

    if-ge v0, v9, :cond_d

    .line 598
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mItemOrientation:I

    packed-switch v9, :pswitch_data_0

    .line 624
    :goto_5
    if-eqz v2, :cond_b

    .line 625
    add-int/lit8 v9, v0, 0x1

    iget v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getLayoutFromYOffset(IF)Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    move-result-object v4

    .line 629
    :goto_6
    iget v9, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    iget v10, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 630
    iget v9, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayoutAbsolute(FZ)V

    .line 631
    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 632
    iget v9, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    iget v10, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 634
    iget v9, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_c

    .line 635
    const/high16 v9, 0x3f80

    invoke-virtual {v8, v9}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 649
    :cond_7
    :goto_7
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    goto :goto_4

    .line 600
    :pswitch_0
    const/4 v9, 0x2

    if-ge v0, v9, :cond_8

    move-object v9, v8

    .line 601
    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToTop()V

    goto :goto_5

    :cond_8
    move-object v9, v8

    .line 603
    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_5

    .line 607
    :pswitch_1
    const/4 v9, 0x2

    if-gt v0, v9, :cond_9

    move-object v9, v8

    .line 608
    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_5

    :cond_9
    move-object v9, v8

    .line 610
    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToTop()V

    goto :goto_5

    .line 614
    :pswitch_2
    const/4 v9, 0x2

    if-ne v0, v9, :cond_a

    move-object v9, v8

    .line 615
    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_5

    :cond_a
    move-object v9, v8

    .line 617
    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToTop()V

    goto :goto_5

    :pswitch_3
    move-object v9, v8

    .line 621
    check-cast v9, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v9}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_5

    .line 627
    :cond_b
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    invoke-virtual {p0, v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getLayoutFromYOffset(IF)Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    move-result-object v4

    goto :goto_6

    .line 636
    :cond_c
    iget v9, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    const/4 v10, 0x0

    cmpg-float v9, v9, v10

    if-gtz v9, :cond_7

    .line 637
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto :goto_7

    .line 641
    :cond_d
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget v10, v10, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v10, v11}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 642
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayoutAbsolute(FZ)V

    .line 643
    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 644
    iget-object v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    iget v9, v9, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    iget v10, v10, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    invoke-virtual {v8, v9, v10}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 646
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto/16 :goto_7

    .line 651
    .end local v1           #index:I
    .end local v8           #view:Lcom/sec/android/glview/TwGLView;
    :cond_e
    iget v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastScrollRatio:F

    goto/16 :goto_0

    .line 598
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getCenterItem()Lcom/sec/android/glview/TwGLView;
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/glview/TwGLView;

    return-object v0
.end method

.method public getCurrentSelectedIndex()I
    .locals 4

    .prologue
    .line 348
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 349
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    .line 350
    .local v1, view:Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->isSelected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    .end local v0           #i:I
    .end local v1           #view:Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :goto_1
    return v0

    .line 348
    .restart local v0       #i:I
    .restart local v1       #view:Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    .end local v1           #view:Lcom/sec/android/app/camera/glwidget/TwGLModeItem;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getCurrentSelectedItem()Lcom/sec/android/glview/TwGLView;
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getCurrentSelectedIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v0

    return-object v0
.end method

.method public getItemIndex(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 443
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v1

    rem-int v0, p1, v1

    .line 444
    .local v0, tempIndex:I
    if-gez v0, :cond_1

    .line 445
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v1

    add-int/2addr v0, v1

    .line 449
    :cond_0
    :goto_0
    return v0

    .line 446
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_0

    .line 447
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public final getLayoutFromYOffset(IF)Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;
    .locals 12
    .parameter "index"
    .parameter "offsetRatio"

    .prologue
    .line 693
    const/4 v8, 0x0

    .line 694
    .local v8, xDiff:F
    const/4 v9, 0x0

    .line 695
    .local v9, yDiff:F
    const/4 v10, 0x0

    .line 696
    .local v10, zDiff:F
    const/4 v7, 0x0

    .line 697
    .local v7, scaleDiff:F
    const/4 v6, 0x0

    .line 699
    .local v6, alphaDiff:F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    sub-float v8, v0, v1

    .line 700
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    sub-float v9, v0, v1

    .line 701
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    sub-float v10, v0, v1

    .line 702
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    sub-float v7, v0, v1

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    sub-float v6, v0, v1

    .line 705
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v1, v1, p1

    iget v1, v1, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    mul-float v2, v8, p2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    mul-float v3, v9, p2

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v3, v3, p1

    iget v3, v3, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    mul-float v4, v10, p2

    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v4, v4, p1

    iget v4, v4, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    mul-float v5, v7, p2

    add-float/2addr v4, v5

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v5, v5, p1

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mAlpha:F

    mul-float v11, v6, p2

    add-float/2addr v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;-><init>(FFFFF)V

    return-object v0
.end method

.method public getLayoutIndex(I)I
    .locals 3
    .parameter "itemIndex"

    .prologue
    .line 453
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    add-int/lit8 v1, v2, -0x2

    .line 454
    .local v1, startIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    .line 455
    add-int v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 459
    .end local v0           #i:I
    :goto_1
    return v0

    .line 454
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 459
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .parameter "animator"

    .prologue
    const/4 v2, 0x0

    .line 711
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mPreviousAnimatedValue:F

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v1, v0

    if-nez v0, :cond_0

    .line 728
    :goto_0
    return-void

    .line 714
    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mPreviousAnimatedValue:F

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 716
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    .line 717
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_2

    .line 718
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I

    .line 727
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->scrollItems(F)V

    goto :goto_0

    .line 719
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 720
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutIndexCompensation:I

    goto :goto_1

    .line 722
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 723
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    goto :goto_1

    .line 725
    :cond_4
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    goto :goto_1
.end method

.method protected declared-synchronized onDraw()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 659
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOrientationUpdatePended:Z

    if-eqz v0, :cond_0

    .line 660
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(Z)V

    .line 661
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOrientationUpdatePended:Z

    .line 663
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_3

    .line 664
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->scrollItems(F)V

    .line 665
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 666
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocity:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    .line 667
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingStopThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 669
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 670
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->alignAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 673
    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3

    .line 674
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    .line 689
    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->onDraw()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    monitor-exit p0

    return-void

    .line 677
    :cond_4
    :try_start_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocity:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    .line 678
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingStopThreshold:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 680
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_6

    .line 681
    :cond_5
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->alignAnimation:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 684
    :cond_6
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    .line 685
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 659
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFocusChanged(Lcom/sec/android/glview/TwGLView;I)Z
    .locals 4
    .parameter "view"
    .parameter "focusStatus"

    .prologue
    const/4 v3, 0x0

    .line 464
    monitor-enter p0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v1

    if-nez v1, :cond_0

    .line 465
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 467
    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    .line 468
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    add-int/lit8 v1, v1, -0x2

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    .line 469
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(Z)V

    .line 470
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastCenterIndex:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    if-eq v1, v2, :cond_0

    .line 471
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;->onCenterItemChanged(I)V

    .line 472
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastCenterIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 478
    .end local v0           #i:I
    :cond_0
    monitor-exit p0

    return v3

    .line 465
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 464
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "view"
    .parameter "event"

    .prologue
    .line 483
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 484
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v1}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 485
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 486
    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getLayoutIndex(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I

    .line 491
    .end local v0           #i:I
    :cond_0
    invoke-virtual {p0, p2}, Lcom/sec/android/glview/TwGLView;->touchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 484
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 496
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 497
    .local v0, e:Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/sec/android/glview/TwGLView;->mapPointReverse([FFF)V

    .line 498
    iget-object v3, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    aget v3, v3, v2

    iget-object v4, p0, Lcom/sec/android/glview/TwGLView;->mTransformedScreenCoordinate:[F

    aget v4, v4, v1

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 500
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v3, :cond_0

    .line 501
    new-instance v3, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;

    invoke-direct {v5, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$TwGLWheelListGestureDetectorListener;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)V

    invoke-direct {v3, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mGestureDetector:Landroid/view/GestureDetector;

    .line 504
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 552
    :goto_0
    return v1

    .line 507
    :catch_0
    move-exception v3

    .line 511
    :cond_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    .line 512
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollY:F

    .line 513
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityX:F

    .line 514
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    .line 515
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    move v1, v2

    .line 516
    goto :goto_0

    .line 517
    :cond_2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v8, :cond_6

    .line 518
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    if-nez v3, :cond_5

    .line 519
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollY:F

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollThreshold:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    .line 520
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    .line 521
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnScrollListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

    if-eqz v1, :cond_3

    .line 522
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnScrollListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

    invoke-interface {v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;->onScrollStart()V

    .line 524
    :cond_3
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 530
    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    move v1, v2

    .line 531
    goto :goto_0

    .line 527
    :cond_5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollY:F

    sub-float/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->scrollItems(F)V

    .line 528
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollY:F

    goto :goto_1

    .line 532
    :cond_6
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    if-nez v3, :cond_9

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_9

    .line 533
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastTouchedLayoutIndex:I

    if-eq v1, v8, :cond_8

    .line 534
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 535
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrollToCenterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_8

    .line 536
    :cond_7
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->scrollToCenterAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 551
    :cond_8
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    move v1, v2

    .line 552
    goto/16 :goto_0

    .line 539
    :cond_9
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    if-eqz v3, :cond_a

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_b

    :cond_a
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v7, :cond_8

    .line 541
    :cond_b
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-ltz v1, :cond_d

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingStopThreshold:F

    cmpg-float v1, v1, v3

    if-gez v1, :cond_d

    .line 542
    iput v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    .line 543
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAlignAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_d

    .line 544
    :cond_c
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->alignAnimation:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 547
    :cond_d
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mScrolling:Z

    .line 548
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    move v1, v2

    .line 549
    goto/16 :goto_0
.end method

.method public playSwipeSound()V
    .locals 3

    .prologue
    .line 792
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mSwipeSoundPool:Landroid/media/SoundPool;

    if-nez v1, :cond_0

    .line 793
    const-string v1, "TwGLWheelList"

    const-string v2, "playSound - mSoundPool is null"

    invoke-static {v1, v2}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    :goto_0
    return-void

    .line 796
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 797
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStreamVolume:I

    .line 800
    :cond_1
    :try_start_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLWheelList;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mPlaySwipeSoundThread:Ljava/lang/Thread;

    .line 806
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mPlaySwipeSoundThread:Ljava/lang/Thread;

    const-string v2, "mPlaySwipeSoundThread"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 807
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mPlaySwipeSoundThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 808
    :catch_0
    move-exception v0

    .line 810
    .local v0, e:Ljava/lang/IllegalThreadStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public refreshList(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 338
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mItemOrientation:I

    .line 339
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->init(I)V

    .line 340
    invoke-virtual {p0}, Lcom/sec/android/glview/TwGLView;->isVisible()I

    move-result v0

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->refreshList(Z)V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOrientationUpdatePended:Z

    goto :goto_0
.end method

.method public refreshList(Z)V
    .locals 11
    .parameter "resetPosition"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 366
    const/4 v3, 0x0

    .line 367
    .local v3, roundedStartIndex:I
    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mFlingVelocityY:F

    .line 368
    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    .line 369
    iput v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastScrollRatio:F

    .line 370
    if-eqz p1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getCurrentSelectedIndex()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    .line 372
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    add-int/lit8 v5, v5, -0x2

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    .line 374
    :cond_0
    const/4 v2, 0x0

    .line 376
    .local v2, isRounded:Z
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCurrentScrollRatio:F

    const/high16 v6, 0x3f00

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    .line 377
    const/4 v2, 0x1

    .line 378
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mStartIndex:I

    add-int/lit8 v3, v5, 0x1

    .line 380
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v5}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v5

    if-ge v0, v5, :cond_8

    .line 382
    add-int v5, v3, v0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->getItemIndex(I)I

    move-result v1

    .line 383
    .local v1, index:I
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v4

    .line 384
    .local v4, view:Lcom/sec/android/glview/TwGLView;
    if-eqz v4, :cond_2

    .line 386
    iput-object p0, v4, Lcom/sec/android/glview/TwGLView;->mParent:Lcom/sec/android/glview/TwGLView;

    .line 388
    const/4 v5, 0x5

    if-ge v0, v5, :cond_7

    .line 389
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mItemOrientation:I

    packed-switch v5, :pswitch_data_0

    .line 415
    :goto_1
    if-eqz v2, :cond_6

    .line 416
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    iget v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    invoke-virtual {v4, v5, v6, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 417
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    invoke-virtual {v4, v5, v8}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayoutAbsolute(FZ)V

    .line 418
    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 419
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v6, v0, 0x1

    aget-object v5, v5, v6

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    iget v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    .line 426
    :goto_2
    const/high16 v5, 0x3f80

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    .line 432
    :goto_3
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sec/android/glview/TwGLView;->updateLayout(Z)V

    .line 433
    invoke-virtual {v4, p0}, Lcom/sec/android/glview/TwGLView;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 380
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 391
    :pswitch_0
    if-ge v0, v10, :cond_3

    move-object v5, v4

    .line 392
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToTop()V

    goto :goto_1

    :cond_3
    move-object v5, v4

    .line 394
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_1

    .line 398
    :pswitch_1
    if-gt v0, v10, :cond_4

    move-object v5, v4

    .line 399
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_1

    :cond_4
    move-object v5, v4

    .line 401
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToTop()V

    goto :goto_1

    .line 405
    :pswitch_2
    if-ne v0, v10, :cond_5

    move-object v5, v4

    .line 406
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_1

    :cond_5
    move-object v5, v4

    .line 408
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToTop()V

    goto :goto_1

    :pswitch_3
    move-object v5, v4

    .line 412
    check-cast v5, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;

    invoke-virtual {v5}, Lcom/sec/android/app/camera/glwidget/TwGLModeItem;->moveTitleToBottom()V

    goto :goto_1

    .line 421
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    invoke-virtual {v4, v5, v6, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 422
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    invoke-virtual {v4, v5, v8}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayoutAbsolute(FZ)V

    .line 423
    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->resetScale()V

    .line 424
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v5, v5, v0

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v6, v6, v0

    iget v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mScale:F

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/glview/TwGLView;->scale(FF)V

    goto :goto_2

    .line 428
    :cond_7
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mX:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v6, v6, v8

    iget v6, v6, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mY:F

    invoke-virtual {v4, v5, v6, v8}, Lcom/sec/android/glview/TwGLView;->translateAbsolute(FFZ)V

    .line 429
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLayoutInfo:[Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;

    aget-object v5, v5, v8

    iget v5, v5, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$LayoutInfo;->mZ:F

    invoke-virtual {v4, v5, v8}, Lcom/sec/android/glview/TwGLView;->moveBaseDepthLayout(FZ)V

    .line 430
    invoke-virtual {v4, v9}, Lcom/sec/android/glview/TwGLView;->setAlpha(F)V

    goto/16 :goto_3

    .line 436
    .end local v1           #index:I
    .end local v4           #view:Lcom/sec/android/glview/TwGLView;
    :cond_8
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    if-eqz v5, :cond_9

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastCenterIndex:I

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    if-eq v5, v6, :cond_9

    .line 437
    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    invoke-interface {v5, v6}, Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;->onCenterItemChanged(I)V

    .line 438
    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mCenterIndex:I

    iput v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mLastCenterIndex:I

    .line 440
    :cond_9
    return-void

    .line 389
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAdapter(Lcom/sec/android/glview/TwGLList$Adapter;)V
    .locals 5
    .parameter "adapter"

    .prologue
    .line 316
    if-nez p1, :cond_0

    .line 317
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 318
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    .line 320
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 321
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/sec/android/glview/TwGLView;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/glview/TwGLView;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLView;->clear()V

    goto :goto_0

    .line 324
    :cond_1
    iget-object v3, p0, Lcom/sec/android/glview/TwGLViewGroup;->mGLViews:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 326
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    invoke-interface {v3}, Lcom/sec/android/glview/TwGLList$Adapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 327
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mAdapter:Lcom/sec/android/glview/TwGLList$Adapter;

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Lcom/sec/android/glview/TwGLList$Adapter;->getView(ILcom/sec/android/glview/TwGLView;)Lcom/sec/android/glview/TwGLView;

    move-result-object v2

    .line 328
    .local v2, view:Lcom/sec/android/glview/TwGLView;
    if-nez v2, :cond_3

    .line 335
    .end local v2           #view:Lcom/sec/android/glview/TwGLView;
    :cond_2
    return-void

    .line 331
    .restart local v2       #view:Lcom/sec/android/glview/TwGLView;
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mViewIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLView;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    invoke-virtual {p0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 333
    invoke-virtual {v2, p0}, Lcom/sec/android/glview/TwGLView;->setOnFocusListener(Lcom/sec/android/glview/TwGLView$OnFocusListener;)V

    .line 326
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setOnCenterItemChangeListener(Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnCenterItemChangeListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnCenterItemChangeListener;

    .line 302
    return-void
.end method

.method public setOnScrollListener(Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLWheelList;->mOnScrollListener:Lcom/sec/android/app/camera/glwidget/TwGLWheelList$OnScrollListener;

    .line 306
    return-void
.end method
