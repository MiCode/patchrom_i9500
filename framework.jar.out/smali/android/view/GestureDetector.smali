.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$1;,
        Landroid/view/GestureDetector$TwistRecognizer;,
        Landroid/view/GestureDetector$PalmSweepRecognizer;,
        Landroid/view/GestureDetector$PalmTouchRecognizer;,
        Landroid/view/GestureDetector$SurfaceTouchSharingData;,
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;,
        Landroid/view/GestureDetector$OnShapeGestureListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final DEBUG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DOUBLE_TAP_TIMEOUT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field static final TAG:Ljava/lang/String; = "GestureDetector"

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field context1:Landroid/content/Context;

.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field mPalmSweepRecognizer:Landroid/view/GestureDetector$PalmSweepRecognizer;

.field mPalmTouchRecognizer:Landroid/view/GestureDetector$PalmTouchRecognizer;

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

.field private mStillDown:Z

.field mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

.field private mTouchSlopSquare:I

.field mTwistRecognizer:Landroid/view/GestureDetector$TwistRecognizer;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/GestureDetector;->DEBUG:Z

    .line 242
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 243
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 244
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 1070
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 1071
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "handler"

    .prologue
    const/4 v1, 0x0

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 284
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 1086
    if-eqz p3, :cond_2

    .line 1087
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 1091
    :goto_1
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 1095
    instance-of v0, p2, Landroid/view/GestureDetector$OnShapeGestureListener;

    if-eqz v0, :cond_3

    move-object v0, p2

    .line 1096
    check-cast v0, Landroid/view/GestureDetector$OnShapeGestureListener;

    iput-object v0, p0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    .line 1100
    :goto_2
    iput-object p1, p0, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    .line 1101
    new-instance v0, Landroid/view/GestureDetector$PalmSweepRecognizer;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector$PalmSweepRecognizer;-><init>(Landroid/view/GestureDetector;Landroid/view/GestureDetector$1;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mPalmSweepRecognizer:Landroid/view/GestureDetector$PalmSweepRecognizer;

    .line 1102
    new-instance v0, Landroid/view/GestureDetector$PalmTouchRecognizer;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector$PalmTouchRecognizer;-><init>(Landroid/view/GestureDetector;Landroid/view/GestureDetector$1;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mPalmTouchRecognizer:Landroid/view/GestureDetector$PalmTouchRecognizer;

    .line 1103
    new-instance v0, Landroid/view/GestureDetector$TwistRecognizer;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector$TwistRecognizer;-><init>(Landroid/view/GestureDetector;Landroid/view/GestureDetector$1;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mTwistRecognizer:Landroid/view/GestureDetector$TwistRecognizer;

    .line 1104
    new-instance v0, Landroid/view/GestureDetector$SurfaceTouchSharingData;

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector$SurfaceTouchSharingData;-><init>(Landroid/view/GestureDetector;Landroid/view/GestureDetector$1;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    .line 1105
    iget-object v0, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget-object v1, p0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    iput-object v1, v0, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    .line 1108
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_0

    .line 1109
    check-cast p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    .end local p2
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 1111
    :cond_0
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    .line 1112
    return-void

    .restart local p2
    :cond_1
    move-object v0, v1

    .line 284
    goto :goto_0

    .line 1089
    :cond_2
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_1

    .line 1098
    :cond_3
    iput-object v1, p0, Landroid/view/GestureDetector;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    goto :goto_2
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "handler"
    .parameter "unused"

    .prologue
    .line 1128
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 1129
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .parameter "listener"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1055
    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 1056
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .parameter "listener"
    .parameter "handler"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1037
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 1038
    return-void
.end method

.method static synthetic access$000(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic access$002(Landroid/view/GestureDetector;Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    iput-object p1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object p1
.end method

.method static synthetic access$100(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/GestureDetector;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static synthetic access$300(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/view/GestureDetector;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return v0
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1436
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1437
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1438
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1439
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 1440
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1441
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1442
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1443
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1444
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 1445
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    .line 1446
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1448
    :cond_0
    return-void
.end method

.method private cancelTaps()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1451
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1452
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1453
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1454
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1455
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1456
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 1457
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    if-eqz v0, :cond_0

    .line 1458
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1460
    :cond_0
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .prologue
    .line 1478
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1479
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1480
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 1481
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 1132
    iget-object v4, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v4, :cond_0

    .line 1133
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "OnGestureListener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1135
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 1139
    if-nez p1, :cond_1

    .line 1141
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    .line 1142
    .local v3, touchSlop:I
    move v2, v3

    .line 1143
    .local v2, doubleTapTouchSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    .line 1145
    .local v1, doubleTapSlop:I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 1146
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 1155
    :goto_0
    mul-int v4, v3, v3

    iput v4, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 1156
    mul-int v4, v2, v2

    iput v4, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 1157
    mul-int v4, v1, v1

    iput v4, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 1158
    return-void

    .line 1148
    .end local v1           #doubleTapSlop:I
    .end local v2           #doubleTapTouchSlop:I
    .end local v3           #touchSlop:I
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1149
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 1150
    .restart local v3       #touchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v2

    .line 1151
    .restart local v2       #doubleTapTouchSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 1152
    .restart local v1       #doubleTapSlop:I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 1153
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "firstDown"
    .parameter "firstUp"
    .parameter "secondDown"

    .prologue
    const/4 v2, 0x0

    .line 1464
    iget-boolean v3, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v3, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return v2

    .line 1468
    :cond_1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget v5, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_0

    .line 1472
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    sub-int v0, v3, v4

    .line 1473
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    sub-int v1, v3, v4

    .line 1474
    .local v1, deltaY:I
    mul-int v3, v0, v0

    mul-int v4, v1, v1

    add-int/2addr v3, v4

    iget v4, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .prologue
    .line 1188
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 41
    .parameter "ev"

    .prologue
    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 1254
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1256
    .local v5, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    if-nez v35, :cond_1

    .line 1257
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1259
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1261
    and-int/lit16 v0, v5, 0xff

    move/from16 v35, v0

    const/16 v36, 0x6

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_2

    const/16 v21, 0x1

    .line 1263
    .local v21, pointerUp:Z
    :goto_0
    if-eqz v21, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v24

    .line 1266
    .local v24, skipIndex:I
    :goto_1
    const/16 v25, 0x0

    .local v25, sumX:F
    const/16 v26, 0x0

    .line 1267
    .local v26, sumY:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    .line 1268
    .local v6, count:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v0, v6, :cond_5

    .line 1269
    move/from16 v0, v24

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 1268
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 1261
    .end local v6           #count:I
    .end local v17           #i:I
    .end local v21           #pointerUp:Z
    .end local v24           #skipIndex:I
    .end local v25           #sumX:F
    .end local v26           #sumY:F
    :cond_2
    const/16 v21, 0x0

    goto :goto_0

    .line 1263
    .restart local v21       #pointerUp:Z
    :cond_3
    const/16 v24, -0x1

    goto :goto_1

    .line 1270
    .restart local v6       #count:I
    .restart local v17       #i:I
    .restart local v24       #skipIndex:I
    .restart local v25       #sumX:F
    .restart local v26       #sumY:F
    :cond_4
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v35

    add-float v25, v25, v35

    .line 1271
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v35

    add-float v26, v26, v35

    goto :goto_3

    .line 1273
    :cond_5
    if-eqz v21, :cond_8

    add-int/lit8 v11, v6, -0x1

    .line 1274
    .local v11, div:I
    :goto_4
    int-to-float v0, v11

    move/from16 v35, v0

    div-float v13, v25, v35

    .line 1275
    .local v13, focusX:F
    int-to-float v0, v11

    move/from16 v35, v0

    div-float v14, v26, v35

    .line 1277
    .local v14, focusY:F
    const/16 v16, 0x0

    .line 1279
    .local v16, handled:Z
    and-int/lit16 v0, v5, 0xff

    move/from16 v35, v0

    packed-switch v35, :pswitch_data_0

    .line 1429
    :cond_6
    :goto_5
    :pswitch_0
    if-nez v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v35, v0

    if-eqz v35, :cond_7

    .line 1430
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1432
    :cond_7
    return v16

    .end local v11           #div:I
    .end local v13           #focusX:F
    .end local v14           #focusY:F
    .end local v16           #handled:Z
    :cond_8
    move v11, v6

    .line 1273
    goto :goto_4

    .line 1281
    .restart local v11       #div:I
    .restart local v13       #focusX:F
    .restart local v14       #focusY:F
    .restart local v16       #handled:Z
    :pswitch_1
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 1282
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 1284
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancelTaps()V

    goto :goto_5

    .line 1288
    :pswitch_2
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 1289
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 1293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    const/16 v36, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v37, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move/from16 v37, v0

    invoke-virtual/range {v35 .. v37}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1294
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v27

    .line 1295
    .local v27, upIndex:I
    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    .line 1296
    .local v18, id1:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v32

    .line 1297
    .local v32, x1:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v34

    .line 1298
    .local v34, y1:F
    const/16 v17, 0x0

    :goto_6
    move/from16 v0, v17

    if-ge v0, v6, :cond_6

    .line 1299
    move/from16 v0, v17

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    .line 1298
    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 1301
    :cond_a
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v19

    .line 1302
    .local v19, id2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v35

    mul-float v31, v32, v35

    .line 1303
    .local v31, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v35

    mul-float v33, v34, v35

    .line 1305
    .local v33, y:F
    add-float v12, v31, v33

    .line 1306
    .local v12, dot:F
    const/16 v35, 0x0

    cmpg-float v35, v12, v35

    if-gez v35, :cond_9

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_5

    .line 1314
    .end local v12           #dot:F
    .end local v18           #id1:I
    .end local v19           #id2:I
    .end local v27           #upIndex:I
    .end local v31           #x:F
    .end local v32           #x1:F
    .end local v33           #y:F
    .end local v34           #y1:F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v35, v0

    if-eqz v35, :cond_c

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x3

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v15

    .line 1316
    .local v15, hadTapMessage:Z
    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x3

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->removeMessages(I)V

    .line 1317
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    if-eqz v35, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    if-eqz v35, :cond_f

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v35

    if-eqz v35, :cond_f

    .line 1320
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    invoke-interface/range {v35 .. v36}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v35

    or-int v16, v16, v35

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v35

    or-int v16, v16, v35

    .line 1331
    .end local v15           #hadTapMessage:Z
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 1332
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    if-eqz v35, :cond_d

    .line 1334
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->recycle()V

    .line 1336
    :cond_d
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 1337
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1338
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 1339
    const/16 v35, 0x1

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1340
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 1342
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v35, v0

    if-eqz v35, :cond_e

    .line 1343
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x2

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->removeMessages(I)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v37

    sget v39, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    add-long v37, v37, v39

    sget v39, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    add-long v37, v37, v39

    invoke-virtual/range {v35 .. v38}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1347
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v37

    sget v39, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v39, v0

    add-long v37, v37, v39

    invoke-virtual/range {v35 .. v38}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1348
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v35

    or-int v16, v16, v35

    .line 1349
    goto/16 :goto_5

    .line 1327
    .restart local v15       #hadTapMessage:Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x3

    sget v37, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v37, v0

    invoke-virtual/range {v35 .. v38}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_7

    .line 1352
    .end local v15           #hadTapMessage:Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v35, v0

    if-nez v35, :cond_6

    .line 1355
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v35, v0

    sub-float v22, v35, v13

    .line 1356
    .local v22, scrollX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move/from16 v35, v0

    sub-float v23, v35, v14

    .line 1357
    .local v23, scrollY:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v35, v0

    if-eqz v35, :cond_10

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v35

    or-int v16, v16, v35

    goto/16 :goto_5

    .line 1360
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v35, v0

    if-eqz v35, :cond_12

    .line 1361
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v35, v0

    sub-float v35, v13, v35

    move/from16 v0, v35

    float-to-int v8, v0

    .line 1362
    .local v8, deltaX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    move/from16 v35, v0

    sub-float v35, v14, v35

    move/from16 v0, v35

    float-to-int v9, v0

    .line 1363
    .local v9, deltaY:I
    mul-int v35, v8, v8

    mul-int v36, v9, v9

    add-int v10, v35, v36

    .line 1364
    .local v10, distance:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-le v10, v0, :cond_11

    .line 1365
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, p1

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v16

    .line 1366
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 1367
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 1368
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x3

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->removeMessages(I)V

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->removeMessages(I)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x2

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->removeMessages(I)V

    .line 1373
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    move/from16 v35, v0

    move/from16 v0, v35

    if-le v10, v0, :cond_6

    .line 1374
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_5

    .line 1376
    .end local v8           #deltaX:I
    .end local v9           #deltaY:I
    .end local v10           #distance:I
    :cond_12
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v35

    const/high16 v36, 0x3f80

    cmpl-float v35, v35, v36

    if-gez v35, :cond_13

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v35

    const/high16 v36, 0x3f80

    cmpl-float v35, v35, v36

    if-ltz v35, :cond_6

    .line 1377
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, p1

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v16

    .line 1378
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 1379
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    goto/16 :goto_5

    .line 1384
    .end local v22           #scrollX:F
    .end local v23           #scrollY:F
    :pswitch_5
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 1385
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 1386
    .local v7, currentUpEvent:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v35, v0

    if-eqz v35, :cond_17

    .line 1388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v35

    or-int v16, v16, v35

    .line 1408
    :cond_14
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    if-eqz v35, :cond_15

    .line 1409
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/MotionEvent;->recycle()V

    .line 1412
    :cond_15
    move-object/from16 v0, p0

    iput-object v7, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    if-eqz v35, :cond_16

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/view/VelocityTracker;->recycle()V

    .line 1417
    const/16 v35, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1419
    :cond_16
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 1420
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->removeMessages(I)V

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x2

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_5

    .line 1389
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v35, v0

    if-eqz v35, :cond_18

    .line 1390
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v35, v0

    const/16 v36, 0x3

    invoke-virtual/range {v35 .. v36}, Landroid/os/Handler;->removeMessages(I)V

    .line 1391
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_8

    .line 1392
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v35, v0

    if-eqz v35, :cond_19

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v16

    goto :goto_8

    .line 1397
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    .line 1398
    .local v28, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v35, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    .line 1399
    .local v20, pointerId:I
    const/16 v35, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v0, v28

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1400
    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v30

    .line 1401
    .local v30, velocityY:F
    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v29

    .line 1403
    .local v29, velocityX:F
    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    cmpl-float v35, v35, v36

    if-gtz v35, :cond_1a

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v35

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v36, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v36, v0

    cmpl-float v35, v35, v36

    if-lez v35, :cond_14

    .line 1405
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v35, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, p1

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v16

    goto/16 :goto_8

    .line 1425
    .end local v7           #currentUpEvent:Landroid/view/MotionEvent;
    .end local v20           #pointerId:I
    .end local v28           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v29           #velocityX:F
    .end local v30           #velocityY:F
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto/16 :goto_5

    .line 1279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent_ex(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 1203
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector$SurfaceTouchSharingData;->PreUpdate(Landroid/view/MotionEvent;)V

    .line 1204
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v1, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v1, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_3

    .line 1205
    :cond_0
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget-wide v1, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->tCurrentTime:D

    iget-object v3, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget-wide v3, v3, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mLastGetSettingVariableTime:D

    sub-double/2addr v1, v3

    const-wide v3, 0x408f400000000000L

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 1208
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget-object v2, p0, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "surface_motion_engine"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    .line 1213
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget-object v2, p0, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "surface_palm_swipe"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmSweep:I

    .line 1214
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget-object v2, p0, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "surface_palm_touch"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmTouch:I

    .line 1217
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget-object v2, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget-wide v2, v2, Landroid/view/GestureDetector$SurfaceTouchSharingData;->tCurrentTime:D

    iput-wide v2, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mLastGetSettingVariableTime:D

    .line 1219
    :cond_1
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    invoke-virtual {v1}, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Initialize()V

    .line 1220
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v1, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    if-ne v1, v5, :cond_3

    .line 1222
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v1, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Landroid/view/GestureDetector;->mPalmSweepRecognizer:Landroid/view/GestureDetector$PalmSweepRecognizer;

    invoke-virtual {v1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->Initialize()V

    .line 1223
    :cond_2
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v1, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmTouch:I

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Landroid/view/GestureDetector;->mPalmTouchRecognizer:Landroid/view/GestureDetector$PalmTouchRecognizer;

    invoke-virtual {v1}, Landroid/view/GestureDetector$PalmTouchRecognizer;->Initialize()V

    .line 1228
    :cond_3
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v1, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    if-ne v1, v5, :cond_5

    .line 1230
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Update(Landroid/view/MotionEvent;)V

    .line 1231
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v1, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmTouch:I

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Landroid/view/GestureDetector;->mPalmTouchRecognizer:Landroid/view/GestureDetector$PalmTouchRecognizer;

    iget-object v2, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector$PalmTouchRecognizer;->Process(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 1232
    :cond_4
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v1, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Landroid/view/GestureDetector;->mPalmSweepRecognizer:Landroid/view/GestureDetector$PalmSweepRecognizer;

    iget-object v2, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    invoke-virtual {v1, v2}, Landroid/view/GestureDetector$PalmSweepRecognizer;->Process(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 1236
    :cond_5
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v1, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-ne v1, v5, :cond_6

    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v1, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    if-eq v1, v5, :cond_7

    .line 1246
    :cond_6
    :goto_0
    return v0

    .line 1241
    :cond_7
    iget-object v1, p0, Landroid/view/GestureDetector;->mSurfaceTouchSharingData:Landroid/view/GestureDetector$SurfaceTouchSharingData;

    iget v1, v1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    if-ne v1, v5, :cond_8

    .line 1243
    iget-object v1, p0, Landroid/view/GestureDetector;->mPalmSweepRecognizer:Landroid/view/GestureDetector$PalmSweepRecognizer;

    #setter for: Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z
    invoke-static {v1, v0}, Landroid/view/GestureDetector$PalmSweepRecognizer;->access$902(Landroid/view/GestureDetector$PalmSweepRecognizer;Z)Z

    .line 1246
    :cond_8
    iget-object v0, p0, Landroid/view/GestureDetector;->mPalmSweepRecognizer:Landroid/view/GestureDetector$PalmSweepRecognizer;

    invoke-virtual {v0}, Landroid/view/GestureDetector$PalmSweepRecognizer;->getSweepDown()Z

    move-result v0

    goto :goto_0
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0
    .parameter "isLongpressEnabled"

    .prologue
    .line 1181
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 1182
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .parameter "onDoubleTapListener"

    .prologue
    .line 1168
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 1169
    return-void
.end method
