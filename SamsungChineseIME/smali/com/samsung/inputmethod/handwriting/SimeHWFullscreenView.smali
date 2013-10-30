.class public Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;
.super Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;
.source "SimeHWFullscreenView.java"


# static fields
.field protected static final DEBUG:Z = false

.field private static final DELIVER_TOUCH_DOWN_EVENT:I = 0x2

.field private static final DELIVER_TOUCH_UP_EVENT:I = 0x3

.field private static final INTENT_HANDWRITE_EVENT:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LONGPRESS_TIMEOUT:I = 0x0

.field private static final LONG_TOUCH_TIME_OUT:I = 0x5

.field private static final NATIVE_LONGPRESS_TIMEOUT:I = 0x3e8

.field private static final SET_NOT_TOUCHABLE:I = 0x0

.field private static final SET_NOT_TOUCHABLE_LONG:I = 0x1

.field private static final SET_TOUCHABLE:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "HandwriteFullScreenView"

.field private static final TAP_TIMEOUT:I


# instance fields
.field private RawX:F

.field private RawY:F

.field evDown:Landroid/view/MotionEvent;

.field evUp:Landroid/view/MotionEvent;

.field private isLongPressed:Z

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mHandler:Landroid/os/Handler;

.field protected mIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->LONGPRESS_TIMEOUT:I

    .line 82
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->TAP_TIMEOUT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "samsunghandwrite"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mIntent:Landroid/content/Intent;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->isLongPressed:Z

    .line 96
    iput v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->RawX:F

    .line 97
    iput v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->RawY:F

    .line 163
    new-instance v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;-><init>(Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mHandler:Landroid/os/Handler;

    .line 67
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->MAX_MOVE_COUNT:I

    .line 70
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Landroid/content/Intent;

    const-string v1, "samsunghandwrite"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mIntent:Landroid/content/Intent;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->isLongPressed:Z

    .line 96
    iput v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->RawX:F

    .line 97
    iput v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->RawY:F

    .line 163
    new-instance v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView$1;-><init>(Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mHandler:Landroid/os/Handler;

    .line 76
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->MAX_MOVE_COUNT:I

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->isLongPressed:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->isLongPressed:Z

    return p1
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 59
    sget v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->TAP_TIMEOUT:I

    return v0
.end method


# virtual methods
.method protected createLineGradient()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 378
    iget-boolean v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mIsLineGradient:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 379
    new-array v8, v11, [I

    .line 380
    .local v8, pt:[I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->getWidth()I

    move-result v0

    aput v0, v8, v9

    .line 381
    aget v0, v8, v9

    if-nez v0, :cond_1

    .line 392
    .end local v8           #pt:[I
    :cond_0
    :goto_0
    return-void

    .line 384
    .restart local v8       #pt:[I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->getHeight()I

    move-result v0

    aput v0, v8, v10

    .line 385
    new-instance v0, Landroid/graphics/LinearGradient;

    aget v1, v8, v9

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    const/4 v2, 0x0

    aget v3, v8, v9

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aget v4, v8, v10

    int-to-float v4, v4

    const/4 v5, 0x3

    new-array v5, v5, [I

    iget-object v7, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mLineGradientColors:[I

    aget v7, v7, v9

    aput v7, v5, v9

    iget-object v7, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mLineGradientColors:[I

    aget v7, v7, v10

    aput v7, v5, v10

    iget-object v7, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mLineGradientColors:[I

    aget v7, v7, v11

    aput v7, v5, v11

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mlineGradient:Landroid/graphics/LinearGradient;

    .line 390
    .end local v8           #pt:[I
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mIsLineGradient:Z

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mlineGradient:Landroid/graphics/LinearGradient;

    :cond_3
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x1

    .line 121
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_ACCESSIBILITY_FEATURE:Z

    if-eqz v3, :cond_2

    .line 122
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/samsung/inputmethod/SamsungIME;

    .line 124
    .local v2, ime:Lcom/samsung/inputmethod/SamsungIME;
    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    if-ne v3, v7, :cond_0

    .line 125
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 126
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 145
    .end local v0           #action:I
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->x:I

    .line 146
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->y:I

    .line 148
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 149
    .local v1, ev:Landroid/view/MotionEvent;
    iget v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->y:I

    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getRealWindowHeight()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 151
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getMajorView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 153
    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getMajorView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getAccessibilityViewId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->setAccessibilityViewId(I)V

    .line 157
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/SamsungIME;->dispatchTouchEventFromPalette(Landroid/view/MotionEvent;)V

    .line 159
    .end local v1           #ev:Landroid/view/MotionEvent;
    .end local v2           #ime:Lcom/samsung/inputmethod/SamsungIME;
    :cond_2
    return v7

    .line 128
    .restart local v0       #action:I
    .restart local v2       #ime:Lcom/samsung/inputmethod/SamsungIME;
    :pswitch_1
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 131
    :pswitch_2
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 137
    :pswitch_3
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v3, 0x4000

    .line 232
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 233
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    .line 234
    .local v2, measuredWidth:I
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v1

    .line 235
    .local v1, measuredHeight:I
    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 237
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 239
    invoke-super {p0, p1, p2}, Lcom/samsung/inputmethod/handwriting/SimeHWBeautifyView;->onMeasure(II)V

    .line 240
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19
    .parameter "me"

    .prologue
    .line 244
    sget-boolean v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    if-eqz v1, :cond_1

    .line 246
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget-boolean v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->minipopup_touch_outside:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MINIPOPUP_CLOSE_BUTTON_HIDE:Z

    if-eqz v1, :cond_0

    .line 247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->cancelMiniPopupWindow()V

    .line 248
    const/4 v1, 0x0

    sput-boolean v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->minipopup_touch_outside:Z

    .line 250
    :cond_0
    const/4 v1, 0x1

    .line 373
    :goto_0
    return v1

    .line 253
    :cond_1
    const/4 v1, 0x1

    new-array v7, v1, [Landroid/view/MotionEvent$PointerProperties;

    .line 254
    .local v7, properties:[Landroid/view/MotionEvent$PointerProperties;
    const/4 v1, 0x0

    new-instance v2, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v2, v7, v1

    .line 256
    const/4 v1, 0x1

    new-array v8, v1, [Landroid/view/MotionEvent$PointerCoords;

    .line 257
    .local v8, coords:[Landroid/view/MotionEvent$PointerCoords;
    const/4 v1, 0x0

    new-instance v2, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v2}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v2, v8, v1

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->x:I

    .line 260
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->y:I

    .line 263
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->isStartWriting:Z

    if-nez v1, :cond_2

    .line 264
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->getHeight()I

    move-result v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentWindowHeight()I

    move-result v2

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->writable_y:I

    .line 266
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 267
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->y:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->writable_y:I

    if-le v1, v2, :cond_3

    .line 268
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->isHandwriting:Z

    .line 274
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->isStartWriting:Z

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->isHandwriting:Z

    if-nez v1, :cond_4

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->clear()V

    .line 276
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v18

    .line 277
    .local v18, ev:Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->x:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getRealWindowHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/SamsungIME;->dispatchTouchEventFromPalette(Landroid/view/MotionEvent;)V

    .line 373
    .end local v18           #ev:Landroid/view/MotionEvent;
    :goto_2
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 270
    :cond_3
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->isHandwriting:Z

    goto :goto_1

    .line 280
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getPopupSkbStatus()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    .line 285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopupSkb()V

    .line 286
    :cond_5
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 289
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 291
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->RawX:F

    .line 292
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->RawY:F

    .line 294
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->isLongPressed:Z

    .line 296
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->RawX:F

    .line 297
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->RawY:F

    .line 299
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, v7, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 301
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, v8, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 303
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->RawX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->RawY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->evDown:Landroid/view/MotionEvent;

    .line 307
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 308
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v3

    sget v5, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->TAP_TIMEOUT:I

    sget v6, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->LONGPRESS_TIMEOUT:I

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 309
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->isStartWriting:Z

    if-nez v1, :cond_7

    .line 310
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->isStartWriting:Z

    .line 312
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->touch_down()V

    goto/16 :goto_2

    .line 317
    :pswitch_1
    sget-short v1, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->stroke_count:S

    sget v2, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->MAX_MOVE_COUNT:I

    if-le v1, v2, :cond_8

    .line 318
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/sec/clipboard/ClipboardExManager;

    .line 321
    .local v17, clipEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-virtual/range {v17 .. v17}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 322
    invoke-virtual/range {v17 .. v17}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 325
    .end local v17           #clipEx:Landroid/sec/clipboard/ClipboardExManager;
    :cond_8
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->touch_move(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 328
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 330
    sget-short v1, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->stroke_count:S

    sget v2, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->MAX_MOVE_COUNT:I

    if-ge v1, v2, :cond_d

    .line 331
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->x:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->orgX:I

    if-le v1, v2, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->x:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->orgX:I

    sub-int/2addr v1, v2

    :goto_3
    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->orgDx:I

    .line 332
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->y:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->orgY:I

    if-le v1, v2, :cond_b

    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->y:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->orgY:I

    sub-int/2addr v1, v2

    :goto_4
    move-object/from16 v0, p0

    iput v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->orgDy:I

    .line 333
    sget-short v1, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->stroke_count:S

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->orgDx:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->orgDy:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-short v1, v1

    sput-short v1, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->stroke_count:S

    .line 334
    sget-short v1, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->stroke_count:S

    sget v2, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->MAX_MOVE_COUNT:I

    if-ge v1, v2, :cond_d

    .line 335
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->clear()V

    .line 340
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->isLandscapeFullScreen()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 341
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/SamsungIME;->dispatchExtractViewEvent(Landroid/view/MotionEvent;)V

    .line 358
    :cond_9
    :goto_5
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 331
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->orgX:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->x:I

    sub-int/2addr v1, v2

    goto :goto_3

    .line 332
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->orgY:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->y:I

    sub-int/2addr v1, v2

    goto :goto_4

    .line 344
    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, v7, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 346
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget-object v2, v8, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 348
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->RawX:F

    move-object/from16 v0, p0

    iget v12, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->RawY:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v16

    invoke-static/range {v1 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->evUp:Landroid/view/MotionEvent;

    .line 353
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->evDown:Landroid/view/MotionEvent;

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->evUp:Landroid/view/MotionEvent;

    if-eqz v1, :cond_9

    .line 354
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_5

    .line 361
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->touch_up()V

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->invalidate()V

    goto/16 :goto_2

    .line 366
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->clear()V

    goto/16 :goto_2

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected sendIntentMessage(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "me"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->isLandscapeFullScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/SamsungIME;->dispatchExtractViewEvent(Landroid/view/MotionEvent;)V

    .line 404
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mIntent:Landroid/content/Intent;

    const-string v1, "M"

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 401
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 402
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWFullscreenView;->mIntent:Landroid/content/Intent;

    const-string v1, "M"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto :goto_0
.end method
