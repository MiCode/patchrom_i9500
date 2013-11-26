.class public Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLActionMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_ALPHA:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I = 0x0

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F = null

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_WIDTH:I = 0x0

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I = null

.field private static final ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I = null

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_HELP_TEXT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_HELP_TEXT_SIZE:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_HELP_TEXT_WIDTH:I = 0x0

.field private static final ACTIONSHOT_HELP_TEXT_X:[I = null

.field private static final ACTIONSHOT_HELP_TEXT_Y:[I = null

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_RECT_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_RECT_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_RECT_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final ACTIONSHOT_RECT_WIDTH:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLActionMenu"


# instance fields
.field private mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mActionRect:Lcom/sec/android/glview/TwGLRectangle;

.field private mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

.field private mHelpText:Lcom/sec/android/glview/TwGLText;

.field private mIsCreatingResultStarted:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;

.field private mPostProgress:I

.field private mSideMenuHidden:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-array v0, v6, [I

    const v1, 0x7f080371

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f080372

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f080373

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f080374

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    .line 45
    new-array v0, v6, [I

    const v1, 0x7f080375

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f080376

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f080377

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f080378

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    .line 49
    const v0, 0x7f080379

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_WIDTH:I

    .line 50
    const v0, 0x7f08037a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    .line 51
    const v0, 0x7f08037b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_ALPHA:I

    .line 52
    new-array v0, v4, [F

    const v1, 0x7f08037c

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v2

    const v1, 0x7f08037d

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v3

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    .line 54
    new-array v0, v6, [I

    const v1, 0x7f08037e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f08037f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f080380

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f080381

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    .line 58
    new-array v0, v6, [I

    const v1, 0x7f08037e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v2

    const v1, 0x7f08037f

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v3

    const v1, 0x7f080380

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v4

    const v1, 0x7f080381

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    .line 62
    const v0, 0x7f080386

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_WIDTH:I

    .line 63
    const v0, 0x7f080387

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_HEIGHT:I

    .line 64
    const v0, 0x7f09003c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_SIZE:F

    .line 65
    const v0, 0x7f080388

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_X:I

    .line 66
    const v0, 0x7f080389

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_Y:I

    .line 67
    const v0, 0x7f08038a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_WIDTH:I

    .line 68
    const v0, 0x7f08038b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 89
    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;

    .line 91
    new-instance v0, Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0204e8

    const v7, 0x7f0204e7

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_ALPHA:I

    invoke-direct/range {v0 .. v8}, Lcom/sec/android/glview/TwGLProgressBar;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    .line 94
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_HEIGHT:I

    int-to-float v5, v5

    const v6, 0x7f0a013f

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    .line 99
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_HEIGHT:I

    int-to-float v5, v5

    const/16 v6, 0xff

    const/4 v7, 0x0

    const/16 v8, 0xff

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/high16 v7, 0x40a0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 100
    new-instance v0, Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_POS_Y:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_RECT_HEIGHT:I

    int-to-float v5, v5

    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    const/16 v9, 0xff

    invoke-static {v6, v7, v8, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    const/high16 v7, 0x40a0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLRectangle;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFIF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    .line 102
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setRotatable(Z)V

    .line 105
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 113
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 114
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 116
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLView;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 118
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setCaptureEnabled(Z)V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 120
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->init()V

    .line 121
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 124
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 126
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 128
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 130
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 132
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v4

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v4

    int-to-float v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 133
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v3

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 134
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_X:[I

    aget v1, v1, v5

    int-to-float v1, v1

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_HELP_TEXT_Y:[I

    aget v2, v2, v5

    int-to-float v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLView;->setLeftTop(IFF)V

    .line 136
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 137
    return-void
.end method


# virtual methods
.method public actionShotCaptureCancelled()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 322
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 324
    return-void
.end method

.method public actionShotCreatingResultStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    .line 290
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 296
    :cond_1
    return-void
.end method

.method public actionShotRectChanged([B)V
    .locals 10
    .parameter "data"

    .prologue
    const/4 v9, 0x4

    const/4 v6, 0x0

    .line 299
    aget-byte v4, p1, v6

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v1, v4, v5

    .line 301
    .local v1, left:I
    aget-byte v4, p1, v9

    and-int/lit16 v4, v4, 0xff

    const/4 v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/4 v5, 0x6

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/4 v5, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v3, v4, v5

    .line 303
    .local v3, top:I
    const/16 v4, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x9

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0xa

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0xb

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v2, v4, v5

    .line 305
    .local v2, right:I
    const/16 v4, 0xc

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xd

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    const/16 v5, 0xe

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    const/16 v5, 0xf

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int v0, v4, v5

    .line 308
    .local v0, bottom:I
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 310
    sub-int v4, v2, v1

    if-lez v4, :cond_0

    sub-int v4, v0, v3

    if-lez v4, :cond_0

    .line 311
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v6}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 312
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    int-to-float v5, v1

    int-to-float v6, v3

    sub-int v7, v2, v1

    int-to-float v7, v7

    sub-int v8, v0, v3

    int-to-float v8, v8

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/sec/android/glview/TwGLRectangle;->setRect(FFFF)V

    .line 315
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 316
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 317
    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v4, v9}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 319
    :cond_1
    return-void
.end method

.method public getProgressValue()I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public hideCaptureLayout()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 195
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 196
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showHelpText()V

    .line 197
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 199
    return-void
.end method

.method public hideHelpText()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 145
    return-void
.end method

.method public onBack()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 156
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mActionGuideRect:Lcom/sec/android/glview/TwGLRectangle;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    .line 166
    :goto_0
    return-void

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;

    invoke-interface {v0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;->onActionShotCaptureCancelled()V

    .line 164
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    goto :goto_0
.end method

.method public onHide()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideHelpText()V

    .line 153
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v3, 0x1b

    const/4 v0, 0x1

    .line 212
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 230
    :cond_0
    :goto_0
    return v0

    .line 217
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v3, :cond_3

    .line 218
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    const/16 v2, 0x64

    if-lt v1, v2, :cond_0

    .line 223
    :cond_3
    if-ne p1, v3, :cond_4

    .line 224
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    if-eqz v1, :cond_4

    .line 225
    const-string v1, "TwGLActionMenu"

    const-string v2, "onKeyDown - mIsCreatingResultStarted is true"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 230
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 235
    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-ne p1, v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return v0

    .line 240
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    if-ne p1, v2, :cond_3

    .line 241
    :cond_2
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    if-gtz v1, :cond_0

    .line 246
    :cond_3
    if-ne p1, v2, :cond_4

    .line 247
    iget-boolean v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    if-eqz v1, :cond_4

    .line 248
    const-string v1, "TwGLActionMenu"

    const-string v2, "onKeyUp - mIsCreatingResultStarted is true"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 253
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onOrientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->setSizeForOrientation()V

    .line 286
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLProgressBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onActionShotCaptureCancelled()V

    .line 259
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->resetAcquisitionProgress()V

    .line 261
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 0

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->showHelpText()V

    .line 149
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 169
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mIsCreatingResultStarted:Z

    .line 170
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 171
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLProgressBar;->setMax(I)V

    .line 172
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 173
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    .line 174
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 175
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    .line 176
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .parameter "nProgress"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/glview/TwGLProgressBar;->setProgress(I)V

    .line 182
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mSideMenuHidden:Z

    .line 184
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/MenuBase;->setTouchHandled(Z)V

    .line 185
    iget-object v0, p0, Lcom/sec/android/app/camera/MenuBase;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuItems()V

    .line 187
    :cond_0
    return-void
.end method

.method public setActionShotCancelListener(Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 207
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLActionMenu$OnActionShotCaptureCancelListener;

    .line 208
    return-void
.end method

.method public setPostCaptureProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 190
    const-string v0, "TwGLActionMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mPostProgress:I

    .line 192
    return-void
.end method

.method public setSizeForOrientation()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 268
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLView;->getOrientation()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 271
    :pswitch_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 277
    :pswitch_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_SETSIZE_WIDTH:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->ACTIONSHOT_CAPTURE_PROGRESSBAR_HEIGHT:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/glview/TwGLProgressBar;->setSize(FF)V

    .line 278
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v3, v3}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_0

    .line 268
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mCaptureProgressBar:Lcom/sec/android/glview/TwGLProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 203
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->hideHelpText()V

    .line 204
    return-void
.end method

.method public showHelpText()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLActionMenu;->mHelpText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLView;->setVisibility(I)V

    .line 141
    return-void
.end method
