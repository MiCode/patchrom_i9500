.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$SaveState;,
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"


# instance fields
.field private AREA_THRESHOLD:F

.field private mCurrLenBeforeSqrt:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureInProgress:Z

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mPrevLenBeforeSqrt:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private final mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

.field private mUpdatePrevious:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    .line 140
    const v1, 0x45bb8000

    iput v1, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    .line 141
    new-instance v1, Landroid/view/ScaleGestureDetector$SaveState;

    invoke-direct {v1, p0}, Landroid/view/ScaleGestureDetector$SaveState;-><init>(Landroid/view/ScaleGestureDetector;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    .line 166
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 169
    :try_start_0
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 170
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 171
    iget v1, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    .end local v0           #displayMetrics:Landroid/util/DisplayMetrics;
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getArea(Landroid/view/MotionEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, bInitialized:Z
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    invoke-virtual {v5}, Landroid/view/ScaleGestureDetector$SaveState;->reset()V

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 234
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_5

    .line 236
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 237
    .local v3, x:F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    .line 239
    .local v4, y:F
    if-eqz v0, :cond_4

    .line 240
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    cmpl-float v5, v5, v3

    if-lez v5, :cond_0

    .line 241
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v3, v5, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    .line 243
    :cond_0
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    cmpl-float v5, v5, v4

    if-lez v5, :cond_1

    .line 244
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v4, v5, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    .line 246
    :cond_1
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    cmpg-float v5, v5, v3

    if-gez v5, :cond_2

    .line 247
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v3, v5, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    .line 249
    :cond_2
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v5, v5, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    cmpg-float v5, v5, v4

    if-gez v5, :cond_3

    .line 250
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v4, v5, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    .line 260
    :cond_3
    :goto_1
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->focusX:F

    add-float/2addr v6, v3

    iput v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->focusX:F

    .line 261
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->focusY:F

    add-float/2addr v6, v4

    iput v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->focusY:F

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_4
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v3, v5, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    .line 254
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v3, v5, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    .line 255
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v4, v5, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    .line 256
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iput v4, v5, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    .line 257
    const/4 v0, 0x1

    goto :goto_1

    .line 264
    .end local v3           #x:F
    .end local v4           #y:F
    :cond_5
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->focusX:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->focusX:F

    .line 265
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->focusY:F

    int-to-float v7, v1

    div-float/2addr v6, v7

    iput v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->focusY:F

    .line 267
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->maxX:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minX:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffX:F

    .line 268
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->maxY:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->minY:F

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffY:F

    .line 270
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    iput-wide v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->mTimeStamp:J

    .line 272
    iget-object v5, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-object v6, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v6, v6, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffX:F

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffX:F

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v7, v7, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffY:F

    iget-object v8, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v8, v8, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffY:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    .line 274
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 278
    return-void
.end method


# virtual methods
.method public getAreaRateThreshold()F
    .locals 1

    .prologue
    .line 426
    const/high16 v0, 0x3f80

    return v0
.end method

.method public getAreaThreshold()F
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    return v0
.end method

.method public getCurrentSpan()F
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getEnableEdgeZoom()Z
    .locals 1

    .prologue
    .line 430
    const/4 v0, 0x0

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 411
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 307
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    .prologue
    .line 362
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 372
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    return v0
.end method

.method public getScaleFactor()F
    .locals 2

    .prologue
    .line 392
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iget v1, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    div-float/2addr v0, v1

    invoke-static {v0}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method public getTimeDelta()J
    .locals 4

    .prologue
    .line 402
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isEdgeZoomInProgress()Z
    .locals 1

    .prologue
    .line 292
    const/4 v0, 0x0

    return v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 285
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 181
    .local v0, action:I
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    if-nez v1, :cond_3

    .line 182
    if-eq v0, v3, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 183
    :cond_0
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    .line 224
    :cond_1
    :goto_0
    return v3

    .line 185
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    .line 186
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iget v2, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 187
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffX:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 188
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffY:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 189
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-wide v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mTimeStamp:J

    iput-wide v1, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v1, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .line 190
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    .line 192
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->focusX:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 193
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->focusY:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 194
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mGestureInProgress:Z

    .line 195
    const-string v1, "ScaleGestureDetector"

    const-string v2, "TwScaleGestureDetector"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 200
    invoke-direct {p0, p1}, Landroid/view/ScaleGestureDetector;->getArea(Landroid/view/MotionEvent;)V

    .line 201
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-lez v1, :cond_1

    .line 202
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffX:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 203
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mFingerDiffY:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 204
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mLenBeforeSqrt:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    .line 205
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget-wide v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->mTimeStamp:J

    iput-wide v1, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    .line 207
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->focusX:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 208
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->focusY:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 209
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    .line 210
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mUpdatePrevious:Z

    if-eqz v1, :cond_1

    .line 211
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 212
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 213
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mCurrLenBeforeSqrt:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mPrevLenBeforeSqrt:F

    .line 214
    iget-wide v1, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iput-wide v1, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    goto/16 :goto_0

    .line 217
    :cond_4
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->focusX:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 218
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mStateCurrent:Landroid/view/ScaleGestureDetector$SaveState;

    iget v1, v1, Landroid/view/ScaleGestureDetector$SaveState;->focusY:F

    iput v1, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 219
    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    invoke-interface {v1, p0}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 220
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->reset()V

    goto/16 :goto_0
.end method

.method public setAreaRateThreshold(F)V
    .locals 0
    .parameter "areaRate"

    .prologue
    .line 423
    return-void
.end method

.method public setAreaThreshold(F)V
    .locals 0
    .parameter "threshold"

    .prologue
    .line 415
    iput p1, p0, Landroid/view/ScaleGestureDetector;->AREA_THRESHOLD:F

    .line 416
    return-void
.end method

.method public setEnableEdgeZoom(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 434
    return-void
.end method
