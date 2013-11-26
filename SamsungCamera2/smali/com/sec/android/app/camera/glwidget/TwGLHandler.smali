.class public Lcom/sec/android/app/camera/glwidget/TwGLHandler;
.super Lcom/sec/android/glview/TwGLViewGroup;
.source "TwGLHandler.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnDragListener;
.implements Lcom/sec/android/glview/TwGLView$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLHandler$TwGLHandlerGestureDetectorListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;,
        Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;
    }
.end annotation


# static fields
.field private static final BOUND_RECT_THICKNESS:I = 0x4

.field public static final HANDLER_4POINT:I = 0x4

.field public static final HANDLER_8POINT:I = 0x8

#the value of this static final field might be set in the static constructor
.field private static final HANDLER_AREA_BOTTOM_BOUNDARY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HANDLER_AREA_PADDING:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HANDLER_AREA_TOP_BOUNDARY:I = 0x0

.field public static LEFT_LOCK:I = 0x0

.field private static final MOVE_BOTTOM:I = 0x8

.field private static final MOVE_LEFT:I = 0x1

.field private static final MOVE_RIGHT:I = 0x2

.field private static final MOVE_TOP:I = 0x4

.field private static final MOVE_WHOLERECT:I = 0x10

.field public static NONE_LOCK:I = 0x0

.field private static final OUTER_BOUND_RECT_THICKNESS:I = 0x1

.field private static final RESIZE_HANDLE_OFFSET:I = 0xb

.field private static final RESIZE_HANDLE_SIZE:I = 0x58

.field public static RIGHT_LOCK:I

.field private static final SCREEN_HEIGHT:I

.field private static final SCREEN_WIDTH:I


# instance fields
.field private HANDLE_SIZE:F

.field private mActivityContext:Lcom/sec/android/app/camera/Camera;

.field private mAspectRatio:F

.field private mBackGround:Lcom/sec/android/glview/TwGLImage;

.field private mBoundRect:Landroid/graphics/RectF;

.field private mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

.field private mDisable:Z

.field private mDragStartPoint:Landroid/graphics/PointF;

.field private mDraggable:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGrowBoundry:Z

.field private mHandlerDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

.field private mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

.field private mHandlerType:I

.field private mHandler_area_left_boundary:I

.field private mHandler_area_right_boundary:I

.field private mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

.field private mIsAspectRatioLocked:Z

.field private mMaxRect:Landroid/graphics/RectF;

.field private mMinRect:Landroid/graphics/RectF;

.field private mNumberOfPointer:I

.field private mOffsetForhandle:I

.field private mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

.field private mRect:Landroid/graphics/RectF;

.field private mRectBeforeDragged:Landroid/graphics/RectF;

.field private mRectBeforeInvisible:Landroid/graphics/RectF;

.field private mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

.field private mResizeHandleType:[I

.field private mShowBoundry:Z

.field private mSideLock:I

.field private mTouchDownX:I

.field private mTouchDownY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    const/4 v0, 0x0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    .line 90
    const/4 v0, 0x1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    .line 91
    const/4 v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    .line 107
    const v0, 0x7f080314

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->SCREEN_WIDTH:I

    .line 108
    const v0, 0x7f080315

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->SCREEN_HEIGHT:I

    .line 109
    const v0, 0x7f080184

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    .line 110
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_TOP_BOUNDARY:I

    .line 111
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;I)V
    .locals 12
    .parameter "activityContext"
    .parameter "type"

    .prologue
    const/16 v10, 0x72

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 139
    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-direct {p0, v0, v2, v2}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FF)V

    .line 56
    const/4 v0, 0x4

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    .line 61
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    .line 62
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    .line 64
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 65
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 66
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 67
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    .line 68
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    .line 70
    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    .line 80
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDragStartPoint:Landroid/graphics/PointF;

    .line 84
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDraggable:Z

    .line 85
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mShowBoundry:Z

    .line 86
    iput-boolean v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGrowBoundry:Z

    .line 87
    iput-boolean v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDisable:Z

    .line 93
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    .line 95
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    .line 96
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    .line 97
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeInvisible:Landroid/graphics/RectF;

    .line 98
    new-instance v0, Landroid/graphics/RectF;

    const v1, -0x3a63c000

    const v3, -0x3a63c000

    const v4, 0x459c4000

    const v5, 0x459c4000

    invoke-direct {v0, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    .line 99
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x4316

    const/high16 v3, 0x4316

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    .line 100
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x43fa

    const/high16 v3, 0x43fa

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    .line 113
    const/16 v0, 0xf0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOffsetForhandle:I

    .line 114
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_left_boundary:I

    .line 115
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_right_boundary:I

    .line 117
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    .line 118
    iput-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

    .line 120
    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mTouchDownX:I

    .line 121
    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mTouchDownY:I

    .line 123
    iput v11, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mNumberOfPointer:I

    .line 140
    iput p2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    .line 141
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    .line 143
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/sec/android/app/camera/glwidget/TwGLHandler$TwGLHandlerGestureDetectorListener;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler$TwGLHandlerGestureDetectorListener;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V

    invoke-direct {v0, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 145
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/16 v3, 0xff

    const/16 v4, 0xac

    const/16 v5, 0xac

    const/16 v6, 0xac

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/high16 v7, 0x4080

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 146
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/16 v3, 0xff

    invoke-static {v3, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/high16 v7, 0x3f80

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 147
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/16 v3, 0xff

    invoke-static {v3, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/high16 v7, 0x3f80

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 148
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 149
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 152
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2, v11}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    .line 153
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 154
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 155
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnTouchListener(Lcom/sec/android/glview/TwGLView$OnTouchListener;)V

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLImage;->setDragSensitivity(I)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 159
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    if-ge v9, v0, :cond_0

    .line 160
    iget-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/high16 v4, 0x42b0

    const/high16 v5, 0x42b0

    const v7, 0x7f0203c8

    move v3, v2

    move v6, v11

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFZI)V

    aput-object v0, v10, v9

    .line 161
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    const/high16 v1, 0x4130

    const/high16 v3, 0x4130

    invoke-virtual {v0, v1, v3}, Lcom/sec/android/glview/TwGLImage;->setResourceOffset(FF)Z

    .line 162
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 163
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLImage;->setOnDragListener(Lcom/sec/android/glview/TwGLView$OnDragListener;)V

    .line 164
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    invoke-virtual {v0, v8}, Lcom/sec/android/glview/TwGLImage;->setDragVibration(Z)V

    .line 165
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    invoke-virtual {v0, v11}, Lcom/sec/android/glview/TwGLImage;->setDragSensitivity(I)V

    .line 166
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 159
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    const/4 v1, 0x5

    aput v1, v0, v11

    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    const/4 v1, 0x6

    aput v1, v0, v8

    .line 180
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    const/4 v1, 0x2

    const/16 v2, 0xa

    aput v2, v0, v1

    .line 181
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    const/4 v1, 0x3

    const/16 v2, 0x9

    aput v2, v0, v1

    .line 182
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    const/4 v1, 0x4

    const/16 v2, 0x10

    aput v2, v0, v1

    .line 184
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v11

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDisable:Z

    return v0
.end method

.method private applyMovement(Landroid/graphics/PointF;I)V
    .locals 8
    .parameter "delta_in"
    .parameter "index"

    .prologue
    .line 919
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6}, Landroid/graphics/PointF;-><init>()V

    .line 920
    .local v6, delta:Landroid/graphics/PointF;
    new-instance v7, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    invoke-direct {v7, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 921
    .local v7, rect:Landroid/graphics/RectF;
    invoke-virtual {v6, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 923
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDraggable:Z

    if-eqz v0, :cond_1

    .line 924
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v1, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v7, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v7

    .line 931
    :goto_0
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget v1, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 933
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    iget v2, v7, Landroid/graphics/RectF;->left:F

    iget v3, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;->onMove(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 936
    :cond_0
    return-void

    .line 925
    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGrowBoundry:Z

    if-eqz v0, :cond_0

    .line 926
    iget v0, v6, Landroid/graphics/PointF;->x:F

    iget v1, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v7, v0, v1, p2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->growBy(Landroid/graphics/RectF;FFI)Landroid/graphics/RectF;

    move-result-object v7

    goto :goto_0
.end method

.method private filterMovement(Landroid/graphics/PointF;I)V
    .locals 2
    .parameter "delta"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 960
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 961
    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 963
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0xc

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v0, v0, p2

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_1

    .line 964
    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 966
    :cond_1
    return-void
.end method

.method private getHandleIndex(Lcom/sec/android/glview/TwGLView;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 277
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    const/4 v0, 0x4

    .line 282
    :cond_0
    :goto_0
    return v0

    .line 279
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    if-ge v0, v1, :cond_2

    .line 280
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_0

    .line 279
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 282
    :cond_2
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private growBy(Landroid/graphics/RectF;FFI)Landroid/graphics/RectF;
    .locals 7
    .parameter "in"
    .parameter "dx"
    .parameter "dy"
    .parameter "index"

    .prologue
    const/high16 v6, 0x4000

    .line 335
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 337
    .local v2, ret:Landroid/graphics/RectF;
    iget-boolean v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    if-eqz v3, :cond_3d

    .line 338
    packed-switch p4, :pswitch_data_0

    .line 484
    :cond_0
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 485
    .local v0, mHeight:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 487
    .local v1, mWidth:F
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v1, v3

    if-ltz v3, :cond_1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 490
    :cond_1
    packed-switch p4, :pswitch_data_1

    .line 576
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v3, v1, v3

    if-gtz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_4

    .line 577
    :cond_3
    packed-switch p4, :pswitch_data_2

    .line 651
    :cond_4
    :goto_2
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 652
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 654
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 655
    packed-switch p4, :pswitch_data_3

    .line 695
    :cond_5
    :goto_3
    :pswitch_0
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 697
    :cond_6
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 698
    packed-switch p4, :pswitch_data_4

    .line 738
    :cond_7
    :goto_4
    :pswitch_1
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 740
    :cond_8
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_a

    .line 741
    packed-switch p4, :pswitch_data_5

    .line 802
    :cond_9
    :goto_5
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 804
    :cond_a
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c

    .line 805
    packed-switch p4, :pswitch_data_6

    .line 864
    :cond_b
    :goto_6
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 914
    :cond_c
    :goto_7
    return-object v2

    .line 340
    .end local v0           #mHeight:F
    .end local v1           #mWidth:F
    :pswitch_2
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-eq v3, v4, :cond_0

    .line 342
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_e

    .line 343
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_d

    .line 344
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 345
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 346
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 348
    :cond_d
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 349
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 350
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 353
    :cond_e
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_0

    .line 354
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_f

    .line 355
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 356
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 358
    :cond_f
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 359
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 364
    :pswitch_3
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-eq v3, v4, :cond_0

    .line 366
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_11

    .line 367
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_10

    .line 368
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 369
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 370
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 373
    :cond_10
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 374
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 375
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 378
    :cond_11
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_0

    .line 379
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_12

    .line 380
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 381
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 383
    :cond_12
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 384
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 389
    :pswitch_4
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-eq v3, v4, :cond_0

    .line 391
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_14

    .line 392
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_13

    .line 393
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 394
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 395
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 398
    :cond_13
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 399
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 400
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 403
    :cond_14
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_0

    .line 404
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_15

    .line 405
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 406
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 408
    :cond_15
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 409
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 414
    :pswitch_5
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-eq v3, v4, :cond_0

    .line 416
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_17

    .line 417
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_16

    .line 418
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 419
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 420
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 423
    :cond_16
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 424
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 425
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 428
    :cond_17
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_0

    .line 429
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_18

    .line 430
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 431
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 433
    :cond_18
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 434
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 439
    :pswitch_6
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_19

    .line 440
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 441
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 442
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 443
    :cond_19
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_1a

    .line 444
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 445
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 446
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 447
    :cond_1a
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_0

    .line 448
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 449
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 450
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 454
    :pswitch_7
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-eq v3, v4, :cond_0

    .line 456
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 457
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 458
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_0

    .line 461
    :pswitch_8
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_1b

    .line 462
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 463
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 464
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 465
    :cond_1b
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_1c

    .line 466
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 467
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 468
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_0

    .line 469
    :cond_1c
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_0

    .line 470
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 471
    iget v3, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 472
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {p3, v4}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_0

    .line 476
    :pswitch_9
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-eq v3, v4, :cond_0

    .line 478
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 479
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 480
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v4, v6

    invoke-static {p2, v4}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_0

    .line 492
    .restart local v0       #mHeight:F
    .restart local v1       #mWidth:F
    :pswitch_a
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_1d

    .line 493
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 494
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    .line 495
    :cond_1d
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_2

    .line 496
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 497
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 498
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 502
    :pswitch_b
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_1e

    .line 503
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 504
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    .line 505
    :cond_1e
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_2

    .line 506
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 507
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 508
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 512
    :pswitch_c
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_1f

    .line 513
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 514
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 515
    :cond_1f
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_2

    .line 516
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 517
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 518
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 522
    :pswitch_d
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_20

    .line 523
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 524
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 525
    :cond_20
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_2

    .line 526
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 527
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 528
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 532
    :pswitch_e
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_21

    .line 533
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 534
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 535
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_1

    .line 536
    :cond_21
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_22

    .line 537
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 538
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 539
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    .line 540
    :cond_22
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_2

    .line 541
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 542
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 543
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 547
    :pswitch_f
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 548
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 549
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    .line 552
    :pswitch_10
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_23

    .line 553
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 554
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 555
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_1

    .line 556
    :cond_23
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_24

    .line 557
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 558
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 559
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_1

    .line 560
    :cond_24
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_2

    .line 561
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 562
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 563
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 567
    :pswitch_11
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 568
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 569
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_1

    .line 579
    :pswitch_12
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_25

    .line 580
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 581
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    .line 582
    :cond_25
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_4

    .line 583
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 584
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 585
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 589
    :pswitch_13
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_26

    .line 590
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 591
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    .line 592
    :cond_26
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_4

    .line 593
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 594
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 595
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 599
    :pswitch_14
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_27

    .line 600
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 601
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 602
    :cond_27
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_4

    .line 603
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 604
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 605
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 609
    :pswitch_15
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_28

    .line 610
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 611
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 612
    :cond_28
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_4

    .line 613
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 614
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 615
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 619
    :pswitch_16
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_29

    .line 620
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 621
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 622
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_2

    .line 623
    :cond_29
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_2a

    .line 624
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 625
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 626
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    .line 627
    :cond_2a
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_4

    .line 628
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 629
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 630
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_2

    .line 634
    :pswitch_17
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 635
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 636
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_2

    .line 639
    :pswitch_18
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 640
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 641
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_2

    .line 644
    :pswitch_19
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 645
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 646
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_2

    .line 657
    :pswitch_1a
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_2b

    .line 658
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    .line 659
    :cond_2b
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_5

    .line 660
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 661
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    .line 665
    :pswitch_1b
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_2c

    .line 666
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    .line 667
    :cond_2c
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_5

    .line 668
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 669
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    .line 673
    :pswitch_1c
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_2d

    .line 674
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 675
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_3

    .line 676
    :cond_2d
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_5

    .line 677
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 678
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    .line 682
    :pswitch_1d
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_2e

    .line 683
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 684
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_3

    .line 685
    :cond_2e
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_5

    .line 686
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 687
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_3

    .line 691
    :pswitch_1e
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 692
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget v5, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_3

    .line 700
    :pswitch_1f
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_2f

    .line 701
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_4

    .line 702
    :cond_2f
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_7

    .line 703
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 704
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 708
    :pswitch_20
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_30

    .line 709
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 710
    :cond_30
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_7

    .line 711
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 712
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 716
    :pswitch_21
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_31

    .line 717
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 718
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_4

    .line 719
    :cond_31
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_7

    .line 720
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 721
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 725
    :pswitch_22
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 726
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    mul-float/2addr v5, v6

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 729
    :pswitch_23
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_32

    .line 730
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 731
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_4

    .line 732
    :cond_32
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_7

    .line 733
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 734
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_4

    .line 743
    :pswitch_24
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_33

    .line 744
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_5

    .line 745
    :cond_33
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_9

    .line 746
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 747
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 751
    :pswitch_25
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_34

    .line 752
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    .line 754
    :cond_34
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_9

    .line 755
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 756
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 760
    :pswitch_26
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_9

    .line 761
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 762
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 766
    :pswitch_27
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_9

    .line 767
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 768
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 772
    :pswitch_28
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_35

    .line 773
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 774
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    .line 775
    :cond_35
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_36

    .line 776
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 777
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 778
    :cond_36
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_9

    .line 779
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 780
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 784
    :pswitch_29
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 785
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_5

    .line 788
    :pswitch_2a
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_37

    .line 789
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 790
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 791
    :cond_37
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_9

    .line 792
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 793
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_5

    .line 797
    :pswitch_2b
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 798
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_5

    .line 807
    :pswitch_2c
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_b

    .line 808
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 809
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 813
    :pswitch_2d
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_b

    .line 814
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 815
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 819
    :pswitch_2e
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_38

    .line 820
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    .line 821
    :cond_38
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_b

    .line 822
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 823
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 827
    :pswitch_2f
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_39

    .line 828
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_6

    .line 829
    :cond_39
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_b

    .line 830
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 831
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 835
    :pswitch_30
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_3a

    .line 836
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 837
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 838
    :cond_3a
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_b

    .line 839
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 840
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 844
    :pswitch_31
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 845
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    .line 848
    :pswitch_32
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v3, v4, :cond_3b

    .line 849
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 850
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto/16 :goto_6

    .line 851
    :cond_3b
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    if-ne v3, v4, :cond_3c

    .line 852
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 853
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 854
    :cond_3c
    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->RIGHT_LOCK:I

    if-ne v3, v4, :cond_b

    .line 855
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 856
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    goto/16 :goto_6

    .line 860
    :pswitch_33
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 861
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v4, v5}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    invoke-static {v4, v6}, Lcom/sec/android/app/camera/Util;->floatMulitiply(FF)F

    move-result v4

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    goto/16 :goto_6

    .line 867
    .end local v0           #mHeight:F
    .end local v1           #mWidth:F
    :cond_3d
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 868
    .restart local v0       #mHeight:F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 870
    .restart local v1       #mWidth:F
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_3e

    .line 871
    iget v3, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 872
    :cond_3e
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3f

    .line 873
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 874
    :cond_3f
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_40

    .line 875
    iget v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 876
    :cond_40
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_41

    .line 877
    iget v3, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p2

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 879
    :cond_41
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_43

    .line 880
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_42

    .line 881
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 882
    :cond_42
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_43

    .line 883
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 885
    :cond_43
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_45

    .line 886
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_44

    .line 887
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 888
    :cond_44
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_45

    .line 889
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 892
    :cond_45
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_47

    .line 893
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_46

    .line 894
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 895
    :cond_46
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_47

    .line 896
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    sub-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 898
    :cond_47
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_49

    .line 899
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_48

    .line 900
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 901
    :cond_48
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandleType:[I

    aget v3, v3, p4

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_49

    .line 902
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 905
    :cond_49
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4a

    .line 906
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 907
    :cond_4a
    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4b

    .line 908
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 909
    :cond_4b
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4c

    .line 910
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 911
    :cond_4c
    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_c

    .line 912
    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto/16 :goto_7

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 490
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 577
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch

    .line 655
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_0
        :pswitch_0
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    .line 698
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_20
        :pswitch_1
        :pswitch_21
        :pswitch_22
        :pswitch_23
    .end packed-switch

    .line 741
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch

    .line 805
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
    .end packed-switch
.end method


# virtual methods
.method public applyInvisible()V
    .locals 7

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 945
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeInvisible:Landroid/graphics/RectF;

    .line 947
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v2, v3, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 949
    .local v6, rect:Landroid/graphics/RectF;
    iget v0, v6, Landroid/graphics/RectF;->left:F

    iget v1, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    if-eqz v0, :cond_0

    .line 952
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    iget v2, v6, Landroid/graphics/RectF;->left:F

    iget v3, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v5

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;->onMove(Lcom/sec/android/glview/TwGLView;FFFF)V

    .line 954
    :cond_0
    return-void
.end method

.method public calcBoundary(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 4
    .parameter "in"

    .prologue
    .line 1278
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 1280
    .local v0, out:Landroid/graphics/RectF;
    iget v1, p1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1281
    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1282
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1284
    :cond_0
    iget v1, p1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 1285
    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 1286
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 1288
    :cond_1
    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 1289
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1290
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1292
    :cond_2
    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 1293
    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1294
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1296
    :cond_3
    return-object v0
.end method

.method public calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;
    .locals 23
    .parameter "in"
    .parameter "rotationIndex"
    .parameter "Boundrycheck"

    .prologue
    .line 1219
    const-wide/16 v15, 0x0

    .line 1220
    .local v15, theta:D
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 1222
    .local v6, out:Landroid/graphics/RectF;
    packed-switch p2, :pswitch_data_0

    .line 1236
    const-wide/16 v15, 0x0

    .line 1240
    :goto_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    add-float v17, v17, v18

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v2, v0

    .line 1241
    .local v2, Tx:D
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    add-float v17, v17, v18

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    move/from16 v0, v17

    float-to-double v4, v0

    .line 1243
    .local v4, Ty:D
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v17, v17, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sub-double v19, v19, v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    sub-double v17, v17, v19

    add-double v9, v17, v2

    .line 1244
    .local v9, pleft:D
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v17, v17, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sub-double v19, v19, v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    add-double v17, v17, v19

    add-double v13, v17, v4

    .line 1245
    .local v13, ptop:D
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v17, v17, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sub-double v19, v19, v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    sub-double v17, v17, v19

    add-double v11, v17, v2

    .line 1246
    .local v11, pright:D
    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    sub-double v17, v17, v2

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->sin(D)D

    move-result-wide v19

    mul-double v17, v17, v19

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sub-double v19, v19, v4

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    mul-double v19, v19, v21

    add-double v17, v17, v19

    add-double v7, v17, v4

    .line 1249
    .local v7, pbottom:D
    cmpg-double v17, v9, v11

    if-gez v17, :cond_3

    move-wide/from16 v17, v9

    :goto_1
    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/RectF;->left:F

    .line 1250
    cmpg-double v17, v13, v7

    if-gez v17, :cond_4

    move-wide/from16 v17, v13

    :goto_2
    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/RectF;->top:F

    .line 1253
    cmpl-double v17, v9, v11

    if-lez v17, :cond_5

    .end local v9           #pleft:D
    :goto_3
    double-to-float v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/RectF;->right:F

    .line 1254
    cmpl-double v17, v13, v7

    if-lez v17, :cond_6

    .end local v13           #ptop:D
    :goto_4
    double-to-float v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/RectF;->bottom:F

    .line 1262
    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_0

    .line 1263
    iget v0, v6, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    iget v0, v6, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/RectF;->right:F

    .line 1264
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/RectF;->left:F

    .line 1266
    :cond_0
    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpg-float v17, v17, v18

    if-gez v17, :cond_1

    .line 1267
    iget v0, v6, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    iget v0, v6, Landroid/graphics/RectF;->top:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/RectF;->bottom:F

    .line 1268
    const/16 v17, 0x0

    move/from16 v0, v17

    iput v0, v6, Landroid/graphics/RectF;->top:F

    .line 1271
    :cond_1
    if-eqz p3, :cond_2

    .line 1272
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->calcBoundary(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v6

    .line 1274
    .end local v6           #out:Landroid/graphics/RectF;
    :cond_2
    return-object v6

    .line 1224
    .end local v2           #Tx:D
    .end local v4           #Ty:D
    .end local v7           #pbottom:D
    .end local v11           #pright:D
    .restart local v6       #out:Landroid/graphics/RectF;
    :pswitch_0
    const-wide/16 v15, 0x0

    .line 1225
    goto/16 :goto_0

    .line 1227
    :pswitch_1
    const-wide v15, 0x4012d97c7f3321d2L

    .line 1228
    goto/16 :goto_0

    .line 1230
    :pswitch_2
    const-wide v15, 0x400921fb54442d18L

    .line 1231
    goto/16 :goto_0

    .line 1233
    :pswitch_3
    const-wide v15, 0x3ff921fb54442d18L

    .line 1234
    goto/16 :goto_0

    .restart local v2       #Tx:D
    .restart local v4       #Ty:D
    .restart local v7       #pbottom:D
    .restart local v9       #pleft:D
    .restart local v11       #pright:D
    .restart local v13       #ptop:D
    :cond_3
    move-wide/from16 v17, v11

    .line 1249
    goto/16 :goto_1

    :cond_4
    move-wide/from16 v17, v7

    .line 1250
    goto/16 :goto_2

    :cond_5
    move-wide v9, v11

    .line 1253
    goto :goto_3

    .end local v9           #pleft:D
    :cond_6
    move-wide v13, v7

    .line 1254
    goto :goto_4

    .line 1222
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 287
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_1

    .line 288
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aput-object v2, v1, v0

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    .line 292
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_3

    .line 293
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    if-ge v0, v1, :cond_2

    .line 294
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 295
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aput-object v2, v1, v0

    .line 293
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 297
    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    .line 299
    .end local v0           #i:I
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_4

    .line 300
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGestureDetector:Landroid/view/GestureDetector;

    .line 302
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    if-eqz v1, :cond_5

    .line 303
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->clear()V

    .line 304
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    .line 306
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_6

    .line 307
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    .line 309
    :cond_6
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_7

    .line 310
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    .line 312
    :cond_7
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_8

    .line 313
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    .line 315
    :cond_8
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_9

    .line 316
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    .line 318
    :cond_9
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 319
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 320
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    .line 321
    invoke-super {p0}, Lcom/sec/android/glview/TwGLViewGroup;->clear()V

    .line 322
    return-void
.end method

.method public getBoundryShowed()Z
    .locals 1

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mShowBoundry:Z

    return v0
.end method

.method public getDisable()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDisable:Z

    return v0
.end method

.method public getDraggable()Z
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDraggable:Z

    return v0
.end method

.method public getGrowable()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGrowBoundry:Z

    return v0
.end method

.method public getPosition()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getPositionForVisible()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeInvisible:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getRectBeforeDragged()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 939
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 940
    .local v0, rect:Landroid/graphics/RectF;
    return-object v0
.end method

.method public getSideLock()I
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    return v0
.end method

.method public getonHandlerMoveListener()Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    return-object v0
.end method

.method public hideBoundryRect()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 251
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 252
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 253
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mShowBoundry:Z

    .line 258
    return-void
.end method

.method public moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;
    .locals 5
    .parameter "in"
    .parameter "dx"
    .parameter "dy"

    .prologue
    const/4 v4, 0x0

    .line 325
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 327
    .local v0, ret:Landroid/graphics/RectF;
    invoke-virtual {v0, p2, p3}, Landroid/graphics/RectF;->offset(FF)V

    .line 328
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 329
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v1, v2

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 331
    return-object v0
.end method

.method public onDrag(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 4
    .parameter "view"
    .parameter "x"
    .parameter "y"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 1122
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CommonEngine;->isRecorderStarting()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isContextMenuOpened()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1125
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v2

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_2

    .line 1126
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    if-eqz v2, :cond_2

    .line 1127
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget-object v2, v2, Lcom/sec/android/app/camera/Camera;->mTutorial4:Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;

    iget v2, v2, Lcom/sec/android/app/camera/glwidget/TwGLTutorial4;->STEP_NUM:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 1132
    :cond_2
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1133
    .local v1, point:Landroid/graphics/PointF;
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 1135
    .local v0, delta:Landroid/graphics/PointF;
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDragStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->x:F

    .line 1136
    iget v2, v1, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDragStartPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/PointF;->y:F

    .line 1139
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getHandleIndex(Lcom/sec/android/glview/TwGLView;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->filterMovement(Landroid/graphics/PointF;I)V

    .line 1141
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getHandleIndex(Lcom/sec/android/glview/TwGLView;)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->applyMovement(Landroid/graphics/PointF;I)V

    goto :goto_0
.end method

.method public onDragEnd(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 1
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1147
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDragStartPoint:Landroid/graphics/PointF;

    .line 1150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

    if-eqz v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;->onHandlerDragEnd(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V

    .line 1152
    :cond_0
    return-void
.end method

.method public onDragStart(Lcom/sec/android/glview/TwGLView;FF)V
    .locals 2
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1103
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxBound()V

    .line 1104
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, p2, p3}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDragStartPoint:Landroid/graphics/PointF;

    .line 1107
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    .line 1111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

    if-eqz v0, :cond_0

    .line 1112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;->onHandlerDragStart(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V

    .line 1113
    :cond_0
    return-void
.end method

.method public onTouch(Lcom/sec/android/glview/TwGLView;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    const/16 v2, 0x30

    const/4 v0, 0x1

    .line 1165
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDisable:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isContextMenuOpened()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1166
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->isContextMenuOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 1167
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 1169
    :cond_2
    const/4 v0, 0x0

    .line 1206
    :cond_3
    :goto_0
    return v0

    .line 1171
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mNumberOfPointer:I

    .line 1173
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1177
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 1178
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 1180
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mTouchDownX:I

    .line 1181
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mTouchDownY:I

    goto :goto_0

    .line 1203
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1185
    :pswitch_1
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mNumberOfPointer:I

    if-ne v1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    const-wide/16 v3, 0x1f4

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mTouchDownX:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, v2, Lcom/sec/android/app/camera/Camera;->mMoveThreshold:I

    if-ge v1, v2, :cond_3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mTouchDownY:I

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    iget v2, v2, Lcom/sec/android/app/camera/Camera;->mMoveThreshold:I

    if-ge v1, v2, :cond_3

    .line 1188
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getAttachCameraMode()Z

    move-result v1

    if-eq v1, v0, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getShootingMode()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getHelpMode()I

    move-result v1

    const/16 v2, 0xc9

    if-ne v1, v2, :cond_3

    .line 1191
    :cond_5
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->getRequestQueue()Lcom/sec/android/app/camera/CeRequestQueue;

    move-result-object v1

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/CeRequestQueue;->searchRequest(I)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->handleShutterKeyReleased()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1193
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CommonEngine;->handleShutterReleaseEvent()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1178
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetHandler()V
    .locals 5

    .prologue
    const/high16 v4, 0x43fa

    const/high16 v3, 0x4348

    const/high16 v2, 0x42c8

    .line 1300
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setAspectRatioLocked(Z)V

    .line 1301
    const/high16 v0, 0x43c8

    const/high16 v1, 0x4396

    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 1302
    invoke-virtual {p0, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 1303
    invoke-virtual {p0, v4, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 1304
    return-void
.end method

.method public setAspectRatioLocked(Z)V
    .locals 4
    .parameter "locked"

    .prologue
    .line 1024
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    if-ne v2, p1, :cond_1

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 1027
    :cond_1
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    .line 1029
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    if-eqz v2, :cond_0

    .line 1030
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v2

    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    .line 1032
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 1033
    .local v1, width:F
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 1035
    .local v0, height:F
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v0

    .line 1036
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1038
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 1039
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 1041
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v0

    .line 1042
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    goto :goto_0
.end method

.method public setBackGroundInvisible()V
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 248
    return-void
.end method

.method public setBackGroundVisible()V
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 244
    return-void
.end method

.method public setDisable(Z)V
    .locals 2
    .parameter "disable"

    .prologue
    .line 188
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDisable:Z

    .line 189
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDisable:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/sec/android/glview/TwGLImage;->setDraggable(Z)V

    .line 190
    return-void

    .line 189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDragVibration(Z)V
    .locals 1
    .parameter "vibration"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLImage;->setDragVibration(Z)V

    .line 230
    return-void
.end method

.method public setDraggable(Z)V
    .locals 0
    .parameter "drag"

    .prologue
    .line 197
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mDraggable:Z

    .line 198
    return-void
.end method

.method public setGrowable(Z)V
    .locals 0
    .parameter "grow"

    .prologue
    .line 211
    iput-boolean p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mGrowBoundry:Z

    .line 212
    return-void
.end method

.method public setMaxBound()V
    .locals 5

    .prologue
    const/16 v3, 0x30

    const/4 v2, 0x0

    .line 973
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->IsWideCameraPreviewAspectRatio()Z

    move-result v1

    if-nez v1, :cond_1

    .line 974
    const/16 v1, 0xf0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOffsetForhandle:I

    .line 975
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 976
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOffsetForhandle:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_left_boundary:I

    .line 980
    :goto_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->SCREEN_WIDTH:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_left_boundary:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_right_boundary:I

    .line 992
    :goto_1
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_TOP_BOUNDARY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_right_boundary:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 993
    .local v0, boundRecf:Landroid/graphics/RectF;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    .line 994
    return-void

    .line 978
    .end local v0           #boundRecf:Landroid/graphics/RectF;
    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOffsetForhandle:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_left_boundary:I

    goto :goto_0

    .line 982
    :cond_1
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOffsetForhandle:I

    .line 983
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 984
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_left_boundary:I

    .line 985
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->SCREEN_WIDTH:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_right_boundary:I

    goto :goto_1

    .line 987
    :cond_2
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_left_boundary:I

    .line 988
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->SCREEN_WIDTH:I

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLER_AREA_PADDING:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandler_area_right_boundary:I

    goto :goto_1
.end method

.method public setMaxBoundRectF(Landroid/graphics/RectF;)V
    .locals 1
    .parameter "bound"

    .prologue
    .line 969
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRect:Landroid/graphics/RectF;

    .line 970
    return-void
.end method

.method public setMaxSizeF(FF)V
    .locals 4
    .parameter "in_width"
    .parameter "in_height"

    .prologue
    const/4 v3, 0x0

    .line 1011
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    .line 1013
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 1014
    .local v1, width:F
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 1016
    .local v0, height:F
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    if-eqz v2, :cond_0

    .line 1017
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v0

    .line 1018
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMaxRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1020
    :cond_0
    return-void
.end method

.method public setMinSizeF(FF)V
    .locals 4
    .parameter "in_width"
    .parameter "in_height"

    .prologue
    const/4 v3, 0x0

    .line 997
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v3, v3, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    .line 999
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 1000
    .local v1, width:F
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 1002
    .local v0, height:F
    iget-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    if-eqz v2, :cond_0

    .line 1003
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mAspectRatio:F

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/Util;->floatDivide(FF)F

    move-result v0

    .line 1004
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mMinRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 1008
    :cond_0
    return-void
.end method

.method public setPosition(FFFF)V
    .locals 10
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/high16 v9, 0x40c0

    const/high16 v8, 0x4040

    const/high16 v4, 0x3f80

    const/4 v7, 0x0

    const/high16 v6, 0x4000

    .line 1053
    new-instance v1, Landroid/graphics/RectF;

    add-float v2, p1, p3

    add-float v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    .line 1055
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v1, p3, p4}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 1056
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBackGround:Lcom/sec/android/glview/TwGLImage;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    add-float/2addr v2, v7

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v3, v7

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    .line 1058
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    add-float/2addr v1, p3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    add-float/2addr v2, p4

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setSize(FF)V

    .line 1059
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v1, v6

    sub-float v1, p1, v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    sub-float v2, p2, v2

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->moveLayoutAbsolute(FF)V

    .line 1061
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    add-float/2addr v2, v4

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v3, v4

    sub-float v4, p3, v6

    sub-float v5, p4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 1063
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    add-float/2addr v2, v7

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v3, v7

    invoke-virtual {v1, v2, v3, p3, p4}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 1064
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v2, v6

    add-float/2addr v2, v8

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->HANDLE_SIZE:F

    div-float/2addr v3, v6

    add-float/2addr v3, v8

    sub-float v4, p3, v9

    sub-float v5, p4, v9

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 1069
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    .line 1070
    packed-switch v0, :pswitch_data_0

    .line 1069
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1073
    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7, v7}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 1076
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, v7}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 1079
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p4}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 1082
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v7, p4}, Lcom/sec/android/glview/TwGLImage;->moveLayoutAbsolute(FF)V

    goto :goto_1

    .line 1099
    :cond_0
    return-void

    .line 1070
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setResizeHandleDragVibration(Z)V
    .locals 2
    .parameter "vibration"

    .prologue
    .line 201
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    .line 202
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/sec/android/glview/TwGLImage;->setDragVibration(Z)V

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    return-void
.end method

.method public setSideLock(I)V
    .locals 2
    .parameter "lock"

    .prologue
    .line 219
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    .line 220
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mSideLock:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mIsAspectRatioLocked:Z

    if-nez v0, :cond_0

    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setAspectRatioLocked(Z)V

    .line 222
    :cond_0
    return-void
.end method

.method public setonHandlerDragChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 273
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;

    .line 274
    return-void
.end method

.method public setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 265
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerMoveListener:Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    .line 266
    return-void
.end method

.method public showBoundryRect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 233
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 234
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mOuterBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 235
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mInnerBoundRectImage:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLRectangle;->setVisibility(I)V

    .line 236
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mHandlerType:I

    if-ge v0, v1, :cond_0

    .line 237
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mResizeHandle:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 239
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mShowBoundry:Z

    .line 240
    return-void
.end method

.method public updateRectBeforeDragged()V
    .locals 2

    .prologue
    .line 1116
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->mRectBeforeDragged:Landroid/graphics/RectF;

    .line 1117
    return-void
.end method
