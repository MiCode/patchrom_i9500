.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
.super Landroid/widget/RelativeLayout;
.source "SimeSkbKeyboardContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;,
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;,
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x12c

.field private static final DEBUG:Z = false

.field private static final HANDWRITE_KEYBOARD_ID:I = 0x1

.field private static final LEFT:I = 0x2

.field private static final MAJOR_KEYBOARD_ID:I = 0x0

.field private static final MOVE_TOLERANCE:I = 0x6

.field private static POPUPWINDOW_FOR_PRESSED_UI:Z = false

.field private static final RIGHT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SkbContainer"

.field private static final Y_BIAS_CORRECTION:I


# instance fields
.field private isHover:Z

.field private isNeedRespoonseKeyRelease:Z

.field private mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

.field private mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

.field private mCandidatesViewShown:Z

.field private mDirectionGestureHandle:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;

.field private volatile mDiscardEvent:Z

.field private mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mGestureDetectorSkb:Landroid/view/GestureDetector;

.field private mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mLastCandidatesShowing:Z

.field private mLastMotionEvt:Landroid/view/MotionEvent;

.field private mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

.field public mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

.field private mMultiTouchProcessor:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;

.field private mOffsetToSkbTVContainer:[I

.field private mPopupSkb:Landroid/widget/PopupWindow;

.field private mPopupSkbNoResponse:Z

.field private mPopupSkbShow:Z

.field private mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

.field private mPopupX:I

.field private mPopupY:I

.field private mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

.field private mService:Landroid/inputmethodservice/InputMethodService;

.field private mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

.field private mSkbFlipper:Landroid/widget/ViewFlipper;

.field private mSkbLayout:I

.field private mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

.field private mSkvPosInContainer:[I

.field private mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

.field private mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

.field private volatile mWaitForTouchUp:Z

.field private mWidth:I

.field private mXLast:I

.field private mXyPosTmp:[I

.field private mYBiasCorrection:I

.field private mYLast:I

.field private mbIsMultiTouch:Z

.field private mbShiftTouch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->POPUPWINDOW_FOR_PRESSED_UI:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, -0x8000

    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 272
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbLayout:I

    .line 135
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mOffsetToSkbTVContainer:[I

    .line 139
    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

    .line 144
    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 156
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    .line 163
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbNoResponse:Z

    .line 179
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWaitForTouchUp:Z

    .line 186
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    .line 193
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYBiasCorrection:I

    .line 218
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    .line 223
    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 233
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mXyPosTmp:[I

    .line 253
    iput-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isNeedRespoonseKeyRelease:Z

    .line 256
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    .line 258
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    .line 260
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isHover:Z

    .line 269
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    .line 274
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 275
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-direct {v0, p0, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    .line 276
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;

    invoke-direct {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMultiTouchProcessor:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;

    .line 277
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMultiTouchProcessor:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->SetMultiTouchListener(Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchListener;)V

    .line 279
    const-string v0, "1"

    const-string v1, "ro.kernel.qemu"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYBiasCorrection:I

    .line 284
    :goto_0
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-direct {v0, p1, p0, v4}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 285
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->POPUPWINDOW_FOR_PRESSED_UI:Z

    if-eqz v0, :cond_0

    .line 286
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-direct {v0, p1, p0, v4}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 290
    :cond_0
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    .line 291
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 293
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    const/16 v1, 0x7dc

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 299
    :cond_1
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeGestureListener;

    sget-object v1, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->SimeSkbKeyboardContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    invoke-direct {v0, p1, v5, v1}, Lcom/samsung/inputmethod/comm/SimeGestureListener;-><init>(Landroid/content/Context;ZLcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    .line 302
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/comm/SimeGestureListener;->setPointingArea(Landroid/content/Context;)V

    .line 304
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;

    invoke-direct {v0, p0, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$1;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDirectionGestureHandle:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;

    .line 305
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDirectionGestureHandle:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$SkbDirectionGesture;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/comm/SimeGestureListener;->setDirectionGestureHandle(Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;)V

    .line 306
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureDetectorSkb:Landroid/view/GestureDetector;

    .line 308
    return-void

    .line 282
    :cond_2
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYBiasCorrection:I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->popupSymbols()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/inputmethodservice/InputMethodService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getinRightAnimation()Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/widget/ViewFlipper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Landroid/view/animation/TranslateAnimation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getinLeftAnimation()Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWaitForTouchUp:Z

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isHover:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    return v0
.end method

.method private getCoordinatesToSKB(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;)[I
    .locals 9
    .parameter "softkeyTextView"

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2165
    const/4 v2, 0x0

    .line 2166
    .local v2, skbHeight:I
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 2167
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    new-array v4, v5, [I

    .line 2168
    .local v4, tvLocation:[I
    new-array v3, v5, [I

    .line 2169
    .local v3, tvCoordinatesToSKB:[I
    invoke-virtual {p1, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->getLocationOnScreen([I)V

    .line 2170
    if-eqz v0, :cond_0

    .line 2171
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v5, v6, :cond_1

    .line 2172
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCoreHeight()I

    move-result v2

    .line 2174
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v1, Lcom/samsung/inputmethod/SamsungIME;

    .line 2175
    .local v1, ime:Lcom/samsung/inputmethod/SamsungIME;
    aget v5, v4, v7

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v6

    aput v5, v3, v7

    .line 2177
    aget v5, v4, v8

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v6

    sub-int/2addr v6, v2

    sub-int/2addr v5, v6

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v5, v6

    aput v5, v3, v8

    .line 2188
    .end local v1           #ime:Lcom/samsung/inputmethod/SamsungIME;
    :cond_0
    :goto_0
    return-object v3

    .line 2181
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbCoreHeight(I)I

    move-result v2

    .line 2183
    aget v5, v4, v7

    aput v5, v3, v7

    .line 2184
    aget v5, v4, v8

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v6

    sub-int/2addr v6, v2

    sub-int/2addr v5, v6

    aput v5, v3, v8

    goto :goto_0
.end method

.method private getOutLeftAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1366
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1367
    .local v0, outLeft:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1369
    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$2;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1403
    return-object v0
.end method

.method private getinLeftAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1349
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1350
    .local v0, inLeft:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1352
    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$1;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$1;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1360
    return-object v0
.end method

.method private getinRightAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1409
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1410
    .local v0, inRight:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1412
    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$3;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$3;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1421
    return-object v0
.end method

.method private getoutRightAnimation()Landroid/view/animation/TranslateAnimation;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1426
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1427
    .local v0, outRight:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1429
    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$4;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$4;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1461
    return-object v0
.end method

.method private inKeyboardView(II[I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
    .locals 7
    .parameter "x"
    .parameter "y"
    .parameter "positionInParent"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 1473
    iget-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eqz v5, :cond_1

    .line 1474
    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    if-gt v5, p1, :cond_0

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    if-le v5, p1, :cond_0

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    if-gt v5, p2, :cond_0

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-le v5, p2, :cond_0

    .line 1476
    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    aput v4, p3, v3

    .line 1477
    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    aput v4, p3, v1

    .line 1478
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v4, p3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setOffsetToSkbContainer([I)V

    .line 1480
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mOffsetToSkbTVContainer:[I

    aget v5, p3, v3

    aput v5, v4, v3

    .line 1481
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mOffsetToSkbTVContainer:[I

    aget v4, p3, v1

    aput v4, v3, v1

    .line 1482
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    .line 1511
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v4

    .line 1484
    goto :goto_0

    .line 1487
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteBoxMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1488
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 1489
    .local v1, isLandscape:Z
    :goto_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v3}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getInstance(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getHWBoxWidth(Z)I

    move-result v0

    .line 1492
    .local v0, hwBoxWidth:I
    const/4 v2, 0x0

    .line 1493
    .local v2, skbHeight:I
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v5, :cond_3

    .line 1494
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCoreHeight()I

    move-result v2

    .line 1499
    :goto_2
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPointingOn()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1500
    if-ltz p1, :cond_4

    if-le v0, p1, :cond_4

    const v3, 0x3e4ccccd

    int-to-float v5, v2

    mul-float/2addr v3, v5

    int-to-float v5, p2

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_4

    if-le v2, p2, :cond_4

    move-object v3, v4

    .line 1503
    goto :goto_0

    .end local v0           #hwBoxWidth:I
    .end local v1           #isLandscape:Z
    .end local v2           #skbHeight:I
    :cond_2
    move v1, v3

    .line 1488
    goto :goto_1

    .line 1496
    .restart local v0       #hwBoxWidth:I
    .restart local v1       #isLandscape:Z
    .restart local v2       #skbHeight:I
    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbCoreHeight(I)I

    move-result v2

    goto :goto_2

    .line 1511
    .end local v0           #hwBoxWidth:I
    .end local v1           #isLandscape:Z
    .end local v2           #skbHeight:I
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    goto :goto_0
.end method

.method private inPopupSymbolView(II[I)Z
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "positionInParent"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1517
    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eqz v2, :cond_1

    .line 1518
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    if-gt v2, p1, :cond_0

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, p1, :cond_0

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    if-gt v2, p2, :cond_0

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    if-le v2, p2, :cond_0

    .line 1520
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    aput v2, p3, v1

    .line 1521
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    aput v1, p3, v0

    .line 1522
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v1, p3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setOffsetToSkbContainer([I)V

    .line 1528
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 1525
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1528
    goto :goto_0
.end method

.method private onSKBTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v10, 0x6

    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1912
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v1, v5

    .line 1913
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v2, v5

    .line 1915
    .local v2, y:I
    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYBiasCorrection:I

    add-int/2addr v5, v2

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingTop()I

    move-result v6

    sub-int v2, v5, v6

    .line 1919
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_1

    iget-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eq v5, v3, :cond_1

    .line 1920
    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mXLast:I

    sub-int v5, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v10, :cond_1

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYLast:I

    sub-int v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v10, :cond_1

    .line 2096
    :cond_0
    :goto_0
    return v3

    .line 1925
    :cond_1
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLastMotionEvt:Landroid/view/MotionEvent;

    .line 1926
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mXLast:I

    .line 1927
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYLast:I

    .line 1930
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_HOLDANDRELEASE:Z

    if-eqz v5, :cond_7

    .line 1931
    iget-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-ne v5, v3, :cond_7

    .line 1933
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 1934
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1937
    :cond_2
    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    if-le v5, v1, :cond_3

    .line 1938
    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    add-int/lit8 v1, v5, 0x1

    .line 1941
    :cond_3
    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v1, :cond_4

    .line 1942
    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v1, v5, -0x1

    .line 1945
    :cond_4
    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    if-gt v5, v2, :cond_5

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    if-ge v5, v2, :cond_6

    .line 1946
    :cond_5
    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v2, v5, v6

    .line 1948
    :cond_6
    iput-boolean v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbNoResponse:Z

    .line 1953
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2092
    :cond_8
    :goto_1
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-nez v5, :cond_0

    move v3, v4

    .line 2093
    goto :goto_0

    .line 1955
    :pswitch_0
    invoke-direct {p0, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    .line 1972
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->init()V

    .line 1973
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v5, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->setDownPosition(Landroid/view/MotionEvent;)V

    .line 1975
    iput-boolean v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWaitForTouchUp:Z

    .line 1976
    iput-boolean v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    .line 1981
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    .line 1982
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 1983
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    invoke-direct {p0, v1, v2, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->inKeyboardView(II[I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    .line 1984
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v5, :cond_9

    .line 1985
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v6, v6, v4

    sub-int v6, v1, v6

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v7, v7, v3

    sub-int v7, v2, v7

    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onKeyPress(IILcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;Z)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 1990
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_9

    .line 1991
    iput-boolean v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    .line 1998
    :cond_9
    iput-boolean v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isNeedRespoonseKeyRelease:Z

    goto :goto_1

    .line 2004
    :pswitch_1
    if-ltz v1, :cond_8

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWidth()I

    move-result v5

    if-ge v1, v5, :cond_8

    if-ltz v2, :cond_8

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v5

    if-ge v2, v5, :cond_8

    .line 2010
    iget-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    if-eqz v5, :cond_a

    .line 2011
    invoke-direct {p0, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    goto :goto_1

    .line 2015
    :cond_a
    iget-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eqz v5, :cond_b

    iget-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbNoResponse:Z

    if-nez v5, :cond_8

    .line 2019
    :cond_b
    invoke-virtual {p0, p1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->pointingMove(Landroid/view/MotionEvent;I)V

    .line 2021
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    invoke-direct {p0, v1, v2, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->inKeyboardView(II[I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v0

    .line 2022
    .local v0, skv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
    if-eqz v0, :cond_8

    .line 2023
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 2024
    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    .line 2025
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v6, v6, v4

    sub-int v6, v1, v6

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v7, v7, v3

    sub-int v7, v2, v7

    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onKeyPress(IILcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;Z)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 2028
    iput-boolean v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isNeedRespoonseKeyRelease:Z

    goto/16 :goto_1

    .line 2029
    :cond_c
    if-eqz v0, :cond_8

    .line 2030
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v5, :cond_8

    .line 2031
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v6, v6, v4

    sub-int v6, v1, v6

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v7, v7, v3

    sub-int v7, v2, v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onKeyMove(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 2043
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    if-nez v5, :cond_8

    .line 2044
    iput-boolean v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    goto/16 :goto_1

    .line 2054
    .end local v0           #skv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
    :pswitch_2
    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->upEvent(Landroid/view/MotionEvent;II)Z

    goto/16 :goto_1

    .line 2058
    :pswitch_3
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ACCESSIBILITY_FEATURE:Z

    if-eqz v5, :cond_d

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    if-eq v5, v7, :cond_d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->isTouchExplorationEnabled()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 2060
    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->upEvent(Landroid/view/MotionEvent;II)Z

    goto/16 :goto_1

    .line 2062
    :cond_d
    invoke-direct {p0, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    .line 2078
    iget-boolean v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    if-eqz v5, :cond_8

    .line 2079
    iput-boolean v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    goto/16 :goto_1

    .line 1953
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private popupSymbols()V
    .locals 12

    .prologue
    const/4 v10, -0x2

    const/4 v11, 0x1

    .line 1575
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getPopupResId()I

    move-result v2

    .line 1579
    .local v2, popupResId:I
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v7, Lcom/samsung/inputmethod/SamsungIME;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1581
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v7, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getMultiModalManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

    move-result-object v0

    .line 1583
    .local v0, multiModalManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;
    if-lez v2, :cond_0

    .line 1584
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWidth()I

    move-result v5

    .line 1585
    .local v5, skbContainerWidth:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v4

    .line 1587
    .local v4, skbContainerHeight:I
    const/4 v3, 0x0

    .line 1590
    .local v3, skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->getMultiModalSoftkeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v3

    .line 1592
    if-nez v3, :cond_1

    .line 1663
    .end local v3           #skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .end local v4           #skbContainerHeight:I
    .end local v5           #skbContainerWidth:I
    :cond_0
    :goto_0
    return-void

    .line 1594
    .restart local v3       #skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .restart local v4       #skbContainerHeight:I
    .restart local v5       #skbContainerWidth:I
    :cond_1
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-nez v7, :cond_2

    .line 1595
    new-instance v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    .line 1596
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v7, v10, v10}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onMeasure(II)V

    .line 1599
    :cond_2
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v7, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1600
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v7, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setSoftKeyboard(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;)Z

    .line 1601
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v7, v8, v9, v11}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setBalloonHint(Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Z)V

    .line 1603
    sget-boolean v7, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_HOLDANDRELEASE:Z

    if-eqz v7, :cond_3

    .line 1604
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v7, v11}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setNoSoundNoVibrate(Z)V

    .line 1607
    :cond_3
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1608
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreWidth()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingLeft()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1611
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbCoreHeight()I

    move-result v8

    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingTop()I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingBottom()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1615
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mXyPosTmp:[I

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getLocationInWindow([I)V

    .line 1617
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLeft()I

    move-result v7

    iput v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    .line 1618
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v7

    sub-int v7, v4, v7

    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    .line 1624
    iget v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v8

    add-int/2addr v7, v8

    if-le v7, v5, :cond_4

    .line 1629
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v7

    sub-int v7, v5, v7

    iput v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    .line 1633
    :cond_4
    move v6, v4

    .line 1634
    .local v6, standardHeight:I
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1635
    mul-int/lit8 v6, v4, 0x2

    .line 1638
    :cond_5
    iget v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v8

    add-int/2addr v7, v8

    if-le v7, v6, :cond_6

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v4

    const/high16 v9, 0x3f00

    mul-float/2addr v8, v9

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v7

    if-nez v7, :cond_6

    .line 1641
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    sub-int v7, v6, v7

    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    .line 1645
    :cond_6
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v7

    sget-object v8, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v7, v8, :cond_7

    .line 1646
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v7, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getDummyInputView()Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    move-result-object v1

    .line 1647
    .local v1, parentView:Landroid/view/View;
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v7, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->x:I

    iget v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    .line 1649
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v7, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    iget v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    .line 1654
    :goto_1
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    const/16 v8, 0x53

    iget v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    iget v10, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    invoke-virtual {v7, v1, v8, v9, v10}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 1655
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    .line 1657
    iput-boolean v11, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    .line 1658
    iput-boolean v11, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbNoResponse:Z

    .line 1660
    invoke-virtual {p0, v11}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dimSoftKeyboard(Z)V

    .line 1661
    const-wide/16 v7, 0x0

    invoke-direct {p0, v7, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    goto/16 :goto_0

    .line 1652
    .end local v1           #parentView:Landroid/view/View;
    :cond_7
    move-object v1, p0

    .restart local v1       #parentView:Landroid/view/View;
    goto :goto_1
.end method

.method private resetKeyPress(J)V
    .locals 1
    .parameter "delay"

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->removeTimer()Z

    .line 1689
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v0, :cond_0

    .line 1690
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->resetKeyPress(J)V

    .line 1692
    :cond_0
    return-void
.end method

.method private responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 1
    .parameter "sKey"

    .prologue
    .line 1466
    if-nez p1, :cond_0

    .line 1468
    :goto_0
    return-void

    .line 1467
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v0, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/SamsungIME;->responseSoftKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto :goto_0
.end method

.method private showLatestSymBalloon(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;)V
    .locals 17
    .parameter "tv"

    .prologue
    .line 2197
    const/4 v1, 0x2

    new-array v10, v1, [I

    .line 2198
    .local v10, hintLocationToSkbContainer:[I
    const/4 v14, 0x0

    .line 2199
    .local v14, softkeyBoard:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v9

    .line 2201
    .local v9, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    if-eqz v1, :cond_0

    if-eqz v9, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeyViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 2249
    :cond_0
    :goto_0
    return-void

    .line 2209
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v14

    .line 2210
    invoke-direct/range {p0 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getCoordinatesToSKB(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;)[I

    move-result-object v15

    .line 2211
    .local v15, tvCoordinatesToSKB:[I
    invoke-virtual {v14}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getBalloonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 2212
    .local v8, balloonBg:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v1, v8}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2213
    invoke-virtual {v14}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeyViews()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->getKeyType()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getBalloonAttr(I)Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;

    move-result-object v13

    .line 2215
    .local v13, softKeyBalloonAttr:Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v1, v2, :cond_2

    .line 2216
    invoke-virtual {v9}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCoreHeight()I

    move-result v12

    .line 2220
    .local v12, skbHeight:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3fa66666

    mul-float/2addr v1, v2

    float-to-int v6, v1

    .line 2221
    .local v6, desired_width:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->getSymBalloonHeight()F

    move-result v1

    int-to-float v2, v12

    mul-float/2addr v1, v2

    float-to-int v7, v1

    .line 2222
    .local v7, desired_height:I
    iget v1, v13, Lcom/samsung/inputmethod/comm/SimeEnvironment$SoftKeyBalloon;->textSize:I

    int-to-float v3, v1

    .line 2223
    .local v3, textSize:F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v16, 0x7f08002c

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual/range {v1 .. v7}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonConfig(Ljava/lang/String;FZIII)V

    .line 2228
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPaddingLeft:I

    const/4 v4, 0x0

    aget v4, v15, v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getWidth()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v2, v4

    aput v2, v10, v1

    .line 2230
    const/4 v1, 0x0

    aget v2, v10, v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mOffsetToSkbTVContainer:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    add-int/2addr v2, v4

    aput v2, v10, v1

    .line 2232
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPaddingTop:I

    const/4 v4, 0x1

    aget v4, v15, v4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getHeight()I

    move-result v4

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->getBallonDistanceFromButton()I

    move-result v4

    sub-int/2addr v2, v4

    aput v2, v10, v1

    .line 2234
    const/4 v1, 0x1

    aget v2, v10, v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mOffsetToSkbTVContainer:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    add-int/2addr v2, v4

    aput v2, v10, v1

    .line 2236
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v11, Lcom/samsung/inputmethod/SamsungIME;

    .line 2237
    .local v11, ime:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v1, v2, :cond_3

    .line 2238
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v11}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getDummyInputView()Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setParentView(Landroid/view/View;)V

    .line 2239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setInScreen(Z)V

    .line 2240
    const/4 v1, 0x0

    aget v2, v10, v1

    invoke-virtual {v11}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v4

    aput v2, v10, v1

    .line 2241
    const/4 v1, 0x1

    aget v2, v10, v1

    invoke-virtual {v9}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v4

    invoke-virtual {v11}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getFloatingAnchorLocation()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v9}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v16

    add-int v5, v5, v16

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    aput v2, v10, v1

    .line 2248
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v10, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->showBalloon(Lcom/samsung/inputmethod/comm/SimeBalloonHint;[IZ)V

    goto/16 :goto_0

    .line 2218
    .end local v3           #textSize:F
    .end local v6           #desired_width:I
    .end local v7           #desired_height:I
    .end local v11           #ime:Lcom/samsung/inputmethod/SamsungIME;
    .end local v12           #skbHeight:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbCoreHeight(I)I

    move-result v12

    .restart local v12       #skbHeight:I
    goto/16 :goto_1

    .line 2245
    .restart local v3       #textSize:F
    .restart local v6       #desired_width:I
    .restart local v7       #desired_height:I
    .restart local v11       #ime:Lcom/samsung/inputmethod/SamsungIME;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v11}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setParentView(Landroid/view/View;)V

    .line 2246
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setInScreen(Z)V

    goto :goto_2
.end method

.method private showSymbScrollView(ZLcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;)V
    .locals 5
    .parameter "isShown"
    .parameter "viewInfo"

    .prologue
    .line 2547
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_TAB_SYMBOL:Z

    if-eqz v0, :cond_2

    .line 2548
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    if-nez v0, :cond_0

    .line 2549
    const v0, 0x7f0c005f

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    .line 2551
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->setTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2554
    :cond_0
    if-eqz p1, :cond_3

    .line 2555
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSymbHistoryList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->initialize(Ljava/util/ArrayList;)V

    .line 2557
    if-eqz p2, :cond_1

    .line 2559
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    iget v1, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewLeft:I

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTop:I

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->setContentPosition(II)V

    .line 2562
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    iget v1, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewRowHeight:I

    iget v2, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewRowMargin:I

    iget v3, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTextWidth:I

    iget v4, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTextMargin:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->setRowInfo(IIII)V

    .line 2565
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    iget v1, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTextWidth:I

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v1, v1, 0x6

    iget v2, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTextMargin:I

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v2, v2, 0x5

    add-int/2addr v1, v2

    iget v2, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewLeft:I

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingLeft()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->setViewWidth(I)V

    .line 2569
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    iget v1, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewRowHeight:I

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v1, v1, 0x3

    iget v2, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewRowMargin:I

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTop:I

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->setViewHeight(I)V

    .line 2574
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    iget v1, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mBalloonWidth:F

    iget v2, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mBalloonHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->setBalloonSize(FF)V

    .line 2575
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    iget v1, p2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTextSize:I

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->setTextSize(I)V

    .line 2580
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    const v1, 0xf000

    and-int/2addr v0, v1

    sparse-switch v0, :sswitch_data_0

    .line 2598
    :cond_2
    :goto_0
    return-void

    .line 2583
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->showPage(I)Z

    goto :goto_0

    .line 2586
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->showPage(I)Z

    goto :goto_0

    .line 2589
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->showPage(I)Z

    goto :goto_0

    .line 2595
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSymScrollView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbScrollView;->setVisibility(I)V

    goto :goto_0

    .line 2580
    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
        0x3000 -> :sswitch_2
    .end sparse-switch
.end method

.method private toggleDivstateForCandidate(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;Z)Z
    .locals 3
    .parameter "skb"
    .parameter "candidatesShowing"

    .prologue
    const/4 v1, 0x0

    .line 383
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseText()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isCangjieMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQuickCangjieMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 395
    :cond_0
    :goto_0
    return v1

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getTooggleStateForCnCand()I

    move-result v0

    .line 388
    .local v0, stateCand:I
    if-nez p2, :cond_2

    .line 389
    invoke-virtual {p1, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->disableToggleState(IZ)V

    .line 390
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;)V

    .line 395
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 392
    :cond_2
    invoke-virtual {p1, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleState(IZ)V

    goto :goto_1
.end method

.method private toggleEnterstateForCandidate(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;Z)Z
    .locals 4
    .parameter "skb"
    .parameter "candidatesShowing"

    .prologue
    const/4 v2, 0x0

    .line 358
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseText()Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 378
    :cond_0
    :goto_0
    return v0

    .line 361
    :cond_1
    const/4 v0, 0x0

    .line 363
    .local v0, bRet:Z
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStateForEnter()I

    move-result v1

    .line 365
    .local v1, stateEnter:I
    if-eqz v1, :cond_0

    .line 367
    if-nez p2, :cond_2

    .line 368
    invoke-virtual {p1, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleState(IZ)V

    .line 369
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    .line 375
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 372
    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->disableToggleState(IZ)V

    .line 373
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    goto :goto_1
.end method

.method private toggleTonestateForCandidate(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;Z)Z
    .locals 4
    .parameter "skb"
    .parameter "candidatesShowing"

    .prologue
    const/4 v3, 0x0

    .line 341
    const/4 v0, 0x0

    .line 343
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStateForZhuyinTone()I

    move-result v1

    .line 345
    .local v1, stateTone:I
    if-nez p2, :cond_0

    .line 347
    invoke-virtual {p1, v1, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->disableToggleState(IZ)V

    .line 348
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;)V

    .line 353
    :goto_0
    return v0

    .line 350
    :cond_0
    invoke-virtual {p1, v1, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleState(IZ)V

    goto :goto_0
.end method

.method private upEvent(Landroid/view/MotionEvent;II)Z
    .locals 5
    .parameter "event"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1767
    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    if-nez v2, :cond_0

    .line 1768
    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    .line 1770
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    if-eqz v2, :cond_1

    .line 1771
    const-wide/16 v1, 0x0

    invoke-direct {p0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    .line 1832
    :goto_0
    return v0

    .line 1774
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->finishPointing()V

    .line 1779
    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWaitForTouchUp:Z

    .line 1782
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MMKEY_HOLDANDRELEASE:Z

    if-eqz v2, :cond_6

    .line 1783
    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eqz v2, :cond_2

    .line 1784
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopupSkb()V

    .line 1798
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v2, :cond_4

    .line 1799
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v3, v3, v0

    sub-int v3, p2, v3

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aget v4, v4, v1

    sub-int v4, p3, v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->onKeyRelease(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 1803
    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbNoResponse:Z

    if-nez v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isDisable()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->isConditionCheck(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1809
    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isNeedRespoonseKeyRelease:Z

    if-eqz v2, :cond_4

    .line 1813
    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_8

    .line 1816
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->shiftActionHandlerForMultiTouch(Z)V

    .line 1825
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    if-eqz v2, :cond_5

    .line 1826
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setLongPressed(Z)V

    .line 1829
    :cond_5
    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbNoResponse:Z

    move v0, v1

    .line 1832
    goto :goto_0

    .line 1787
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbNoResponse:Z

    if-nez v2, :cond_7

    .line 1788
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopupSkb()V

    .line 1791
    :cond_7
    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-nez v2, :cond_2

    .line 1792
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopupSkb()V

    goto :goto_1

    .line 1819
    :cond_8
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto :goto_2
.end method

.method private updateSkbLayout()V
    .locals 13

    .prologue
    const v12, 0x7f040010

    const v11, 0x7f04000e

    const v10, 0x7f04000d

    const v1, 0x7f04000c

    const/4 v9, 0x0

    .line 537
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    if-nez v2, :cond_0

    .line 538
    const v2, 0x7f0c0058

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ViewFlipper;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    .line 540
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-nez v2, :cond_1

    .line 541
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v2, v9}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    .line 542
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setService(Landroid/inputmethodservice/InputMethodService;)V

    .line 546
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v5, :cond_3

    .line 547
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0032

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v6, v2

    .line 548
    .local v6, leftPadding:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0033

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v8, v2

    .line 549
    .local v8, rightPadding:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v2, v5

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    sub-int/2addr v2, v6

    sub-int v3, v2, v8

    .line 551
    .local v3, skbWidth:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getOneHandCoreHeight(I)I

    move-result v4

    .line 565
    .local v4, skbHeight:I
    :goto_0
    const/4 v7, 0x0

    .line 566
    .local v7, majorSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;

    move-result-object v0

    .line 568
    .local v0, skbPool:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbLayout:I

    packed-switch v2, :pswitch_data_0

    .line 1239
    :goto_1
    :pswitch_0
    if-eqz v7, :cond_2

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v1, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setSoftKeyboard(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1245
    :cond_2
    :goto_2
    return-void

    .line 552
    .end local v0           #skbPool:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;
    .end local v3           #skbWidth:I
    .end local v4           #skbHeight:I
    .end local v6           #leftPadding:I
    .end local v7           #majorSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    .end local v8           #rightPadding:I
    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v5, :cond_4

    .line 553
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0056

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v6, v2

    .line 554
    .restart local v6       #leftPadding:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f0a0057

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v8, v2

    .line 555
    .restart local v8       #rightPadding:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v2

    sub-int/2addr v2, v6

    sub-int v3, v2, v8

    .line 556
    .restart local v3       #skbWidth:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCoreHeight()I

    move-result v4

    .restart local v4       #skbHeight:I
    goto :goto_0

    .line 558
    .end local v3           #skbWidth:I
    .end local v4           #skbHeight:I
    .end local v6           #leftPadding:I
    .end local v8           #rightPadding:I
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingLeft()I

    move-result v6

    .line 559
    .restart local v6       #leftPadding:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingRight()I

    move-result v8

    .line 560
    .restart local v8       #rightPadding:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    sub-int/2addr v2, v6

    sub-int v3, v2, v8

    .line 561
    .restart local v3       #skbWidth:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v5

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbCoreHeight(I)I

    move-result v4

    .restart local v4       #skbHeight:I
    goto :goto_0

    .line 570
    .restart local v0       #skbPool:Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;
    .restart local v7       #majorSkb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    :pswitch_1
    const v1, 0x7f040046

    const v2, 0x7f040046

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 572
    goto :goto_1

    .line 574
    :pswitch_2
    const v1, 0x7f040049

    const v2, 0x7f040049

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 576
    goto :goto_1

    .line 578
    :pswitch_3
    const v1, 0x7f04003c

    const v2, 0x7f04003c

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 580
    goto/16 :goto_1

    .line 582
    :pswitch_4
    const v1, 0x7f04003d

    const v2, 0x7f04003d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 584
    goto/16 :goto_1

    .line 586
    :pswitch_5
    const v1, 0x7f040027

    const v2, 0x7f040027

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 588
    goto/16 :goto_1

    .line 590
    :pswitch_6
    const v1, 0x7f040028

    const v2, 0x7f040028

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 592
    goto/16 :goto_1

    .line 594
    :pswitch_7
    const v1, 0x7f04001a

    const v2, 0x7f04001a

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 596
    goto/16 :goto_1

    .line 598
    :pswitch_8
    const v1, 0x7f04001b

    const v2, 0x7f04001b

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 600
    goto/16 :goto_1

    .line 618
    :pswitch_9
    const v1, 0x7f04001e

    const v2, 0x7f04001e

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 620
    goto/16 :goto_1

    .line 622
    :pswitch_a
    const v1, 0x7f04001f

    const v2, 0x7f04001f

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 624
    goto/16 :goto_1

    .line 626
    :pswitch_b
    const v1, 0x7f04003e

    const v2, 0x7f04003e

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 628
    goto/16 :goto_1

    .line 630
    :pswitch_c
    const v1, 0x7f040042

    const v2, 0x7f040042

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 632
    goto/16 :goto_1

    .line 634
    :pswitch_d
    const v1, 0x7f040029

    const v2, 0x7f040029

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 636
    goto/16 :goto_1

    .line 640
    :pswitch_e
    const v1, 0x7f040043

    const v2, 0x7f040043

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 642
    goto/16 :goto_1

    .line 644
    :pswitch_f
    const v1, 0x7f040044

    const v2, 0x7f040044

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 646
    goto/16 :goto_1

    .line 648
    :pswitch_10
    const v1, 0x7f040040

    const v2, 0x7f040040

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 650
    goto/16 :goto_1

    .line 652
    :pswitch_11
    const v1, 0x7f040041

    const v2, 0x7f040041

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 654
    goto/16 :goto_1

    .line 656
    :pswitch_12
    const v1, 0x7f040045

    const v2, 0x7f040045

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 658
    goto/16 :goto_1

    .line 660
    :pswitch_13
    const v1, 0x7f04002c

    const v2, 0x7f04002c

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 662
    goto/16 :goto_1

    .line 664
    :pswitch_14
    const v1, 0x7f04002d

    const v2, 0x7f04002d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 666
    goto/16 :goto_1

    .line 668
    :pswitch_15
    const v1, 0x7f04002e

    const v2, 0x7f04002e

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 670
    goto/16 :goto_1

    .line 672
    :pswitch_16
    const v1, 0x7f040052

    const v2, 0x7f040052

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 674
    goto/16 :goto_1

    .line 676
    :pswitch_17
    const v1, 0x7f040055

    const v2, 0x7f040055

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 678
    goto/16 :goto_1

    .line 680
    :pswitch_18
    const v1, 0x7f040066

    const v2, 0x7f040066

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 682
    goto/16 :goto_1

    .line 684
    :pswitch_19
    const v1, 0x7f040069

    const v2, 0x7f040069

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 686
    goto/16 :goto_1

    .line 688
    :pswitch_1a
    const v1, 0x7f040053

    const v2, 0x7f040053

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 690
    goto/16 :goto_1

    .line 692
    :pswitch_1b
    const v1, 0x7f040054

    const v2, 0x7f040054

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 694
    goto/16 :goto_1

    .line 696
    :pswitch_1c
    const v1, 0x7f040067

    const v2, 0x7f040067

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 698
    goto/16 :goto_1

    .line 700
    :pswitch_1d
    const v1, 0x7f040068

    const v2, 0x7f040068

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 702
    goto/16 :goto_1

    .line 704
    :pswitch_1e
    const v1, 0x7f040011

    const v2, 0x7f040011

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 706
    goto/16 :goto_1

    .line 708
    :pswitch_1f
    const v1, 0x7f040012

    const v2, 0x7f040012

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 710
    goto/16 :goto_1

    .line 713
    :pswitch_20
    const v1, 0x7f040024

    const v2, 0x7f040024

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 715
    goto/16 :goto_1

    .line 717
    :pswitch_21
    const v1, 0x7f040025

    const v2, 0x7f040025

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 719
    goto/16 :goto_1

    .line 722
    :pswitch_22
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 724
    goto/16 :goto_1

    .line 726
    :pswitch_23
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    move v1, v12

    move v2, v12

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 728
    goto/16 :goto_1

    .line 730
    :pswitch_24
    const v1, 0x7f040013

    const v2, 0x7f040013

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 732
    goto/16 :goto_1

    .line 734
    :pswitch_25
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    move v1, v10

    move v2, v10

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 736
    goto/16 :goto_1

    .line 738
    :pswitch_26
    const v1, 0x7f040048

    const v2, 0x7f040048

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 740
    goto/16 :goto_1

    .line 742
    :pswitch_27
    const v1, 0x7f040047

    const v2, 0x7f040047

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 744
    goto/16 :goto_1

    .line 746
    :pswitch_28
    const v1, 0x7f0400a6

    const v2, 0x7f0400a6

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 748
    goto/16 :goto_1

    .line 750
    :pswitch_29
    const v1, 0x7f0400aa

    const v2, 0x7f0400aa

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 752
    goto/16 :goto_1

    .line 754
    :pswitch_2a
    const v1, 0x7f0400a7

    const v2, 0x7f0400a7

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 756
    goto/16 :goto_1

    .line 762
    :pswitch_2b
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    move v1, v11

    move v2, v11

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 764
    goto/16 :goto_1

    .line 766
    :pswitch_2c
    const v1, 0x7f0400a8

    const v2, 0x7f0400a8

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 768
    goto/16 :goto_1

    .line 771
    :pswitch_2d
    const v1, 0x7f04002b

    const v2, 0x7f04002b

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 773
    goto/16 :goto_1

    .line 783
    :pswitch_2e
    const v1, 0x7f040017

    const v2, 0x7f040017

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 785
    goto/16 :goto_1

    .line 787
    :pswitch_2f
    const v1, 0x7f040019

    const v2, 0x7f040019

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 789
    goto/16 :goto_1

    .line 791
    :pswitch_30
    const v1, 0x7f04004a

    const v2, 0x7f04004a

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 793
    goto/16 :goto_1

    .line 795
    :pswitch_31
    const v1, 0x7f040051

    const v2, 0x7f040051

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 797
    goto/16 :goto_1

    .line 799
    :pswitch_32
    const v1, 0x7f040060

    const v2, 0x7f040060

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 801
    goto/16 :goto_1

    .line 803
    :pswitch_33
    const v1, 0x7f040065

    const v2, 0x7f040065

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 805
    goto/16 :goto_1

    .line 807
    :pswitch_34
    const v1, 0x7f040074

    const v2, 0x7f040074

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 809
    goto/16 :goto_1

    .line 811
    :pswitch_35
    const v1, 0x7f040082

    const v2, 0x7f040082

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 813
    goto/16 :goto_1

    .line 815
    :pswitch_36
    const v1, 0x7f040077

    const v2, 0x7f040077

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 817
    goto/16 :goto_1

    .line 819
    :pswitch_37
    const v1, 0x7f040087

    const v2, 0x7f040087

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 821
    goto/16 :goto_1

    .line 839
    :pswitch_38
    const v1, 0x7f040020

    const v2, 0x7f040020

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 841
    goto/16 :goto_1

    .line 843
    :pswitch_39
    const v1, 0x7f040023

    const v2, 0x7f040023

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 845
    goto/16 :goto_1

    .line 847
    :pswitch_3a
    const v1, 0x7f040021

    const v2, 0x7f040021

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 849
    goto/16 :goto_1

    .line 851
    :pswitch_3b
    const v1, 0x7f040022

    const v2, 0x7f040022

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 853
    goto/16 :goto_1

    .line 890
    :pswitch_3c
    const v1, 0x7f04002f

    const v2, 0x7f04002f

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 892
    goto/16 :goto_1

    .line 894
    :pswitch_3d
    const v1, 0x7f04004b

    const v2, 0x7f04004b

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 896
    goto/16 :goto_1

    .line 898
    :pswitch_3e
    const v1, 0x7f040061

    const v2, 0x7f040061

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 900
    goto/16 :goto_1

    .line 902
    :pswitch_3f
    const v1, 0x7f040075

    const v2, 0x7f040075

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 904
    goto/16 :goto_1

    .line 906
    :pswitch_40
    const v1, 0x7f040083

    const v2, 0x7f040083

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 908
    goto/16 :goto_1

    .line 910
    :pswitch_41
    const v1, 0x7f04008a

    const v2, 0x7f04008a

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 912
    goto/16 :goto_1

    .line 914
    :pswitch_42
    const v1, 0x7f040090

    const v2, 0x7f040090

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 916
    goto/16 :goto_1

    .line 922
    :pswitch_43
    const v1, 0x7f040030

    const v2, 0x7f040030

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 924
    goto/16 :goto_1

    .line 926
    :pswitch_44
    const v1, 0x7f04004d

    const v2, 0x7f04004d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 928
    goto/16 :goto_1

    .line 930
    :pswitch_45
    const v1, 0x7f040062

    const v2, 0x7f040062

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 932
    goto/16 :goto_1

    .line 934
    :pswitch_46
    const v1, 0x7f040076

    const v2, 0x7f040076

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 936
    goto/16 :goto_1

    .line 938
    :pswitch_47
    const v1, 0x7f040085

    const v2, 0x7f040085

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 940
    goto/16 :goto_1

    .line 942
    :pswitch_48
    const v1, 0x7f04008c

    const v2, 0x7f04008c

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 944
    goto/16 :goto_1

    .line 946
    :pswitch_49
    const v1, 0x7f040091

    const v2, 0x7f040091

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 948
    goto/16 :goto_1

    .line 950
    :pswitch_4a
    const v1, 0x7f04005e

    const v2, 0x7f04005e

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 952
    goto/16 :goto_1

    .line 954
    :pswitch_4b
    const v1, 0x7f040072

    const v2, 0x7f040072

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 956
    goto/16 :goto_1

    .line 958
    :pswitch_4c
    const v1, 0x7f040080

    const v2, 0x7f040080

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 960
    goto/16 :goto_1

    .line 962
    :pswitch_4d
    const v1, 0x7f040088

    const v2, 0x7f040088

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 964
    goto/16 :goto_1

    .line 966
    :pswitch_4e
    const v1, 0x7f04008e

    const v2, 0x7f04008e

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 968
    goto/16 :goto_1

    .line 970
    :pswitch_4f
    const v1, 0x7f04005f

    const v2, 0x7f04005f

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 972
    goto/16 :goto_1

    .line 974
    :pswitch_50
    const v1, 0x7f040073

    const v2, 0x7f040073

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 976
    goto/16 :goto_1

    .line 978
    :pswitch_51
    const v1, 0x7f040081

    const v2, 0x7f040081

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 980
    goto/16 :goto_1

    .line 982
    :pswitch_52
    const v1, 0x7f040089

    const v2, 0x7f040089

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 984
    goto/16 :goto_1

    .line 986
    :pswitch_53
    const v1, 0x7f04008f

    const v2, 0x7f04008f

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 988
    goto/16 :goto_1

    .line 991
    :pswitch_54
    const v1, 0x7f040056

    const v2, 0x7f040056

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 993
    goto/16 :goto_1

    .line 995
    :pswitch_55
    const v1, 0x7f04006a

    const v2, 0x7f04006a

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 997
    goto/16 :goto_1

    .line 999
    :pswitch_56
    const v1, 0x7f040078

    const v2, 0x7f040078

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1001
    goto/16 :goto_1

    .line 1003
    :pswitch_57
    const v1, 0x7f040057

    const v2, 0x7f040057

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1006
    goto/16 :goto_1

    .line 1008
    :pswitch_58
    const v1, 0x7f04006b

    const v2, 0x7f04006b

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1011
    goto/16 :goto_1

    .line 1013
    :pswitch_59
    const v1, 0x7f040079

    const v2, 0x7f040079

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1016
    goto/16 :goto_1

    .line 1018
    :pswitch_5a
    const v1, 0x7f04005c

    const v2, 0x7f04005c

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1020
    goto/16 :goto_1

    .line 1022
    :pswitch_5b
    const v1, 0x7f040070

    const v2, 0x7f040070

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1024
    goto/16 :goto_1

    .line 1026
    :pswitch_5c
    const v1, 0x7f04007e

    const v2, 0x7f04007e

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1028
    goto/16 :goto_1

    .line 1030
    :pswitch_5d
    const v1, 0x7f04005d

    const v2, 0x7f04005d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1033
    goto/16 :goto_1

    .line 1035
    :pswitch_5e
    const v1, 0x7f040071

    const v2, 0x7f040071

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1038
    goto/16 :goto_1

    .line 1040
    :pswitch_5f
    const v1, 0x7f04007f

    const v2, 0x7f04007f

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1043
    goto/16 :goto_1

    .line 1045
    :pswitch_60
    const v1, 0x7f04005a

    const v2, 0x7f04005a

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1047
    goto/16 :goto_1

    .line 1049
    :pswitch_61
    const v1, 0x7f04006e

    const v2, 0x7f04006e

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1051
    goto/16 :goto_1

    .line 1053
    :pswitch_62
    const v1, 0x7f04007c

    const v2, 0x7f04007c

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1055
    goto/16 :goto_1

    .line 1057
    :pswitch_63
    const v1, 0x7f04005b

    const v2, 0x7f04005b

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1061
    goto/16 :goto_1

    .line 1063
    :pswitch_64
    const v1, 0x7f04006f

    const v2, 0x7f04006f

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1067
    goto/16 :goto_1

    .line 1069
    :pswitch_65
    const v1, 0x7f04007d

    const v2, 0x7f04007d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1073
    goto/16 :goto_1

    .line 1075
    :pswitch_66
    const v1, 0x7f040058

    const v2, 0x7f040058

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1077
    goto/16 :goto_1

    .line 1079
    :pswitch_67
    const v1, 0x7f04006c

    const v2, 0x7f04006c

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1081
    goto/16 :goto_1

    .line 1083
    :pswitch_68
    const v1, 0x7f04007a

    const v2, 0x7f04007a

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1085
    goto/16 :goto_1

    .line 1087
    :pswitch_69
    const v1, 0x7f040059

    const v2, 0x7f040059

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1090
    goto/16 :goto_1

    .line 1092
    :pswitch_6a
    const v1, 0x7f04006d

    const v2, 0x7f04006d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1095
    goto/16 :goto_1

    .line 1097
    :pswitch_6b
    const v1, 0x7f04007b

    const v2, 0x7f04007b

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1100
    goto/16 :goto_1

    .line 1126
    :pswitch_6c
    const v1, 0x7f04001c

    const v2, 0x7f04001c

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1128
    goto/16 :goto_1

    .line 1130
    :pswitch_6d
    const v1, 0x7f04001d

    const v2, 0x7f04001d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1132
    goto/16 :goto_1

    .line 1134
    :pswitch_6e
    const v1, 0x7f0400a3

    const v2, 0x7f0400a3

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1136
    goto/16 :goto_1

    .line 1138
    :pswitch_6f
    const v1, 0x7f0400a5

    const v2, 0x7f0400a5

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1140
    goto/16 :goto_1

    .line 1142
    :pswitch_70
    const v1, 0x7f040034

    const v2, 0x7f040034

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1144
    goto/16 :goto_1

    .line 1146
    :pswitch_71
    const v1, 0x7f040038

    const v2, 0x7f040038

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1148
    goto/16 :goto_1

    .line 1151
    :pswitch_72
    const v1, 0x7f040036

    const v2, 0x7f040036

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1153
    goto/16 :goto_1

    .line 1155
    :pswitch_73
    const v1, 0x7f040037

    const v2, 0x7f040037

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1157
    goto/16 :goto_1

    .line 1160
    :pswitch_74
    const v1, 0x7f040033

    const v2, 0x7f040033

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1162
    goto/16 :goto_1

    .line 1164
    :pswitch_75
    const v1, 0x7f040031

    const v2, 0x7f040031

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1166
    goto/16 :goto_1

    .line 1168
    :pswitch_76
    const v1, 0x7f040032

    const v2, 0x7f040032

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1170
    goto/16 :goto_1

    .line 1175
    :pswitch_77
    const v1, 0x7f0400a2

    const v2, 0x7f0400a2

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1177
    goto/16 :goto_1

    .line 1179
    :pswitch_78
    const v1, 0x7f0400a0

    const v2, 0x7f0400a0

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1181
    goto/16 :goto_1

    .line 1183
    :pswitch_79
    const v1, 0x7f040095

    const v2, 0x7f040095

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1185
    goto/16 :goto_1

    .line 1187
    :pswitch_7a
    const v1, 0x7f040097

    const v2, 0x7f040097

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1189
    goto/16 :goto_1

    .line 1191
    :pswitch_7b
    const v1, 0x7f040099

    const v2, 0x7f040099

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1193
    goto/16 :goto_1

    .line 1195
    :pswitch_7c
    const v1, 0x7f04009b

    const v2, 0x7f04009b

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1197
    goto/16 :goto_1

    .line 1199
    :pswitch_7d
    const v1, 0x7f04009d

    const v2, 0x7f04009d

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1201
    goto/16 :goto_1

    .line 1203
    :pswitch_7e
    const v1, 0x7f04009f

    const v2, 0x7f04009f

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1205
    goto/16 :goto_1

    .line 1207
    :pswitch_7f
    const v1, 0x7f040094

    const v2, 0x7f040094

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1209
    goto/16 :goto_1

    .line 1211
    :pswitch_80
    const v1, 0x7f040096

    const v2, 0x7f040096

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1213
    goto/16 :goto_1

    .line 1215
    :pswitch_81
    const v1, 0x7f040098

    const v2, 0x7f040098

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1217
    goto/16 :goto_1

    .line 1219
    :pswitch_82
    const v1, 0x7f04009a

    const v2, 0x7f04009a

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1221
    goto/16 :goto_1

    .line 1223
    :pswitch_83
    const v1, 0x7f04009c

    const v2, 0x7f04009c

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1225
    goto/16 :goto_1

    .line 1227
    :pswitch_84
    const v1, 0x7f04009e

    const v2, 0x7f04009e

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1229
    goto/16 :goto_1

    .line 1231
    :pswitch_85
    const v1, 0x7f040026

    const v2, 0x7f040026

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getSoftKeyboard(IIIILandroid/content/Context;)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v7

    .line 1233
    goto/16 :goto_1

    .line 1243
    :cond_5
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonOnKey:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v1, v2, v5, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setBalloonHint(Lcom/samsung/inputmethod/comm/SimeBalloonHint;Lcom/samsung/inputmethod/comm/SimeBalloonHint;Z)V

    goto/16 :goto_2

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x7f04000c
        :pswitch_22
        :pswitch_25
        :pswitch_2b
        :pswitch_0
        :pswitch_23
        :pswitch_1e
        :pswitch_1f
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2e
        :pswitch_0
        :pswitch_2f
        :pswitch_7
        :pswitch_8
        :pswitch_6c
        :pswitch_6d
        :pswitch_9
        :pswitch_a
        :pswitch_38
        :pswitch_3a
        :pswitch_3b
        :pswitch_39
        :pswitch_20
        :pswitch_21
        :pswitch_85
        :pswitch_5
        :pswitch_6
        :pswitch_d
        :pswitch_0
        :pswitch_2d
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_3c
        :pswitch_43
        :pswitch_75
        :pswitch_76
        :pswitch_74
        :pswitch_70
        :pswitch_0
        :pswitch_72
        :pswitch_73
        :pswitch_71
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_b
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_1
        :pswitch_27
        :pswitch_26
        :pswitch_2
        :pswitch_30
        :pswitch_3d
        :pswitch_0
        :pswitch_44
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_31
        :pswitch_16
        :pswitch_1a
        :pswitch_1b
        :pswitch_17
        :pswitch_54
        :pswitch_57
        :pswitch_66
        :pswitch_69
        :pswitch_60
        :pswitch_63
        :pswitch_5a
        :pswitch_5d
        :pswitch_4a
        :pswitch_4f
        :pswitch_32
        :pswitch_3e
        :pswitch_45
        :pswitch_0
        :pswitch_0
        :pswitch_33
        :pswitch_18
        :pswitch_1c
        :pswitch_1d
        :pswitch_19
        :pswitch_55
        :pswitch_58
        :pswitch_67
        :pswitch_6a
        :pswitch_61
        :pswitch_64
        :pswitch_5b
        :pswitch_5e
        :pswitch_4b
        :pswitch_50
        :pswitch_34
        :pswitch_3f
        :pswitch_46
        :pswitch_36
        :pswitch_56
        :pswitch_59
        :pswitch_68
        :pswitch_6b
        :pswitch_62
        :pswitch_65
        :pswitch_5c
        :pswitch_5f
        :pswitch_4c
        :pswitch_51
        :pswitch_35
        :pswitch_40
        :pswitch_0
        :pswitch_47
        :pswitch_0
        :pswitch_37
        :pswitch_4d
        :pswitch_52
        :pswitch_41
        :pswitch_0
        :pswitch_48
        :pswitch_0
        :pswitch_4e
        :pswitch_53
        :pswitch_42
        :pswitch_49
        :pswitch_0
        :pswitch_0
        :pswitch_7f
        :pswitch_79
        :pswitch_80
        :pswitch_7a
        :pswitch_81
        :pswitch_7b
        :pswitch_82
        :pswitch_7c
        :pswitch_83
        :pswitch_7d
        :pswitch_84
        :pswitch_7e
        :pswitch_78
        :pswitch_0
        :pswitch_77
        :pswitch_6e
        :pswitch_0
        :pswitch_6f
        :pswitch_28
        :pswitch_2a
        :pswitch_2c
        :pswitch_0
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public PageDown()Z
    .locals 4

    .prologue
    .line 1278
    const/4 v0, 0x1

    .line 1279
    .local v0, bRet:Z
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1282
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1303
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 1286
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_1
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getOutLeftAnimation()Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    .line 1292
    .local v2, outLeftLoc:Landroid/view/animation/TranslateAnimation;
    if-eqz v2, :cond_2

    .line 1293
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v2}, Landroid/widget/ViewFlipper;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    move v1, v0

    .line 1303
    .restart local v1       #bRet:I
    goto :goto_0
.end method

.method public PageUp()Z
    .locals 4

    .prologue
    .line 1311
    const/4 v0, 0x1

    .line 1312
    .local v0, bRet:Z
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1315
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1335
    .end local v0           #bRet:Z
    .local v1, bRet:I
    :goto_0
    return v1

    .line 1323
    .end local v1           #bRet:I
    .restart local v0       #bRet:Z
    :cond_1
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getoutRightAnimation()Landroid/view/animation/TranslateAnimation;

    move-result-object v2

    .line 1325
    .local v2, outRightLoc:Landroid/view/animation/TranslateAnimation;
    if-eqz v2, :cond_2

    .line 1326
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3, v2}, Landroid/widget/ViewFlipper;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    move v1, v0

    .line 1335
    .restart local v1       #bRet:I
    goto :goto_0
.end method

.method public actionPointing(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 2601
    const/4 v0, 0x0

    .line 2602
    .local v0, direction:I
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->checkNeedMove(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2604
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2605
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->getDirectionX(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->onDownKeyEvent(I)V

    .line 2609
    :cond_0
    :goto_0
    return-void

    .line 2606
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2607
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->getDirectionY(Landroid/view/MotionEvent;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->onDownKeyEvent(I)V

    goto :goto_0
.end method

.method public checkIsMultiTouchState()Z
    .locals 1

    .prologue
    .line 2473
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    return v0
.end method

.method public dimSoftKeyboard(Z)V
    .locals 1
    .parameter "dimSkb"

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v0, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->dimSoftKeyboard(Z)V

    .line 1668
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    .line 1670
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->dimScrollView(Z)V

    .line 1671
    return-void
.end method

.method public dismissPopupSkb()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1674
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1675
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->dismissBalloonHint()V

    .line 1678
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    aput v2, v0, v2

    .line 1679
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkvPosInContainer:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    .line 1681
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    .line 1682
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dimSoftKeyboard(Z)V

    .line 1683
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    .line 1684
    return-void
.end method

.method public dismissPopups()V
    .locals 2

    .prologue
    .line 1706
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->handleBack(Z)Z

    .line 1707
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    .line 1708
    return-void
.end method

.method public getMajorView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    return-object v0
.end method

.method public getPopupSkbStatus()Z
    .locals 1

    .prologue
    .line 311
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    return v0
.end method

.method public getRepeatCount()I
    .locals 1

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLongPressTimer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$LongPressTimer;->getResponseTimes()I

    move-result v0

    return v0
.end method

.method public handleBack(Z)Z
    .locals 2
    .parameter "realAction"

    .prologue
    const/4 v0, 0x1

    .line 1695
    iget-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-eqz v1, :cond_1

    .line 1696
    if-nez p1, :cond_0

    .line 1702
    :goto_0
    return v0

    .line 1698
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopupSkb()V

    .line 1699
    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    goto :goto_0

    .line 1702
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Landroid/inputmethodservice/InputMethodService;Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 2
    .parameter "service"
    .parameter "inputModeSwitcher"

    .prologue
    .line 1261
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->setService(Landroid/inputmethodservice/InputMethodService;)V

    .line 1262
    invoke-virtual {p0, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 1263
    const v0, 0x7f0c0058

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    .line 1264
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    .line 1265
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 1266
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setService(Landroid/inputmethodservice/InputMethodService;)V

    .line 1268
    const v0, 0x7f0c005b

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

    .line 1269
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->initialize(Landroid/inputmethodservice/InputMethodService;)V

    .line 1271
    return-void
.end method

.method public isCurrentSkbSticky()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 331
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-nez v2, :cond_1

    .line 336
    :cond_0
    :goto_0
    return v1

    .line 332
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v0

    .line 333
    .local v0, skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    if-eqz v0, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getStickyFlag()Z

    move-result v1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1712
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 1718
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1719
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v0, Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getInstance(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->onInputModeChange(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 1722
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 1726
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 1729
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1731
    .local v5, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v8

    sget-object v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v8, v9, :cond_0

    .line 1732
    const v8, 0x7f0a0032

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    .line 1733
    .local v2, leftPadding:I
    const v8, 0x7f0a0033

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    .line 1734
    .local v6, rightPadding:I
    const v8, 0x7f0a0030

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v7, v8

    .line 1736
    .local v7, topPadding:I
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v8

    sub-int/2addr v8, v2

    sub-int v4, v8, v6

    .line 1737
    .local v4, measuredWidth:I
    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getOneHandCoreHeight(I)I

    move-result v8

    add-int v3, v8, v7

    .line 1756
    .end local v2           #leftPadding:I
    .end local v6           #rightPadding:I
    .local v3, measuredHeight:I
    :goto_0
    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1758
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1760
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 1761
    return-void

    .line 1738
    .end local v3           #measuredHeight:I
    .end local v4           #measuredWidth:I
    .end local v7           #topPadding:I
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v8

    sget-object v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v8, v9, :cond_1

    .line 1739
    const v8, 0x7f0a0054

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v7, v8

    .line 1740
    .restart local v7       #topPadding:I
    const v8, 0x7f0a0055

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    .line 1741
    .local v0, bottomPadding:I
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v4

    .line 1742
    .restart local v4       #measuredWidth:I
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCoreHeight()I

    move-result v3

    .line 1743
    .restart local v3       #measuredHeight:I
    add-int v8, v7, v0

    add-int/2addr v3, v8

    goto :goto_0

    .line 1745
    .end local v0           #bottomPadding:I
    .end local v3           #measuredHeight:I
    .end local v4           #measuredWidth:I
    .end local v7           #topPadding:I
    :cond_1
    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingTop()I

    move-result v7

    .line 1746
    .restart local v7       #topPadding:I
    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingBottom()I

    move-result v0

    .line 1747
    .restart local v0       #bottomPadding:I
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v4

    .line 1748
    .restart local v4       #measuredWidth:I
    iget-object v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v8

    invoke-virtual {v1, v8}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbCoreHeight(I)I

    move-result v3

    .line 1749
    .restart local v3       #measuredHeight:I
    add-int v8, v7, v0

    add-int/2addr v3, v8

    goto :goto_0
.end method

.method public onMultiTouchBegin(IIFF)V
    .locals 1
    .parameter "activePointerID"
    .parameter "curPointerID"
    .parameter "posX"
    .parameter "posY"

    .prologue
    .line 2478
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    if-eqz v0, :cond_0

    .line 2479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    .line 2480
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    .line 2483
    return-void
.end method

.method public onMultiTouchFinished(IIFF)V
    .locals 2
    .parameter "activePointerID"
    .parameter "curPointerID"
    .parameter "posX"
    .parameter "posY"

    .prologue
    const/4 v1, 0x0

    .line 2487
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    if-eqz v0, :cond_0

    .line 2491
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbIsMultiTouch:Z

    .line 2492
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    if-eqz v0, :cond_0

    .line 2494
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->shiftActionHandlerForMultiTouch(Z)V

    .line 2495
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mbShiftTouch:Z

    .line 2498
    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    .line 1343
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mWidth:I

    .line 1345
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 22
    .parameter "v"
    .parameter "event"

    .prologue
    .line 2110
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_TAB_SYMBOL:Z

    if-eqz v3, :cond_4

    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;

    if-eqz v3, :cond_4

    move-object/from16 v21, p1

    .line 2112
    check-cast v21, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;

    .line 2113
    .local v21, tv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 2149
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x0

    .line 2159
    .end local v21           #tv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;
    :goto_1
    return v3

    .line 2115
    .restart local v21       #tv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v20

    .line 2116
    .local v20, soundMgr:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    if-eqz v20, :cond_1

    .line 2117
    const/4 v3, 0x5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 2118
    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    .line 2120
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getCharPreview()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2121
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->showLatestSymBalloon(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;)V

    goto :goto_0

    .line 2123
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    goto :goto_0

    .line 2127
    .end local v20           #soundMgr:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    :pswitch_2
    invoke-virtual/range {v21 .. v21}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2128
    .local v4, label:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3

    .line 2129
    new-instance v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-direct {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;-><init>()V

    .line 2130
    .local v2, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyAttribute(ILjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 2131
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->responseKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    .line 2134
    .end local v2           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getCharPreview()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2135
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const-wide/16 v5, 0x96

    invoke-virtual {v3, v5, v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    goto :goto_0

    .line 2139
    .end local v4           #label:Ljava/lang/String;
    :pswitch_3
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getCharPreview()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2140
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mBalloonPopup:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const-wide/16 v5, 0x96

    invoke-virtual {v3, v5, v6}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    goto :goto_0

    .line 2152
    .end local v21           #tv:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyTextView;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    int-to-float v10, v10

    add-float/2addr v10, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    int-to-float v11, v11

    add-float/2addr v11, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v13

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v15

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v16

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v18

    invoke-static/range {v5 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v19

    .line 2159
    .local v19, newEv:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    goto/16 :goto_1

    .line 2113
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1841
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1842
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->onTouchEvent(Landroid/view/MotionEvent;Z)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "hoverstate"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 1851
    iput-boolean p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isHover:Z

    .line 1861
    const/16 v3, 0x200

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1862
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYBiasCorrection:I

    .line 1868
    :goto_0
    sget-boolean v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    if-eqz v3, :cond_2

    .line 1869
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_0

    sget-boolean v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->minipopup_touch_outside:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MINIPOPUP_CLOSE_BUTTON_HIDE:Z

    if-eqz v3, :cond_0

    .line 1870
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v3, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 1871
    sput-boolean v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->minipopup_touch_outside:Z

    .line 1905
    :cond_0
    :goto_1
    return v2

    .line 1864
    :cond_1
    iput v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mYBiasCorrection:I

    goto :goto_0

    .line 1876
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    if-eqz v3, :cond_3

    .line 1879
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v3}, Landroid/widget/ViewFlipper;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 1880
    .local v0, ani:Landroid/view/animation/Animation;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1881
    invoke-direct {p0, v6, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    .line 1882
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    goto :goto_1

    .line 1887
    .end local v0           #ani:Landroid/view/animation/Animation;
    :cond_3
    iget-boolean v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbShow:Z

    if-nez v3, :cond_4

    .line 1888
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureDetectorSkb:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1889
    invoke-direct {p0, v6, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->resetKeyPress(J)V

    .line 1890
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mDiscardEvent:Z

    goto :goto_1

    .line 1896
    :cond_4
    const/4 v2, 0x0

    .line 1899
    .local v2, ret:Z
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMultiTouchProcessor:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->processMultiTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1900
    :goto_2
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMultiTouchProcessor:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->hasMoreEvent()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1901
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMultiTouchProcessor:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiTouchProcessor;->getTouchEvent()Landroid/view/MotionEvent;

    move-result-object v1

    .line 1902
    .local v1, newEv:Landroid/view/MotionEvent;
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->onSKBTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_2
.end method

.method public pointingMove(Landroid/view/MotionEvent;I)V
    .locals 4
    .parameter "event"
    .parameter "y"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2612
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->checkPointingCondition()I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPointingOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2613
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->pointing_area:I

    if-ge v0, p2, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v0

    if-ge p2, v0, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_1

    .line 2615
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->actionPointing(Landroid/view/MotionEvent;)V

    .line 2647
    :cond_0
    :goto_0
    return-void

    .line 2617
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    iget v0, v0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->floating_pointing_area:I

    if-ge v0, p2, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_0

    .line 2620
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->actionPointing(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2622
    :cond_2
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_POINTING_KEYBOARD_FEATURE:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->GetSwipeOnKeyboard()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 2623
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->actionPointing(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2624
    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->GetSwipeOnKeyboard()I

    move-result v0

    if-nez v0, :cond_0

    .line 2625
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->checkPointingCondition()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 2626
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    iget v1, v1, Lcom/samsung/inputmethod/comm/SimeGestureListener;->pointing_area:I

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_5

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_5

    .line 2629
    :cond_4
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->actionPointing(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2631
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    iget v1, v1, Lcom/samsung/inputmethod/comm/SimeGestureListener;->floating_pointing_area:I

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_0

    .line 2633
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->actionPointing(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 2636
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->checkPointingCondition()I

    move-result v0

    if-nez v0, :cond_0

    .line 2637
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    iget v1, v1, Lcom/samsung/inputmethod/comm/SimeGestureListener;->pointing_area:I

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_7

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_7

    .line 2639
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->actionPointing(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 2641
    :cond_7
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mGestureListenerSkb:Lcom/samsung/inputmethod/comm/SimeGestureListener;

    iget v1, v1, Lcom/samsung/inputmethod/comm/SimeGestureListener;->floating_pointing_area:I

    sub-int/2addr v0, v1

    if-ge p2, v0, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_0

    .line 2643
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->actionPointing(Landroid/view/MotionEvent;)V

    goto/16 :goto_0
.end method

.method public setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 0
    .parameter "inputModeSwitcher"

    .prologue
    .line 323
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 324
    return-void
.end method

.method public setService(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 314
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    .line 315
    return-void
.end method

.method public shiftActionHandlerForMultiTouch(Z)V
    .locals 2
    .parameter "bDown"

    .prologue
    .line 2427
    if-eqz p1, :cond_5

    .line 2429
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextLowerCaseWithSkb()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextTempUpperCaseWithSkb()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2432
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2433
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1221

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 2437
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode1()V

    .line 2469
    :cond_1
    :goto_1
    return-void

    .line 2435
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1121

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_0

    .line 2441
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextLowerCaseWithSkb()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextTempUpperCaseWithSkb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2444
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1123

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 2445
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode1()V

    goto :goto_1

    .line 2454
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextUpperCaseWithSkb()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2456
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2457
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1211

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 2461
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode1()V

    goto :goto_1

    .line 2459
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1111

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_2

    .line 2463
    :cond_7
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextUpperCaseWithSkb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2464
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1113

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 2465
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode1()V

    goto :goto_1
.end method

.method public startHandwriteAnimation()V
    .locals 2

    .prologue
    .line 1250
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getinLeftAnimation()Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 1252
    .local v0, inLeftLoc:Landroid/view/animation/TranslateAnimation;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1253
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1255
    :cond_0
    return-void
.end method

.method public toggleCandidateMode(Z)V
    .locals 3
    .parameter "candidatesShowing"

    .prologue
    .line 400
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLastCandidatesShowing:Z

    if-ne v2, p1, :cond_1

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v1

    .line 404
    .local v1, skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    if-eqz v1, :cond_0

    .line 406
    const/4 v0, 0x0

    .line 408
    .local v0, bRet:Z
    invoke-direct {p0, v1, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleDivstateForCandidate(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;Z)Z

    move-result v0

    .line 409
    invoke-direct {p0, v1, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleTonestateForCandidate(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 410
    invoke-direct {p0, v1, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleEnterstateForCandidate(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;Z)Z

    move-result v2

    or-int/2addr v0, v2

    .line 412
    if-eqz v0, :cond_0

    .line 413
    iput-boolean p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLastCandidatesShowing:Z

    .line 414
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    goto :goto_0
.end method

.method public update(Z)V
    .locals 1
    .parameter "force"

    .prologue
    .line 2100
    if-eqz p1, :cond_0

    .line 2101
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbLayout:I

    .line 2102
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 2106
    :goto_0
    return-void

    .line 2104
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_0
.end method

.method public updateInputMode()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 421
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbLayout()I

    move-result v4

    .line 423
    .local v4, skbLayout:I
    iput v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbLayout:I

    .line 424
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateSkbLayout()V

    .line 426
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->requestLayout()V

    .line 428
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v6, Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->updateConfigDecoder()V

    .line 430
    iput-boolean v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLastCandidatesShowing:Z

    .line 432
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-nez v6, :cond_1

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v3

    .line 435
    .local v3, skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    if-eqz v3, :cond_0

    .line 436
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;)V

    .line 437
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    .line 439
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 440
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mService:Landroid/inputmethodservice/InputMethodService;

    check-cast v6, Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v6}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getInstance(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->onInputModeChange(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 444
    :cond_2
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SCROLLABLE_34_SYMBOL:Z

    if-eqz v6, :cond_4

    .line 446
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChinese34Keyboard()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglish34Keyboard()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKorean34Keyboard()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNum34Keyboard()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 448
    :cond_3
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->requestLayout()V

    .line 449
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

    invoke-virtual {v6, v8}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->setVisibility(I)V

    .line 456
    :cond_4
    :goto_1
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_TAB_SYMBOL:Z

    if-eqz v6, :cond_0

    .line 457
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isLatestSym()Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeyViews()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 461
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeyXMargin()I

    move-result v1

    .line 462
    .local v1, keyXMargin:I
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeyYMargin()I

    move-result v2

    .line 463
    .local v2, keyYMargin:I
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeyViews()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;

    .line 465
    .local v0, keyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mLeft:I

    add-int/2addr v6, v1

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->setKeyStartX(I)V

    .line 466
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mTop:I

    add-int/2addr v6, v2

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->setKeyStartY(I)V

    .line 467
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mRight:I

    sub-int/2addr v6, v1

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->setKeyRight(I)V

    .line 468
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mBottom:I

    sub-int/2addr v6, v2

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->setKeyBottom(I)V

    .line 469
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mRight:I

    sub-int/2addr v6, v1

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mLeft:I

    add-int/2addr v7, v1

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->setKeyWidth(I)V

    .line 470
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mBottom:I

    sub-int/2addr v6, v2

    iget v7, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mTop:I

    add-int/2addr v7, v2

    sub-int/2addr v6, v7

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->setKeyHeight(I)V

    .line 472
    new-instance v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;

    invoke-direct {v5, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;)V

    .line 473
    .local v5, viewInfo:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;
    if-eqz v0, :cond_5

    .line 474
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewLeft:I

    iput v6, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewLeft:I

    .line 475
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewTop:I

    iput v6, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTop:I

    .line 476
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewRight:I

    iput v6, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewRight:I

    .line 477
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewBottom:I

    iput v6, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewBottom:I

    .line 479
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewWidth:I

    iput v6, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewWidth:I

    .line 480
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mKeyViewHeight:I

    iput v6, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewHeight:I

    .line 481
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mRowHeight:I

    iput v6, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewRowHeight:I

    .line 482
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mRowMargin:I

    iput v6, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewRowMargin:I

    .line 483
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mTextWidth:I

    iput v6, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTextWidth:I

    .line 484
    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mTextMargin:I

    iput v6, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTextMargin:I

    .line 485
    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->getBalloonWidthValue()F

    move-result v6

    iput v6, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mBalloonWidth:F

    .line 486
    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->getBalloonHeightValue()F

    move-result v6

    iput v6, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mBalloonHeight:F

    .line 487
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->getKeyType()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getFontSizeByType(I)I

    move-result v6

    iput v6, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;->mKeyViewTextSize:I

    .line 490
    :cond_5
    const/4 v6, 0x1

    invoke-direct {p0, v6, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->showSymbScrollView(ZLcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;)V

    goto/16 :goto_0

    .line 452
    .end local v0           #keyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    .end local v1           #keyXMargin:I
    .end local v2           #keyYMargin:I
    .end local v5           #viewInfo:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;
    :cond_6
    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mScrollView:Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeCandVerSymbolContainer;->setVisibility(I)V

    goto/16 :goto_1

    .line 494
    :cond_7
    const/4 v6, 0x0

    invoke-direct {p0, v8, v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->showSymbScrollView(ZLcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer$keyViewInfo;)V

    goto/16 :goto_0
.end method

.method public updateInputMode1()V
    .locals 3

    .prologue
    .line 503
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbLayout()I

    move-result v1

    .line 504
    .local v1, skbLayout:I
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbLayout:I

    if-eq v2, v1, :cond_0

    .line 505
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSkbLayout:I

    .line 506
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateSkbLayout()V

    .line 508
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->requestLayout()V

    .line 512
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mLastCandidatesShowing:Z

    .line 514
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    if-nez v2, :cond_2

    .line 521
    :cond_1
    :goto_0
    return-void

    .line 516
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v0

    .line 517
    .local v0, skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    if-eqz v0, :cond_1

    .line 518
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;)V

    .line 519
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    goto :goto_0
.end method

.method public updateInputMode2()V
    .locals 2

    .prologue
    .line 525
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v0

    .line 526
    .local v0, skb:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
    if-nez v0, :cond_0

    .line 529
    :goto_0
    return-void

    .line 527
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;)V

    .line 528
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mMajorView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->invalidateAll()V

    goto :goto_0
.end method

.method public updatePopupSymbolsLocation(II)V
    .locals 8
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    .line 1533
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1571
    :cond_0
    :goto_0
    return-void

    .line 1537
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWidth()I

    move-result v1

    .line 1538
    .local v1, skbContainerWidth:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v0

    .line 1540
    .local v0, skbContainerHeight:I
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_0

    .line 1541
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLeft()I

    move-result v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    .line 1542
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v3

    sub-int v3, v0, v3

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkbView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    .line 1545
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v1, :cond_2

    .line 1551
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v3

    sub-int v3, v1, v3

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    .line 1554
    :cond_2
    move v2, v0

    .line 1555
    .local v2, standardHeight:I
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1556
    mul-int/lit8 v2, v0, 0x2

    .line 1559
    :cond_3
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v2, :cond_4

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyTop()I

    move-result v3

    int-to-float v3, v3

    int-to-float v4, v0

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 1562
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    sub-int v3, v2, v3

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mSoftKeyDown:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->height()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    .line 1565
    :cond_4
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    .line 1566
    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    add-int/2addr v3, p2

    iput v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    .line 1568
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupX:I

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupY:I

    iget-object v6, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->mPopupSkb:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/PopupWindow;->update(IIII)V

    goto/16 :goto_0
.end method
