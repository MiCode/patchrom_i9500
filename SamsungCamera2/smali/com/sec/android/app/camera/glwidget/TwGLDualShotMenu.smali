.class public Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLDualShotMenu.java"

# interfaces
.implements Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;
    }
.end annotation


# static fields
.field private static DEFAULT_ORIENTATION:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HANDLER_AREA_BASE_HEIGHT:I = 0x0

.field private static final HANDLER_AREA_BASE_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HANDLER_AREA_BASE_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HANDLER_AREA_BASE_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HANDLER_AREA_BOTTOM_BOUNDARY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final HANDLER_AREA_PADDING:I = 0x0

.field protected static final HIDE_BOUNDRY:I = 0x1

.field public static final HIDE_TIMEOUT:I = 0xbb8

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final SCREEN_WIDTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TwGLDualShotMenu"


# instance fields
.field protected mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

.field private mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

.field protected mDualMsgHandler:Landroid/os/Handler;

.field private mDualshot_splitview_width:I

.field private mEffectSizeRatio:F

.field private mHandler_area_left_boundary:I

.field private mHandler_area_right_boundary:I

.field private mInvisible:Z

.field private mNeedToOrientation:Z

.field private mOffsetForhandle:I

.field private mOrientation:I

.field protected mOrientationListener:Landroid/view/OrientationEventListener;

.field private mPreviousEffect:I

.field private mRectinfo:[Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 44
    const v0, 0x7f080314

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_WIDTH:I

    .line 45
    const v0, 0x7f080315

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_HEIGHT:I

    .line 48
    const v0, 0x7f080184

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    .line 50
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_HEIGHT:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    .line 53
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BASE_POS_Y:I

    .line 54
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BASE_WIDTH:I

    .line 55
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BASE_HEIGHT:I

    .line 71
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->DEFAULT_ORIENTATION:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 11
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    .line 109
    const/4 v5, 0x6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 57
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    .line 58
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    .line 59
    const/16 v0, 0xf0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    .line 60
    const v0, 0x7f08024d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    .line 64
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    .line 70
    iput-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 72
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    .line 74
    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    .line 76
    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mNeedToOrientation:Z

    .line 78
    iput v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    .line 80
    const/16 v0, 0x2a

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    .line 82
    iput-object v10, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    .line 88
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 113
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setCaptureEnabled(Z)V

    .line 117
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;-><init>(Lcom/sec/android/app/camera/Camera;I)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    .line 118
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v7, v7, v8, v8}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 121
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 122
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v7, v7}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxBound()V

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;)V

    .line 125
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDragVibration(Z)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 127
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    new-instance v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$2;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setonHandlerDragChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerDragChangedListener;)V

    .line 138
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 139
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setOrientationChanged(I)V

    .line 140
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setOrientationListener()V

    .line 141
    invoke-virtual {p0, v6}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setTouchHandled(Z)V

    .line 142
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/glwidget/TwGLHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private readEffectRectinfo()V
    .locals 13

    .prologue
    const v12, 0x7f080251

    const v11, 0x7f08024c

    const v10, 0x7f08024b

    const v9, 0x7f08022f

    const v8, 0x7f08022e

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x0

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f080230

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f080231

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 913
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x1

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f080233

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f080234

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 919
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x2

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f080236

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f080237

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x3

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f080239

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f08023a

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 931
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x4

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f08023c

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f08023d

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 937
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x5

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f08023f

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f080240

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 943
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x6

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f080242

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f080243

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 949
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v1, 0x7

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f080245

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f080246

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0x8

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f080248

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f080249

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 961
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0x9

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v10}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-static {v11}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f08024e

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 967
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0xa

    new-instance v2, Landroid/graphics/RectF;

    invoke-static {v12}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    int-to-float v3, v3

    const v4, 0x7f080252

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-static {v12}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x7f080253

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    const v6, 0x7f080252

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    const v7, 0x7f080254

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    aput-object v2, v0, v1

    .line 971
    return-void
.end method


# virtual methods
.method public applyInvisible()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 218
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    .line 219
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 220
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 221
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setBackGroundInvisible()V

    .line 222
    return-void
.end method

.method public applyVisible()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    iput-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    .line 226
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 227
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setBackGroundVisible()V

    .line 228
    return-void
.end method

.method public calulateCoordinateForNormalPreviewRatio()V
    .locals 3

    .prologue
    const/16 v2, 0x30

    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->IsWideCameraPreviewAspectRatio()Z

    move-result v0

    if-nez v0, :cond_2

    .line 257
    const/16 v0, 0xf0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    .line 258
    const v0, 0x7f08024f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    .line 259
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 260
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    .line 264
    :goto_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_WIDTH:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    .line 276
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->readEffectRectinfo()V

    goto :goto_0

    .line 262
    :cond_1
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    goto :goto_1

    .line 266
    :cond_2
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    .line 267
    const v0, 0x7f08024d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 269
    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    .line 270
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_WIDTH:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    goto :goto_2

    .line 272
    :cond_3
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    .line 273
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->SCREEN_WIDTH:I

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_PADDING:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    goto :goto_2
.end method

.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 165
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    .line 166
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 167
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aput-object v2, v1, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    .line 170
    .end local v0           #i:I
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v1}, Landroid/view/OrientationEventListener;->disable()V

    .line 172
    :cond_2
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 174
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    if-eqz v1, :cond_3

    .line 175
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;)V

    .line 176
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->clear()V

    .line 177
    iput-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    .line 179
    :cond_3
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->clear()V

    .line 180
    return-void
.end method

.method public decideEffectSize(I)F
    .locals 3
    .parameter "effect"

    .prologue
    const/high16 v2, 0x3f80

    .line 718
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v0

    .line 719
    .local v0, rect:Landroid/graphics/RectF;
    packed-switch p1, :pswitch_data_0

    .line 751
    :pswitch_0
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    .line 754
    :goto_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    return v1

    .line 721
    :pswitch_1
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f080230

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 724
    :pswitch_2
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f080233

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 727
    :pswitch_3
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f080236

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 730
    :pswitch_4
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f080239

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 733
    :pswitch_5
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f08023c

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 736
    :pswitch_6
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f08023f

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 739
    :pswitch_7
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f080242

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto :goto_0

    .line 742
    :pswitch_8
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f080245

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 745
    :pswitch_9
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    const v2, 0x7f080248

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 748
    :pswitch_a
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    goto/16 :goto_0

    .line 719
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_a
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getBoundryShowed()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBoundryShowed()Z

    move-result v0

    return v0
.end method

.method public hideBoundryRect()V
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 391
    return-void
.end method

.method public isInvisibleMode()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    return v0
.end method

.method public needToOrientation()V
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mNeedToOrientation:Z

    .line 244
    return-void
.end method

.method public onActivityTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 444
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBoundryShowed()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 445
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 454
    :cond_0
    :goto_0
    return v0

    .line 447
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBoundryShowed()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->contains(FF)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v2}, Lcom/sec/android/app/camera/Camera;->isShutterPressed()Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    .line 450
    goto :goto_0

    .line 451
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    .line 454
    goto :goto_0
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 184
    return-void
.end method

.method public onDragEnd(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;->onHandlerDragEnd(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V

    .line 209
    :cond_0
    return-void
.end method

.method public onDragStart(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    invoke-interface {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;->onHandlerDragStart(Lcom/sec/android/app/camera/glwidget/TwGLHandler;)V

    .line 204
    :cond_0
    return-void
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 160
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onHide()V

    .line 161
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 459
    packed-switch p1, :pswitch_data_0

    .line 466
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 461
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBoundryShowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 463
    const/4 v0, 0x1

    goto :goto_0

    .line 459
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onLongPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 364
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v0, :cond_1

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x30

    if-eq v0, v1, :cond_0

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBoundryShowed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->showBoundryRect()V

    .line 371
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getSideLock()I

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v0, v1, :cond_2

    .line 372
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDraggable(Z)V

    .line 374
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setGrowable(Z)V

    .line 375
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/sec/android/app/camera/CommonEngine;->setEffectVisibleSync(Z)V

    goto :goto_0
.end method

.method public onMove(Lcom/sec/android/glview/TwGLView;FFFF)V
    .locals 9
    .parameter "view"
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    const/16 v4, 0x31

    const/16 v3, 0x2e

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v8, 0x1

    .line 283
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 285
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxBound()V

    .line 287
    cmpl-float v0, p4, p5

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v8, :cond_3

    :cond_0
    cmpg-float v0, p4, p5

    if-gez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    if-ne v0, v4, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eqz v0, :cond_3

    :cond_1
    cmpg-float v0, p4, p5

    if-gez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    if-ne v0, v3, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v8, :cond_3

    :cond_2
    cmpl-float v0, p4, p5

    if-lez v0, :cond_b

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    if-ne v0, v3, :cond_b

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-nez v0, :cond_b

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v6

    .line 292
    .local v6, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v6, v8, v8}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v7

    .line 293
    .local v7, rotateRect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 303
    .end local v6           #rect:Landroid/graphics/RectF;
    .end local v7           #rotateRect:Landroid/graphics/RectF;
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBoundryShowed()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getRectBeforeDragged()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getRectBeforeDragged()Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, v0, p3

    if-eqz v0, :cond_8

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->showBoundryRect()V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getSideLock()I

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    if-ne v0, v1, :cond_6

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDraggable(Z)V

    .line 308
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v8}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setGrowable(Z)V

    .line 309
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 310
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 312
    :cond_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 315
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getBoundryShowed()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 316
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 317
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    :cond_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 321
    :cond_a
    return-void

    .line 296
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 297
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 298
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    invoke-virtual {v0, v1, p3, p4, p5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFF)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    .line 198
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onPause()V

    .line 199
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 191
    :cond_0
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onResume()V

    .line 192
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;)V

    .line 151
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 152
    invoke-super {p0}, Lcom/sec/android/app/camera/MenuBase;->onShow()V

    .line 153
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setTouchHandled(Z)V

    .line 213
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 215
    :cond_0
    return-void
.end method

.method public roundOrientation(I)I
    .locals 1
    .parameter "orientation"

    .prologue
    .line 413
    add-int/lit8 v0, p1, 0x2d

    div-int/lit8 v0, v0, 0x5a

    mul-int/lit8 v0, v0, 0x5a

    rem-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x5a

    return v0
.end method

.method public setEffect(I)V
    .locals 12
    .parameter "effect"

    .prologue
    const/4 v11, 0x4

    const/4 v8, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setBackGroundVisible()V

    .line 760
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    .line 761
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    .line 774
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 775
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->resetHandler()V

    .line 776
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setSideLock(I)V

    .line 777
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDraggable(Z)V

    .line 778
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 779
    packed-switch p1, :pswitch_data_0

    .line 887
    const-string v0, "TwGLDualShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect :: unknown effext setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setAspectRatioLocked(Z)V

    .line 891
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setGrowable(Z)V

    .line 892
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 893
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 896
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-ne v0, v10, :cond_4

    :cond_2
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_4

    .line 897
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v6

    .line 898
    .local v6, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v6, v9, v9}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v7

    .line 899
    .local v7, rotateRect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 900
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 902
    .end local v6           #rect:Landroid/graphics/RectF;
    .end local v7           #rotateRect:Landroid/graphics/RectF;
    :cond_4
    return-void

    .line 781
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 782
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080230

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v2, 0x7f080231

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080230

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x7f080231

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v1, v1, v5

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v2, v2, v5

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v3, v3, v5

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 789
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v1, v1, v9

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v2, v2, v9

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080233

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080235

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080234

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f080235

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 792
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080233

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080235

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080234

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f080235

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 794
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 795
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v1, v1, v9

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v2, v2, v9

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 799
    :pswitch_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v1, v1, v10

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v2, v2, v10

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080236

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080238

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080237

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f080238

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 802
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080236

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080238

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080237

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f080238

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v1, v1, v10

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v2, v2, v10

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v3, v3, v10

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 809
    :pswitch_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v1, v1, v8

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080239

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f08023b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f08023a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f08023b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 812
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080239

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f08023b

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f08023a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f08023b

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 814
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v1, v1, v8

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v2, v2, v8

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 819
    :pswitch_4
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v1, v1, v11

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v2, v2, v11

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 820
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f08023c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f08023e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f08023d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f08023e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 822
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f08023c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f08023e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f08023d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f08023e

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 824
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 825
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v1, v1, v11

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v2, v2, v11

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v3, v3, v11

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v4, v4, v11

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 829
    :pswitch_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v8, 0x5

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 830
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f08023f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080241

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080240

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f080241

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 832
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f08023f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080241

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080240

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f080241

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 834
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v8, 0x5

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 839
    :pswitch_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v8, 0x6

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 840
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080242

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080244

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080243

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f080244

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080242

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080244

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080243

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f080244

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 844
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x6

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v8, 0x6

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 849
    :pswitch_7
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v8, 0x7

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 850
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080245

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080247

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080246

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f080247

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 852
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080245

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080247

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080246

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f080247

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 854
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v2, 0x7

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v3, 0x7

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/4 v8, 0x7

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 859
    :pswitch_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v8, 0x8

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 860
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080248

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f08024a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080249

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f08024a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 862
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080248

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f08024a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080249

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v3, 0x7f08024a

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 864
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v8, 0x8

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 869
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v8, 0x9

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 871
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    mul-int/lit8 v1, v1, 0x3c

    const v2, 0x7f080250

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f08024e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    const v3, 0x7f080250

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 873
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    mul-int/lit8 v1, v1, 0x3c

    const v2, 0x7f080250

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f08024e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    const v3, 0x7f080250

    invoke-static {v3}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 875
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_5

    .line 876
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0x9

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0x9

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v8, 0x9

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 878
    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setSideLock(I)V

    .line 879
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDraggable(Z)V

    goto/16 :goto_0

    .line 882
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v8, 0xa

    aget-object v4, v4, v8

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 779
    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setEffectMenuSelect(I)V
    .locals 14
    .parameter "effect"

    .prologue
    const v9, 0x7f08023b

    const v8, 0x7f080238

    const v7, 0x7f080235

    const/16 v10, 0x9

    const/4 v5, 0x0

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v12

    .line 471
    .local v12, rect:Landroid/graphics/RectF;
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 472
    const/16 v0, 0x30

    if-eq p1, v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x30

    if-ne v0, v1, :cond_1

    .line 473
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setEffect(I)V

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->decideEffectSize(I)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    .line 478
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->resetHandler()V

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->NONE_LOCK:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setSideLock(I)V

    .line 481
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDraggable(Z)V

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 483
    packed-switch p1, :pswitch_data_0

    .line 699
    const-string v0, "TwGLDualShotMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEffect :: unknown effext setting : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setAspectRatioLocked(Z)V

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setGrowable(Z)V

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 705
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_3

    .line 706
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 708
    :cond_3
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    .line 709
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :cond_4
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x31

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    :cond_5
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v12

    .line 711
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {v0, v12, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v13

    .line 712
    .local v13, rotateRect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v13, Landroid/graphics/RectF;->left:F

    iget v2, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v6

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v6

    iget v0, v13, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v1, v1

    sub-float v7, v0, v1

    iget v8, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v9

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v10

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_0

    .line 485
    .end local v13           #rotateRect:Landroid/graphics/RectF;
    :pswitch_0
    const v0, 0x7f080230

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v3, v0, v1

    .line 486
    .local v3, width:F
    const v0, 0x7f080231

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float v4, v0, v1

    .line 488
    .local v4, height:F
    iget v0, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 489
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 491
    :cond_6
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 492
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    iget v2, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 494
    :cond_7
    iget v0, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_8

    .line 495
    iget v0, v12, Landroid/graphics/RectF;->top:F

    iget v1, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->top:F

    .line 497
    :cond_8
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 498
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080230

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const v2, 0x7f080231

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 499
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080230

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x7f080231

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x6

    div-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 500
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 501
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 505
    .end local v3           #width:F
    .end local v4           #height:F
    :pswitch_1
    const v0, 0x7f080233

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 506
    .restart local v3       #width:F
    const v0, 0x7f080234

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 508
    .restart local v4       #height:F
    iget v0, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_9

    .line 509
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 511
    :cond_9
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    .line 512
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    iget v2, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 514
    :cond_a
    iget v0, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 515
    iget v0, v12, Landroid/graphics/RectF;->top:F

    iget v1, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->top:F

    .line 517
    :cond_b
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080233

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080234

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 520
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080233

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080234

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v7}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 522
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 527
    .end local v3           #width:F
    .end local v4           #height:F
    :pswitch_2
    const v0, 0x7f080236

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 528
    .restart local v3       #width:F
    const v0, 0x7f080237

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 530
    .restart local v4       #height:F
    iget v0, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_c

    .line 531
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 533
    :cond_c
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    .line 534
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    iget v2, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 536
    :cond_d
    iget v0, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    .line 537
    iget v0, v12, Landroid/graphics/RectF;->top:F

    iget v1, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->top:F

    .line 539
    :cond_e
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 540
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080236

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080237

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 542
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080236

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080237

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v8}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 549
    .end local v3           #width:F
    .end local v4           #height:F
    :pswitch_3
    const v0, 0x7f080239

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 550
    .restart local v3       #width:F
    const v0, 0x7f08023a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 552
    .restart local v4       #height:F
    iget v0, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_f

    .line 553
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 555
    :cond_f
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_10

    .line 556
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    iget v2, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 558
    :cond_10
    iget v0, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_11

    .line 559
    iget v0, v12, Landroid/graphics/RectF;->top:F

    iget v1, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->top:F

    .line 561
    :cond_11
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 562
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080239

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f08023a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 564
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080239

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f08023a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-static {v9}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 566
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 567
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 571
    .end local v3           #width:F
    .end local v4           #height:F
    :pswitch_4
    const v0, 0x7f08023c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    const v1, 0x7f08023e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 572
    .restart local v3       #width:F
    const v0, 0x7f08023d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    const v1, 0x7f08023e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 574
    .restart local v4       #height:F
    iget v0, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_12

    .line 575
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 577
    :cond_12
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_13

    .line 578
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    iget v2, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 580
    :cond_13
    iget v0, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_14

    .line 581
    iget v0, v12, Landroid/graphics/RectF;->top:F

    iget v1, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->top:F

    .line 583
    :cond_14
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 584
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f08023c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f08023e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f08023d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v6, 0x7f08023e

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 586
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f08023c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f08023e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f08023d

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v6, 0x7f08023e

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 588
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 593
    .end local v3           #width:F
    .end local v4           #height:F
    :pswitch_5
    const v0, 0x7f08023f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    const v1, 0x7f080241

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 594
    .restart local v3       #width:F
    const v0, 0x7f080240

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    const v1, 0x7f080241

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 596
    .restart local v4       #height:F
    iget v0, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_15

    .line 597
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 599
    :cond_15
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_16

    .line 600
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    iget v2, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 602
    :cond_16
    iget v0, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    .line 603
    iget v0, v12, Landroid/graphics/RectF;->top:F

    iget v1, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->top:F

    .line 605
    :cond_17
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 606
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f08023f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080241

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080240

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v6, 0x7f080241

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f08023f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080241

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080240

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v6, 0x7f080241

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 611
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 615
    .end local v3           #width:F
    .end local v4           #height:F
    :pswitch_6
    const v0, 0x7f080242

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    const v1, 0x7f080244

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 616
    .restart local v3       #width:F
    const v0, 0x7f080243

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    const v1, 0x7f080244

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 618
    .restart local v4       #height:F
    iget v0, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_18

    .line 619
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 621
    :cond_18
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_19

    .line 622
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    iget v2, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 624
    :cond_19
    iget v0, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1a

    .line 625
    iget v0, v12, Landroid/graphics/RectF;->top:F

    iget v1, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->top:F

    .line 627
    :cond_1a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 628
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080242

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080244

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080243

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v6, 0x7f080244

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080242

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080244

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080243

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v6, 0x7f080244

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 632
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 637
    .end local v3           #width:F
    .end local v4           #height:F
    :pswitch_7
    const v0, 0x7f080245

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    const v1, 0x7f080247

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 638
    .restart local v3       #width:F
    const v0, 0x7f080246

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    const v1, 0x7f080247

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 640
    .restart local v4       #height:F
    iget v0, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1b

    .line 641
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 643
    :cond_1b
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1c

    .line 644
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    iget v2, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 646
    :cond_1c
    iget v0, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1d

    .line 647
    iget v0, v12, Landroid/graphics/RectF;->top:F

    iget v1, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->top:F

    .line 649
    :cond_1d
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 650
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080245

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080247

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080246

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v6, 0x7f080247

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080245

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f080247

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080246

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v6, 0x7f080247

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 654
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 655
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 659
    .end local v3           #width:F
    .end local v4           #height:F
    :pswitch_8
    const v0, 0x7f080248

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    const v1, 0x7f08024a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v3, v0, v1

    .line 660
    .restart local v3       #width:F
    const v0, 0x7f080249

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    mul-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mEffectSizeRatio:F

    mul-float/2addr v0, v1

    const v1, 0x7f08024a

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    div-float v4, v0, v1

    .line 662
    .restart local v4       #height:F
    iget v0, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1e

    .line 663
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v3

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_right_boundary:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 665
    :cond_1e
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1f

    .line 666
    iget v0, v12, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mHandler_area_left_boundary:I

    int-to-float v1, v1

    iget v2, v12, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->left:F

    .line 668
    :cond_1f
    iget v0, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_20

    .line 669
    iget v0, v12, Landroid/graphics/RectF;->top:F

    iget v1, v12, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, v4

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->HANDLER_AREA_BOTTOM_BOUNDARY:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, v12, Landroid/graphics/RectF;->top:F

    .line 671
    :cond_20
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 672
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080248

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f08024a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080249

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v6, 0x7f08024a

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 674
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const v1, 0x7f080248

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x18

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    const v2, 0x7f08024a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f080249

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x18

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    const v6, 0x7f08024a

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 676
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 677
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v12, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v12, Landroid/graphics/RectF;->top:F

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 681
    .end local v3           #width:F
    .end local v4           #height:F
    :pswitch_9
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDisable(Z)V

    .line 682
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v1, v1, v10

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v2, v2, v10

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v6, v6, v10

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v7, v7, v10

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-virtual {v0, v1, v2, v6, v7}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 683
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    mul-int/lit8 v1, v1, 0x3c

    const v2, 0x7f080250

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f08024e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    const v6, 0x7f080250

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxSizeF(FF)V

    .line 685
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualshot_splitview_width:I

    mul-int/lit8 v1, v1, 0x3c

    const v2, 0x7f080250

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    div-int/2addr v1, v2

    int-to-float v1, v1

    const v2, 0x7f08024e

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0x3c

    const v6, 0x7f080250

    invoke-static {v6}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    div-int/2addr v2, v6

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMinSizeF(FF)V

    .line 687
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_21

    .line 688
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    iget v8, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v10

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 690
    :cond_21
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->LEFT_LOCK:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setSideLock(I)V

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setDraggable(Z)V

    goto/16 :goto_1

    .line 694
    :pswitch_a
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 695
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v6

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    iget v7, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    iget v8, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v9

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mRectinfo:[Landroid/graphics/RectF;

    const/16 v1, 0xa

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v10

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    goto/16 :goto_1

    .line 483
    nop

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public setOrientationChanged(I)V
    .locals 8
    .parameter "orientation"

    .prologue
    const/4 v2, 0x1

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, p1, :cond_2

    .line 418
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    and-int/lit8 v0, v0, 0x1

    and-int/lit8 v1, p1, 0x1

    if-eq v0, v1, :cond_4

    .line 419
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x31

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getCameraSettings()Lcom/sec/android/app/camera/CameraSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CameraSettings;->getCameraEffect()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mInvisible:Z

    if-ne v0, v2, :cond_3

    .line 425
    :cond_1
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 440
    :cond_2
    :goto_0
    return-void

    .line 429
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v6

    .line 431
    .local v6, rect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v6, v2, v2}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v7

    .line 432
    .local v7, rotateRect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 433
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->updateRectBeforeDragged()V

    .line 434
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v7, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 437
    .end local v6           #rect:Landroid/graphics/RectF;
    .end local v7           #rotateRect:Landroid/graphics/RectF;
    :cond_4
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    goto :goto_0
.end method

.method public setOrientationForDual()V
    .locals 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 240
    return-void
.end method

.method protected setOrientationListener()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 395
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$3;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$3;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 406
    return-void
.end method

.method public setPreviousPosition(I)V
    .locals 12
    .parameter "effect"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v9, 0x1

    .line 324
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->calulateCoordinateForNormalPreviewRatio()V

    .line 326
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setMaxBound()V

    .line 328
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v7

    .line 330
    .local v7, rect:Landroid/graphics/RectF;
    const/16 v0, 0x30

    if-eq p1, v0, :cond_7

    .line 331
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v7, v1, v1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->moveBy(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    move-result-object v6

    .line 332
    .local v6, newrect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v2, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 333
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v11, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v9, :cond_3

    :cond_0
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x31

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v10, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v11, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v9, :cond_3

    :cond_2
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mPreviousEffect:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-eq v0, v10, :cond_3

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    if-nez v0, :cond_6

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getPosition()Landroid/graphics/RectF;

    move-result-object v7

    .line 338
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, v7, v9, v9}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->calcRotatePostion(Landroid/graphics/RectF;IZ)Landroid/graphics/RectF;

    move-result-object v8

    .line 339
    .local v8, rotateRect:Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setPosition(FFFF)V

    .line 340
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v8, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v8, Landroid/graphics/RectF;->top:F

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFFZ)V

    .line 348
    .end local v8           #rotateRect:Landroid/graphics/RectF;
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->hideBoundryRect()V

    .line 349
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mNeedToOrientation:Z

    if-eqz v0, :cond_5

    .line 350
    iput-boolean v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mNeedToOrientation:Z

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_5

    .line 352
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 353
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/CommonEngine;->doSetEffectOrientationSync(I)V

    .line 360
    .end local v6           #newrect:Landroid/graphics/RectF;
    :cond_5
    :goto_1
    return-void

    .line 342
    .restart local v6       #newrect:Landroid/graphics/RectF;
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_4

    .line 343
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 344
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    iget v1, v6, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mOffsetForhandle:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v6, Landroid/graphics/RectF;->top:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v3

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/camera/CommonEngine;->coordinateSyncforDual(FFFF)V

    goto :goto_0

    .line 358
    .end local v6           #newrect:Landroid/graphics/RectF;
    :cond_7
    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->setEffect(I)V

    goto :goto_1
.end method

.method public setResizeHandleDragVibration(Z)V
    .locals 1
    .parameter "vibration"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setResizeHandleDragVibration(Z)V

    .line 236
    return-void
.end method

.method public setonGLHandlerChangedListener(Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDragChangedListener:Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu$onGLHandlerDragChangedListener;

    .line 146
    return-void
.end method

.method public setonHandlerMoveListener()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->getonHandlerMoveListener()Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLDualShotMenu;->mDualAreaHandle:Lcom/sec/android/app/camera/glwidget/TwGLHandler;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/camera/glwidget/TwGLHandler;->setonHandlerMoveListener(Lcom/sec/android/app/camera/glwidget/TwGLHandler$onHandlerMoveListener;)V

    .line 250
    :cond_0
    return-void
.end method
