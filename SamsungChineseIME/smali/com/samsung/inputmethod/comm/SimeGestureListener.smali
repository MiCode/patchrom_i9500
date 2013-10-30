.class public Lcom/samsung/inputmethod/comm/SimeGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SimeGestureListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;,
        Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MIN_X_FOR_DRAG:I = 0x78

.field private static final MIN_Y_FOR_DRAG:I = 0x28

.field private static final SWIPE_THRESHOLD_FACTOR:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "SimeGestureListener"

.field private static final VELOCITY_THRESHOLD_X1:F = 0.2f

.field private static final VELOCITY_THRESHOLD_X2:F = 0.6f

.field private static final VELOCITY_THRESHOLD_Y1:F = 0.1f

.field private static final VELOCITY_THRESHOLD_Y2:F = 0.9f


# instance fields
.field public floating_pointing_area:I

.field private mDirectionGestureHandle:Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;

.field private mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mGestureRecognized:Z

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mMinVelocityX:F

.field private mMinVelocityY:F

.field private mNotGesture:Z

.field private mReponseGestures:Z

.field private mSimeGestureEventSource:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

.field private mTimeDown:J

.field private mTimeLastOnScroll:J

.field public onehand_pointing_area:I

.field public pointing_area:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;)V
    .locals 2
    .parameter "context"
    .parameter "reponseGestures"
    .parameter "eventSource"

    .prologue
    .line 145
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/comm/SimeGestureListener;-><init>(Z)V

    .line 146
    iput-object p3, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mSimeGestureEventSource:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    move-object v0, p1

    .line 147
    check-cast v0, Lcom/samsung/inputmethod/SamsungIME;

    .line 148
    .local v0, ime:Lcom/samsung/inputmethod/SamsungIME;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 149
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/comm/SimeGestureListener;->setPointingArea(Landroid/content/Context;)V

    .line 150
    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "reponseGestures"

    .prologue
    const v0, 0x7f7fffff

    .line 154
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 97
    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mMinVelocityX:F

    .line 100
    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mMinVelocityY:F

    .line 156
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 157
    iput-boolean p1, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mReponseGestures:Z

    .line 158
    return-void
.end method


# virtual methods
.method public checkSweep(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "me1"

    .prologue
    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 379
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->checkPointingCondition()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 380
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_1

    .line 381
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mSimeGestureEventSource:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    sget-object v3, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->SimeSkbKeyboardContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->pointing_area:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 424
    :cond_0
    :goto_0
    return v0

    .line 386
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mSimeGestureEventSource:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    sget-object v3, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->SimeSkbKeyboardContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->floating_pointing_area:I

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_0

    :cond_2
    move v0, v1

    .line 424
    goto :goto_0

    .line 391
    :cond_3
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_POINTING_KEYBOARD_FEATURE:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->GetSwipeOnKeyboard()I

    move-result v2

    if-eq v2, v4, :cond_4

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->GetSwipeOnKeyboard()I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mSimeGestureEventSource:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    sget-object v3, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->SimeSkbKeyboardContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    if-eq v2, v3, :cond_0

    .line 395
    :cond_4
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->GetSwipeOnKeyboard()I

    move-result v2

    if-nez v2, :cond_2

    .line 396
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->checkPointingCondition()I

    move-result v2

    if-nez v2, :cond_6

    .line 397
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_5

    .line 398
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mSimeGestureEventSource:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    sget-object v3, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->SimeSkbKeyboardContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v3

    iget v4, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->pointing_area:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    goto :goto_0

    .line 403
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mSimeGestureEventSource:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    sget-object v3, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->SimeSkbKeyboardContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v3

    iget v4, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->floating_pointing_area:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    goto :goto_0

    .line 409
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->checkPointingCondition()I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 410
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-eq v2, v3, :cond_7

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_8

    .line 411
    :cond_7
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mSimeGestureEventSource:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    sget-object v3, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->SimeSkbKeyboardContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v3

    iget v4, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->pointing_area:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    goto/16 :goto_0

    .line 417
    :cond_8
    iget-object v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mSimeGestureEventSource:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    sget-object v3, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->SimeSkbKeyboardContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    if-ne v2, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v3

    iget v4, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->floating_pointing_area:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    goto/16 :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/high16 v0, 0x4f00

    const/4 v2, 0x0

    .line 169
    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mMinVelocityX:F

    .line 170
    iput v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mMinVelocityY:F

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mTimeDown:J

    .line 172
    iget-wide v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mTimeDown:J

    iput-wide v0, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mTimeLastOnScroll:J

    .line 173
    iput-boolean v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mNotGesture:Z

    .line 174
    iput-boolean v2, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mGestureRecognized:Z

    .line 175
    return v2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11
    .parameter "me1"
    .parameter "me2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 270
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/comm/SimeGestureListener;->checkSweep(Landroid/view/MotionEvent;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 271
    const/4 v8, 0x0

    .line 353
    :goto_0
    return v8

    .line 274
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v8, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    if-nez v8, :cond_2

    .line 276
    :cond_1
    const-string v8, "SimeGestureListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onFling() me1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v8, "SimeGestureListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onFling() me2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-string v8, "SimeGestureListener"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onFling() mEnv: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v8, 0x0

    goto :goto_0

    .line 282
    :cond_2
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 283
    .local v0, absX:F
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 285
    .local v1, absY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float v2, v8, v9

    .line 286
    .local v2, deltaX:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sub-float v3, v8, v9

    .line 288
    .local v3, deltaY:F
    iget-object v8, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v8

    div-int/lit8 v6, v8, 0x2

    .line 289
    .local v6, miniTravelX:I
    iget-object v8, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v8

    div-int/lit8 v7, v8, 0x2

    .line 291
    .local v7, miniTravelY:I
    iget-object v8, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDensity()F

    move-result v4

    .line 293
    .local v4, density:F
    const/4 v8, 0x0

    cmpg-float v8, v4, v8

    if-gtz v8, :cond_3

    .line 294
    const/high16 v4, 0x4000

    .line 297
    :cond_3
    const/high16 v8, 0x43fa

    mul-float/2addr v8, v4

    float-to-int v5, v8

    .line 300
    .local v5, mSwipeThreshold:I
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v8

    sget-object v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v8, v9, :cond_4

    .line 301
    div-int/lit8 v6, v6, 0x2

    .line 304
    :cond_4
    iget-object v8, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mSimeGestureEventSource:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    sget-object v9, Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;->SimeCandHorContainer:Lcom/samsung/inputmethod/comm/SimeGestureListener$SimeGestureEventSource;

    if-ne v8, v9, :cond_5

    .line 305
    div-int/lit8 v6, v6, 0x5

    .line 306
    div-int/lit8 v5, v5, 0x2

    .line 323
    :cond_5
    iget-boolean v8, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mReponseGestures:Z

    if-eqz v8, :cond_9

    .line 324
    int-to-float v8, v5

    cmpl-float v8, p3, v8

    if-lez v8, :cond_6

    cmpg-float v8, v1, v0

    if-gez v8, :cond_6

    int-to-float v8, v6

    cmpl-float v8, v2, v8

    if-lez v8, :cond_6

    .line 329
    iget-object v8, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mDirectionGestureHandle:Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;

    const/4 v9, 0x5

    invoke-interface {v8, v9}, Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;->onDirectionGesture(I)Z

    move-result v8

    goto/16 :goto_0

    .line 331
    :cond_6
    neg-int v8, v5

    int-to-float v8, v8

    cmpg-float v8, p3, v8

    if-gez v8, :cond_7

    cmpg-float v8, v1, v0

    if-gez v8, :cond_7

    neg-int v8, v6

    int-to-float v8, v8

    cmpg-float v8, v2, v8

    if-gez v8, :cond_7

    .line 336
    iget-object v8, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mDirectionGestureHandle:Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;

    const/4 v9, 0x3

    invoke-interface {v8, v9}, Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;->onDirectionGesture(I)Z

    move-result v8

    goto/16 :goto_0

    .line 337
    :cond_7
    neg-int v8, v5

    int-to-float v8, v8

    cmpg-float v8, p4, v8

    if-gez v8, :cond_8

    cmpg-float v8, v0, v1

    if-gez v8, :cond_8

    neg-int v8, v7

    int-to-float v8, v8

    cmpg-float v8, v3, v8

    if-gez v8, :cond_8

    .line 342
    iget-object v8, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mDirectionGestureHandle:Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;

    const/16 v9, 0x30

    invoke-interface {v8, v9}, Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;->onDirectionGesture(I)Z

    move-result v8

    goto/16 :goto_0

    .line 343
    :cond_8
    int-to-float v8, v5

    cmpl-float v8, p4, v8

    if-lez v8, :cond_9

    const/high16 v8, 0x4000

    div-float v8, v1, v8

    cmpg-float v8, v0, v8

    if-gez v8, :cond_9

    int-to-float v8, v7

    cmpl-float v8, v3, v8

    if-lez v8, :cond_9

    .line 348
    iget-object v8, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mDirectionGestureHandle:Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;

    const/16 v9, 0x50

    invoke-interface {v8, v9}, Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;->onDirectionGesture(I)Z

    move-result v8

    goto/16 :goto_0

    .line 353
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public setDirectionGestureHandle(Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;)V
    .locals 0
    .parameter "mHandle"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->mDirectionGestureHandle:Lcom/samsung/inputmethod/comm/SimeGestureListener$DirectionGesture;

    .line 162
    return-void
.end method

.method public setPointingArea(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 428
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 429
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 430
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->pointing_area:I

    .line 438
    :goto_0
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v1, :cond_1

    .line 439
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->floating_pointing_area:I

    .line 445
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a002f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->onehand_pointing_area:I

    .line 464
    :goto_2
    return-void

    .line 434
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->pointing_area:I

    goto :goto_0

    .line 442
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->floating_pointing_area:I

    goto :goto_1

    .line 448
    :cond_2
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v1, :cond_3

    .line 449
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->pointing_area:I

    .line 456
    :goto_3
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_NUM_QWERTY_FEATURE:Z

    if-eqz v1, :cond_4

    .line 457
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->floating_pointing_area:I

    goto :goto_2

    .line 452
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->pointing_area:I

    goto :goto_3

    .line 460
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/samsung/inputmethod/comm/SimeGestureListener;->floating_pointing_area:I

    goto :goto_2
.end method
