.class public Lcom/android/internal/policy/impl/spengesture/SPenGestureView;
.super Landroid/widget/FrameLayout;
.source "SPenGestureView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;,
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;,
        Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    }
.end annotation


# static fields
.field private static final CONTROL_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.action.CONTROL_SPEN_GESTURE_VIEW"

.field private static final DEBUG:Z = false

.field private static final ESTIMATE_INVALID_VALUE:I = -0x1

.field private static final EXTRA_ENABLE_SPEN_GESTURE_VIEW:Ljava/lang/String; = "android.intent.extra.enable_spengestureview"

.field private static final GESTURE_EFFECT_BACK:S = 0x1s

.field private static final GESTURE_EFFECT_MENU:S = 0x0s

.field private static final GESTURE_EFFECT_QUICKCOMMAND:S = 0x2s

.field private static final KEY_IS_LOCKSCREEN_SHOWING:Ljava/lang/String; = "is_lockscreen_showing"

.field private static final KEY_IS_SECURE_ENABLED:Ljava/lang/String; = "is_secure_enabled"

.field private static final MEDIA_SCANNER_FINISHED_ACTION:Ljava/lang/String; = "android.intent.action.MEDIA_SCANNER_FINISHED"

.field private static final MSG_BOOT_COMPLETED:I = 0x12d

.field private static final PEN_GESTURE_LINE_LIMIT:I = 0x64

.field private static final PEN_GESTURE_SPLIT_SCREEN_RATIO:I = 0x4

.field private static final SCREENSHOTS_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final SCREENSHOT_FILE_NAME_TEMPLATE:Ljava/lang/String; = "Screenshot_%s.png"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE:Ljava/lang/String; = "%s/%s/%s"

.field private static final SCREENSHOT_FILE_PATH_TEMPLATE_FOR_ANIMATION:Ljava/lang/String; = "%s/%s/tmp%s"

.field public static final SINGLE_SCREEN_CAPTURE_OFF:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

.field public static final SINGLE_SCREEN_CAPTURE_ON:Ljava/lang/String; = "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

.field private static final TAG:Ljava/lang/String; = "SPenGesture"


# instance fields
.field private final BROADCAST_NONE:I

.field private final BROADCAST_VIDEOPLAYER_PAUSE:I

.field private final BROADCAST_VIDEOPLAYER_PLAY:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

.field private final ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

.field private final ESTIMATE_CROPIMAGE_MARGIN:I

.field private final ESTIMATE_END_CIRCLE_RADIUS:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

.field private final ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

.field private final ESTIMATE_MARGIN_CLOSED_CURVE:I

.field private final ESTIMATE_START_CIRCLE_RADIUS:I

.field private final ESTIMATE_STROKE_WIDTH:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE:I

.field private final GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

.field private final GESTURE_RECOGNITION_MIN_DISTANCE:I

.field private final MSG_CROPPING_IMG_SAVE:S

.field private final MSG_FINISH_LOADING_ANIMATION:S

.field private final MSG_START_LOADING_ANIMATION:S

.field private final MSG_SUGGESTION_SERVICE_START:S

.field private mActivePointerId:I

.field private mBootCompleted:Z

.field private mBrType:I

.field mCaptureReceiver:Landroid/content/BroadcastReceiver;

.field private final mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

.field private final mCirclePaintWhite:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCropBitmap:Landroid/graphics/Bitmap;

.field private mCropBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCropHandler:Landroid/os/Handler;

.field private mCropImageHeight:I

.field private mCropImageWidth:I

.field private mCropTempBitmap:Landroid/graphics/Bitmap;

.field private mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

.field private mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

.field private mCurDown:Z

.field private mCurNumPointers:I

.field private mCurrentDisplayHeight:I

.field private mCurrentDisplayWidth:I

.field private mDirectionHandler:Landroid/os/Handler;

.field private mDisplay:Landroid/view/Display;

.field private mDisplayHeightForMatrix:I

.field private mDisplayMatrix:Landroid/graphics/Matrix;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplayRoateChanged:Z

.field private mDisplayRoateDegress:I

.field private mDisplayWidthForMatrix:I

.field private mDoubleTapIntent:Landroid/content/Intent;

.field private mEnableCheckClosedCurve:Z

.field private mEndPointX:F

.field private mEndPointY:F

.field private mExistOldCoords:Z

.field private mFinishSaveImg:Z

.field private mFirstIntersectionPointLast:I

.field private mFirstIntersectionPointPrev:I

.field private mFirstIntersectionPointX:I

.field private mFirstIntersectionPointY:I

.field private mFirstStartPointX:I

.field private mFirstStartPointY:I

.field mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureEffectImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureEffectImgView:Landroid/widget/ImageView;

.field mGesturePad:Ljava/lang/Runnable;

.field private mGesturePadBlockTaskList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGesturePadIntent:Landroid/content/Intent;

.field mHandler:Landroid/os/Handler;

.field private mHeaderBottom:I

.field private mImageFilePath:Ljava/lang/String;

.field private mImageFilePathForAnimation:Ljava/lang/String;

.field private mImageUri:Landroid/net/Uri;

.field private mImageUriForAnimation:Landroid/net/Uri;

.field mInstrumentation:Landroid/app/Instrumentation;

.field private mIsClosedCurve:Z

.field private mIsEnableDoubleTapOnLockscreen:Z

.field private mIsEnabledHapticFeedback:Z

.field private mIsFirstMediaScan:Z

.field private mIsFirstPointer:Z

.field private mIsKeyguardOn:Z

.field private mIsLastPointer:Z

.field private mIsLiveCropThread:Z

.field private mIsLiveGlanceView:Z

.field private mIsLiveScreencapture:Z

.field private mIsPhone:Z

.field private mIsSendingBootMsg:Z

.field private mIsShowingGestureEffect:Z

.field private mIsStartingSuggestionService:Z

.field private mIsUsablePath:Z

.field private mIsUsableSecondPath:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLoadingAniImgView:Landroid/widget/ImageView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressIntent:Landroid/content/Intent;

.field private mMaxCoordX:I

.field private mMaxCoordXForIntent:I

.field private mMaxCoordY:I

.field private mMaxCoordYForIntent:I

.field private mMaxNumPointers:I

.field mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

.field private mMedianValueForGesturePosX:I

.field private mMedianValueForGesturePosY:I

.field private mMinCoordX:I

.field private mMinCoordXForIntent:I

.field private mMinCoordY:I

.field private mMinCoordYForIntent:I

.field private mNewCoordsX:F

.field private mNewCoordsY:F

.field private mNumColsedCurves:I

.field private mNumberOfAddTrace:I

.field private mOldCoordsX:F

.field private mOldCoordsY:F

.field private mOutofVerticalThresholdToUp:Z

.field private mPathOfCurve:Landroid/graphics/Path;

.field private mPathOfCurveForDrawing:Landroid/graphics/Path;

.field private final mPathPaintWhite:Landroid/graphics/Paint;

.field mPenDoubleTap:Ljava/lang/Runnable;

.field mPenLongPress:Ljava/lang/Runnable;

.field private mPenMemoActionIntent:Landroid/content/Intent;

.field private final mPointers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevCoordY:I

.field private mSPenGestureCropDispatchThread:Ljava/lang/Thread;

.field private mSPenGestureEventDispatchThread:Ljava/lang/Thread;

.field private mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field mScreenCaptureOn:Z

.field private mSecondIntersectionPointLast:I

.field private mSecondIntersectionPointPrev:I

.field private mSecondIntersectionPointX:I

.field private mSecondIntersectionPointY:I

.field private mSecondPathOfCurve:Landroid/graphics/Path;

.field private mStartPointX:F

.field private mStartPointXForCircle:F

.field private mStartPointY:F

.field private mStartPointYForCircle:F

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManager2:Landroid/telephony/TelephonyManager;

.field private final mTempCoords:Landroid/view/MotionEvent$PointerCoords;

.field private final mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mVC:Landroid/view/ViewConfiguration;

.field private mVerticalMovingSlop:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 502
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 148
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    .line 149
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBootCompleted:Z

    .line 159
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 161
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 163
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z

    .line 166
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 171
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    .line 172
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 174
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    .line 175
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 178
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenCaptureOn:Z

    .line 181
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 189
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    .line 190
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    .line 193
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    .line 195
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 196
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    .line 197
    new-instance v9, Ljava/util/ArrayList;

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "com.sec.android.gesturepad"

    aput-object v12, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    .line 202
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_STROKE_WIDTH:I

    .line 203
    const/16 v9, 0x320

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_FULL_SCREEN_MATRIX_WIDTH:I

    .line 204
    const/16 v9, 0x500

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_FULL_SCREEN_MATRIX_HEIGHT:I

    .line 205
    const/16 v9, 0x12c

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CHECK_GESTURE_AREA_WIDTH:I

    .line 206
    const/16 v9, 0x12c

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CHECK_GESTURE_AREA_HEIGHT:I

    .line 209
    const/16 v9, 0x8

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_START_CIRCLE_RADIUS:I

    .line 210
    const/4 v9, 0x4

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_END_CIRCLE_RADIUS:I

    .line 211
    const/16 v9, 0x14

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_MARGIN_CLOSED_CURVE:I

    .line 213
    const/16 v9, 0xa

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->ESTIMATE_CROPIMAGE_MARGIN:I

    .line 218
    const/4 v9, 0x1

    iput-short v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_START_LOADING_ANIMATION:S

    .line 219
    const/4 v9, 0x2

    iput-short v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_FINISH_LOADING_ANIMATION:S

    .line 222
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_NONE:I

    .line 223
    const/4 v9, 0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_VIDEOPLAYER_PAUSE:I

    .line 224
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->BROADCAST_VIDEOPLAYER_PLAY:I

    .line 227
    const/16 v9, 0x32

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MIN_DISTANCE:I

    .line 228
    const/16 v9, 0x320

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MAX_DISTANCE:I

    .line 229
    const/16 v9, 0x4b0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GESTURE_RECOGNITION_MAX_DISTANCE_FOR_BACK:I

    .line 274
    new-instance v9, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v9}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 275
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    .line 276
    new-instance v9, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    .line 380
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    .line 382
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMedianValueForGesturePosX:I

    .line 383
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMedianValueForGesturePosY:I

    .line 409
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    .line 410
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 411
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 412
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 413
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    .line 414
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 415
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    .line 416
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    .line 421
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 422
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUri:Landroid/net/Uri;

    .line 423
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    .line 425
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    .line 426
    const/4 v9, 0x0

    iput-short v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_SUGGESTION_SERVICE_START:S

    .line 427
    const/4 v9, 0x1

    iput-short v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->MSG_CROPPING_IMG_SAVE:S

    .line 432
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 434
    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$1;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$1;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    .line 447
    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$2;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$2;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMediaScanningReceiver:Landroid/content/BroadcastReceiver;

    .line 468
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    .line 469
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    .line 776
    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$5;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$5;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenLongPress:Ljava/lang/Runnable;

    .line 843
    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$6;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$6;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenDoubleTap:Ljava/lang/Runnable;

    .line 875
    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$7;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    .line 503
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    .line 504
    new-instance v9, Landroid/app/Instrumentation;

    invoke-direct {v9}, Landroid/app/Instrumentation;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mInstrumentation:Landroid/app/Instrumentation;

    .line 507
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 508
    .local v4, filter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    const-string v9, "keyguard"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 512
    const-string v9, "phone"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 513
    const-string v9, "phone2"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/telephony/TelephonyManager;

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    .line 514
    new-instance v9, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v9, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 516
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 517
    .local v7, size:Landroid/graphics/Point;
    const-string v9, "window"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    .line 518
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v9, v7}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 520
    const-string v9, "window"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v8

    .line 522
    .local v8, wm:Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface {v8}, Landroid/view/IWindowManager;->hasSystemNavBar()Z

    move-result v9

    if-nez v9, :cond_1

    const/4 v9, 0x1

    :goto_0
    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :goto_1
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    .line 529
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    const-string v10, "com.sec.spen.flashannotatesvc"

    const-string v11, "com.sec.spen.flashannotatesvc.flashannotateservice"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 531
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    .line 532
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    const-string v10, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    new-instance v10, Landroid/content/ComponentName;

    const-string v11, "com.diotek.mini_penmemo"

    const-string v12, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 535
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    .line 536
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const-string v10, "com.sec.android.gesturepad"

    const-string v11, "com.sec.android.gesturepad.GesturePadActivity"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 537
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    const/high16 v10, 0x1400

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 539
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 540
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 541
    .local v0, captureFilter:Landroid/content/IntentFilter;
    const-string v9, "android.intent.action.SINGLE_SCREEN_CAPTURE_ON"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    const-string v9, "android.intent.action.SINGLE_SCREEN_CAPTURE_OFF"

    invoke-virtual {v0, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 543
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCaptureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 557
    .end local v0           #captureFilter:Landroid/content/IntentFilter;
    :cond_0
    new-instance v9, Landroid/view/GestureDetector;

    new-instance v10, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;

    invoke-direct {v10, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$3;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    invoke-direct {v9, p1, v10}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 634
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    .line 635
    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$4;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$4;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;

    .line 654
    new-instance v9, Landroid/os/Handler;

    invoke-direct {v9}, Landroid/os/Handler;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDirectionHandler:Landroid/os/Handler;

    .line 655
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 656
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVC:Landroid/view/ViewConfiguration;

    .line 658
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 659
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setDisplayDegrees()Z

    .line 662
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 663
    .local v5, point:Landroid/graphics/Point;
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 664
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 666
    iget v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v9, :cond_2

    .line 667
    iget v9, v5, Landroid/graphics/Point;->x:I

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    .line 668
    iget v9, v5, Landroid/graphics/Point;->y:I

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    .line 669
    const-string v9, "SPenGesture"

    const-string v10, "Initialized to portrait"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    :goto_2
    iget v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayWidthForMatrix:I

    .line 677
    iget v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayHeightForMatrix:I

    .line 679
    new-instance v10, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayHeightForMatrix:I

    iget v12, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayWidthForMatrix:I

    iget v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v9, :cond_3

    const/4 v9, 0x1

    :goto_3
    invoke-direct {v10, v11, v12, v9}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;-><init>(IIZ)V

    iput-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    .line 681
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    .line 682
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    .line 683
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    .line 684
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstPointer:Z

    .line 685
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 686
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 687
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    .line 688
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 689
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 690
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 691
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    .line 692
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    .line 693
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    .line 694
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    .line 695
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    .line 696
    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 697
    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 698
    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 699
    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 700
    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 701
    const/high16 v9, -0x4080

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 702
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    .line 703
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    .line 704
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    .line 705
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    .line 706
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    .line 707
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    .line 708
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    .line 709
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    .line 710
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 711
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 712
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 713
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 714
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 715
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 716
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 717
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 718
    const/4 v9, -0x1

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 719
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 720
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    .line 721
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    .line 722
    new-instance v9, Landroid/graphics/Path;

    invoke-direct {v9}, Landroid/graphics/Path;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    .line 724
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v9, 0x2

    new-array v9, v9, [F

    fill-array-data v9, :array_0

    const/4 v10, 0x0

    invoke-direct {v1, v9, v10}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 725
    .local v1, dashPath:Landroid/graphics/DashPathEffect;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    .line 726
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 727
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    const/16 v13, 0xff

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 728
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 729
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v10, 0x4000

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 730
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 731
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, -0x100

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 740
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    .line 741
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 742
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/16 v10, 0xff

    const/16 v11, 0xff

    const/16 v12, 0xff

    const/16 v13, 0xff

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 743
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 744
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v10, 0x4040

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 745
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    const/high16 v13, -0x100

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 754
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    .line 755
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 756
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    const/16 v10, 0xff

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 758
    new-instance v6, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    invoke-direct {v6}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;-><init>()V

    .line 759
    .local v6, ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    .line 763
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 765
    new-instance v9, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    .line 767
    return-void

    .line 522
    .end local v1           #dashPath:Landroid/graphics/DashPathEffect;
    .end local v2           #display:Landroid/view/Display;
    .end local v5           #point:Landroid/graphics/Point;
    .end local v6           #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_1
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 523
    :catch_0
    move-exception v3

    .line 524
    .local v3, ex:Landroid/os/RemoteException;
    const-string v9, "SPenGesture"

    const-string v10, "RemoteException"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsPhone:Z

    goto/16 :goto_1

    .line 671
    .end local v3           #ex:Landroid/os/RemoteException;
    .restart local v2       #display:Landroid/view/Display;
    .restart local v5       #point:Landroid/graphics/Point;
    :cond_2
    iget v9, v5, Landroid/graphics/Point;->y:I

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    .line 672
    iget v9, v5, Landroid/graphics/Point;->x:I

    iput v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    .line 673
    const-string v9, "SPenGesture"

    const-string v10, "Initialized to Landscape"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 679
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_3

    .line 724
    :array_0
    .array-data 0x4
        0x0t 0x0t 0xa0t 0x40t
        0x0t 0x0t 0x0t 0x40t
    .end array-data
.end method

.method private GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x4000

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2127
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 2128
    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 2130
    const/4 v7, 0x2

    new-array v2, v7, [F

    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    aput v7, v2, v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v7, v7

    aput v7, v2, v5

    .line 2131
    .local v2, dims:[F
    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getRotation()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getDegreesForRotation(I)F

    move-result v1

    .line 2132
    .local v1, degrees:F
    cmpl-float v7, v1, v10

    if-lez v7, :cond_3

    move v3, v5

    .line 2134
    .local v3, requiresRotation:Z
    :goto_0
    if-eqz v3, :cond_0

    .line 2135
    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7}, Landroid/graphics/Matrix;->reset()V

    .line 2136
    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    neg-float v8, v1

    invoke-virtual {v7, v8}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 2137
    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v7, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2138
    aget v7, v2, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v6

    .line 2139
    aget v7, v2, v5

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    aput v7, v2, v5

    .line 2142
    :cond_0
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    invoke-static {v7, v8}, Landroid/view/Surface;->screenshot(II)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2145
    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_1

    .line 2146
    aget v7, v2, v6

    float-to-int v7, v7

    aget v8, v2, v5

    float-to-int v8, v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2150
    :cond_1
    if-eqz v3, :cond_2

    .line 2151
    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 2153
    .local v4, ss:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2154
    .local v0, c:Landroid/graphics/Canvas;
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2155
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2156
    aget v6, v2, v6

    neg-float v6, v6

    div-float/2addr v6, v11

    aget v5, v2, v5

    neg-float v5, v5

    div-float/2addr v5, v11

    invoke-virtual {v0, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2157
    iget-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v5, v10, v10, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2158
    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2159
    iput-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 2161
    .end local v0           #c:Landroid/graphics/Canvas;
    .end local v4           #ss:Landroid/graphics/Bitmap;
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v5

    .end local v3           #requiresRotation:Z
    :cond_3
    move v3, v6

    .line 2132
    goto/16 :goto_0
.end method

.method private SaveImage()Z
    .locals 13

    .prologue
    .line 2021
    const-string v9, "SPenGesture"

    const-string v10, "SaveImage"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2024
    .local v4, mImageTime:J
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 2025
    .local v1, imageDate:Ljava/lang/String;
    sget-object v9, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 2026
    .local v2, imageDir:Ljava/lang/String;
    const-string v9, "Screenshot_%s.png"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2027
    .local v3, mImageFileName:Ljava/lang/String;
    const-string v9, "%s/%s/%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    const-string v12, "Screenshots"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    .line 2029
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2030
    .local v7, values:Landroid/content/ContentValues;
    const-string v9, "_data"

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2031
    const-string v9, "datetaken"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2032
    const-string v9, "date_added"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2033
    const-string v9, "date_modified"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2034
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUri:Landroid/net/Uri;

    .line 2037
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 2038
    .local v6, outStream:Ljava/io/OutputStream;
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2039
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 2040
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2047
    .end local v6           #outStream:Ljava/io/OutputStream;
    :goto_0
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 2048
    const-string v9, "_size"

    new-instance v10, Ljava/io/File;

    iget-object v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2049
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUri:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v7, v11, v12}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2052
    const-string v9, "%s/%s/tmp%s"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v2, v10, v11

    const/4 v11, 0x1

    const-string v12, "Screenshots"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    .line 2054
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2055
    .local v8, valuesForAnimation:Landroid/content/ContentValues;
    const-string v9, "_data"

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2056
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    .line 2059
    :try_start_1
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v6

    .line 2060
    .restart local v6       #outStream:Ljava/io/OutputStream;
    iget-object v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x64

    invoke-virtual {v9, v10, v11, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 2062
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 2063
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2068
    .end local v6           #outStream:Ljava/io/OutputStream;
    :goto_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    .line 2069
    const/4 v9, 0x1

    return v9

    .line 2042
    .end local v8           #valuesForAnimation:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 2043
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 2065
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v8       #valuesForAnimation:Landroid/content/ContentValues;
    :catch_1
    move-exception v0

    .line 2066
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstMediaScan:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsSendingBootMsg:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isLockScreenShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLongPressIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPenMemoActionIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/telephony/TelephonyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTelephonyManager2:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDoubleTapIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordX:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    return v0
.end method

.method static synthetic access$3602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordX:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordY:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordY:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOutofVerticalThresholdToUp:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I

    return v0
.end method

.method static synthetic access$4102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageWidth:I

    return p1
.end method

.method static synthetic access$4200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropImageHeight:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    return v0
.end method

.method static synthetic access$4700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$4800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$4902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    return v0
.end method

.method static synthetic access$5000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    return v0
.end method

.method static synthetic access$5102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    return p1
.end method

.method static synthetic access$5200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    return v0
.end method

.method static synthetic access$5202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    return p1
.end method

.method static synthetic access$5300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    return v0
.end method

.method static synthetic access$5302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    return p1
.end method

.method static synthetic access$5400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Paint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    return v0
.end method

.method static synthetic access$5602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    return p1
.end method

.method static synthetic access$5700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    return v0
.end method

.method static synthetic access$5702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    return p1
.end method

.method static synthetic access$5800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    return v0
.end method

.method static synthetic access$5802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    return p1
.end method

.method static synthetic access$5900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    return v0
.end method

.method static synthetic access$5902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 135
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    return-void
.end method

.method static synthetic access$6000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$6002(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    return v0
.end method

.method static synthetic access$6102(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordXForIntent:I

    return p1
.end method

.method static synthetic access$6200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordXForIntent:I

    return p1
.end method

.method static synthetic access$6300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxCoordYForIntent:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    return v0
.end method

.method static synthetic access$6402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMinCoordYForIntent:I

    return p1
.end method

.method static synthetic access$6500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    return-object v0
.end method

.method static synthetic access$6602(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$6702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$6802(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    return p1
.end method

.method static synthetic access$6902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startAniForLoadingService()V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->SaveImage()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$7300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageFilePathForAnimation:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mImageUriForAnimation:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    return v0
.end method

.method static synthetic access$7502(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    return p1
.end method

.method static synthetic access$7600(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/graphics/Path;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCropHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    return v0
.end method

.method static synthetic access$7900(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$8100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Landroid/view/Display;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->injectionKeyEvent(I)V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return v0
.end method

.method static synthetic access$8402(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 135
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    return p1
.end method

.method private checkClosedCurve(III)V
    .locals 7
    .parameter "resultCoordsX"
    .parameter "resultCoordsY"
    .parameter "markNumber"

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 1224
    const/4 v2, -0x1

    .line 1227
    .local v2, markNumberFromMatrix:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/4 v3, 0x6

    if-ge v1, v3, :cond_2

    .line 1228
    add-int v3, p2, v1

    if-ltz v3, :cond_0

    if-ltz p1, :cond_0

    add-int v3, p2, v1

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_0

    .line 1231
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    add-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->getMarked(II)I

    move-result v2

    .line 1237
    :cond_0
    if-eq v2, v5, :cond_8

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_8

    .line 1239
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    .line 1240
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1244
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_7

    .line 1245
    :cond_1
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1246
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1247
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1248
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1254
    :goto_1
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1292
    :cond_2
    :goto_2
    const/16 v0, 0xc

    .line 1293
    .local v0, circleRadius:I
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0x18

    if-gt v3, p1, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0x18

    if-lt v3, p1, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0x18

    if-gt v3, p2, :cond_3

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0x18

    if-ge v3, p2, :cond_4

    .line 1295
    :cond_3
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 1298
    :cond_4
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    if-ne v3, v6, :cond_6

    .line 1299
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, -0xc

    if-gt v3, p1, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    add-int/lit8 v3, v3, 0xc

    if-lt v3, p1, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, -0xc

    if-gt v3, p2, :cond_6

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    add-int/lit8 v3, v3, 0xc

    if-lt v3, p2, :cond_6

    .line 1301
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1303
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_5

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_d

    .line 1304
    :cond_5
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1305
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1311
    :goto_3
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1316
    :cond_6
    return-void

    .line 1251
    .end local v0           #circleRadius:I
    :cond_7
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1252
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_1

    .line 1261
    :cond_8
    sub-int v3, p2, v1

    if-ltz v3, :cond_9

    if-ltz p1, :cond_9

    sub-int v3, p2, v1

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v3, v4, :cond_9

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge p1, v3, :cond_9

    .line 1264
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    sub-int v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->getMarked(II)I

    move-result v2

    .line 1267
    :cond_9
    if-eq v2, v5, :cond_c

    add-int/lit8 v3, p3, -0x14

    if-ge v2, v3, :cond_c

    .line 1269
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    add-int/lit8 v3, v3, 0x14

    if-ge v3, p3, :cond_2

    .line 1270
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1274
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    if-eq v3, v5, :cond_a

    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    if-ne v3, v5, :cond_b

    .line 1275
    :cond_a
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1276
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1277
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1278
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1284
    :goto_4
    iget v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    goto/16 :goto_2

    .line 1281
    :cond_b
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1282
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_4

    .line 1227
    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1308
    .restart local v0       #circleRadius:I
    :cond_d
    iput v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1309
    iput p3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    goto :goto_3
.end method

.method private checkDirectionGesture()Z
    .locals 31

    .prologue
    .line 2181
    const-string v25, "SPenGesture"

    const-string v26, "checkDirectionGesture"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    const/4 v5, 0x0

    .line 2183
    .local v5, distance:I
    const/16 v21, 0x0

    .line 2184
    .local v21, vertexX:I
    const/16 v22, 0x0

    .line 2185
    .local v22, vertexY:I
    const/4 v6, 0x0

    .line 2186
    .local v6, distanceMax:I
    const/4 v7, 0x0

    .line 2187
    .local v7, distanceStartAndEnd:I
    const/4 v12, 0x0

    .line 2188
    .local v12, minX:I
    const/4 v13, 0x0

    .line 2189
    .local v13, minY:I
    const/4 v10, 0x0

    .line 2190
    .local v10, maxX:I
    const/4 v11, 0x0

    .line 2191
    .local v11, maxY:I
    const/16 v16, 0x0

    .line 2192
    .local v16, result1:F
    const/16 v17, 0x0

    .line 2193
    .local v17, result2:F
    const/16 v18, 0x0

    .line 2194
    .local v18, slope:F
    const/4 v9, 0x0

    .line 2197
    .local v9, interceptY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v3, v0

    .line 2198
    .local v3, Xdistance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v4, v0

    .line 2202
    .local v4, Ydistance:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v26

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x4000

    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v26

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-int v7, v0

    .line 2204
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-nez v25, :cond_2

    .line 2205
    :cond_0
    const/16 v18, 0x0

    .line 2210
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v26, v0

    mul-float v26, v26, v18

    sub-float v9, v25, v26

    .line 2214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 2215
    .local v19, totalPointerCount:I
    const/4 v14, 0x0

    .local v14, p:I
    :goto_1
    move/from16 v0, v19

    if-ge v14, v0, :cond_4

    .line 2216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 2217
    .local v15, ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v20

    .line 2218
    .local v20, traceCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    move/from16 v0, v20

    if-ge v8, v0, :cond_3

    .line 2219
    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v25

    aget v23, v25, v8

    .line 2220
    .local v23, x:F
    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static {v15}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v25

    aget v24, v25, v8

    .line 2223
    .local v24, y:F
    mul-float v25, v18, v23

    const/high16 v26, -0x4080

    mul-float v26, v26, v24

    add-float v25, v25, v26

    add-float v25, v25, v9

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 2224
    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v25

    const-wide/high16 v27, -0x4010

    const-wide/high16 v29, 0x4000

    invoke-static/range {v27 .. v30}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v27

    add-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    double-to-float v0, v0

    move/from16 v17, v0

    .line 2226
    div-float v25, v16, v17

    move/from16 v0, v25

    float-to-int v5, v0

    .line 2228
    if-ge v6, v5, :cond_1

    .line 2229
    move v6, v5

    .line 2230
    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v21, v0

    .line 2231
    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v22, v0

    .line 2218
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2208
    .end local v8           #i:I
    .end local v14           #p:I
    .end local v15           #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v19           #totalPointerCount:I
    .end local v20           #traceCount:I
    .end local v23           #x:F
    .end local v24           #y:F
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    div-float v18, v25, v26

    goto/16 :goto_0

    .line 2215
    .restart local v8       #i:I
    .restart local v14       #p:I
    .restart local v15       #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .restart local v19       #totalPointerCount:I
    .restart local v20       #traceCount:I
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 2238
    .end local v8           #i:I
    .end local v15           #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v20           #traceCount:I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_6

    .line 2239
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v10, v0

    .line 2240
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v12, v0

    .line 2246
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_7

    .line 2247
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v11, v0

    .line 2248
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v13, v0

    .line 2255
    :goto_4
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v6, v0, :cond_5

    const/16 v25, 0x320

    move/from16 v0, v25

    if-ge v6, v0, :cond_5

    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v7, v0, :cond_5

    const/16 v25, 0x4b0

    move/from16 v0, v25

    if-ge v7, v0, :cond_5

    .line 2257
    const/high16 v25, 0x3f80

    cmpg-float v25, v18, v25

    if-gtz v25, :cond_c

    const/high16 v25, -0x4080

    cmpl-float v25, v18, v25

    if-ltz v25, :cond_c

    .line 2258
    move/from16 v0, v21

    if-gt v10, v0, :cond_8

    .line 2322
    :cond_5
    const/16 v25, 0x0

    :goto_5
    return v25

    .line 2243
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v10, v0

    .line 2244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v12, v0

    goto :goto_3

    .line 2251
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v11, v0

    .line 2252
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v25

    float-to-int v13, v0

    goto :goto_4

    .line 2262
    :cond_8
    move/from16 v0, v21

    if-le v12, v0, :cond_a

    .line 2265
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_9

    .line 2266
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2267
    :cond_9
    const/16 v25, 0x1

    goto :goto_5

    .line 2270
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v25, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_5

    .line 2273
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_b

    .line 2274
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2275
    :cond_b
    const/16 v25, 0x1

    goto :goto_5

    .line 2284
    :cond_c
    move/from16 v0, v22

    if-le v11, v0, :cond_5

    .line 2288
    move/from16 v0, v22

    if-le v13, v0, :cond_e

    .line 2291
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v3, v0, :cond_d

    .line 2292
    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2293
    :cond_d
    const/16 v25, 0x1

    goto/16 :goto_5

    .line 2296
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v25, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-ltz v25, :cond_5

    .line 2299
    const/16 v25, 0x32

    move/from16 v0, v25

    if-le v4, v0, :cond_f

    .line 2300
    const/16 v25, 0x1

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2301
    :cond_f
    const/16 v25, 0x1

    goto/16 :goto_5
.end method

.method private checkDownGesture()V
    .locals 19

    .prologue
    .line 2330
    const/4 v6, 0x0

    .line 2331
    .local v6, distanceY:I
    const/4 v5, 0x0

    .line 2332
    .local v5, distanceX:I
    const/4 v15, 0x0

    .line 2333
    .local v15, vertexX:I
    const/16 v16, 0x0

    .line 2334
    .local v16, vertexY:I
    const/4 v3, 0x0

    .line 2335
    .local v3, distanceMax:I
    const/4 v4, 0x0

    .line 2336
    .local v4, distanceStartAndEnd:I
    const/4 v10, 0x0

    .line 2337
    .local v10, minX:I
    const/4 v11, 0x0

    .line 2338
    .local v11, minY:I
    const/4 v8, 0x0

    .line 2339
    .local v8, maxX:I
    const/4 v9, 0x0

    .line 2340
    .local v9, maxY:I
    const/4 v12, 0x0

    .line 2341
    .local v12, result1:F
    const/4 v13, 0x0

    .line 2342
    .local v13, result2:F
    const/4 v14, 0x0

    .line 2343
    .local v14, slope:F
    const/4 v7, 0x0

    .line 2351
    .local v7, interceptY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x4420

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44a0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x4420

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    const/high16 v18, 0x44a0

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    .line 2354
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    move/from16 v0, v17

    float-to-int v6, v0

    .line 2355
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    .line 2358
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-le v6, v0, :cond_0

    .line 2359
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4396

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/16 v18, 0x0

    cmpl-float v17, v17, v18

    if-lez v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4396

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_1

    .line 2362
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    .line 2373
    :cond_0
    :goto_0
    return-void

    .line 2364
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43fa

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4448

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x43fa

    cmpl-float v17, v17, v18

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move/from16 v17, v0

    const/high16 v18, 0x4448

    cmpg-float v17, v17, v18

    if-gtz v17, :cond_0

    .line 2369
    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->startEffectForGesture(IZ)V

    goto :goto_0
.end method

.method private getDegreesForRotation(I)F
    .locals 1
    .parameter "value"

    .prologue
    .line 2167
    packed-switch p1, :pswitch_data_0

    .line 2175
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2169
    :pswitch_0
    const/high16 v0, 0x4387

    goto :goto_0

    .line 2171
    :pswitch_1
    const/high16 v0, 0x4334

    goto :goto_0

    .line 2173
    :pswitch_2
    const/high16 v0, 0x42b4

    goto :goto_0

    .line 2167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTopActivityComponentName()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 927
    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 928
    .local v1, am:Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 929
    .local v0, Info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 931
    .local v2, topActivity:Landroid/content/ComponentName;
    return-object v2
.end method

.method private injectionKeyEvent(I)V
    .locals 2
    .parameter "key"

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 986
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$8;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    .line 1003
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureEventDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1004
    return-void
.end method

.method private isAvailableCapacity()Z
    .locals 15

    .prologue
    .line 2075
    const-string v13, "SPenGesture"

    const-string v14, "isAvailableCapacity"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2077
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    .line 2078
    .local v7, extStoragePath:Ljava/io/File;
    if-eqz v7, :cond_1

    .line 2081
    :try_start_0
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v8, v13}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2088
    .local v8, stat:Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSize()I

    move-result v13

    int-to-long v4, v13

    .line 2089
    .local v4, blockSize:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCount()I

    move-result v13

    int-to-long v9, v13

    .line 2090
    .local v9, totalBlocks:J
    invoke-virtual {v8}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v13

    int-to-long v0, v13

    .line 2094
    .local v0, availableBlocks:J
    mul-long v11, v9, v4

    .line 2095
    .local v11, totalSpace:J
    mul-long v2, v0, v4

    .line 2103
    .local v2, availableSpace:J
    const-wide/16 v13, 0x2800

    cmp-long v13, v2, v13

    if-gez v13, :cond_0

    .line 2105
    const v13, 0x1040183

    invoke-direct {p0, v13}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->showToast(I)V

    .line 2106
    const/4 v13, 0x0

    .line 2112
    .end local v0           #availableBlocks:J
    .end local v2           #availableSpace:J
    .end local v4           #blockSize:J
    .end local v8           #stat:Landroid/os/StatFs;
    .end local v9           #totalBlocks:J
    .end local v11           #totalSpace:J
    :goto_0
    return v13

    .line 2082
    :catch_0
    move-exception v6

    .line 2085
    .local v6, e:Ljava/lang/IllegalArgumentException;
    const/4 v13, 0x0

    goto :goto_0

    .line 2108
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    .restart local v0       #availableBlocks:J
    .restart local v2       #availableSpace:J
    .restart local v4       #blockSize:J
    .restart local v8       #stat:Landroid/os/StatFs;
    .restart local v9       #totalBlocks:J
    .restart local v11       #totalSpace:J
    :cond_0
    const/4 v13, 0x1

    goto :goto_0

    .line 2112
    .end local v0           #availableBlocks:J
    .end local v2           #availableSpace:J
    .end local v4           #blockSize:J
    .end local v8           #stat:Landroid/os/StatFs;
    .end local v9           #totalBlocks:J
    .end local v11           #totalSpace:J
    :cond_1
    const/4 v13, 0x0

    goto :goto_0
.end method

.method private isLockScreenShowing()Z
    .locals 3

    .prologue
    .line 2490
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_0

    .line 2492
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2497
    :goto_0
    return v1

    .line 2493
    :catch_0
    move-exception v0

    .line 2494
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SPenGesture"

    const-string v2, "Failed check isLockScreenShowing : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2497
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPossibleCapture()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 908
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v2, :cond_0

    .line 909
    const-string v2, "statusbar"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 912
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-eqz v2, :cond_1

    .line 914
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->isScreenCaptureEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 921
    :cond_1
    :goto_0
    return v1

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SPenGesture"

    const-string v3, "StatusBarService RemoteException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isSecureUnlockEnabled()Z
    .locals 3

    .prologue
    .line 2479
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v1, :cond_0

    .line 2481
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2486
    :goto_0
    return v1

    .line 2482
    :catch_0
    move-exception v0

    .line 2483
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SPenGesture"

    const-string v2, "Failed check isSecureUnlockEnabled : "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2486
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isTopActivity(Ljava/lang/String;)Z
    .locals 4
    .parameter "componentName"

    .prologue
    .line 937
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 938
    .local v0, topComponentName:Landroid/content/ComponentName;
    const-string v1, "SPenGesture"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TopActivity:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isTopActivity(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 945
    .local p1, findList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getTopActivityComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 946
    .local v1, topComponentName:Landroid/content/ComponentName;
    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TopActivity:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 949
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 950
    const/4 v2, 0x1

    .line 952
    :goto_1
    return v2

    .line 948
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 952
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private markMatrixForCropping(FFFFI)V
    .locals 14
    .parameter "oldCoordsX"
    .parameter "oldCoordsY"
    .parameter "newCoordsX"
    .parameter "newCoordsY"
    .parameter "markNumber"

    .prologue
    .line 1078
    const/4 v8, 0x0

    .line 1079
    .local v8, startCoordsX:F
    const/4 v9, 0x0

    .line 1080
    .local v9, startCoordsY:F
    const/4 v1, 0x0

    .line 1081
    .local v1, endCoordsX:F
    const/4 v2, 0x0

    .line 1082
    .local v2, endCoordsY:F
    const/4 v5, 0x0

    .line 1083
    .local v5, resultCoordsX:F
    const/4 v6, 0x0

    .line 1084
    .local v6, resultCoordsY:F
    const/4 v7, 0x0

    .line 1085
    .local v7, slope:F
    const/4 v4, 0x0

    .line 1087
    .local v4, interceptY:F
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    .line 1088
    :cond_0
    float-to-int v10, p1

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    .line 1089
    move/from16 v0, p2

    float-to-int v10, v0

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    .line 1095
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v10}, Landroid/graphics/Path;->reset()V

    .line 1096
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1099
    :cond_1
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    add-float v11, p3, p1

    const/high16 v12, 0x4000

    div-float/2addr v11, v12

    add-float v12, p4, p2

    const/high16 v13, 0x4000

    div-float/2addr v12, v13

    move/from16 v0, p2

    invoke-virtual {v10, p1, v0, v11, v12}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1101
    cmpl-float v10, p1, p3

    if-nez v10, :cond_2

    cmpl-float v10, p2, p4

    if-eqz v10, :cond_11

    .line 1103
    :cond_2
    move v8, p1

    .line 1104
    move/from16 v9, p2

    .line 1105
    move/from16 v1, p3

    .line 1106
    move/from16 v2, p4

    .line 1108
    sub-float v10, v8, v1

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-eqz v10, :cond_5

    .line 1109
    sub-float v10, v2, v9

    sub-float v11, v1, v8

    div-float v7, v10, v11

    .line 1114
    :goto_0
    mul-float v10, v8, v7

    sub-float v4, v9, v10

    .line 1116
    cmpg-float v10, p1, p3

    if-gtz v10, :cond_c

    .line 1117
    :goto_1
    cmpg-float v10, v8, v1

    if-gtz v10, :cond_11

    .line 1118
    move v5, v8

    .line 1119
    mul-float v10, v8, v7

    add-float v6, v10, v4

    .line 1121
    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkClosedCurve(III)V

    .line 1136
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_3

    .line 1137
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1140
    :cond_3
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    .line 1141
    const/4 v3, 0x1

    .local v3, i:I
    :goto_2
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_6

    .line 1142
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    if-ltz v10, :cond_4

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_4

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_4

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_4

    .line 1145
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1141
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1112
    .end local v3           #i:I
    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 1149
    :cond_6
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_8

    .line 1150
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_3
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_8

    .line 1151
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    if-ltz v10, :cond_7

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_7

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_7

    float-to-int v10, v5

    add-int/lit8 v10, v10, -0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_7

    .line 1154
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, -0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1150
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1159
    .end local v3           #i:I
    :cond_8
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1160
    float-to-int v10, v6

    if-ltz v10, :cond_9

    float-to-int v10, v5

    if-ltz v10, :cond_9

    float-to-int v10, v6

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_9

    float-to-int v10, v5

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_9

    .line 1163
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    float-to-int v11, v6

    float-to-int v12, v5

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1117
    :cond_9
    const/high16 v10, 0x3f80

    add-float/2addr v8, v10

    goto/16 :goto_1

    .line 1210
    :cond_a
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1211
    float-to-int v10, v6

    if-ltz v10, :cond_b

    float-to-int v10, v5

    if-ltz v10, :cond_b

    float-to-int v10, v6

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_b

    float-to-int v10, v5

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_b

    .line 1214
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    float-to-int v11, v6

    float-to-int v12, v5

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1168
    :cond_b
    const/high16 v10, 0x3f80

    sub-float/2addr v8, v10

    :cond_c
    cmpl-float v10, v8, v1

    if-ltz v10, :cond_11

    .line 1169
    move v5, v8

    .line 1170
    mul-float v10, v8, v7

    add-float v6, v10, v4

    .line 1172
    float-to-int v10, v5

    float-to-int v11, v6

    move/from16 v0, p5

    invoke-direct {p0, v10, v11, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkClosedCurve(III)V

    .line 1187
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_d

    .line 1188
    float-to-int v10, v6

    iput v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 1191
    :cond_d
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, 0x3f80

    cmpl-float v10, v10, v11

    if-lez v10, :cond_f

    .line 1192
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_4
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float v11, v6, v11

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_f

    .line 1193
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    if-ltz v10, :cond_e

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_e

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_e

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_e

    .line 1196
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    add-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1192
    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1200
    .end local v3           #i:I
    :cond_f
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v10, v10

    sub-float v10, v6, v10

    const/high16 v11, -0x4080

    cmpg-float v10, v10, v11

    if-gez v10, :cond_a

    .line 1201
    const/4 v3, 0x1

    .restart local v3       #i:I
    :goto_5
    int-to-float v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    int-to-float v11, v11

    sub-float/2addr v11, v6

    cmpg-float v10, v10, v11

    if-gtz v10, :cond_a

    .line 1202
    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    if-ltz v10, :cond_10

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    if-ltz v10, :cond_10

    iget v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v10, v3

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-ge v10, v11, :cond_10

    float-to-int v10, v5

    add-int/lit8 v10, v10, 0x1

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    if-ge v10, v11, :cond_10

    .line 1205
    iget-object v10, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v11, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    sub-int/2addr v11, v3

    float-to-int v12, v5

    add-int/lit8 v12, v12, 0x1

    move/from16 v0, p5

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->mark(III)V

    .line 1201
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1219
    .end local v3           #i:I
    :cond_11
    return-void
.end method

.method private setAboutStartingSuggestionService()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 2450
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-ne v4, v6, :cond_0

    .line 2451
    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2457
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/16 v4, 0x1e

    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 2460
    .local v1, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2461
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2463
    .local v3, runningServiceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.sec.android.app.SuggestionService.SuggestionAppService"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2465
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    .line 2473
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .end local v2           #iterator:Ljava/util/Iterator;
    .end local v3           #runningServiceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    return-void

    .line 2469
    .restart local v0       #activityManager:Landroid/app/ActivityManager;
    .restart local v1       #info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    .restart local v2       #iterator:Ljava/util/Iterator;
    .restart local v3       #runningServiceInfo:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    goto :goto_0
.end method

.method private setDisplayDegrees()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2402
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 2403
    .local v3, point:Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v4, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 2404
    .local v2, display:Landroid/view/Display;
    invoke-virtual {v2, v3}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 2406
    iget v4, v3, Landroid/graphics/Point;->x:I

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    .line 2407
    iget v4, v3, Landroid/graphics/Point;->y:I

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    .line 2409
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2410
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    iget v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    if-le v4, v7, :cond_2

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    :goto_0
    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    .line 2415
    :goto_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->getDegreesForRotation(I)F

    move-result v1

    .line 2417
    .local v1, degress:F
    const-string v4, "SPenGesture"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mCurrentDisplayWidth: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mCurrentDisplayHeight: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Rot: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", deg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    const/4 v0, 0x0

    .line 2421
    .local v0, changed:Z
    const/4 v4, 0x0

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_0

    const/high16 v4, 0x4334

    cmpl-float v4, v1, v4

    if-nez v4, :cond_5

    .line 2423
    :cond_0
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-ne v4, v5, :cond_4

    .line 2424
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    .line 2425
    const/4 v0, 0x1

    .line 2440
    :goto_2
    if-eqz v0, :cond_1

    .line 2441
    iget-object v7, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v4, :cond_7

    move v4, v5

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->setPortrait(Z)V

    .line 2444
    :cond_1
    return v0

    .line 2410
    .end local v0           #changed:Z
    .end local v1           #degress:F
    :cond_2
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayWidth:I

    goto :goto_0

    .line 2412
    :cond_3
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurrentDisplayHeight:I

    div-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mVerticalMovingSlop:I

    goto :goto_1

    .line 2427
    .restart local v0       #changed:Z
    .restart local v1       #degress:F
    :cond_4
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    goto :goto_2

    .line 2432
    :cond_5
    iget v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    if-nez v4, :cond_6

    .line 2433
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    .line 2434
    const/4 v0, 0x1

    goto :goto_2

    .line 2436
    :cond_6
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateDegress:I

    goto :goto_2

    :cond_7
    move v4, v6

    .line 2441
    goto :goto_3
.end method

.method private showToast(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 2119
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2120
    return-void
.end method

.method private startAniForLoadingService()V
    .locals 12

    .prologue
    const/4 v3, 0x1

    const/high16 v4, 0x3f00

    const/4 v6, 0x0

    .line 1858
    invoke-virtual {p0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1860
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1861
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10802e8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/BitmapDrawable;

    .line 1862
    .local v11, tempDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    .line 1863
    .local v10, tempBitmap:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-direct {v9, v6, v6, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1864
    .local v9, rectForAnimation:Landroid/graphics/Rect;
    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1865
    .local v7, bitmapForAnimation:Landroid/graphics/Bitmap;
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v7}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1866
    .local v8, canvasForAnimation:Landroid/graphics/Canvas;
    const/4 v1, 0x0

    invoke-virtual {v8, v10, v9, v9, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1868
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1869
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1871
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFinishSaveImg:Z

    .line 1873
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x43b4

    move v5, v3

    move v6, v4

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 1874
    .local v0, ani:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1875
    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1876
    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$10;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1895
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1896
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenVibrator:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$SPenVibrator;->playVibrator()V

    .line 1897
    return-void
.end method

.method private startEffectForGesture(IZ)V
    .locals 8
    .parameter "key"
    .parameter "isDownGesture"

    .prologue
    const-wide/16 v6, 0xc8

    const/high16 v5, 0x4110

    const/4 v4, 0x0

    const/high16 v3, 0x4000

    .line 2504
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isLockScreenShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2642
    :cond_0
    :goto_0
    return-void

    .line 2508
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    if-eqz v0, :cond_2

    .line 2509
    const-string v0, "SPenGesture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " couldn\'t execute!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2513
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 2515
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2516
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2517
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 2518
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 2519
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 2521
    if-eqz p2, :cond_3

    .line 2522
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2523
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x4204

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 2525
    packed-switch p1, :pswitch_data_0

    .line 2540
    :goto_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2541
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$11;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$11;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;ZI)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 2634
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 2636
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 2637
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePadBlockTaskList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2638
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 2527
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/view/View;->setX(F)V

    goto :goto_1

    .line 2530
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    sub-float/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto :goto_1

    .line 2536
    :cond_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2537
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 2538
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    goto/16 :goto_1

    .line 2640
    :cond_4
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGesturePad:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 2525
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addSPenEvent(Landroid/view/MotionEvent;ZZ)V
    .locals 26
    .parameter "event"
    .parameter "isKeyguardOn"
    .parameter "isLiveGlanceView"

    .prologue
    .line 1323
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    .line 1324
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsKeyguardOn:Z

    if-nez v2, :cond_2d

    .line 1325
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 1326
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    .line 1329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    monitor-enter v25

    .line 1330
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 1331
    .local v8, action:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 1333
    .local v21, totalPointerSize:I
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1a

    const/16 v2, 0x9

    if-eq v8, v2, :cond_1a

    const/4 v2, 0x7

    if-eq v8, v2, :cond_1a

    const/16 v2, 0xa

    if-eq v8, v2, :cond_1a

    .line 1336
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 1337
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1338
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 1339
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1340
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1341
    monitor-exit v25

    .line 1853
    .end local v8           #action:I
    .end local v21           #totalPointerSize:I
    :cond_0
    :goto_0
    return-void

    .line 1344
    .restart local v8       #action:I
    .restart local v21       #totalPointerSize:I
    :cond_1
    if-eqz v8, :cond_2

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x5

    if-ne v2, v3, :cond_b

    .line 1349
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->updateRotation()V

    .line 1350
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setAboutStartingSuggestionService()V

    .line 1352
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_3

    .line 1354
    monitor-exit v25

    goto :goto_0

    .line 1814
    .end local v8           #action:I
    .end local v21           #totalPointerSize:I
    :catchall_0
    move-exception v2

    monitor-exit v25
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1357
    .restart local v8       #action:I
    .restart local v21       #totalPointerSize:I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_4

    .line 1358
    const-string v2, "SPenGesture"

    const-string v3, "CropThread is live!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1360
    monitor-exit v25

    goto :goto_0

    .line 1363
    :cond_4
    const v2, 0xff00

    and-int/2addr v2, v8

    shr-int/lit8 v15, v2, 0x8

    .line 1365
    .local v15, index:I
    if-nez v8, :cond_6

    .line 1366
    const/16 v18, 0x0

    .local v18, p:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    .line 1367
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1368
    .local v19, ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    invoke-virtual/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->clearTrace()V

    .line 1369
    const/4 v2, 0x0

    move-object/from16 v0, v19

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    .line 1366
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 1371
    .end local v19           #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    .line 1372
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    .line 1373
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    .line 1377
    .end local v18           #p:I
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    .line 1378
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    if-ge v2, v3, :cond_7

    .line 1379
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    .line 1382
    :cond_7
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1383
    .local v14, id:I
    :goto_2
    move/from16 v0, v21

    if-gt v0, v14, :cond_8

    .line 1384
    new-instance v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    invoke-direct/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;-><init>()V

    .line 1385
    .restart local v19       #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1386
    add-int/lit8 v21, v21, 0x1

    .line 1387
    goto :goto_2

    .line 1389
    .end local v19           #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    if-ltz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2700(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 1391
    :cond_9
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mActivePointerId:I

    .line 1394
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1395
    .restart local v19       #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    const/4 v2, 0x1

    move-object/from16 v0, v19

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    .line 1396
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    .line 1400
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 1404
    .end local v14           #id:I
    .end local v15           #index:I
    .end local v19           #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-eqz v2, :cond_c

    .line 1406
    monitor-exit v25

    goto/16 :goto_0

    .line 1409
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    if-eqz v2, :cond_d

    .line 1410
    const-string v2, "SPenGesture"

    const-string v3, "CropThread is live!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1412
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1413
    monitor-exit v25

    goto/16 :goto_0

    .line 1416
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    .line 1421
    .local v10, eventPointerCount:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v12

    .line 1423
    .local v12, histroySize:I
    const/4 v11, 0x0

    .local v11, historyPos:I
    :goto_3
    if-ge v11, v12, :cond_14

    .line 1424
    const/4 v13, 0x0

    .local v13, i:I
    :goto_4
    if-ge v13, v10, :cond_13

    .line 1425
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1426
    .restart local v14       #id:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    move-object/from16 v19, v2

    .line 1427
    .restart local v19       #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :goto_5
    if-eqz v19, :cond_12

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1428
    .local v9, coords:Landroid/view/MotionEvent$PointerCoords;
    :goto_6
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11, v9}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 1430
    if-eqz v19, :cond_10

    .line 1431
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->addTrace(FF)V

    .line 1432
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_e

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_f

    .line 1433
    :cond_e
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 1434
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 1435
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1436
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1437
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1438
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1439
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1444
    :cond_f
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1445
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1424
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    .line 1426
    .end local v9           #coords:Landroid/view/MotionEvent$PointerCoords;
    .end local v19           #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_11
    const/16 v19, 0x0

    goto :goto_5

    .line 1427
    .restart local v19       #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_12
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto :goto_6

    .line 1423
    .end local v14           #id:I
    .end local v19           #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_13
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 1449
    .end local v13           #i:I
    :cond_14
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_7
    if-ge v13, v10, :cond_1a

    .line 1450
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v14

    .line 1451
    .restart local v14       #id:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    move-object/from16 v19, v2

    .line 1452
    .restart local v19       #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :goto_8
    if-eqz v19, :cond_19

    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCoords:Landroid/view/MotionEvent$PointerCoords;
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2800(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)Landroid/view/MotionEvent$PointerCoords;

    move-result-object v9

    .line 1453
    .restart local v9       #coords:Landroid/view/MotionEvent$PointerCoords;
    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v9}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1455
    if-eqz v19, :cond_17

    .line 1456
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->addTrace(FF)V

    .line 1457
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v3, -0x4080

    cmpl-float v2, v2, v3

    if-nez v2, :cond_16

    .line 1458
    :cond_15
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 1459
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 1460
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1461
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1462
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1463
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1468
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iget v6, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    iget v7, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    add-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1470
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->x:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 1471
    iget v2, v9, Landroid/view/MotionEvent$PointerCoords;->y:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 1472
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    move-object/from16 v0, v19

    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mToolType:I
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2902(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;I)I

    .line 1449
    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 1451
    .end local v9           #coords:Landroid/view/MotionEvent$PointerCoords;
    .end local v19           #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_18
    const/16 v19, 0x0

    goto/16 :goto_8

    .line 1452
    .restart local v19       #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_19
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTempCoords:Landroid/view/MotionEvent$PointerCoords;

    goto/16 :goto_9

    .line 1477
    .end local v10           #eventPointerCount:I
    .end local v11           #historyPos:I
    .end local v12           #histroySize:I
    .end local v13           #i:I
    .end local v14           #id:I
    .end local v19           #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    if-eqz v2, :cond_1b

    .line 1480
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1481
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 1482
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1486
    :cond_1b
    const/4 v2, 0x1

    if-eq v8, v2, :cond_1c

    and-int/lit16 v2, v8, 0xff

    const/4 v3, 0x6

    if-ne v2, v3, :cond_24

    .line 1489
    :cond_1c
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : release"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v20

    .line 1493
    .local v20, totalPointerCount:I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    if-nez v2, :cond_2a

    .line 1494
    const/16 v18, 0x0

    .restart local v18       #p:I
    :goto_a
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    .line 1495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1496
    .restart local v19       #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v22

    .line 1497
    .local v22, traceCount:I
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_b
    move/from16 v0, v22

    if-ge v13, v0, :cond_1e

    .line 1498
    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v2

    aget v23, v2, v13

    .line 1499
    .local v23, x:F
    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static/range {v19 .. v19}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v2

    aget v24, v2, v13

    .line 1501
    .local v24, y:F
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    if-nez v2, :cond_1d

    .line 1502
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 1503
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    .line 1504
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    .line 1497
    :goto_c
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 1507
    :cond_1d
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    .line 1508
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    .line 1509
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->markMatrixForCropping(FFFFI)V

    .line 1510
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    .line 1511
    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 1512
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    goto :goto_c

    .line 1494
    .end local v23           #x:F
    .end local v24           #y:F
    :cond_1e
    add-int/lit8 v18, v18, 0x1

    goto :goto_a

    .line 1517
    .end local v13           #i:I
    .end local v19           #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v22           #traceCount:I
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_29

    .line 1519
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1527
    :cond_20
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    if-nez v2, :cond_21

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    if-nez v2, :cond_21

    .line 1529
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1530
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1531
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1532
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1533
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1534
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1535
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1536
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1537
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1538
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1539
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1540
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1541
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1542
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1545
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    if-nez v2, :cond_22

    .line 1547
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->checkDirectionGesture()Z

    .line 1556
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    .line 1563
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isPossibleCapture()Z

    move-result v2

    if-nez v2, :cond_23

    .line 1564
    const-string v2, "com.sec.android.app.videoplayer"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isTopActivity(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 1565
    const-string v2, "SPenGesture"

    const-string v3, "crop is not possible now by app!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1567
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1568
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1569
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1570
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1571
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1572
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1573
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1574
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1575
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1576
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1577
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1578
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1579
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1586
    .end local v18           #p:I
    :cond_23
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1589
    .end local v20           #totalPointerCount:I
    :cond_24
    const/4 v2, 0x3

    if-ne v8, v2, :cond_25

    .line 1590
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : action_calcel"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1594
    :cond_25
    const/16 v2, 0xa

    if-ne v8, v2, :cond_26

    .line 1595
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : action is MotionEvent.ACTION_HOVER_EXIT"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1599
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1601
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    if-eqz v2, :cond_27

    .line 1602
    const-string v2, "SPenGesture"

    const-string v3, "addSPenEvent : mIsClosedCurve is true"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    if-eqz v2, :cond_2b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1605
    const-string v2, "SPenGesture"

    const-string v3, "duplicated!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 1607
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->resetVariable(I)V

    .line 1608
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1609
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1610
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1611
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1612
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1613
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1614
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1615
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1616
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1617
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1618
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1619
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1620
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1622
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1812
    :goto_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsClosedCurve:Z

    .line 1814
    :cond_27
    monitor-exit v25
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1817
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mBrType:I

    packed-switch v2, :pswitch_data_0

    .line 1837
    .end local v8           #action:I
    .end local v21           #totalPointerSize:I
    :goto_10
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsStartingSuggestionService:Z

    if-nez v2, :cond_0

    .line 1838
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_28

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 1839
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_1

    :pswitch_0
    goto/16 :goto_0

    .line 1846
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 1521
    .restart local v8       #action:I
    .restart local v18       #p:I
    .restart local v20       #totalPointerCount:I
    .restart local v21       #totalPointerSize:I
    :cond_29
    :try_start_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_20

    .line 1523
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1524
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->makePathForClosedCurve(IIZ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    goto/16 :goto_d

    .line 1583
    .end local v18           #p:I
    :cond_2a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveScreencapture:Z

    goto/16 :goto_e

    .line 1626
    .end local v20           #totalPointerCount:I
    :cond_2b
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->isAvailableCapacity()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 1628
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveCropThread:Z

    .line 1630
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$9;-><init>(Lcom/android/internal/policy/impl/spengesture/SPenGestureView;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    .line 1792
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSPenGestureCropDispatchThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_f

    .line 1794
    :cond_2c
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointPrev:I

    .line 1795
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointLast:I

    .line 1796
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointPrev:I

    .line 1797
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointLast:I

    .line 1798
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1799
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1800
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1801
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    .line 1802
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointXForCircle:F

    .line 1803
    const/high16 v2, -0x4080

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointYForCircle:F

    .line 1804
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsablePath:Z

    .line 1805
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsUsableSecondPath:Z

    .line 1806
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumColsedCurves:I

    .line 1807
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 1808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_f

    .line 1821
    :pswitch_2
    new-instance v16, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PAUSE"

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1822
    .local v16, intentForVideoPause:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 1827
    .end local v16           #intentForVideoPause:Landroid/content/Intent;
    :pswitch_3
    new-instance v17, Landroid/content/Intent;

    const-string v2, "com.sec.android.app.videoplayer.VIDEOPLAYER_PLAY"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1828
    .local v17, intentForVideoPlay:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_10

    .line 1833
    .end local v8           #action:I
    .end local v17           #intentForVideoPlay:Landroid/content/Intent;
    .end local v21           #totalPointerSize:I
    :cond_2d
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    .line 1834
    const-string v2, "SPenGesture"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addSPenEvent : isKeyguardOn is true,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLiveGlanceView:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .line 1817
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1839
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public isShowingGestureEffect()Z
    .locals 1

    .prologue
    .line 2647
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    return v0
.end method

.method public makePathForClosedCurve(IIZ)Z
    .locals 21
    .parameter "intersectionPointPrev"
    .parameter "intersectionPointLast"
    .parameter "isFirstCurve"

    .prologue
    .line 1902
    const/4 v4, 0x0

    .line 1903
    .local v4, existOldCoords:Z
    const/4 v9, 0x0

    .line 1904
    .local v9, oldCoordsX:F
    const/4 v10, 0x0

    .line 1905
    .local v10, oldCoordsY:F
    const/4 v6, 0x0

    .line 1906
    .local v6, newCoordsX:F
    const/4 v7, 0x0

    .line 1907
    .local v7, newCoordsY:F
    const/4 v8, 0x0

    .line 1912
    .local v8, numberOfAddTrace:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 1914
    .local v13, totalPointerCount:I
    const/4 v11, 0x0

    .local v11, p:I
    :goto_0
    if-ge v11, v13, :cond_5

    .line 1915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1916
    .local v12, ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v14

    .line 1917
    .local v14, traceCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v14, :cond_4

    .line 1918
    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceX:[F
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3100(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v17

    aget v15, v17, v5

    .line 1919
    .local v15, x:F
    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceY:[F
    invoke-static {v12}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3200(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)[F

    move-result-object v17

    aget v16, v17, v5

    .line 1921
    .local v16, y:F
    move/from16 v0, p1

    if-gt v0, v8, :cond_0

    add-int/lit8 v17, p2, 0x1

    move/from16 v0, v17

    if-lt v0, v8, :cond_0

    .line 1922
    if-nez v4, :cond_2

    .line 1923
    move v9, v15

    .line 1924
    move/from16 v10, v16

    .line 1925
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 1926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 1927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1928
    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointX:I

    .line 1929
    float-to-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstIntersectionPointY:I

    .line 1937
    :goto_2
    const/4 v4, 0x1

    .line 1955
    :cond_0
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 1917
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1932
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Path;->reset()V

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1934
    float-to-int v0, v9

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointX:I

    .line 1935
    float-to-int v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondIntersectionPointY:I

    goto :goto_2

    .line 1940
    :cond_2
    move v6, v15

    .line 1941
    move/from16 v7, v16

    .line 1942
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1943
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v6, v9

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    add-float v19, v7, v10

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 1951
    :goto_4
    move v9, v15

    .line 1952
    move/from16 v10, v16

    goto :goto_3

    .line 1946
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    add-float v18, v6, v9

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    add-float v19, v7, v10

    const/high16 v20, 0x4000

    div-float v19, v19, v20

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v10, v1, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_4

    .line 1914
    .end local v15           #x:F
    .end local v16           #y:F
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 1959
    .end local v5           #i:I
    .end local v12           #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    .end local v14           #traceCount:I
    :cond_5
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1960
    .local v3, boundsOfPath:Landroid/graphics/RectF;
    const/16 v17, 0x1

    move/from16 v0, p3

    move/from16 v1, v17

    if-ne v0, v1, :cond_6

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 1968
    :goto_5
    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x4220

    cmpg-float v17, v17, v18

    if-gez v17, :cond_7

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v18, v0

    sub-float v17, v17, v18

    const/high16 v18, 0x4220

    cmpg-float v17, v17, v18

    if-gez v17, :cond_7

    .line 1970
    const/16 v17, 0x0

    .line 1973
    :goto_6
    return v17

    .line 1964
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    goto :goto_5

    .line 1973
    :cond_7
    const/16 v17, 0x1

    goto :goto_6
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, -0x2

    .line 959
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10802e5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 960
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10802e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 961
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10802e4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10802e7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 963
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10802ea

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 964
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10802e9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 966
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    .line 967
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 969
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mGestureEffectImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 971
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    .line 972
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 973
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 974
    .local v0, lp:Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 975
    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mLoadingAniImgView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 976
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/high16 v4, -0x4080

    .line 1062
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_0

    .line 1063
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    iget v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    const/high16 v2, 0x4100

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1067
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1070
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_1

    .line 1071
    iget v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    iget v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    const/high16 v2, 0x4080

    iget-object v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1073
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 1011
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1012
    iget-object v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mTextMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mHeaderBottom:I

    .line 1013
    return-void
.end method

.method public resetVariable(I)V
    .locals 7
    .parameter "totalPointerSize"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/high16 v4, -0x4080

    const/4 v3, 0x0

    .line 1981
    const/4 v0, 0x0

    .local v0, p:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 1982
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 1983
    .local v1, ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->clearTrace()V

    .line 1984
    #setter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mCurDown:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$2702(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;Z)Z

    .line 1981
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1987
    .end local v1           #ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurDown:Z

    .line 1988
    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCurNumPointers:I

    .line 1989
    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mMaxNumPointers:I

    .line 1990
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mExistOldCoords:Z

    .line 1991
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsLastPointer:Z

    .line 1992
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsFirstPointer:Z

    .line 1993
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEnableCheckClosedCurve:Z

    .line 1994
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsX:F

    .line 1995
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mOldCoordsY:F

    .line 1996
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsX:F

    .line 1997
    iput v5, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNewCoordsY:F

    .line 1999
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointX:F

    .line 2000
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mEndPointY:F

    .line 2001
    iput v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mNumberOfAddTrace:I

    .line 2002
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointX:I

    .line 2003
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFirstStartPointY:I

    .line 2004
    iput v6, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPrevCoordY:I

    .line 2006
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPathOfCurveForDrawing:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 2008
    iget v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    cmpl-float v2, v2, v4

    if-eqz v2, :cond_1

    .line 2010
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mCroppingMatrix:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$CroppingMatrix;->reset()V

    .line 2013
    :cond_1
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointX:F

    .line 2014
    iput v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mStartPointY:F

    .line 2015
    return-void
.end method

.method public setDoubleTapStateBySettingMenu(Z)V
    .locals 0
    .parameter "isEnable"

    .prologue
    .line 838
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnableDoubleTapOnLockscreen:Z

    .line 839
    return-void
.end method

.method public setFocusedWindow(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 2
    .parameter "newFocus"

    .prologue
    .line 771
    const-string v0, "SPenGesture"

    const-string v1, "SpenGestureView: setFocusedWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    iput-object p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mFocusedWindow:Landroid/view/WindowManagerPolicy$WindowState;

    .line 773
    return-void
.end method

.method public setHapticEnabled(Z)V
    .locals 0
    .parameter "isEnabled"

    .prologue
    .line 472
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsEnabledHapticFeedback:Z

    .line 473
    return-void
.end method

.method public setPhoneWindowMangerFlag(Z)V
    .locals 1
    .parameter "isInvisible"

    .prologue
    .line 2653
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    if-nez v0, :cond_0

    .line 2654
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mIsShowingGestureEffect:Z

    .line 2656
    :cond_0
    return-void
.end method

.method public updateRotation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2379
    invoke-direct {p0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->setDisplayDegrees()Z

    move-result v1

    .line 2381
    .local v1, result:Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mPointers:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;

    .line 2382
    .local v0, ps:Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;
    #getter for: Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->mTraceCount:I
    invoke-static {v0}, Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;->access$3000(Lcom/android/internal/policy/impl/spengesture/SPenGestureView$PointerState;)I

    move-result v2

    if-le v2, v4, :cond_1

    .line 2383
    if-ne v1, v4, :cond_0

    .line 2384
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    .line 2396
    :goto_0
    return-void

    .line 2388
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    goto :goto_0

    .line 2393
    :cond_1
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/spengesture/SPenGestureView;->mDisplayRoateChanged:Z

    goto :goto_0
.end method
