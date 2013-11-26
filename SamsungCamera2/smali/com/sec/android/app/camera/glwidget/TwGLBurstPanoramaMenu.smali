.class public Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;
.super Lcom/sec/android/app/camera/MenuBase;
.source "TwGLBurstPanoramaMenu.java"

# interfaces
.implements Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_SPEED_FAST:I = 0x96

.field private static final ANIMATION_SPEED_SLOW:I = 0x12c

#the value of this static final field might be set in the static constructor
.field private static final CAPTURETRI_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final CAPTURETRI_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final EASYMODE_STOP_BUTTON_ICON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EASYMODE_STOP_BUTTON_ICON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EASYMODE_STOP_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final EASYMODE_STOP_BUTTON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final GUIDE_TEXT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final GUIDE_TEXT_MARGIN:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final GUIDE_TEXT_POS_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final GUIDE_TEXT_POS_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final GUIDE_TEXT_SIZE:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final GUIDE_TEXT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_POS_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_POS_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_SIZE:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final HELP_TEXT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final INIT_BACKGROUND_RECT_LANDSCAPE_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final INIT_BACKGROUND_RECT_PORTRAIT_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final INIT_BACKGROUND_RECT_PORTRAIT_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final INIT_PREVIEW_RECT_LANDSCAPE_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final INIT_PREVIEW_RECT_LANDSCAPE_X:F = 0.0f

.field private static final INIT_PREVIEW_RECT_LANDSCAPE_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final INIT_PREVIEW_RECT_PORTRAIT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final INIT_PREVIEW_RECT_PORTRAIT_X:F = 0.0f

.field private static final INIT_PREVIEW_RECT_PORTRAIT_Y:F = 0.0f

.field private static final LIVEPREVIEW_ALPHA_ANIM_TIME:I = 0x1f4

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_LANDSCAPE_Y:F = 0.0f

.field private static final LIVEPREVIEW_MOVE_ANIM_TIME:I = 0xb2

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_HEIGHT:F = 0.0f

.field private static final LIVEPREVIEW_PORTRAIT_RECT_HEIGHT:F = 60.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_PORTRAIT_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_RECT_THICKNESS:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_SINGLE_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_SINGLE_PORTRAIT_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_SINGLE_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_SINGLE_X:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final LIVEPREVIEW_SINGLE_Y:F = 0.0f

.field private static final MESSAGE_PANORAMA_PROCESSING:I = 0x4

.field private static final MESSAGE_PANORAMA_WARNING_HIGH:I = 0x3

.field private static final MESSAGE_PANORAMA_WARNING_LOW:I = 0x2

.field protected static final MESSAGE_TIMEOUT_CANCEL:I = 0x1

.field private static final MESSAGE_TIMEOUT_MOVESLOWLY:I = 0x5

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_ARROWS_COLOR:I = 0x0

.field private static PANORAMASHOT_POPUP_GROUP_HEIGHT:F = 0.0f

.field private static PANORAMASHOT_POPUP_GROUP_WIDTH:F = 0.0f

.field private static PANORAMASHOT_POPUP_GROUP_X:F = 0.0f

.field private static PANORAMASHOT_POPUP_GROUP_Y:F = 0.0f

.field private static PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F = null

.field private static PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F = null

.field private static PANORAMASHOT_PROGRESSBAR_HEIGHT:F = 0.0f

.field private static PANORAMASHOT_PROGRESSBAR_WIDTH:F = 0.0f

.field private static PANORAMASHOT_PROGRESSBAR_X:F = 0.0f

.field private static PANORAMASHOT_PROGRESSBAR_Y:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_HEIGHT:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_SIZE:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_WIDTH:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_X:F = 0.0f

.field private static PANORAMASHOT_PROGRESS_TEXT_Y:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_RECT_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_RECT_MARGIN:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_RECT_WIDTH:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_ROOT_SHIFT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_TRI_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_TRI_HEIGHT_WIDTH:I = 0x0

.field private static final PANORAMASHOT_TRI_POS_X:[I = null

.field private static final PANORAMASHOT_TRI_POS_Y:[I = null

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_TRI_WIDTH:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final PANORAMASHOT_TRI_WIDTH_HEIGHT:I = 0x0

.field private static final PANORAMASHOT_XOFFSET:F = 234.0f

.field public static final PANORAMAX_MAX_IMAGE_COUNT:I = 0x190

.field public static final PROCESS_TIMER_TIMEOUT:I = 0x4e20

.field protected static SCREEN_HEIGHT:I = 0x0

.field protected static SCREEN_WIDTH:I = 0x0

.field private static STATUSBAR_HEIGHT:F = 0.0f

#the value of this static final field might be set in the static constructor
.field private static final STOP_BUTTON_ICON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final STOP_BUTTON_ICON_POS_Y:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final STOP_BUTTON_POS_X:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final STOP_BUTTON_POS_Y:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "TwGLBurstPanoramaMenu"

.field private static final WARNING_ARROW_OFFSET:F

.field private static final WARNING_ARROW_SWING_DISTANCE:F

.field private static WARNING_DISTANCE_HORIZONTAL:I

.field private static WARNING_DISTANCE_VERTICAL:I

.field private static WARNING_LEVEL_HIGH:I

.field private static WARNING_LEVEL_LOW:I

.field private static WARNING_LEVEL_NONE:I

.field private static WARNING_LEVEL_STOP:I


# instance fields
.field private bDrawLivePreview:Z

.field private bSupportRotatePreviewRect:Z

.field private mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

.field private mCaptureCount:I

.field private mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

.field private mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

.field private mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

.field private mCurrentOrientation:I

.field private mDetectedDirection:I

.field private mEnterOrientation:I

.field private mGTShow:Z

.field private mGuideText:Lcom/sec/android/glview/TwGLText;

.field private mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mIsPanoramaCapturing:Z

.field private mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

.field private mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

.field private mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

.field private mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

.field protected mMenu:Lcom/sec/android/glview/TwGLViewGroup;

.field private mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

.field protected mPanoramaMsgHandler:Landroid/os/Handler;

.field private mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

.field private mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

.field private mPanoramaWarning:Z

.field private mPostProgress:I

.field private mPreviewThumbnailHeight:F

.field private mPreviewThumbnailWidth:F

.field private mPreviousCaptureCount:I

.field private mSideMenuHidden:Z

.field private mThumbnailPreviewHeight:I

.field private mThumbnailPreviewMaxHeight:I

.field private mThumbnailPreviewMaxWidth:I

.field private mThumbnailPreviewPreallocatedBuffer:[I

.field private mThumbnailPreviewWidth:I

.field private mTri:[[Lcom/sec/android/glview/TwGLImage;

.field private mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

.field private mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

.field private mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

.field private mWarningText:Lcom/sec/android/glview/TwGLText;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/high16 v2, 0x436a

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 67
    const v0, 0x7f080317

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    .line 68
    const v0, 0x7f08031a

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    .line 73
    const v0, 0x7f080492

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    .line 76
    const v0, 0x7f0803c5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    add-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_X:F

    .line 77
    const v0, 0x7f0803c6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_Y:F

    .line 78
    const v0, 0x7f0803c7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_WIDTH:F

    .line 79
    const v0, 0x7f0803c8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POPUP_GROUP_HEIGHT:F

    .line 80
    const v0, 0x7f0803da

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_X:F

    .line 81
    const v0, 0x7f0803db

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_Y:F

    .line 82
    const v0, 0x7f0803dc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_WIDTH:F

    .line 83
    const v0, 0x7f0804d1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_HEIGHT:F

    .line 84
    const v0, 0x7f09003b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_PROGRESS_TEXT_SIZE:F

    .line 85
    const v0, 0x7f0803cb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_WIDTH:F

    .line 86
    const v0, 0x7f0803cc

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_HEIGHT:F

    .line 87
    const v0, 0x7f0803d6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    add-float/2addr v0, v2

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_X:F

    .line 88
    const v0, 0x7f0803d7

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_PROGRESSBAR_Y:F

    .line 89
    new-array v0, v7, [F

    const v1, 0x7f0803dd

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v2

    aput v1, v0, v5

    const v1, 0x7f0803de

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    add-float/2addr v1, v2

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    .line 91
    new-array v0, v7, [F

    const v1, 0x7f0803df

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v5

    const v1, 0x7f0803e0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    aput v1, v0, v6

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    .line 93
    const v0, 0x7f080316

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STATUSBAR_HEIGHT:F

    .line 95
    const/4 v0, 0x4

    new-array v0, v0, [I

    const v1, 0x7f080493

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    const v1, 0x7f080494

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/lit16 v1, v1, 0xea

    aput v1, v0, v6

    const v1, 0x7f080495

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v7

    const/4 v1, 0x3

    const v2, 0x7f080496

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    add-int/lit16 v2, v2, 0xea

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    .line 100
    const/4 v0, 0x4

    new-array v0, v0, [I

    const v1, 0x7f080497

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v5

    const v1, 0x7f080498

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v6

    const v1, 0x7f080499

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    aput v1, v0, v7

    const/4 v1, 0x3

    const v2, 0x7f08049a

    invoke-static {v2}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    sput-object v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    .line 106
    const v0, 0x7f080225

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    .line 107
    const v0, 0x7f080226

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT:I

    .line 109
    const v0, 0x7f08049b

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:I

    .line 110
    const v0, 0x7f08049c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:I

    .line 111
    const v0, 0x7f0804a0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_WIDTH:F

    .line 112
    const v0, 0x7f0804a1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_HEIGHT:F

    .line 113
    const v0, 0x7f0804a2

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    .line 115
    const v0, 0x7f0804a3

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_WIDTH:F

    .line 116
    const v0, 0x7f0804a4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_HEIGHT:F

    .line 117
    const v0, 0x7f080314

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_POS_X:F

    .line 118
    const v0, 0x7f080315

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_POS_Y:F

    .line 119
    const v0, 0x7f09003c

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_SIZE:F

    .line 121
    const v0, 0x7f08049d

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    .line 122
    const v0, 0x7f08049e

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    .line 123
    const v0, 0x7f080314

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_ROOT_SHIFT:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_POS_X:F

    .line 124
    const v0, 0x7f080315

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float/2addr v0, v1

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_MARGIN:F

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_POS_Y:F

    .line 125
    const v0, 0x7f090042

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_SIZE:F

    .line 126
    const v0, 0x7f08049f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    .line 129
    const v0, 0x7f0804a5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    .line 130
    const v0, 0x7f0804a6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    .line 131
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 132
    const v0, 0x7f0804a8

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    .line 133
    const v0, 0x7f0804a9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    .line 134
    const v0, 0x7f0804aa

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    .line 135
    const v0, 0x7f0804ab

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    .line 136
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    .line 137
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v1, 0x4180

    mul-float/2addr v0, v1

    const/high16 v1, 0x4110

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 138
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 139
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 140
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    .line 141
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v1, 0x4110

    mul-float/2addr v0, v1

    const/high16 v1, 0x4180

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 142
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 143
    const v0, 0x7f0804b0

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_X:F

    .line 144
    const v0, 0x7f0804b1

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 146
    const v0, 0x7f0804b4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 150
    const v0, 0x7f0804b9

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    .line 151
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_HEIGHT:F

    .line 152
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_X:F

    .line 153
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_Y:F

    .line 154
    const v0, 0x7f0804bd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    .line 155
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

    .line 156
    const v0, 0x7f0804bb

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_X:F

    .line 157
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v0, v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x4100

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_Y:F

    .line 159
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

    .line 160
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_HEIGHT:F

    .line 161
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_X:F

    .line 163
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

    .line 164
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_HEIGHT:F

    .line 165
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

    sub-float/2addr v0, v1

    div-float/2addr v0, v4

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_X:F

    .line 168
    const v0, 0x7f0804cd

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    .line 169
    const v0, 0x7f0804ce

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    add-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    .line 179
    const/16 v0, 0xff

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/16 v3, 0xff

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_ARROWS_COLOR:I

    .line 180
    const v0, 0x7f0804b5

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    .line 181
    const v0, 0x7f0804b6

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    .line 182
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    mul-float/2addr v0, v4

    const/high16 v1, 0x41a0

    div-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    .line 184
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    .line 195
    sput v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    .line 196
    sput v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    .line 197
    sput v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    .line 198
    const/4 v0, 0x3

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_STOP:I

    .line 200
    const/16 v0, 0x708

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_VERTICAL:I

    .line 201
    const/16 v0, 0x3e8

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_HORIZONTAL:I

    .line 217
    const v0, 0x7f080314

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f080005

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    const v1, 0x7f08000e

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_X:I

    .line 219
    const v0, 0x7f08000f

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_Y:I

    .line 220
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_X:I

    const v1, 0x7f080010

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_ICON_POS_X:I

    .line 221
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_Y:I

    const v1, 0x7f080011

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_ICON_POS_Y:I

    .line 223
    const v0, 0x7f080314

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f0801c9

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    const v1, 0x7f0801c5

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_POS_X:I

    .line 225
    const v0, 0x7f0801c4

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_POS_Y:I

    .line 226
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_POS_X:I

    const v1, 0x7f0801c8

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_ICON_POS_X:I

    .line 227
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_POS_Y:I

    const v1, 0x7f0801c7

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_ICON_POS_Y:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;)V
    .locals 10
    .parameter "activityContext"
    .parameter "viewId"
    .parameter "glParentView"
    .parameter "menuResourceDepot"

    .prologue
    .line 341
    const/4 v5, 0x6

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/app/camera/MenuBase;-><init>(Lcom/sec/android/app/camera/Camera;ILcom/sec/android/glview/TwGLViewGroup;Lcom/sec/android/app/camera/MenuResourceDepot;IZ)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviousCaptureCount:I

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 187
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    .line 188
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mMenu:Lcom/sec/android/glview/TwGLViewGroup;

    .line 206
    const/4 v0, 0x4

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Lcom/sec/android/glview/TwGLImage;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    .line 207
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    .line 208
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLImage;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    .line 209
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 242
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 245
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    .line 246
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sec/android/glview/TwGLViewGroup;

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 252
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bSupportRotatePreviewRect:Z

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    .line 255
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 258
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 264
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    .line 269
    new-instance v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$1;-><init>(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setCaptureEnabled(Z)V

    .line 344
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    .line 347
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 348
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201ea

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 350
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 353
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_POS_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_POS_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_HEIGHT:F

    const v6, 0x7f0a01f6

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->HELP_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    .line 356
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 358
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 362
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 363
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 364
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x2

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 365
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x3

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_HEIGHT_WIDTH:I

    int-to-float v4, v4

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH_HEIGHT:I

    int-to-float v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 367
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 373
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 375
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x4434

    const/high16 v5, 0x4308

    const v6, 0x7f0201eb

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 377
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x435c

    const/high16 v5, 0x4302

    const v6, 0x7f0201ec

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 378
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 379
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 380
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 381
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bSupportRotatePreviewRect:Z

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    .line 385
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setCenterPivot(Z)V

    .line 386
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLViewGroup;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 387
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 389
    const v0, 0x7f0804cf

    invoke-static {v0}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v8

    .line 391
    .local v8, arrowOffsetPx:F
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 392
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0201e4

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 393
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 394
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0201e3

    invoke-direct {v2, v3, v8, v4, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 395
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 396
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0201e7

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 397
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e1

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 398
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0201e0

    invoke-direct {v2, v3, v4, v8, v5}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 400
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 401
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 402
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 403
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 404
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 405
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 406
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 407
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mTri:[[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 409
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 410
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    int-to-float v4, v4

    const/4 v5, 0x0

    const v6, 0x7f0201e4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 412
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x0

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 413
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 414
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 415
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201e6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 418
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_WIDTH:I

    int-to-float v5, v5

    const v6, 0x7f0201e7

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 420
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v7, 0x1

    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    invoke-direct/range {v0 .. v5}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;FFFF)V

    aput-object v0, v6, v7

    .line 421
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 422
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 423
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 426
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 427
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 429
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 430
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 431
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x2

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f3

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 432
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x3

    new-instance v2, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7f0201f4

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    aput-object v2, v0, v1

    .line 434
    new-instance v0, Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_RECT_HEIGHT:F

    const v6, 0x7f0201ec

    invoke-direct/range {v0 .. v6}, Lcom/sec/android/glview/TwGLNinePatch;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    .line 435
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 437
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0201ff

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    .line 438
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 439
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f020200

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    .line 440
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 442
    new-instance v0, Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    const v6, 0x7f0a01f2

    invoke-virtual {p1, v6}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_SIZE:F

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLText;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLjava/lang/String;F)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    .line 445
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setRotatable(Z)V

    .line 446
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLText;->setOnOrientationChangedListener(Lcom/sec/android/glview/TwGLView$OnOrientationChangedListener;)V

    .line 447
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 449
    new-instance v0, Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;-><init>(Lcom/sec/android/glview/TwGLContext;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    .line 450
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isEasyModeSettingOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 451
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f0202fc

    const v5, 0x7f0202fe

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    .line 455
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setMute(Z)V

    .line 456
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0185

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setTitle(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotatable(Z)V

    .line 458
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLButton;->setRotateAnimation(Z)V

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, p0}, Lcom/sec/android/glview/TwGLButton;->setOnClickListener(Lcom/sec/android/glview/TwGLView$OnClickListener;)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->isEasyModeSettingOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_ICON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->EASYMODE_STOP_BUTTON_ICON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f020308

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    .line 466
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotatable(Z)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setRotateAnimation(Z)V

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setBypassTouch(Z)V

    .line 470
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 471
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 472
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 474
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLContext;->getLastOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->onOrientationChanged(I)V

    .line 475
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 476
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 477
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 478
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 479
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 480
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 482
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 484
    const/4 v9, 0x0

    .local v9, i:I
    :goto_3
    const/4 v0, 0x4

    if-ge v9, v0, :cond_3

    .line 485
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 486
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 488
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v0, v0, v9

    invoke-virtual {p3, v0}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 489
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v0, v0, v9

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 484
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 384
    .end local v8           #arrowOffsetPx:F
    .end local v9           #i:I
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setRotatable(Z)V

    goto/16 :goto_0

    .line 453
    .restart local v8       #arrowOffsetPx:F
    :cond_1
    new-instance v0, Lcom/sec/android/glview/TwGLButton;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02003c

    const v5, 0x7f02003e

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/sec/android/glview/TwGLButton;-><init>(Lcom/sec/android/glview/TwGLContext;FFIIII)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    goto/16 :goto_1

    .line 464
    :cond_2
    new-instance v0, Lcom/sec/android/glview/TwGLImage;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/Camera;->getGLContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_ICON_POS_X:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->STOP_BUTTON_ICON_POS_Y:I

    int-to-float v3, v3

    const v4, 0x7f02048a

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sec/android/glview/TwGLImage;-><init>(Lcom/sec/android/glview/TwGLContext;FFI)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonImage:Lcom/sec/android/glview/TwGLImage;

    goto/16 :goto_2

    .line 492
    .restart local v9       #i:I
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 493
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V

    .line 495
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->init()V

    .line 496
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;)Lcom/sec/android/app/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    return-object v0
.end method

.method private hideWarningText()V
    .locals 2

    .prologue
    .line 1640
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLText;->resetTranslate()V

    .line 1641
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1642
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 511
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v0, v5, v5}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    .line 512
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget-object v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v1, v1, v3

    const/high16 v2, 0x43fa

    add-float/2addr v1, v2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v2, v2, v3

    const/high16 v3, 0x4220

    sub-float/2addr v2, v3

    invoke-virtual {v0, v4, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 515
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float/2addr v1, v2

    const/high16 v2, 0x42c8

    add-float/2addr v1, v2

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v2, v2

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v5, v1, v2}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 518
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x3

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_X:[F

    aget v2, v2, v4

    const/high16 v3, 0x4370

    add-float/2addr v2, v3

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_POSTCAPTURE_PROGRESSBAR_POS_Y:[F

    aget v3, v3, v4

    const/high16 v4, 0x4248

    add-float/2addr v3, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/glview/TwGLText;->setLeftTop(IFF)V

    .line 523
    return-void
.end method

.method private declared-synchronized updateLivePreviewLayout(Z)V
    .locals 52
    .parameter "detectedDirection"

    .prologue
    .line 1673
    monitor-enter p0

    :try_start_0
    const-string v5, "TwGLBurstPanoramaMenu"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateLivePreviewLayout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " direction: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v8, 0x1

    if-gt v5, v8, :cond_6

    if-nez p1, :cond_6

    .line 1677
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2

    .line 1682
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showPreviewGroup()V

    .line 1684
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->resetTranslate()V

    .line 1685
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v8, 0x2

    if-ne v5, v8, :cond_3

    .line 1686
    :cond_0
    const/16 v39, 0x0

    .line 1687
    .local v39, orient:I
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    .line 1688
    .local v24, groupX:F
    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    .line 1689
    .local v25, groupY:F
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1690
    .local v23, groupW:F
    sget v20, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1691
    .local v20, groupH:F
    sget v41, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 1692
    .local v41, rectW:F
    sget v40, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 1706
    .local v40, rectH:F
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1707
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v5, v8, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1708
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1709
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v41

    move/from16 v1, v40

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1713
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1714
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1715
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1718
    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v8, 0x1

    if-ne v5, v8, :cond_2

    .line 1719
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showStopButton()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1897
    .end local v20           #groupH:F
    .end local v23           #groupW:F
    .end local v24           #groupX:F
    .end local v25           #groupY:F
    .end local v39           #orient:I
    .end local v40           #rectH:F
    .end local v41           #rectW:F
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 1694
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v8, 0x1

    if-eq v5, v8, :cond_4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_5

    .line 1695
    :cond_4
    const/16 v39, 0x1

    .line 1696
    .restart local v39       #orient:I
    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_X:F

    .line 1697
    .restart local v24       #groupX:F
    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_Y:F

    .line 1698
    .restart local v25       #groupY:F
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 1699
    .restart local v23       #groupW:F
    sget v20, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 1700
    .restart local v20       #groupH:F
    sget v41, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 1701
    .restart local v41       #rectW:F
    sget v40, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .restart local v40       #rectH:F
    goto :goto_0

    .line 1703
    .end local v20           #groupH:F
    .end local v23           #groupW:F
    .end local v24           #groupX:F
    .end local v25           #groupY:F
    .end local v39           #orient:I
    .end local v40           #rectH:F
    .end local v41           #rectW:F
    :cond_5
    const-string v5, "TwGLBurstPanoramaMenu"

    const-string v8, "komlang : updateLivePreviewLayout: Invalid orientation"

    invoke-static {v5, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1673
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1722
    :cond_6
    if-eqz p1, :cond_2

    .line 1723
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    .line 1724
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x4

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1725
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1726
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showStopButton()V

    .line 1728
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->playPanoramaProcessingSound()V

    .line 1730
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-nez v5, :cond_8

    .line 1731
    :cond_7
    const-string v5, "TwGLBurstPanoramaMenu"

    const-string v8, "updateLivePreviewLayout: LivePreview is null yet. ignore"

    invoke-static {v5, v8}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1741
    :cond_8
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v48, v5, v8

    .line 1742
    .local v48, widthFocus:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v27, v5, v8

    .line 1744
    .local v27, heightFocus:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v35, v5, v8

    .line 1745
    .local v35, oldLeftGroup:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v37, v5, v8

    .line 1746
    .local v37, oldTopGroup:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getLeft()F

    move-result v34

    .line 1747
    .local v34, oldLeft:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getTop()F

    move-result v36

    .line 1748
    .local v36, oldTop:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v38

    .line 1749
    .local v38, oldWidth:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v33

    .line 1750
    .local v33, oldHeight:F
    const/16 v29, 0x1

    .line 1752
    .local v29, landscape:Z
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v47, v5, v8

    .line 1753
    .local v47, width:F
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float v26, v5, v8

    .line 1755
    .local v26, height:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v51, v0

    monitor-enter v51
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1756
    :try_start_3
    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v5, :pswitch_data_0

    .line 1837
    :goto_2
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v5, v5, v8

    sub-float v17, v35, v5

    .line 1838
    .local v17, fromXDeltaRect:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v5, v5, v8

    sub-float v19, v37, v5

    .line 1839
    .local v19, fromYDeltaRect:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x0

    aget v5, v5, v8

    sub-float v5, v35, v5

    add-float v34, v34, v5

    .line 1840
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getLeft()F

    move-result v5

    sub-float v16, v34, v5

    .line 1841
    .local v16, fromXDelta:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->getLeftTop(I)[F

    move-result-object v5

    const/4 v8, 0x1

    aget v5, v5, v8

    sub-float v5, v37, v5

    add-float v36, v36, v5

    .line 1842
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->getTop()F

    move-result v5

    sub-float v18, v36, v5

    .line 1843
    .local v18, fromYDelta:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v5

    div-float v4, v38, v5

    .line 1844
    .local v4, scaleX:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    div-float v6, v33, v5

    .line 1846
    .local v6, scaleY:F
    new-instance v28, Landroid/view/animation/LinearInterpolator;

    invoke-direct/range {v28 .. v28}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 1851
    .local v28, interpol:Landroid/view/animation/Interpolator;
    if-eqz v29, :cond_9

    .line 1852
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f80

    const/high16 v7, 0x3f80

    const/4 v8, 0x2

    const/high16 v9, 0x3f00

    const/4 v10, 0x1

    const/high16 v11, 0x3f80

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1853
    .local v3, animRect:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v3, v5, v8, v9, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1854
    const-wide/16 v8, 0xb2

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1855
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1856
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1857
    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1882
    :goto_3
    new-instance v44, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v44

    move/from16 v1, v16

    move/from16 v2, v18

    invoke-direct {v0, v1, v5, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1883
    .local v44, ta:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, v44

    invoke-virtual {v0, v5, v8, v9, v10}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 1884
    const-wide/16 v8, 0xb2

    move-object/from16 v0, v44

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1885
    const-wide/16 v8, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1886
    const/4 v5, 0x1

    move-object/from16 v0, v44

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1887
    move-object/from16 v0, v44

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1889
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->resetClipRect()V

    .line 1890
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5, v3}, Lcom/sec/android/glview/TwGLNinePatch;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1891
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, v44

    invoke-virtual {v5, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1893
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->startAnimation()V

    .line 1894
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLBitmapTexture;->startAnimation()V

    .line 1895
    monitor-exit v51

    goto/16 :goto_1

    .end local v3           #animRect:Landroid/view/animation/Animation;
    .end local v4           #scaleX:F
    .end local v6           #scaleY:F
    .end local v16           #fromXDelta:F
    .end local v17           #fromXDeltaRect:F
    .end local v18           #fromYDelta:F
    .end local v19           #fromYDeltaRect:F
    .end local v28           #interpol:Landroid/view/animation/Interpolator;
    .end local v44           #ta:Landroid/view/animation/Animation;
    :catchall_1
    move-exception v5

    monitor-exit v51
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1758
    :pswitch_1
    const/16 v21, 0x0

    .local v21, groupLeft:F
    const/16 v22, 0x0

    .line 1759
    .local v22, groupTop:F
    const/16 v49, 0x0

    .local v49, x:F
    const/16 v50, 0x0

    .line 1760
    .local v50, y:F
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    neg-float v5, v5

    const/high16 v8, 0x4080

    div-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    add-float v43, v5, v8

    .line 1761
    .local v43, startOffsetPosition:F
    move/from16 v31, v43

    .line 1762
    .local v31, leftFocus:F
    sget v21, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    .line 1763
    sget v22, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    .line 1764
    move/from16 v49, v31

    .line 1765
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    add-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v9, 0x4080

    div-float/2addr v8, v9

    sub-float v50, v5, v8

    .line 1767
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v5, v8, v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1768
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v49

    move/from16 v1, v50

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1770
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1771
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1772
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1774
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v9, 0x4000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v47

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1775
    add-float v5, v31, v48

    const/high16 v8, 0x4140

    sub-float v47, v5, v8

    .line 1776
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sub-float/2addr v8, v9

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    move/from16 v0, v47

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1777
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 1781
    .end local v21           #groupLeft:F
    .end local v22           #groupTop:F
    .end local v31           #leftFocus:F
    .end local v43           #startOffsetPosition:F
    .end local v49           #x:F
    .end local v50           #y:F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1782
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1783
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1784
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1786
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    neg-float v5, v5

    const/high16 v8, 0x4040

    mul-float/2addr v5, v8

    const/high16 v8, 0x4080

    div-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sub-float v43, v5, v8

    .line 1787
    .restart local v43       #startOffsetPosition:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    sub-float v30, v5, v47

    .line 1788
    .local v30, left:F
    move/from16 v31, v43

    .line 1789
    .restart local v31       #leftFocus:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    move/from16 v0, v30

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 1790
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v9, 0x4000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v47

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    const/high16 v10, 0x4080

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    move/from16 v0, v31

    invoke-virtual {v5, v0, v8}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1792
    const/high16 v5, 0x4000

    div-float v5, v48, v5

    sub-float v5, v31, v5

    const/high16 v8, 0x4140

    sub-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sub-float v47, v5, v8

    .line 1793
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/high16 v8, 0x4220

    add-float v8, v8, v47

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sub-float/2addr v9, v10

    const/high16 v10, 0x4000

    div-float/2addr v9, v10

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1794
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 1798
    .end local v30           #left:F
    .end local v31           #leftFocus:F
    .end local v43           #startOffsetPosition:F
    :pswitch_3
    const/16 v29, 0x0

    .line 1799
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1801
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1802
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1803
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float v5, v5, v26

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v45, v5, v8

    .line 1804
    .local v45, top:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    neg-float v5, v5

    const/high16 v8, 0x4000

    div-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    sub-float v43, v5, v8

    .line 1805
    .restart local v43       #startOffsetPosition:F
    move/from16 v46, v43

    .line 1806
    .local v46, topFocus:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x4000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v9, v26, v9

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1807
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sub-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x4080

    div-float/2addr v8, v9

    sub-float v31, v5, v8

    .line 1808
    .restart local v31       #leftFocus:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v31

    move/from16 v1, v46

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1809
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v8, 0x0

    move/from16 v0, v45

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 1810
    const/high16 v5, 0x4000

    div-float v5, v27, v5

    sub-float v5, v45, v5

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_HEIGHT:F

    sub-float/2addr v5, v8

    const/high16 v8, 0x41b0

    sub-float v26, v5, v8

    .line 1811
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    const/high16 v9, 0x4190

    sub-float/2addr v8, v9

    move/from16 v0, v26

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1812
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 1816
    .end local v31           #leftFocus:F
    .end local v43           #startOffsetPosition:F
    .end local v45           #top:F
    .end local v46           #topFocus:F
    :pswitch_4
    const/16 v29, 0x0

    .line 1817
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 1818
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    invoke-virtual {v5, v8, v9, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setLeftTop(IFF)V

    .line 1819
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setOrientation(I)V

    .line 1820
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 1823
    const/16 v45, 0x0

    .line 1824
    .restart local v45       #top:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x4000

    sget v10, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v9, v26, v9

    invoke-virtual {v5, v8, v9}, Lcom/sec/android/glview/TwGLBitmapTexture;->setSize(FF)V

    .line 1825
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    const/4 v8, 0x0

    move/from16 v0, v45

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->moveLayoutAbsolute(FF)V

    .line 1826
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    sub-float/2addr v5, v8

    const/high16 v8, 0x4000

    mul-float/2addr v5, v8

    const/high16 v8, 0x4110

    div-float/2addr v5, v8

    const/high16 v8, 0x4000

    sget v9, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float/2addr v8, v9

    add-float v27, v5, v8

    .line 1827
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v8, 0x4000

    div-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v5, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    add-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    sub-float v43, v5, v8

    .line 1828
    .restart local v43       #startOffsetPosition:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    sub-float/2addr v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    const/high16 v9, 0x4080

    div-float/2addr v8, v9

    sub-float v31, v5, v8

    .line 1829
    .restart local v31       #leftFocus:F
    move/from16 v46, v43

    .line 1830
    .restart local v46       #topFocus:F
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move/from16 v0, v31

    move/from16 v1, v46

    invoke-virtual {v5, v0, v1}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 1831
    add-float v5, v26, v27

    const/high16 v8, 0x4000

    div-float v8, v27, v8

    sub-float v26, v5, v8

    .line 1832
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    const/high16 v9, 0x4000

    div-float/2addr v8, v9

    const/high16 v9, 0x4190

    sub-float/2addr v8, v9

    move/from16 v0, v26

    invoke-virtual {v5, v8, v0}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1833
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v8, 0x1

    aget-object v5, v5, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto/16 :goto_2

    .line 1859
    .end local v31           #leftFocus:F
    .end local v43           #startOffsetPosition:F
    .end local v45           #top:F
    .end local v46           #topFocus:F
    .restart local v4       #scaleX:F
    .restart local v6       #scaleY:F
    .restart local v16       #fromXDelta:F
    .restart local v17       #fromXDeltaRect:F
    .restart local v18       #fromYDelta:F
    .restart local v19       #fromYDeltaRect:F
    .restart local v28       #interpol:Landroid/view/animation/Interpolator;
    :cond_9
    new-instance v7, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f80

    const/high16 v11, 0x3f80

    const/4 v12, 0x1

    const/high16 v13, 0x3f00

    const/4 v14, 0x1

    const/high16 v15, 0x3f80

    move v8, v4

    move v10, v6

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1860
    .local v7, scaleRect:Landroid/view/animation/ScaleAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v7, v5, v8, v9, v10}, Landroid/view/animation/ScaleAnimation;->initialize(IIII)V

    .line 1861
    const-wide/16 v8, 0xb2

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 1862
    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 1863
    const/4 v5, 0x1

    invoke-virtual {v7, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 1864
    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1866
    new-instance v32, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-direct {v0, v1, v5, v2, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1867
    .local v32, moveRect:Landroid/view/animation/TranslateAnimation;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v5

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v8}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v9}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v9

    float-to-int v9, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v10}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v10

    float-to-int v10, v10

    move-object/from16 v0, v32

    invoke-virtual {v0, v5, v8, v9, v10}, Landroid/view/animation/TranslateAnimation;->initialize(IIII)V

    .line 1868
    const-wide/16 v8, 0xb2

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1869
    const-wide/16 v8, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1870
    const/4 v5, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 1871
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1873
    new-instance v42, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    move-object/from16 v0, v42

    invoke-direct {v0, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1874
    .local v42, set:Landroid/view/animation/AnimationSet;
    move-object/from16 v0, v42

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1875
    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1876
    const-wide/16 v8, 0xb2

    move-object/from16 v0, v42

    invoke-virtual {v0, v8, v9}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1877
    move-object/from16 v0, v42

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1878
    move-object/from16 v3, v42

    .restart local v3       #animRect:Landroid/view/animation/Animation;
    goto/16 :goto_3

    .line 1756
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public clearPanoramaRect()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1645
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    if-eqz v1, :cond_0

    .line 1646
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1647
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLNinePatch;->resetTranslate()V

    .line 1650
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v1, :cond_1

    .line 1651
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1654
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 1655
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    .line 1656
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 1658
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 1659
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 1660
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1658
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1664
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1665
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 1666
    return-void
.end method

.method public getAnimation(II)Landroid/view/animation/AnimationSet;
    .locals 10
    .parameter "speed"
    .parameter "direction"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 560
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v6}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 561
    .local v1, animation:Landroid/view/animation/AnimationSet;
    const/4 v0, 0x0

    .line 563
    .local v0, anim:Landroid/view/animation/Animation;
    packed-switch p2, :pswitch_data_0

    .line 589
    :goto_0
    :pswitch_0
    if-eqz v0, :cond_0

    .line 591
    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 592
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 593
    invoke-virtual {v0, v7}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 594
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 595
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 598
    :cond_0
    return-object v1

    .line 566
    :pswitch_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, -0x4080

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 567
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    .line 572
    :pswitch_2
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v4, v4, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 573
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v8

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v8

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto :goto_0

    .line 578
    :pswitch_3
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    const/high16 v2, -0x4080

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    mul-float/2addr v2, v3

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 579
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v7

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v7

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 584
    :pswitch_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0           #anim:Landroid/view/animation/Animation;
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_SWING_DISTANCE:F

    invoke-direct {v0, v4, v2, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 585
    .restart local v0       #anim:Landroid/view/animation/Animation;
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v3, v3, v9

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v4, v4, v9

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v5, v5, v9

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/view/animation/Animation;->initialize(IIII)V

    goto/16 :goto_0

    .line 563
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getCaptureProgressIncreased()I
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    return v0
.end method

.method public getEnterOrientation()I
    .locals 1

    .prologue
    .line 2292
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    return v0
.end method

.method public getPreviewThumbnailSize(II)V
    .locals 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1913
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-lez v1, :cond_0

    .line 1914
    const-string v1, "TwGLBurstPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreviewThumbnailSize : width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1918
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v1, :pswitch_data_0

    .line 1932
    :pswitch_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    .line 1933
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    .line 1937
    :goto_0
    return-void

    .line 1921
    :pswitch_1
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    int-to-float v2, p2

    div-float v0, v1, v2

    .line 1922
    .local v0, Ratio:F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    .line 1923
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    goto :goto_0

    .line 1927
    .end local v0           #Ratio:F
    :pswitch_2
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 1928
    .restart local v0       #Ratio:F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    .line 1929
    int-to-float v1, p1

    mul-float/2addr v1, v0

    iput v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    goto :goto_0

    .line 1918
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public hideCaptureTri()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 739
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 740
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 741
    return-void
.end method

.method public hideGuideText()V
    .locals 2

    .prologue
    .line 543
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "hideGuideText"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_0

    .line 545
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    .line 547
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 551
    :cond_0
    return-void
.end method

.method public hideLivePreview()V
    .locals 2

    .prologue
    .line 837
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 838
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 839
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 840
    return-void
.end method

.method public hidePostCaptureLayout()V
    .locals 0

    .prologue
    .line 798
    return-void
.end method

.method public hidePreviewGroup()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 661
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_0

    .line 662
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 667
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 668
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 667
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 670
    :cond_1
    return-void
.end method

.method public hideStopButton()V
    .locals 2

    .prologue
    .line 734
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "hideStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 737
    return-void
.end method

.method public hideWarningArrow(Z)V
    .locals 3
    .parameter "all"

    .prologue
    const/4 v2, 0x4

    .line 1624
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1625
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLImage;->resetTranslate()V

    .line 1626
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1624
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1629
    :cond_0
    if-eqz p1, :cond_1

    .line 1630
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    .line 1632
    :cond_1
    return-void
.end method

.method public hideWarningBox()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1635
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1636
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1637
    return-void
.end method

.method public isPanoramaCapturing()Z
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    return v0
.end method

.method public declared-synchronized isReadyToCapture()Z
    .locals 1

    .prologue
    .line 331
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBack()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 602
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 603
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureStopped()V

    .line 605
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    .line 614
    :goto_0
    return-void

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->isPanoramaCapturing()Z

    move-result v0

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 608
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->resetPanoramaCapturing()V

    .line 609
    invoke-virtual {p0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    goto :goto_0

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->processBack()V

    goto :goto_0
.end method

.method public onClick(Lcom/sec/android/glview/TwGLView;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 809
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButton:Lcom/sec/android/glview/TwGLButton;

    if-ne p1, v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/camera/CommonEngine;->doStopPanoramaSync()V

    .line 811
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    .line 812
    const/4 v0, 0x1

    .line 815
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onHide()V
    .locals 1

    .prologue
    .line 678
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    .line 679
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    .line 680
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideLivePreview()V

    .line 681
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    .line 682
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    .line 683
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    .line 684
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 685
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 686
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePostCaptureLayout()V

    .line 687
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setPreviewThumbnailSizeToDefault()V

    .line 688
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v2, 0x1b

    const/4 v0, 0x1

    .line 854
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_1

    .line 855
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    if-lez v1, :cond_1

    .line 856
    const-string v1, "TwGLBurstPanoramaMenu"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown - it is stitching ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :goto_0
    return v0

    .line 861
    :cond_1
    if-ne p1, v2, :cond_2

    .line 862
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_2

    .line 863
    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "onKeyDown - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 868
    :cond_2
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

    .line 878
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    if-ne p1, v2, :cond_1

    .line 879
    :cond_0
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    if-lez v1, :cond_1

    .line 891
    :goto_0
    return v0

    .line 884
    :cond_1
    if-ne p1, v2, :cond_2

    .line 885
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v1

    const/16 v2, 0x190

    if-ne v1, v2, :cond_2

    .line 886
    const-string v1, "TwGLBurstPanoramaMenu"

    const-string v2, "onKeyUp - PANORAMAX_MAX_IMAGE_COUNT"

    invoke-static {v1, v2}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 891
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized onLivePreviewData([B)V
    .locals 27
    .parameter "data"

    .prologue
    .line 1945
    monitor-enter p0

    :try_start_0
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Lmj onLivePreviewData , mCapturecount:"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    const/4 v9, 0x0

    .line 1948
    .local v9, bmp:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v3, :cond_4

    .line 1950
    :cond_0
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/Integer;

    move-object/from16 v21, v0

    .line 1951
    .local v21, rotation:[Ljava/lang/Integer;
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/Util;->decodeRgbaBitmap([B[Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1952
    if-nez v9, :cond_2

    .line 1953
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to decode RGBA data for live preview. Data: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2289
    .end local v21           #rotation:[Ljava/lang/Integer;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1957
    .restart local v21       #rotation:[Ljava/lang/Integer;
    :cond_2
    :try_start_1
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getPreviewThumbnailSize(II)V

    .line 1965
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    .line 1966
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .line 1968
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 2147
    .end local v21           #rotation:[Ljava/lang/Integer;
    :cond_3
    :goto_1
    if-nez v9, :cond_12

    .line 2148
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Unable to RGBA Data Creation Failed. mCaptureCount:"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, " data:"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1945
    .end local v9           #bmp:Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1973
    .restart local v9       #bmp:Landroid/graphics/Bitmap;
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviousCaptureCount:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-eq v3, v4, :cond_1

    .line 1983
    const/4 v14, 0x1

    .line 1985
    .local v14, bCheckPassed:Z
    const v7, 0x1869f

    .line 1986
    .local v7, width:I
    const v8, 0x1869f

    .line 1987
    .local v8, height:I
    const/4 v15, 0x0

    .line 1988
    .local v15, datarotation:I
    if-eqz p1, :cond_5

    move-object/from16 v0, p1

    array-length v3, v0

    const/16 v4, 0x10

    if-ge v3, v4, :cond_7

    .line 1989
    :cond_5
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Received null or invalid data"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1990
    const/4 v14, 0x0

    .line 2015
    :cond_6
    :goto_2
    const/4 v3, 0x1

    if-ne v14, v3, :cond_3

    .line 2018
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    if-nez v3, :cond_a

    .line 2020
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_0

    .line 2036
    :pswitch_0
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PANORAMA Invalid direction: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1995
    :cond_7
    const/4 v3, 0x0

    aget-byte v3, p1, v3

    const/16 v4, 0x52

    if-ne v3, v4, :cond_8

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    const/16 v4, 0x47

    if-ne v3, v4, :cond_8

    const/4 v3, 0x2

    aget-byte v3, p1, v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_8

    const/4 v3, 0x3

    aget-byte v3, p1, v3

    const/16 v4, 0x41

    if-eq v3, v4, :cond_9

    .line 1996
    :cond_8
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Data is invalid (RGBA tag not found)"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1997
    const/4 v14, 0x0

    .line 2001
    :cond_9
    const/4 v3, 0x4

    :try_start_3
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v7

    .line 2002
    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I

    move-result v8

    .line 2003
    const/16 v3, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/sec/android/app/camera/Util;->byteArrayToInt([BI)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v15

    .line 2009
    :goto_3
    :try_start_4
    move-object/from16 v0, p1

    array-length v3, v0

    mul-int v4, v7, v8

    mul-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x10

    if-ge v3, v4, :cond_6

    .line 2010
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "onLivePreviewData: The buffer is too small to contain a image of "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "x"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2011
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 2004
    :catch_0
    move-exception v16

    .line 2005
    .local v16, ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Could not parse panorama bitmap header"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2006
    const/4 v14, 0x0

    goto :goto_3

    .line 2023
    .end local v16           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :pswitch_1
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    .line 2024
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    .line 2025
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 2026
    move-object/from16 v0, p0

    iput v8, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2046
    :cond_a
    :goto_4
    :try_start_5
    move-object/from16 v0, p1

    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, -0x4

    new-array v0, v3, [I

    move-object/from16 v18, v0

    .line 2047
    .local v18, intData:[I
    const/16 v10, 0xff

    .line 2048
    .local v10, MASK:I
    const/16 v20, 0x0

    .line 2049
    .local v20, result:I
    const/16 v17, 0x0

    .local v17, i:I
    :goto_5
    move-object/from16 v0, p1

    array-length v3, v0

    div-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, -0x4

    move/from16 v0, v17

    if-ge v0, v3, :cond_b

    .line 2052
    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    shl-int/lit8 v20, v3, 0x10

    .line 2053
    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    shl-int/lit8 v3, v3, 0x8

    add-int v20, v20, v3

    .line 2054
    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    add-int v20, v20, v3

    .line 2055
    add-int/lit8 v3, v17, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p1, v3

    and-int/2addr v3, v10

    shl-int/lit8 v3, v3, 0x18

    add-int v20, v20, v3

    .line 2056
    aput v20, v18, v17
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1

    .line 2049
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 2030
    .end local v10           #MASK:I
    .end local v17           #i:I
    .end local v18           #intData:[I
    .end local v20           #result:I
    :pswitch_2
    :try_start_6
    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    .line 2031
    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    .line 2032
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    mul-int/2addr v3, v4

    new-array v3, v3, [I

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    .line 2033
    move-object/from16 v0, p0

    iput v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 2059
    .restart local v10       #MASK:I
    .restart local v17       #i:I
    .restart local v18       #intData:[I
    .restart local v20       #result:I
    :cond_b
    :try_start_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_1

    .line 2135
    :pswitch_3
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PANORAMA Invalid direction: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_1

    .line 2139
    .end local v7           #width:I
    .end local v8           #height:I
    .end local v10           #MASK:I
    .end local v17           #i:I
    .end local v18           #intData:[I
    .end local v20           #result:I
    :catch_1
    move-exception v16

    .line 2140
    .restart local v16       #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    :try_start_8
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Index Control Failed!!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_1

    .line 2061
    .end local v16           #ex:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v7       #width:I
    .restart local v8       #height:I
    .restart local v10       #MASK:I
    .restart local v17       #i:I
    .restart local v18       #intData:[I
    .restart local v20       #result:I
    :pswitch_4
    :try_start_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    if-eq v3, v8, :cond_c

    .line 2063
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Height is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2067
    :cond_c
    const/16 v23, 0x0

    .local v23, y:I
    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_d

    .line 2069
    mul-int v3, v23, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    mul-int v24, v24, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v3, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2067
    add-int/lit8 v23, v23, 0x1

    goto :goto_6

    .line 2071
    :cond_d
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_9 .. :try_end_9} :catch_1

    .line 2073
    :try_start_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .end local v7           #width:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v8           #height:I
    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_a .. :try_end_a} :catch_1

    move-result-object v9

    goto/16 :goto_1

    .line 2074
    :catch_2
    move-exception v19

    .line 2075
    .local v19, oom:Ljava/lang/OutOfMemoryError;
    :try_start_b
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2081
    .end local v19           #oom:Ljava/lang/OutOfMemoryError;
    .end local v23           #y:I
    .restart local v7       #width:I
    .restart local v8       #height:I
    :pswitch_5
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    if-eq v3, v8, :cond_e

    .line 2083
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Height is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2087
    :cond_e
    const/16 v23, 0x0

    .restart local v23       #y:I
    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v0, v23

    if-ge v0, v3, :cond_f

    .line 2089
    mul-int v3, v23, v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    sub-int v24, v24, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v25, v0

    mul-int v25, v25, v23

    add-int v24, v24, v25

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-static {v0, v3, v4, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2087
    add-int/lit8 v23, v23, 0x1

    goto :goto_7

    .line 2091
    :cond_f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    add-int/2addr v3, v7

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_b} :catch_1

    .line 2093
    :try_start_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move/from16 v24, v0

    sub-int v4, v4, v24

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .end local v7           #width:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v8           #height:I
    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_1

    move-result-object v9

    goto/16 :goto_1

    .line 2094
    :catch_3
    move-exception v19

    .line 2095
    .restart local v19       #oom:Ljava/lang/OutOfMemoryError;
    :try_start_d
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2101
    .end local v19           #oom:Ljava/lang/OutOfMemoryError;
    .end local v23           #y:I
    .restart local v7       #width:I
    .restart local v8       #height:I
    :pswitch_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    if-eq v3, v7, :cond_10

    .line 2103
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Width is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2107
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    sub-int v25, v25, v8

    mul-int v24, v24, v25

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2108
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_d .. :try_end_d} :catch_1

    .line 2110
    :try_start_e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxHeight:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v24, v0

    sub-int v4, v4, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    mul-int v4, v4, v24

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .end local v7           #width:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v8           #height:I
    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_e .. :try_end_e} :catch_1

    move-result-object v9

    goto/16 :goto_1

    .line 2111
    :catch_4
    move-exception v19

    .line 2112
    .restart local v19       #oom:Ljava/lang/OutOfMemoryError;
    :try_start_f
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2118
    .end local v19           #oom:Ljava/lang/OutOfMemoryError;
    .restart local v7       #width:I
    .restart local v8       #height:I
    :pswitch_7
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    if-eq v3, v7, :cond_11

    .line 2120
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Width is different!!"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2124
    :cond_11
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    move/from16 v25, v0

    mul-int v24, v24, v25

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v25, v0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-static {v0, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2125
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_f .. :try_end_f} :catch_1

    .line 2127
    :try_start_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewPreallocatedBuffer:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewMaxWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewWidth:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mThumbnailPreviewHeight:I

    .end local v7           #width:I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local v8           #height:I
    invoke-static/range {v3 .. v8}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_10} :catch_5
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_10 .. :try_end_10} :catch_1

    move-result-object v9

    goto/16 :goto_1

    .line 2128
    :catch_5
    move-exception v19

    .line 2129
    .restart local v19       #oom:Ljava/lang/OutOfMemoryError;
    :try_start_11
    const-string v3, "TwGLBurstPanoramaMenu"

    const-string v4, "onLivePreviewData: Out of memory [1]"

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_0

    .line 2151
    .end local v10           #MASK:I
    .end local v14           #bCheckPassed:Z
    .end local v15           #datarotation:I
    .end local v17           #i:I
    .end local v18           #intData:[I
    .end local v19           #oom:Ljava/lang/OutOfMemoryError;
    .end local v20           #result:I
    :cond_12
    :try_start_12
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getPreviewThumbnailSize(II)V

    .line 2153
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviousCaptureCount:I

    .line 2155
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v3, :cond_14

    .line 2156
    :cond_13
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 2160
    :cond_14
    const/4 v12, 0x0

    .line 2161
    .local v12, arrowleft:F
    const/4 v13, 0x0

    .line 2162
    .local v13, arrowtop:F
    sget v5, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 2163
    .local v5, left:F
    sget v6, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    .line 2164
    .local v6, top:F
    const/16 v22, 0x0

    .line 2166
    .local v22, stopPanorama:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1e

    .line 2167
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    if-eqz v3, :cond_15

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1b

    .line 2168
    :cond_15
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v4, 0x4000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    .line 2169
    .local v7, width:F
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    const/high16 v4, 0x4000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .line 2237
    .local v8, height:F
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v3, :cond_17

    .line 2238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 2239
    :try_start_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v3, :cond_16

    .line 2240
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 2241
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 2244
    :cond_16
    new-instance v3, Lcom/sec/android/glview/TwGLBitmapTexture;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGLParentView:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getContext()Lcom/sec/android/glview/TwGLContext;

    move-result-object v4

    invoke-direct/range {v3 .. v9}, Lcom/sec/android/glview/TwGLBitmapTexture;-><init>(Lcom/sec/android/glview/TwGLContext;FFFFLandroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 2245
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->addView(Lcom/sec/android/glview/TwGLView;)V

    .line 2246
    monitor-exit v24
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 2249
    :cond_17
    :try_start_14
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x18f

    if-ge v3, v4, :cond_26

    .line 2250
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_19

    .line 2252
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    const/4 v4, 0x0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v3, v4, v0}, Lcom/sec/android/glview/TwGLNinePatch;->moveLayoutAbsolute(FF)V

    .line 2257
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_18

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_25

    .line 2258
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    aget-object v11, v3, v4

    .line 2263
    .local v11, activeGroup:Lcom/sec/android/glview/TwGLViewGroup;
    :goto_9
    invoke-virtual {v11}, Lcom/sec/android/glview/TwGLViewGroup;->resetTranslate()V

    .line 2264
    const/4 v3, 0x0

    invoke-virtual {v11, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2265
    invoke-virtual {v11, v12, v13}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 2267
    if-eqz v22, :cond_19

    .line 2268
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    .line 2269
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    .line 2284
    .end local v11           #activeGroup:Lcom/sec/android/glview/TwGLViewGroup;
    :cond_19
    :goto_a
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_29

    .line 2285
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V

    goto/16 :goto_0

    .line 2170
    .end local v7           #width:F
    .end local v8           #height:F
    :cond_1b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1d

    .line 2171
    :cond_1c
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    const/high16 v4, 0x4000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .line 2172
    .restart local v8       #height:F
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x4000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    .restart local v7       #width:F
    goto/16 :goto_8

    .line 2174
    .end local v7           #width:F
    .end local v8           #height:F
    :cond_1d
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "komlang : onLivePreviewData : invalid orientation "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2178
    :cond_1e
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1f

    .line 2179
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    const/high16 v4, 0x4000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    .line 2180
    .restart local v7       #width:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    const/high16 v4, 0x4000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .line 2181
    .restart local v8       #height:F
    const/16 v22, 0x1

    .line 2197
    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    packed-switch v3, :pswitch_data_2

    .line 2232
    :pswitch_8
    const-string v3, "TwGLBurstPanoramaMenu"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "PANORAMA Invalid direction: "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2182
    .end local v7           #width:F
    .end local v8           #height:F
    :cond_1f
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_20

    .line 2183
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    const/high16 v4, 0x4000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v7, v3, v4

    .line 2184
    .restart local v7       #width:F
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x4000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .line 2185
    .restart local v8       #height:F
    const/16 v22, 0x1

    goto :goto_b

    .line 2187
    .end local v7           #width:F
    .end local v8           #height:F
    :cond_20
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v7, v3, v4

    .line 2189
    .restart local v7       #width:F
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/16 v4, 0x8

    if-eq v3, v4, :cond_21

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_22

    .line 2191
    :cond_21
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v7, v3

    .line 2194
    :cond_22
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    const/high16 v4, 0x4000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float v8, v3, v4

    .restart local v8       #height:F
    goto :goto_b

    .line 2199
    :pswitch_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v24, 0x4000

    div-float v4, v4, v24

    add-float/2addr v3, v4

    const v4, 0x7f0804d0

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    add-float v12, v3, v4

    .line 2201
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    .line 2202
    goto/16 :goto_8

    .line 2205
    :pswitch_a
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v3, v4

    sub-float v5, v3, v7

    .line 2206
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v24, 0x4000

    div-float v4, v4, v24

    sub-float/2addr v3, v4

    const v4, 0x7f0804d0

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    sub-float v12, v3, v4

    .line 2208
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x0

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v13, v3, v4

    .line 2209
    goto/16 :goto_8

    .line 2212
    :pswitch_b
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x190

    if-ne v3, v4, :cond_23

    .line 2213
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x4000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    int-to-float v4, v4

    const/high16 v24, 0x3f80

    add-float v4, v4, v24

    mul-float/2addr v3, v4

    const/high16 v4, 0x43c8

    div-float v8, v3, v4

    .line 2214
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v6, v3, v4

    .line 2216
    :cond_23
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    add-float/2addr v3, v8

    const v4, 0x7f0804d0

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v4

    const/high16 v24, 0x4000

    div-float v4, v4, v24

    add-float v13, v3, v4

    .line 2217
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x1

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    add-float v12, v3, v4

    .line 2218
    goto/16 :goto_8

    .line 2221
    :pswitch_c
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float/2addr v3, v4

    sub-float v6, v3, v8

    .line 2223
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x190

    if-ne v3, v4, :cond_24

    .line 2224
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    const/high16 v4, 0x4000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v4, v4, v24

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    int-to-float v4, v4

    const/high16 v24, 0x3f80

    add-float v4, v4, v24

    mul-float/2addr v3, v4

    const/high16 v4, 0x43c8

    div-float v8, v3, v4

    .line 2225
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    sub-float/2addr v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    sub-float v6, v3, v4

    .line 2227
    :cond_24
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sub-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->CAPTURETRI_WIDTH:F

    sub-float/2addr v3, v4

    sub-float/2addr v3, v8

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    sub-float/2addr v3, v4

    const v4, 0x7f0804d0

    invoke-static {v4}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v4

    sub-float v13, v3, v4

    .line 2228
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_RECT_WIDTH:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/16 v24, 0x1

    aget-object v4, v4, v24

    invoke-virtual {v4}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float/2addr v3, v4

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    add-float v12, v3, v4

    .line 2229
    goto/16 :goto_8

    .line 2246
    :catchall_1
    move-exception v3

    :try_start_15
    monitor-exit v24
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    :try_start_16
    throw v3

    .line 2260
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    aget-object v11, v3, v4

    .restart local v11       #activeGroup:Lcom/sec/android/glview/TwGLViewGroup;
    goto/16 :goto_9

    .line 2273
    .end local v11           #activeGroup:Lcom/sec/android/glview/TwGLViewGroup;
    :cond_26
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_27

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    .line 2274
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2278
    :goto_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    const/16 v4, 0x18f

    if-ne v3, v4, :cond_19

    .line 2279
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    .line 2280
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    goto/16 :goto_a

    .line 2276
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_c

    .line 2287
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaCaptureTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->bringToFront()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto/16 :goto_0

    .line 2020
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2059
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_7
    .end packed-switch

    .line 2197
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_8
        :pswitch_c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_b
    .end packed-switch
.end method

.method public onOrientationChanged(I)V
    .locals 13
    .parameter "orientation"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 2301
    const-string v6, "TwGLBurstPanoramaMenu"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onOrientationChanged - mEnterOrientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCurrentOrientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", orientation:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2303
    iget-boolean v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bSupportRotatePreviewRect:Z

    if-nez v6, :cond_0

    .line 2304
    const/4 p1, 0x0

    .line 2313
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-nez v6, :cond_2

    .line 2314
    const-string v6, "TwGLBurstPanoramaMenu"

    const-string v7, "onOrientationChanged - Already mActivityContext is null"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    :cond_1
    :goto_0
    return-void

    .line 2319
    :cond_2
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->isPanoramaCapturing()Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    if-nez v6, :cond_4

    .line 2320
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    if-eq v6, p1, :cond_4

    .line 2321
    const-string v6, "TwGLBurstPanoramaMenu"

    const-string v7, "onOrientationChanged Stop case - orientation changed"

    invoke-static {v6, v7}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 2342
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    .line 2343
    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 2344
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    .line 2346
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 2352
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v6, :cond_3

    .line 2353
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2354
    :cond_3
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    .line 2355
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6, v11}, Lcom/sec/android/app/camera/Camera;->showPanoramaToastPopup(I)V

    .line 2360
    :cond_4
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    .line 2362
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    if-eq v6, p1, :cond_6

    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-lt v6, v11, :cond_6

    .line 2363
    const/4 v0, 0x0

    .line 2364
    .local v0, bStop:Z
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    packed-switch v6, :pswitch_data_0

    .line 2382
    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    .line 2383
    const-string v6, "TwGLBurstPanoramaMenu"

    const-string v7, "onOrientationChanged Stop case - orientation changed during a capturing"

    invoke-static {v6, v7}, Landroid/util/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    iput-boolean v9, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 2385
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideLivePreview()V

    .line 2386
    invoke-direct {p0, v9}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 2387
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    .line 2388
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    .line 2390
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v6}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    .line 2394
    .end local v0           #bStop:Z
    :cond_6
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_7

    .line 2395
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateArrow()V

    .line 2400
    :cond_7
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    .line 2404
    :pswitch_0
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_X:F

    .line 2405
    .local v4, rectX:F
    const/4 v5, 0x0

    .line 2406
    .local v5, rectY:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_X:F

    .line 2407
    .local v1, groupX:F
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_Y:F

    .line 2409
    .local v2, groupY:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->resetTranslate()V

    .line 2412
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 2413
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 2415
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2417
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_LANDSCAPE_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2418
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6, v4, v5}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 2422
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v10, :cond_1

    .line 2423
    if-ge v3, v12, :cond_9

    .line 2424
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_8

    .line 2425
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2422
    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2366
    .end local v1           #groupX:F
    .end local v2           #groupY:F
    .end local v3           #i:I
    .end local v4           #rectX:F
    .end local v5           #rectY:F
    .restart local v0       #bStop:Z
    :pswitch_1
    if-eq p1, v12, :cond_5

    .line 2367
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2370
    :pswitch_2
    const/4 v6, 0x3

    if-eq p1, v6, :cond_5

    .line 2371
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2374
    :pswitch_3
    if-eqz p1, :cond_5

    .line 2375
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2378
    :pswitch_4
    if-eq p1, v11, :cond_5

    .line 2379
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 2428
    .end local v0           #bStop:Z
    .restart local v1       #groupX:F
    .restart local v2       #groupY:F
    .restart local v3       #i:I
    .restart local v4       #rectX:F
    .restart local v5       #rectY:F
    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 2435
    .end local v1           #groupX:F
    .end local v2           #groupY:F
    .end local v3           #i:I
    .end local v4           #rectX:F
    .end local v5           #rectY:F
    :pswitch_5
    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_X:F

    .line 2436
    .restart local v4       #rectX:F
    const/4 v5, 0x0

    .line 2437
    .restart local v5       #rectY:F
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_X:F

    .line 2438
    .restart local v1       #groupX:F
    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_Y:F

    .line 2440
    .restart local v2       #groupY:F
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLNinePatch;->resetTranslate()V

    .line 2443
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLViewGroup;->setSize(FF)V

    .line 2444
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6, v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 2446
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializeBackgroundRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_BACKGROUND_RECT_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2448
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    sget v7, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_WIDTH:F

    sget v8, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->INIT_PREVIEW_RECT_PORTRAIT_HEIGHT:F

    invoke-virtual {v6, v7, v8}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 2449
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v6, v4, v5}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 2452
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v10, :cond_1

    .line 2453
    if-ge v3, v12, :cond_b

    .line 2454
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v10}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 2452
    :cond_a
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 2456
    :cond_b
    iget v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v6}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v6

    if-nez v6, :cond_a

    .line 2457
    iget-object v6, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v6, v6, v3

    invoke-virtual {v6, v9}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 2364
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2400
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 895
    const-string v0, "TwGLBurstPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause - capture count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getCaptureProgressIncreased()I

    move-result v0

    if-lez v0, :cond_0

    .line 897
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->onPanoramaCaptureCancelled()V

    .line 898
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->reset(Z)V

    .line 900
    :cond_0
    return-void
.end method

.method public onShow()V
    .locals 1

    .prologue
    .line 673
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showPreviewGroup()V

    .line 674
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->bDrawLivePreview:Z

    .line 675
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 903
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopCancelTimer()V

    .line 905
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    .line 906
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 908
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 910
    :cond_0
    return-void
.end method

.method public panoramaDirectionChanged(I)V
    .locals 8
    .parameter "orientation"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 926
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    if-nez v2, :cond_3

    .line 927
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    packed-switch v2, :pswitch_data_0

    .line 950
    :goto_0
    packed-switch p1, :pswitch_data_1

    .line 970
    :goto_1
    :pswitch_0
    if-eqz p1, :cond_2

    .line 971
    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    if-nez v2, :cond_2

    .line 972
    const/4 v1, 0x0

    .local v1, width:F
    const/4 v0, 0x0

    .line 973
    .local v0, height:F
    if-eq p1, v4, :cond_0

    const/16 v2, 0x8

    if-ne p1, v2, :cond_4

    .line 974
    :cond_0
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    .line 975
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_WIDTH:F

    .line 976
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    .line 982
    :cond_1
    :goto_2
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    .line 983
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLNinePatch;->setSize(FF)V

    .line 984
    invoke-direct {p0, v5}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 987
    .end local v0           #height:F
    .end local v1           #width:F
    :cond_2
    return-void

    .line 930
    :pswitch_1
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 931
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 932
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 933
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v7

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 937
    :pswitch_2
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 938
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 939
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v6

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 940
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v7

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 944
    :cond_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v3

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 945
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 946
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 947
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v2, v2, v7

    invoke-virtual {v2, v4}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 952
    :pswitch_3
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    const v3, 0x7f0201e6

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 953
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    const v3, 0x7f0201e7

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 956
    :pswitch_4
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v6

    const v3, 0x7f0201e1

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 957
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v7

    const v3, 0x7f0201e0

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 960
    :pswitch_5
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v3

    const v3, 0x7f0201e2

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 961
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    const v3, 0x7f0201e3

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 964
    :pswitch_6
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v3

    const v3, 0x7f0201e5

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    .line 965
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureTri:[Lcom/sec/android/glview/TwGLImage;

    aget-object v2, v2, v5

    const v3, 0x7f0201e4

    invoke-virtual {v2, v3}, Lcom/sec/android/glview/TwGLImage;->setImageResources(I)V

    goto/16 :goto_1

    .line 977
    .restart local v0       #height:F
    .restart local v1       #width:F
    :cond_4
    if-eq p1, v5, :cond_5

    if-ne p1, v6, :cond_1

    .line 978
    :cond_5
    sget v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    .line 979
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    .line 980
    iget-object v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    invoke-virtual {v2, v1, v0}, Lcom/sec/android/glview/TwGLImage;->setSize(FF)V

    goto/16 :goto_2

    .line 927
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 950
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public panoramaMoveSlowly()V
    .locals 1

    .prologue
    .line 554
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    if-eqz v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showGuideText()V

    .line 557
    :cond_0
    return-void
.end method

.method public panoramaRectChanged(II)V
    .locals 27
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1059
    const/4 v12, 0x0

    .line 1060
    .local v12, rect_x:F
    const/4 v13, 0x0

    .line 1061
    .local v13, rect_y:F
    const/4 v14, 0x0

    .line 1063
    .local v14, startOffsetPosition:F
    const/4 v15, 0x0

    .line 1064
    .local v15, text_x:F
    const/16 v16, 0x0

    .line 1065
    .local v16, text_y:F
    const/4 v4, 0x0

    .line 1066
    .local v4, arrow_x:F
    const/4 v5, 0x0

    .line 1067
    .local v5, arrow_y:F
    const/4 v10, 0x0

    .line 1068
    .local v10, box_x:F
    const/4 v11, 0x0

    .line 1069
    .local v11, box_y:F
    const/4 v9, 0x0

    .line 1070
    .local v9, box_w:F
    const/4 v8, 0x0

    .line 1071
    .local v8, box_h:F
    const/4 v6, 0x0

    .line 1072
    .local v6, box_absx:F
    const/4 v7, 0x0

    .line 1076
    .local v7, box_absy:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 1621
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1078
    :pswitch_1
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_HEIGHT:F

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v24

    const/high16 v25, 0x4000

    div-float v24, v24, v25

    sub-float v14, v23, v24

    .line 1079
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v12, v23, v24

    .line 1080
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x4270

    div-float v24, v24, v25

    div-float v23, v23, v24

    add-float v13, v14, v23

    .line 1101
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v23

    if-eqz v23, :cond_0

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v23

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 1107
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    .line 1109
    .local v3, WarningLevel:I
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v19, v0

    .line 1110
    .local v19, xDistance:D
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v21, v0

    .line 1111
    .local v21, yDistance:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    const/16 v24, 0x4

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    const/16 v24, 0x8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    if-gez p2, :cond_4

    .line 1114
    :cond_2
    const-wide/16 v21, 0x0

    .line 1121
    :cond_3
    :goto_2
    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D

    move-result-wide v17

    .line 1123
    .local v17, totalDistance:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_1

    .line 1612
    :goto_3
    :pswitch_2
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_STOP:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_0

    .line 1613
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Stop case - totalDistance:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1615
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 1616
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 1617
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    .line 1618
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/Camera;->getEngine()Lcom/sec/android/app/camera/CommonEngine;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/app/camera/CommonEngine;->scheduleStopPanorama()V

    goto/16 :goto_0

    .line 1083
    .end local v3           #WarningLevel:I
    .end local v17           #totalDistance:D
    .end local v19           #xDistance:D
    .end local v21           #yDistance:D
    :pswitch_3
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_Y:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v24

    const/high16 v25, 0x4000

    div-float v24, v24, v25

    sub-float v14, v23, v24

    .line 1084
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_X:F

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_PORTRAIT_WIDTH:F

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v12, v23, v24

    .line 1085
    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    const/high16 v25, 0x4270

    div-float v24, v24, v25

    div-float v23, v23, v24

    add-float v13, v14, v23

    .line 1086
    goto/16 :goto_1

    .line 1088
    :pswitch_4
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    move/from16 v24, v0

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v25, 0x4000

    div-float v24, v24, v25

    sub-float v14, v23, v24

    .line 1089
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float v24, v24, v25

    div-float v23, v23, v24

    add-float v12, v14, v23

    .line 1090
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v13, v23, v24

    .line 1091
    goto/16 :goto_1

    .line 1093
    :pswitch_5
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_X:F

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_WIDTH:F

    add-float v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    move/from16 v24, v0

    sub-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    const/high16 v25, 0x4000

    div-float v24, v24, v25

    sub-float v14, v23, v24

    .line 1094
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v23, v0

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_WIDTH:I

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_RECT_WIDTH:F

    div-float v24, v24, v25

    div-float v23, v23, v24

    add-float v12, v14, v23

    .line 1095
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_LANDSCAPE_Y:F

    move/from16 v0, p2

    neg-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    sget v25, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->SCREEN_HEIGHT:I

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sget v26, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    div-float v25, v25, v26

    div-float v24, v24, v25

    add-float v13, v23, v24

    .line 1096
    goto/16 :goto_1

    .line 1116
    .restart local v3       #WarningLevel:I
    .restart local v19       #xDistance:D
    .restart local v21       #yDistance:D
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    if-gtz p1, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    move/from16 v23, v0

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_3

    if-gez p1, :cond_3

    .line 1119
    :cond_6
    const-wide/16 v19, 0x0

    goto/16 :goto_2

    .line 1126
    .restart local v17       #totalDistance:D
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getLeft()F

    move-result v10

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTop()F

    move-result v11

    .line 1128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v9

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateX()F

    move-result v6

    .line 1131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateY()F

    move-result v7

    .line 1132
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: box LTWH="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", abs xy = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_VERTICAL:I

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fd3333333333333L

    mul-double v23, v23, v25

    cmpg-double v23, v17, v23

    if-gez v23, :cond_a

    .line 1135
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    .line 1143
    :goto_4
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_c

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 1146
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1149
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1159
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1189
    :cond_8
    :goto_5
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v23

    if-lt v3, v0, :cond_13

    .line 1190
    cmpl-double v23, v21, v19

    if-lez v23, :cond_11

    .line 1191
    if-lez p2, :cond_10

    .line 1192
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v4, v12, v23

    .line 1195
    const/high16 v23, 0x4000

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_RECT_THICKNESS:F

    mul-float v23, v23, v24

    add-float v5, v13, v23

    .line 1196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1198
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_2

    .line 1225
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1348
    :cond_9
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1354
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: text LTWH = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getLeft()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getTop()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " XY = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1136
    :cond_a
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_VERTICAL:I

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fe0

    mul-double v23, v23, v25

    cmpg-double v23, v17, v23

    if-gez v23, :cond_b

    .line 1137
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    goto/16 :goto_4

    .line 1139
    :cond_b
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    goto/16 :goto_4

    .line 1161
    :cond_c
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_e

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_d

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 1164
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1167
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1177
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    goto/16 :goto_5

    .line 1180
    :cond_e
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1181
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->isPanoramaCapturing()Z

    move-result v23

    if-eqz v23, :cond_f

    .line 1182
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->playPanoramaProcessingSound()V

    .line 1186
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    goto/16 :goto_5

    .line 1184
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    goto :goto_8

    .line 1200
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f3

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1201
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v12, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v23, v24

    .line 1202
    const/high16 v23, 0x4080

    div-float v23, v8, v23

    add-float v16, v13, v23

    .line 1203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    .line 1206
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f2

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1207
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v12, v23

    .line 1208
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v8

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v16, v13, v23

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    .line 1212
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f5

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1213
    add-float v23, v12, v9

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v15, v23, v24

    .line 1214
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v8, v23

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v16, v13, v23

    .line 1215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    .line 1218
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1219
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v12, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v15, v23, v24

    .line 1220
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v8

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v16, v13, v23

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_6

    .line 1231
    :cond_10
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v4, v12, v23

    .line 1234
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v5, v13, v23

    .line 1235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_3

    .line 1264
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1266
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_7

    .line 1239
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f2

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1240
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v12, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v23, v24

    .line 1241
    const/high16 v23, 0x4080

    div-float v23, v8, v23

    add-float v16, v13, v23

    .line 1242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_9

    .line 1245
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f3

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1246
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v12, v23

    .line 1247
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v8

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v16, v13, v23

    .line 1248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_9

    .line 1251
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1252
    add-float v23, v12, v9

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v15, v23, v24

    .line 1253
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v8, v23

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v16, v13, v23

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_9

    .line 1257
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f5

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1258
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v12, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v15, v23, v24

    .line 1259
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v8

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v16, v13, v23

    .line 1260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_9

    .line 1271
    :cond_11
    if-lez p1, :cond_12

    .line 1272
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v4, v12, v23

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v5, v13, v23

    .line 1276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1278
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_4

    .line 1305
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_7

    .line 1280
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1281
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v4, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v15, v23, v24

    .line 1282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1283
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    .line 1286
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1287
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v15, v4, v23

    .line 1288
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    .line 1292
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f3

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1293
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v15, v23, v24

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    .line 1298
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f2

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1299
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v4, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v15, v23, v24

    .line 1300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x3

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_a

    .line 1309
    :cond_12
    if-gez p1, :cond_9

    .line 1310
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    add-float v4, v23, v24

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxPortrait:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v5, v13, v23

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1316
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_5

    .line 1343
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_7

    .line 1318
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f5

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v15, v23, v24

    .line 1320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_b

    .line 1324
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f5

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v15, v23, v24

    .line 1326
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_b

    .line 1330
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f2

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v15, v23, v24

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_b

    .line 1336
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f3

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    add-float v23, v23, v4

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v15, v23, v24

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v16, v5, v23

    .line 1339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_b

    .line 1357
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 1359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1360
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 1361
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    .line 1362
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    goto/16 :goto_3

    .line 1368
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getLeft()F

    move-result v10

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTop()F

    move-result v11

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getWidth()F

    move-result v9

    .line 1371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getHeight()F

    move-result v8

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateX()F

    move-result v6

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLNinePatch;->getTranslateY()F

    move-result v7

    .line 1374
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: box LTWH="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", abs xy = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_HORIZONTAL:I

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide v25, 0x3fd3333333333333L

    mul-double v23, v23, v25

    cmpg-double v23, v17, v23

    if-gez v23, :cond_17

    .line 1377
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_NONE:I

    .line 1385
    :goto_c
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_19

    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_14

    .line 1387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 1388
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1391
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v23, v0

    if-nez v23, :cond_15

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x12c

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1401
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1431
    :cond_15
    :goto_d
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    move/from16 v0, v23

    if-lt v3, v0, :cond_20

    .line 1433
    cmpl-double v23, v19, v21

    if-lez v23, :cond_1e

    .line 1434
    if-lez p1, :cond_1d

    .line 1435
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Left - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v4, v12, v23

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x2

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v5, v13, v23

    .line 1439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1441
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_6

    .line 1468
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1591
    :cond_16
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Lcom/sec/android/glview/TwGLText;->translateAbsolute(FF)V

    .line 1596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 1597
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: text LTWH = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getLeft()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getTop()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getWidth()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/glview/TwGLText;->getHeight()F

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " XY = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1378
    :cond_17
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_DISTANCE_HORIZONTAL:I

    move/from16 v0, v23

    int-to-double v0, v0

    move-wide/from16 v23, v0

    const-wide/high16 v25, 0x3fe0

    mul-double v23, v23, v25

    cmpg-double v23, v17, v23

    if-gez v23, :cond_18

    .line 1379
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_LOW:I

    goto/16 :goto_c

    .line 1381
    :cond_18
    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    goto/16 :goto_c

    .line 1403
    :cond_19
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_LEVEL_HIGH:I

    move/from16 v0, v23

    if-ne v3, v0, :cond_1b

    .line 1404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v23

    if-eqz v23, :cond_1a

    .line 1405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->removeMessages(I)V

    .line 1406
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1409
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    move/from16 v23, v0

    if-nez v23, :cond_15

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    invoke-virtual/range {v23 .. v24}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x8

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x96

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->getAnimation(II)Landroid/view/animation/AnimationSet;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1418
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->startAnimation()V

    .line 1419
    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    goto/16 :goto_d

    .line 1422
    :cond_1b
    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaWarning:Z

    .line 1423
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->isPanoramaCapturing()Z

    move-result v23

    if-eqz v23, :cond_1c

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->playPanoramaProcessingSound()V

    .line 1428
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    goto/16 :goto_d

    .line 1426
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    goto :goto_10

    .line 1443
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1444
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v9, v23

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1445
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v23, v24

    .line 1446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_e

    .line 1449
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f5

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1450
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v9

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1451
    add-float v23, v13, v8

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v16, v23, v24

    .line 1452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_e

    .line 1455
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f3

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1456
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v9

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1457
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v16, v23, v24

    .line 1458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_e

    .line 1461
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f2

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1462
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v9, v23

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1463
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v13, v23

    .line 1464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_e

    .line 1474
    :cond_1d
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Right - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    add-float v23, v23, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    add-float v4, v23, v24

    .line 1477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x3

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v5, v13, v23

    .line 1478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1480
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_7

    .line 1507
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_f

    .line 1482
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f5

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1483
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v9, v23

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1484
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v23, v24

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto :goto_11

    .line 1488
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1489
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v9

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1490
    add-float v23, v13, v8

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v16, v23, v24

    .line 1491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_11

    .line 1494
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f2

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1495
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v9

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1496
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v16, v23, v24

    .line 1497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_11

    .line 1500
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f3

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1501
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v9, v23

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1502
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v13, v23

    .line 1503
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_11

    .line 1512
    :cond_1e
    if-gez p2, :cond_1f

    .line 1513
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Up - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v4, v12, v23

    .line 1516
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    sub-float v5, v13, v23

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1519
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_8

    .line 1546
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_f

    .line 1521
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f2

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1522
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v4, v23

    .line 1523
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v5, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v23, v24

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_12

    .line 1527
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f3

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v4, v23

    .line 1529
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v5, v23

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_12

    .line 1533
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v4, v23

    .line 1535
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v5, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v16, v23, v24

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_12

    .line 1539
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f5

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v4, v23

    .line 1541
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v5, v23

    .line 1542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_12

    .line 1552
    :cond_1f
    if-lez p2, :cond_16

    .line 1553
    const-string v23, "TwGLBurstPanoramaMenu"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "komlang : panoramaRectChanged: Go Down - orient:"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v24

    sub-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v4, v12, v23

    .line 1556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningBoxLandscape:Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    add-float v23, v23, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v24, v0

    const/16 v25, 0x1

    aget-object v24, v24, v25

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v24

    sub-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->WARNING_ARROW_OFFSET:F

    add-float v5, v23, v24

    .line 1557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/glview/TwGLImage;->translateAbsolute(FF)V

    .line 1559
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_9

    .line 1586
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1587
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    .line 1589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    aget-object v23, v23, v24

    const/16 v24, 0x4

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLImage;->setVisibility(I)V

    goto/16 :goto_f

    .line 1561
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f3

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1562
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v23, v9, v23

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    add-float v23, v23, v13

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v16, v23, v24

    .line 1564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_13

    .line 1567
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f2

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getWidth()F

    move-result v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    add-float v23, v23, v24

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v4, v23

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningArrow:[Lcom/sec/android/glview/TwGLImage;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    aget-object v23, v23, v24

    invoke-virtual/range {v23 .. v23}, Lcom/sec/android/glview/TwGLImage;->getHeight()F

    move-result v23

    add-float v23, v23, v5

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v24

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    add-float v16, v23, v24

    .line 1570
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x2

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_13

    .line 1573
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f5

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1574
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    add-float v23, v23, v9

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1575
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v23, v13, v23

    sget v24, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_WIDTH:F

    sub-float v16, v23, v24

    .line 1576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_13

    .line 1579
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    move-object/from16 v24, v0

    const v25, 0x7f0a01f4

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/app/camera/Camera;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLText;->setText(Ljava/lang/String;)V

    .line 1580
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_HEIGHT:F

    sub-float v23, v9, v23

    const/high16 v24, 0x4000

    div-float v23, v23, v24

    add-float v15, v12, v23

    .line 1581
    sget v23, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->GUIDE_TEXT_MARGIN:F

    sub-float v16, v13, v23

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mWarningText:Lcom/sec/android/glview/TwGLText;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v25, 0x2

    invoke-virtual/range {v23 .. v25}, Lcom/sec/android/glview/TwGLText;->setAlign(II)V

    goto/16 :goto_13

    .line 1600
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v12, v13}, Lcom/sec/android/glview/TwGLNinePatch;->translateAbsolute(FF)V

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaRect:Lcom/sec/android/glview/TwGLNinePatch;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Lcom/sec/android/glview/TwGLNinePatch;->setVisibility(I)V

    .line 1603
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 1604
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningBox()V

    .line 1605
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    goto/16 :goto_3

    .line 1076
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1123
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_17
        :pswitch_2
        :pswitch_6
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 1198
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_9
        :pswitch_8
        :pswitch_a
    .end packed-switch

    .line 1237
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_d
        :pswitch_c
        :pswitch_e
    .end packed-switch

    .line 1278
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_12
    .end packed-switch

    .line 1316
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_13
        :pswitch_15
        :pswitch_14
        :pswitch_16
    .end packed-switch

    .line 1441
    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_18
        :pswitch_1a
        :pswitch_19
        :pswitch_1b
    .end packed-switch

    .line 1480
    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1e
        :pswitch_1d
        :pswitch_1f
    .end packed-switch

    .line 1519
    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_20
        :pswitch_22
        :pswitch_21
        :pswitch_23
    .end packed-switch

    .line 1559
    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_24
        :pswitch_26
        :pswitch_25
        :pswitch_27
    .end packed-switch
.end method

.method public playPanoramaProcessingSound()V
    .locals 4

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1046
    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 4
    .parameter "removeLivePreview"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 692
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "komlang : called reset!"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->resetAcquisitionProgress()V

    .line 695
    iput-boolean v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    .line 696
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    .line 697
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    .line 698
    iput v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mDetectedDirection:I

    .line 699
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    .line 700
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePostCaptureLayout()V

    .line 701
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    .line 702
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopCancelTimer()V

    .line 703
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaProcessingSound()V

    .line 704
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopPanoramaSound()V

    .line 705
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 706
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 707
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateLivePreviewLayout(Z)V

    .line 709
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 713
    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    if-eqz v0, :cond_2

    .line 714
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v0, :cond_1

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->removeView(Lcom/sec/android/glview/TwGLView;)V

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLBitmapTexture;->clear()V

    .line 718
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreview:Lcom/sec/android/glview/TwGLBitmapTexture;

    .line 721
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    .line 723
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setPreviewThumbnailSizeToDefault()V

    .line 724
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideCaptureTri()V

    .line 725
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->showPreviewGroup()V

    .line 726
    return-void
.end method

.method public resetAcquisitionProgress()V
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->showBaseMenuItems()V

    .line 620
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    .line 621
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    .line 622
    return-void
.end method

.method public restartCancelTimer()V
    .locals 2

    .prologue
    .line 751
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "call restartCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->stopCancelTimer()V

    .line 753
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->startCancelTimer()V

    .line 754
    return-void
.end method

.method public setAcquisitionProgress(I)V
    .locals 1
    .parameter "nProgress"

    .prologue
    .line 628
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    if-nez v0, :cond_0

    .line 629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mSideMenuHidden:Z

    .line 630
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V

    .line 631
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/Camera;->hideBaseMenuItems()V

    .line 633
    :cond_0
    return-void
.end method

.method public setAlphaArrow(Lcom/sec/android/glview/TwGLView;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_0

    .line 1022
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    .line 1023
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1024
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    .line 1025
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mBlinkAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Lcom/sec/android/glview/TwGLView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1028
    invoke-virtual {p1}, Lcom/sec/android/glview/TwGLView;->startAnimation()V

    .line 1029
    return-void
.end method

.method public declared-synchronized setCaptureProgressIncreased()V
    .locals 3

    .prologue
    .line 764
    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLBurstPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "panoramaRectChanged mCaptureCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mIsPanoramaCapturing:Z

    .line 767
    iget v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureCount:I

    .line 768
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->setTouchHandled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    monitor-exit p0

    return-void

    .line 764
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setEnterOrientation(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 2296
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mEnterOrientation:I

    .line 2297
    return-void
.end method

.method public setLowResolutionBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bmp"

    .prologue
    .line 1904
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "Fancy progress bar is not implemented yet."

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1905
    return-void
.end method

.method public setOnPanoramaCaptureCancelledListener(Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 844
    iput-object p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mListener:Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu$OnBurstPanoramaCaptureCancelListener;

    .line 845
    return-void
.end method

.method public declared-synchronized setPostCaptureProgress(I)V
    .locals 3
    .parameter "progress"

    .prologue
    .line 776
    monitor-enter p0

    :try_start_0
    const-string v0, "TwGLBurstPanoramaMenu"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPostCaptureProgress :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iput p1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPostProgress:I

    .line 783
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v0}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 784
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideStopButton()V

    .line 788
    :cond_0
    if-nez p1, :cond_1

    .line 789
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    :cond_1
    monitor-exit p0

    return-void

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPreviewThumbnailSizeToDefault()V
    .locals 1

    .prologue
    .line 1908
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailWidth:F

    .line 1909
    sget v0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iput v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPreviewThumbnailHeight:F

    .line 1910
    return-void
.end method

.method public showCaptureLayout()V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mLivePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 832
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningArrow(Z)V

    .line 833
    invoke-direct {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideWarningText()V

    .line 834
    return-void
.end method

.method public showGuideText()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    .line 526
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "showGuideText"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    if-eqz v0, :cond_1

    .line 528
    iget-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    if-eqz v0, :cond_2

    .line 529
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 536
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 540
    :cond_1
    return-void

    .line 533
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGuideText:Lcom/sec/android/glview/TwGLText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLText;->setVisibility(I)V

    .line 534
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mGTShow:Z

    goto :goto_0
.end method

.method public showPostCaptureLayout()V
    .locals 0

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hidePreviewGroup()V

    .line 802
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->hideLivePreview()V

    .line 803
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->clearPanoramaRect()V

    .line 806
    return-void
.end method

.method public showPreviewGroup()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 636
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    if-eqz v1, :cond_0

    .line 637
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1}, Lcom/sec/android/glview/TwGLViewGroup;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 638
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mInitializePreviewGroup:Lcom/sec/android/glview/TwGLViewGroup;

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 642
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->updateArrow()V

    .line 644
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 658
    :cond_1
    return-void

    .line 647
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 648
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 647
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 653
    .end local v0           #i:I
    :pswitch_1
    const/4 v0, 0x2

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v3, :cond_1

    .line 654
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 653
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 644
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public showStopButton()V
    .locals 2

    .prologue
    .line 729
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "showStopButton"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCaptureStopButtonGroup:Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/glview/TwGLViewGroup;->setVisibility(I)V

    .line 731
    return-void
.end method

.method public startCancelTimer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 744
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 747
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x4e20

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 748
    return-void
.end method

.method public stopCancelTimer()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 757
    const-string v0, "TwGLBurstPanoramaMenu"

    const-string v1, "stopCancelTimer..."

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 761
    :cond_0
    return-void
.end method

.method public stopPanoramaProcessingSound()V
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1053
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PANORAMA_PROCESSING:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 1056
    :cond_1
    return-void
.end method

.method public stopPanoramaSound()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 1032
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1034
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaMsgHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    if-eqz v0, :cond_2

    .line 1038
    iget-object v0, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mActivityContext:Lcom/sec/android/app/camera/Camera;

    sget v1, Lcom/sec/android/app/camera/Camera;->SHUTTER_SOUND_PANORAMA_WARNING:I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/Camera;->stopCameraSound(I)V

    .line 1040
    :cond_2
    return-void
.end method

.method public updateArrow()V
    .locals 9

    .prologue
    const/high16 v5, 0x4040

    const/4 v8, 0x0

    const/4 v4, 0x3

    const/high16 v7, 0x4000

    const/4 v6, 0x1

    .line 990
    iget v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mCurrentOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 1018
    :goto_0
    return-void

    .line 992
    :pswitch_0
    const v1, 0x7f0804d0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    .line 994
    .local v0, triOffset:F
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v8

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 996
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto :goto_0

    .line 1001
    .end local v0           #triOffset:F
    :pswitch_1
    const v1, 0x7f0804d0

    invoke-static {v1}, Lcom/sec/android/glview/TwGLContext;->getDimension(I)F

    move-result v0

    .line 1003
    .restart local v0       #triOffset:F
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v8

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_WIDTH:F

    add-float/2addr v2, v3

    add-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v8

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1005
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v6

    sget v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_X:F

    iget-object v3, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v3, v3, v6

    invoke-virtual {v3}, Lcom/sec/android/glview/TwGLViewGroup;->getWidth()F

    move-result v3

    sub-float/2addr v2, v3

    sub-float/2addr v2, v0

    sget v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_Y:F

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_HEIGHT:F

    iget-object v5, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v5, v5, v6

    invoke-virtual {v5}, Lcom/sec/android/glview/TwGLViewGroup;->getHeight()F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 1010
    .end local v0           #triOffset:F
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    aget v2, v2, v6

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    aget v3, v3, v6

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1011
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    aget v2, v2, v6

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    aget v3, v3, v6

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 1014
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    aget v2, v2, v4

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    .line 1015
    iget-object v1, p0, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->mPanoramaTri:[Lcom/sec/android/glview/TwGLViewGroup;

    aget-object v1, v1, v4

    sget-object v2, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_X:[I

    aget v2, v2, v4

    int-to-float v2, v2

    sget-object v3, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->PANORAMASHOT_TRI_POS_Y:[I

    aget v3, v3, v4

    int-to-float v3, v3

    sget v4, Lcom/sec/android/app/camera/glwidget/TwGLBurstPanoramaMenu;->LIVEPREVIEW_SINGLE_PORTRAIT_HEIGHT:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/glview/TwGLViewGroup;->translateAbsolute(FF)V

    goto/16 :goto_0

    .line 990
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
