.class public Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;
.super Landroid/view/View;
.source "SimeHWTransparentView.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static MAX_MOVE_COUNT:I = 0x0

.field protected static final TAG:Ljava/lang/String; = "SimeHWTransparentView"

.field protected static final TOUCH_PARAM:I = 0x14

.field protected static final TOUCH_TOLERANCE:I = 0x6

.field protected static isBeautify:I

.field protected static mSegmentOriginalPath:Landroid/graphics/Path;

.field protected static mSegmentPaint:Landroid/graphics/Paint;

.field protected static orginalRect:Landroid/graphics/Rect;

.field protected static strokeRect:Landroid/graphics/Rect;

.field protected static stroke_count:S

.field protected static updateTime:I

.field protected static watingTime:I


# instance fields
.field private SpeedMax:F

.field private SpeedMin:F

.field private VELOCITY_FILTER_WEIGHT:F

.field protected bButtonDown:Z

.field private bInitWidthVarRatio:Z

.field private currentEndPoint:Landroid/graphics/Point;

.field private currentWidth:F

.field private fmXBezier:I

.field private fmYBezier:I

.field protected isHandwriting:Z

.field protected isStartWriting:Z

.field private lastDrawPoint:Landroid/graphics/Point;

.field private lastPointTime:J

.field private lastVelocity:F

.field private lastWidth:F

.field protected mBeautifyPointData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mCanvas:Landroid/graphics/Canvas;

.field protected mContext:Landroid/content/Context;

.field public mIsBlur:Z

.field public mIsEmboss:Z

.field public mIsLineGradient:Z

.field protected mLineGradientColors:[I

.field protected mLineProperty:[I

.field protected mLinecolor:I

.field protected mLinewidth:I

.field protected mOldMidX:I

.field protected mOldMidY:I

.field protected mOldX:I

.field protected mOldY:I

.field protected mOneStrokePoint:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mPaint:Landroid/graphics/Paint;

.field protected mPath:Landroid/graphics/Path;

.field protected mPointData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mPrevDeltaX:I

.field protected mPrevDeltaY:I

.field protected mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

.field protected mSmoothPaint:Landroid/graphics/Paint;

.field protected mSmoothPath:Landroid/graphics/Path;

.field protected mSpeed:I

.field protected mStrokeNum:I

.field protected mTempDrawData:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mX:I

.field protected mY:I

.field private midControlPoint:Landroid/graphics/Point;

.field protected mlineGradient:Landroid/graphics/LinearGradient;

.field protected nBottom:I

.field protected nClipWidth:I

.field protected nColor:I

.field protected nError:I

.field protected nLeft:I

.field protected nRight:I

.field protected nTop:I

.field protected nWidth:I

.field protected orgDx:I

.field protected orgDy:I

.field protected orgX:I

.field protected orgY:I

.field private totalLength:I

.field private totalPointNum:I

.field protected writable_y:I

.field protected x:I

.field protected y:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    const/4 v0, 0x3

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->MAX_MOVE_COUNT:I

    .line 92
    sput v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->isBeautify:I

    .line 124
    sput-short v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->stroke_count:S

    .line 135
    const/16 v0, 0x7d0

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->watingTime:I

    .line 137
    const/16 v0, 0x14

    sput v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->updateTime:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 167
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineProperty:[I

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineGradientColors:[I

    .line 85
    const/high16 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLinecolor:I

    .line 86
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSpeed:I

    .line 90
    iput-boolean v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->bButtonDown:Z

    .line 97
    iput-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBitmap:Landroid/graphics/Bitmap;

    .line 98
    iput-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mCanvas:Landroid/graphics/Canvas;

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mOneStrokePoint:Ljava/util/Vector;

    .line 105
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mTempDrawData:Ljava/util/Vector;

    .line 119
    iput v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nColor:I

    .line 122
    iput-boolean v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->isStartWriting:Z

    .line 126
    iput v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mStrokeNum:I

    .line 128
    iput-boolean v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mIsLineGradient:Z

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mIsEmboss:Z

    .line 130
    iput-boolean v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mIsBlur:Z

    .line 139
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nWidth:I

    .line 140
    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nError:I

    .line 145
    iput v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalLength:I

    .line 146
    iput v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalPointNum:I

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastPointTime:J

    .line 149
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastDrawPoint:Landroid/graphics/Point;

    .line 150
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentEndPoint:Landroid/graphics/Point;

    .line 151
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->midControlPoint:Landroid/graphics/Point;

    .line 154
    iput v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastVelocity:F

    .line 155
    iput v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastWidth:F

    .line 156
    iput v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentWidth:F

    .line 157
    iput-boolean v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->bInitWidthVarRatio:Z

    .line 158
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->VELOCITY_FILTER_WEIGHT:F

    .line 160
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->SpeedMax:F

    .line 161
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->SpeedMin:F

    .line 168
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->initView()V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 172
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    .line 76
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineProperty:[I

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineGradientColors:[I

    .line 85
    const/high16 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLinecolor:I

    .line 86
    const/16 v0, 0x2bc

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSpeed:I

    .line 90
    iput-boolean v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->bButtonDown:Z

    .line 97
    iput-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBitmap:Landroid/graphics/Bitmap;

    .line 98
    iput-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mCanvas:Landroid/graphics/Canvas;

    .line 103
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mOneStrokePoint:Ljava/util/Vector;

    .line 105
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mTempDrawData:Ljava/util/Vector;

    .line 119
    iput v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nColor:I

    .line 122
    iput-boolean v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->isStartWriting:Z

    .line 126
    iput v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mStrokeNum:I

    .line 128
    iput-boolean v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mIsLineGradient:Z

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mIsEmboss:Z

    .line 130
    iput-boolean v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mIsBlur:Z

    .line 139
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nWidth:I

    .line 140
    const/16 v0, 0x3c

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nError:I

    .line 145
    iput v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalLength:I

    .line 146
    iput v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalPointNum:I

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastPointTime:J

    .line 149
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastDrawPoint:Landroid/graphics/Point;

    .line 150
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentEndPoint:Landroid/graphics/Point;

    .line 151
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->midControlPoint:Landroid/graphics/Point;

    .line 154
    iput v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastVelocity:F

    .line 155
    iput v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastWidth:F

    .line 156
    iput v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentWidth:F

    .line 157
    iput-boolean v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->bInitWidthVarRatio:Z

    .line 158
    const v0, 0x3e4ccccd

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->VELOCITY_FILTER_WEIGHT:F

    .line 160
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->SpeedMax:F

    .line 161
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->SpeedMin:F

    .line 173
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->initView()V

    .line 174
    return-void
.end method

.method private distanceTo(Landroid/graphics/Point;)F
    .locals 4
    .parameter "end"

    .prologue
    .line 765
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastDrawPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastDrawPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastDrawPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastDrawPoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private drawDefBeautifyPaint(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 14
    .parameter "canvas"
    .parameter "paint"
    .parameter "startWidth"
    .parameter "endWidth"

    .prologue
    .line 798
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    .line 799
    .local v3, originalWidth:F
    sub-float v8, p4, p3

    .line 801
    .local v8, widthDelta:F
    iget-object v11, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->midControlPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastDrawPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget-object v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->midControlPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    iget-object v13, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastDrawPoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v1, v11

    .line 802
    .local v1, drawSteps:F
    iget-object v11, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->midControlPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    iget-object v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentEndPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    sub-int/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget-object v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->midControlPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    iget-object v13, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentEndPoint:Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->y:I

    sub-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    add-float/2addr v1, v11

    .line 803
    const/high16 v11, 0x3f00

    add-float/2addr v1, v11

    .line 804
    const-string v11, "SimeHWTransparentView"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " draw points ....step is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " startWidth is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " endWidth is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    float-to-int v11, v1

    if-ge v2, v11, :cond_1

    .line 808
    int-to-float v11, v2

    div-float v4, v11, v1

    .line 809
    .local v4, t:F
    mul-float v5, v4, v4

    .line 810
    .local v5, tt:F
    const/high16 v11, 0x3f80

    sub-float v6, v11, v4

    .line 811
    .local v6, u:F
    mul-float v7, v6, v6

    .line 813
    .local v7, uu:F
    iget-object v11, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastDrawPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    mul-float v9, v7, v11

    .line 814
    .local v9, x:F
    const/high16 v11, 0x4000

    mul-float/2addr v11, v6

    mul-float/2addr v11, v4

    iget-object v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->midControlPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v9, v11

    .line 815
    iget-object v11, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentEndPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    mul-float/2addr v11, v5

    add-float/2addr v9, v11

    .line 817
    iget-object v11, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastDrawPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    mul-float v10, v7, v11

    .line 818
    .local v10, y:F
    const/high16 v11, 0x4000

    mul-float/2addr v11, v6

    mul-float/2addr v11, v4

    iget-object v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->midControlPoint:Landroid/graphics/Point;

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    .line 819
    iget-object v11, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentEndPoint:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    int-to-float v11, v11

    mul-float/2addr v11, v5

    add-float/2addr v10, v11

    .line 822
    mul-float v11, v4, v8

    add-float v11, v11, p3

    iget v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLinewidth:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_0

    .line 823
    iget v11, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLinewidth:I

    int-to-float v11, v11

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 827
    :goto_1
    move-object/from16 v0, p2

    invoke-virtual {p1, v9, v10, v0}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V

    .line 806
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 825
    :cond_0
    mul-float v11, v4, v8

    add-float v11, v11, p3

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_1

    .line 830
    .end local v4           #t:F
    .end local v5           #tt:F
    .end local v6           #u:F
    .end local v7           #uu:F
    .end local v9           #x:F
    .end local v10           #y:F
    :cond_1
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 831
    return-void
.end method


# virtual methods
.method protected GetStrokeRect(Ljava/util/Vector;)Landroid/graphics/Rect;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .line 296
    .local p1, points:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    return-object v0
.end method

.method protected ModifyOrginalPntWithBezier(IFFFF)V
    .locals 15
    .parameter "nSize"
    .parameter "oldX"
    .parameter "oldY"
    .parameter "newX"
    .parameter "newY"

    .prologue
    .line 302
    const/high16 v10, 0x3f00

    .line 304
    .local v10, middleT:F
    mul-int/lit8 v11, p1, 0x2

    .line 306
    .local v11, nIndex:I
    iget-object v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    add-int/lit8 v13, v11, -0x4

    invoke-virtual {v12, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v4, v12

    .line 307
    .local v4, P0X:F
    iget-object v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    add-int/lit8 v13, v11, -0x3

    invoke-virtual {v12, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v5, v12

    .line 308
    .local v5, P0Y:F
    iget-object v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    add-int/lit8 v13, v11, -0x2

    invoke-virtual {v12, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v6, v12

    .line 309
    .local v6, P1X:F
    iget-object v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    add-int/lit8 v13, v11, -0x1

    invoke-virtual {v12, v13}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v7, v12

    .line 310
    .local v7, P1Y:F
    add-float v12, p4, p2

    const/high16 v13, 0x4000

    div-float v8, v12, v13

    .line 311
    .local v8, P2X:F
    add-float v12, p5, p3

    const/high16 v13, 0x4000

    div-float v9, v12, v13

    .line 313
    .local v9, P2Y:F
    const/high16 v12, 0x3f80

    sub-float/2addr v12, v10

    mul-float/2addr v12, v4

    const/high16 v13, 0x3f80

    sub-float/2addr v13, v10

    mul-float/2addr v12, v13

    const/high16 v13, 0x4000

    mul-float/2addr v13, v6

    mul-float/2addr v13, v10

    const/high16 v14, 0x3f80

    sub-float/2addr v14, v10

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    mul-float v13, v8, v10

    mul-float/2addr v13, v10

    add-float v2, v12, v13

    .line 315
    .local v2, MiddlePointX:F
    const/high16 v12, 0x3f80

    sub-float/2addr v12, v10

    mul-float/2addr v12, v5

    const/high16 v13, 0x3f80

    sub-float/2addr v13, v10

    mul-float/2addr v12, v13

    const/high16 v13, 0x4000

    mul-float/2addr v13, v7

    mul-float/2addr v13, v10

    const/high16 v14, 0x3f80

    sub-float/2addr v14, v10

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    mul-float v13, v9, v10

    mul-float/2addr v13, v10

    add-float v3, v12, v13

    .line 318
    .local v3, MiddlePointY:F
    move v0, v8

    .line 319
    .local v0, EndPointX:F
    move v1, v9

    .line 321
    .local v1, EndPointY:F
    iget-object v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    add-int/lit8 v13, v11, -0x2

    float-to-int v14, v2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 322
    iget-object v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    add-int/lit8 v13, v11, -0x1

    float-to-int v14, v3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 323
    iget-object v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    float-to-int v13, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    float-to-int v13, v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 326
    iget v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalLength:I

    int-to-float v12, v12

    sub-float v13, p4, p2

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    sub-float v14, p5, p3

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    add-float/2addr v13, v14

    add-float/2addr v12, v13

    float-to-int v12, v12

    iput v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalLength:I

    .line 327
    iget v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalLength:I

    const/high16 v13, 0x4

    if-ge v12, v13, :cond_0

    .line 328
    iget v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalPointNum:I

    add-int/lit8 v12, v12, 0x1

    iput v12, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalPointNum:I

    .line 330
    :cond_0
    return-void
.end method

.method public SetPaintAndSegmentPaint()V
    .locals 0

    .prologue
    .line 665
    return-void
.end method

.method public addPointer([I)V
    .locals 2
    .parameter "point"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 705
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 706
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 718
    sput-short v3, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->stroke_count:S

    .line 719
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 720
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 722
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSmoothPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 723
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSmoothPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 725
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSegmentOriginalPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 726
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSegmentOriginalPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 727
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->cancelRecognize(Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;)V

    .line 728
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 731
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 732
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 733
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mOneStrokePoint:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 734
    iput-boolean v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->isStartWriting:Z

    .line 735
    iput v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mStrokeNum:I

    .line 736
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->invalidate()V

    .line 737
    return-void
.end method

.method protected createHWBitmap(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->isHandwriteDefPaintStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    if-lez p1, :cond_1

    if-gtz p2, :cond_2

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    const-string v0, "SimeHWTransparentView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " createHWBitmap ...width is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " height is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBitmap:Landroid/graphics/Bitmap;

    .line 248
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_3

    .line 249
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mCanvas:Landroid/graphics/Canvas;

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 252
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 253
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->updateSetting()V

    goto :goto_0
.end method

.method protected createLineGradient()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 682
    iget-boolean v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mIsLineGradient:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_2

    .line 683
    new-array v8, v11, [I

    .line 684
    .local v8, pt:[I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->getWidth()I

    move-result v0

    aput v0, v8, v9

    .line 685
    aget v0, v8, v9

    if-nez v0, :cond_1

    .line 696
    .end local v8           #pt:[I
    :cond_0
    :goto_0
    return-void

    .line 688
    .restart local v8       #pt:[I
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->getHeight()I

    move-result v0

    aput v0, v8, v10

    .line 689
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

    iget-object v7, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineGradientColors:[I

    aget v7, v7, v9

    aput v7, v5, v9

    iget-object v7, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineGradientColors:[I

    aget v7, v7, v10

    aput v7, v5, v10

    iget-object v7, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineGradientColors:[I

    aget v7, v7, v11

    aput v7, v5, v11

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mlineGradient:Landroid/graphics/LinearGradient;

    .line 694
    .end local v8           #pt:[I
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    iget-boolean v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mIsLineGradient:Z

    if-eqz v1, :cond_3

    iget-object v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mlineGradient:Landroid/graphics/LinearGradient;

    :cond_3
    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 224
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 227
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->isHandwriteDefPaintStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0, v1, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->setHWRect(ZZ)V

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 239
    :cond_1
    :goto_0
    return-void

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public getPointer()[I
    .locals 3

    .prologue
    .line 709
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v0, v2, [I

    .line 710
    .local v0, data:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 711
    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    .line 710
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 714
    :cond_0
    return-object v0
.end method

.method public getStrokeNum()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mStrokeNum:I

    return v0
.end method

.method protected initView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 180
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    .line 181
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    .line 183
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSmoothPath:Landroid/graphics/Path;

    .line 184
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSmoothPaint:Landroid/graphics/Paint;

    .line 186
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSegmentOriginalPath:Landroid/graphics/Path;

    .line 187
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 188
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSegmentPaint:Landroid/graphics/Paint;

    .line 190
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 191
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 193
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 195
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSmoothPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 196
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSmoothPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 197
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSmoothPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 198
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSmoothPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 200
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSegmentPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 201
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSegmentPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 202
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSegmentPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 203
    sget-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSegmentPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 206
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->updateSetting()V

    .line 207
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 208
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 209
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orginalRect:Landroid/graphics/Rect;

    .line 210
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->strokeRect:Landroid/graphics/Rect;

    .line 211
    iput v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mStrokeNum:I

    .line 212
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "me"

    .prologue
    const/4 v1, 0x1

    .line 578
    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    if-eqz v0, :cond_1

    .line 580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    sget-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->minipopup_touch_outside:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_MINIPOPUP_CLOSE_BUTTON_HIDE:Z

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->cancelMiniPopupWindow()V

    .line 582
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->minipopup_touch_outside:Z

    .line 611
    :cond_0
    :goto_0
    return v1

    .line 586
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    .line 587
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    .line 588
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 590
    :pswitch_0
    iget-boolean v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->isStartWriting:Z

    if-nez v0, :cond_2

    .line 591
    iput-boolean v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->isStartWriting:Z

    .line 593
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->touch_down()V

    .line 594
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->invalidate()V

    goto :goto_0

    .line 597
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->touch_move(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 600
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->touch_up()V

    .line 601
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->invalidate()V

    goto :goto_0

    .line 605
    :pswitch_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->clear()V

    goto :goto_0

    .line 588
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setLineColor(I)V
    .locals 0
    .parameter "color"

    .prologue
    .line 760
    iput p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLinecolor:I

    .line 761
    return-void
.end method

.method public setLineWidth(I)V
    .locals 1
    .parameter "line"

    .prologue
    .line 754
    if-lez p1, :cond_0

    const/16 v0, 0x14

    if-gt p1, v0, :cond_0

    .line 755
    iput p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLinewidth:I

    .line 757
    :cond_0
    return-void
.end method

.method public setService(Lcom/samsung/inputmethod/handwriting/SimeHWManager;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 699
    iput-object p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    .line 700
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getIMEService()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mContext:Landroid/content/Context;

    .line 701
    return-void
.end method

.method public setSpeed(I)V
    .locals 1
    .parameter "sp"

    .prologue
    .line 748
    const/16 v0, 0x32

    if-le p1, v0, :cond_0

    const/16 v0, 0x1388

    if-gt p1, v0, :cond_0

    .line 749
    iput p1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSpeed:I

    .line 751
    :cond_0
    return-void
.end method

.method public strokeWidth(F)F
    .locals 8
    .parameter "velocity"

    .prologue
    .line 782
    iget v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x3f80

    mul-float v0, v5, v6

    .line 783
    .local v0, WidthMax:F
    iget v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nWidth:I

    int-to-float v5, v5

    const v6, 0x3dcccccd

    mul-float v1, v5, v6

    .line 788
    .local v1, WidthMin:F
    sub-float v5, v1, v0

    iget v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->SpeedMax:F

    iget v7, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->SpeedMin:F

    sub-float/2addr v6, v7

    div-float v2, v5, v6

    .line 789
    .local v2, a:F
    iget v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->SpeedMin:F

    mul-float/2addr v5, v2

    sub-float v3, v0, v5

    .line 790
    .local v3, b:F
    mul-float v5, v2, p1

    add-float v4, v5, v3

    .line 794
    .local v4, retValue:F
    return v4
.end method

.method protected touch_down()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 259
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->cancelRecognize(Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;)V

    .line 260
    iput v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalPointNum:I

    .line 261
    iput-boolean v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->bButtonDown:Z

    .line 262
    iput-boolean v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->isStartWriting:Z

    .line 263
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSmoothPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 265
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 268
    iget v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    if-ltz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 270
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_0
    iget v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgX:I

    .line 273
    iget v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgY:I

    .line 275
    iget v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalPointNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalPointNum:I

    .line 277
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    int-to-float v1, v1

    iget v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 278
    iget v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    .line 279
    iget v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    .line 281
    iget v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mOldX:I

    .line 282
    iget v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mOldY:I

    .line 284
    iget v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmXBezier:I

    .line 285
    iget v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmYBezier:I

    .line 286
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastDrawPoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 287
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastDrawPoint:Landroid/graphics/Point;

    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 288
    iput v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalLength:I

    .line 289
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastWidth:F

    .line 290
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentWidth:F

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastPointTime:J

    .line 292
    return-void
.end method

.method protected touch_move(Landroid/view/MotionEvent;)V
    .locals 23
    .parameter "me"

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->bButtonDown:Z

    if-nez v2, :cond_1

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    if-gez v2, :cond_2

    .line 337
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    .line 338
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    if-gez v2, :cond_3

    .line 339
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    .line 340
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->getWidth()I

    move-result v4

    if-le v2, v4, :cond_4

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->getWidth()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    .line 342
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->getHeight()I

    move-result v4

    if-le v2, v4, :cond_5

    .line 343
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->getHeight()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    .line 344
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgX:I

    if-le v2, v4, :cond_11

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgX:I

    sub-int/2addr v2, v4

    :goto_1
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgDx:I

    .line 345
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgY:I

    if-le v2, v4, :cond_12

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgY:I

    sub-int/2addr v2, v4

    :goto_2
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgDy:I

    .line 346
    sget-short v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->stroke_count:S

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgDx:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgDy:I

    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    int-to-short v2, v2

    sput-short v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->stroke_count:S

    .line 347
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->isHandwriteDefPaintStyle()Z

    move-result v2

    if-nez v2, :cond_7

    .line 348
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgDx:I

    const/4 v4, 0x6

    if-ge v2, v4, :cond_6

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgDy:I

    const/4 v4, 0x6

    if-lt v2, v4, :cond_13

    .line 349
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgX:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgY:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgX:I

    add-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgY:I

    move/from16 v22, v0

    add-int v7, v7, v22

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 354
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->invalidate()V

    .line 357
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    if-ltz v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    if-ltz v2, :cond_8

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgX:I

    .line 362
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgY:I

    .line 365
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->isHandwriteDefPaintStyle()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v14

    .line 370
    .local v14, event:Landroid/view/MotionEvent;
    const/16 v17, 0x0

    .line 371
    .local v17, nEngineX:I
    const/16 v16, 0x0

    .line 372
    .local v16, nEgnineY:I
    const/4 v12, 0x0

    .line 373
    .local v12, dx:F
    const/4 v13, 0x0

    .line 374
    .local v13, dy:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    div-int/lit8 v19, v2, 0x2

    .line 375
    .local v19, nSizeBeforeAdd:I
    const/16 v18, 0x0

    .line 377
    .local v18, nSizeAfterAdd:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmXBezier:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v12, v2

    .line 378
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmYBezier:I

    sub-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v13, v2

    .line 380
    const/4 v2, 0x0

    cmpl-float v2, v12, v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    cmpl-float v2, v13, v2

    if-eqz v2, :cond_0

    .line 383
    :cond_9
    const/16 v21, 0x0

    .line 384
    .local v21, velocity:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    .line 385
    .local v3, nSize:I
    div-int/lit8 v3, v3, 0x2

    .line 387
    const/high16 v2, 0x40c0

    cmpl-float v2, v12, v2

    if-gez v2, :cond_a

    const/high16 v2, 0x40c0

    cmpl-float v2, v13, v2

    if-ltz v2, :cond_14

    :cond_a
    const/4 v2, 0x2

    if-lt v3, v2, :cond_14

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    .line 389
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmXBezier:I

    add-int/2addr v2, v4

    div-int/lit8 v17, v2, 0x2

    .line 390
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmYBezier:I

    add-int/2addr v2, v4

    div-int/lit8 v16, v2, 0x2

    .line 391
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmXBezier:I

    int-to-float v4, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmYBezier:I

    int-to-float v5, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    int-to-float v6, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    int-to-float v7, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->ModifyOrginalPntWithBezier(IFFFF)V

    .line 393
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmXBezier:I

    .line 394
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmYBezier:I

    .line 411
    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v18

    .line 412
    div-int/lit8 v18, v18, 0x2

    .line 413
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    int-to-float v10, v2

    .line 414
    .local v10, drawmX:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    int-to-float v11, v2

    .line 415
    .local v11, drawmY:F
    const/4 v8, 0x0

    .line 416
    .local v8, drawCurrentX:F
    const/4 v9, 0x0

    .line 417
    .local v9, drawCurrentY:F
    const-string v2, "SimeHWTransparentView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_MOVE  nSizeBeforeAdd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "nSizeAfterAdd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const v2, 0xffff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nLeft:I

    .line 421
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nRight:I

    .line 422
    const v2, 0xffff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nTop:I

    .line 423
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nRight:I

    .line 424
    const-string v2, "SimeHWTransparentView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " nSizeBeforeAdd :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " nSizeAfterAdd :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    move/from16 v15, v19

    .local v15, i:I
    :goto_5
    move/from16 v0, v18

    if-ge v15, v0, :cond_20

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    mul-int/lit8 v4, v15, 0x2

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v8, v2

    .line 428
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    mul-int/lit8 v4, v15, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v9, v2

    .line 429
    sub-float v2, v8, v10

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 430
    sub-float v2, v9, v11

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    .line 432
    const/high16 v2, 0x40c0

    cmpl-float v2, v12, v2

    if-gez v2, :cond_c

    const/high16 v2, 0x40c0

    cmpl-float v2, v13, v2

    if-ltz v2, :cond_16

    .line 433
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentEndPoint:Landroid/graphics/Point;

    add-float v4, v8, v10

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentEndPoint:Landroid/graphics/Point;

    add-float v4, v9, v11

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->midControlPoint:Landroid/graphics/Point;

    float-to-int v4, v10

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->midControlPoint:Landroid/graphics/Point;

    float-to-int v4, v11

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 447
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentEndPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->velocityFrom(Landroid/graphics/Point;)F

    move-result v21

    .line 449
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->VELOCITY_FILTER_WEIGHT:F

    mul-float v2, v2, v21

    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->VELOCITY_FILTER_WEIGHT:F

    sub-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastVelocity:F

    mul-float/2addr v4, v5

    add-float v21, v2, v4

    .line 451
    const-string v2, "SimeHWTransparentView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "speed ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->SpeedMax:F

    cmpl-float v2, v21, v2

    if-lez v2, :cond_d

    .line 454
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->SpeedMax:F

    move/from16 v21, v0

    .line 455
    :cond_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->SpeedMin:F

    cmpg-float v2, v21, v2

    if-gez v2, :cond_e

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->SpeedMin:F

    move/from16 v21, v0

    .line 458
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->strokeWidth(F)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentWidth:F

    .line 459
    const v20, 0x3e4ccccd

    .line 460
    .local v20, varLimit:F
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastWidth:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastWidth:F

    mul-float v4, v4, v20

    cmpl-float v2, v2, v4

    if-lez v2, :cond_f

    .line 461
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastWidth:F

    cmpl-float v2, v2, v4

    if-lez v2, :cond_17

    const/high16 v2, 0x3f80

    add-float v2, v2, v20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastWidth:F

    mul-float/2addr v2, v4

    :goto_7
    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentWidth:F

    .line 465
    :cond_f
    const-string v2, "SimeHWTransparentView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentWidth ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentWidth:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    move v10, v8

    .line 468
    move v11, v9

    .line 470
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nLeft:I

    int-to-float v2, v2

    cmpg-float v2, v8, v2

    if-gez v2, :cond_18

    move v2, v8

    :goto_8
    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nLeft:I

    .line 471
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nLeft:I

    int-to-float v2, v2

    cmpg-float v2, v10, v2

    if-gez v2, :cond_19

    move v2, v10

    :goto_9
    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nLeft:I

    .line 472
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nRight:I

    int-to-float v2, v2

    cmpl-float v2, v8, v2

    if-lez v2, :cond_1a

    move v2, v8

    :goto_a
    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nRight:I

    .line 473
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nRight:I

    int-to-float v2, v2

    cmpl-float v2, v10, v2

    if-lez v2, :cond_1b

    move v2, v10

    :goto_b
    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nRight:I

    .line 474
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nTop:I

    int-to-float v2, v2

    cmpg-float v2, v9, v2

    if-gez v2, :cond_1c

    move v2, v9

    :goto_c
    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nTop:I

    .line 475
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nTop:I

    int-to-float v2, v2

    cmpg-float v2, v11, v2

    if-gez v2, :cond_1d

    move v2, v11

    :goto_d
    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nTop:I

    .line 476
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nBottom:I

    int-to-float v2, v2

    cmpl-float v2, v9, v2

    if-lez v2, :cond_1e

    move v2, v9

    :goto_e
    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nBottom:I

    .line 477
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nBottom:I

    int-to-float v2, v2

    cmpl-float v2, v11, v2

    if-lez v2, :cond_1f

    move v2, v11

    :goto_f
    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nBottom:I

    .line 479
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->bInitWidthVarRatio:Z

    if-nez v2, :cond_10

    .line 480
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentWidth:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastWidth:F

    .line 482
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentWidth:F

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->drawDefBeautifyPaint(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V

    .line 484
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orginalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nLeft:I

    add-int/lit16 v4, v4, -0x104

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nTop:I

    add-int/lit16 v5, v5, -0x104

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nRight:I

    add-int/lit16 v6, v6, 0x104

    move-object/from16 v0, p0

    iget v7, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nBottom:I

    add-int/lit16 v7, v7, 0x104

    invoke-virtual {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 487
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 488
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastDrawPoint:Landroid/graphics/Point;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentEndPoint:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 489
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->bInitWidthVarRatio:Z

    .line 490
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentWidth:F

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastWidth:F

    .line 492
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastVelocity:F

    .line 426
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_5

    .line 344
    .end local v3           #nSize:I
    .end local v8           #drawCurrentX:F
    .end local v9           #drawCurrentY:F
    .end local v10           #drawmX:F
    .end local v11           #drawmY:F
    .end local v12           #dx:F
    .end local v13           #dy:F
    .end local v14           #event:Landroid/view/MotionEvent;
    .end local v15           #i:I
    .end local v16           #nEgnineY:I
    .end local v17           #nEngineX:I
    .end local v18           #nSizeAfterAdd:I
    .end local v19           #nSizeBeforeAdd:I
    .end local v20           #varLimit:F
    .end local v21           #velocity:F
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    sub-int/2addr v2, v4

    goto/16 :goto_1

    .line 345
    :cond_12
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orgY:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    sub-int/2addr v2, v4

    goto/16 :goto_2

    .line 352
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3

    .line 396
    .restart local v3       #nSize:I
    .restart local v12       #dx:F
    .restart local v13       #dy:F
    .restart local v14       #event:Landroid/view/MotionEvent;
    .restart local v16       #nEgnineY:I
    .restart local v17       #nEngineX:I
    .restart local v18       #nSizeAfterAdd:I
    .restart local v19       #nSizeBeforeAdd:I
    .restart local v21       #velocity:F
    :cond_14
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    if-ltz v2, :cond_15

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    if-ltz v2, :cond_15

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 398
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmXBezier:I

    .line 402
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmYBezier:I

    .line 404
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalLength:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmXBezier:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmYBezier:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalLength:I

    .line 405
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalLength:I

    const/high16 v4, 0x4

    if-ge v2, v4, :cond_b

    .line 406
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalPointNum:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalPointNum:I

    goto/16 :goto_4

    .line 439
    .restart local v8       #drawCurrentX:F
    .restart local v9       #drawCurrentY:F
    .restart local v10       #drawmX:F
    .restart local v11       #drawmY:F
    .restart local v15       #i:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentEndPoint:Landroid/graphics/Point;

    float-to-int v4, v8

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->currentEndPoint:Landroid/graphics/Point;

    float-to-int v4, v9

    iput v4, v2, Landroid/graphics/Point;->y:I

    .line 442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->midControlPoint:Landroid/graphics/Point;

    add-float v4, v8, v10

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/graphics/Point;->x:I

    .line 443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->midControlPoint:Landroid/graphics/Point;

    add-float v4, v9, v11

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v2, Landroid/graphics/Point;->y:I

    goto/16 :goto_6

    .line 461
    .restart local v20       #varLimit:F
    :cond_17
    const/high16 v2, 0x3f80

    sub-float v2, v2, v20

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastWidth:F

    mul-float/2addr v2, v4

    goto/16 :goto_7

    .line 470
    :cond_18
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nLeft:I

    int-to-float v2, v2

    goto/16 :goto_8

    .line 471
    :cond_19
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nLeft:I

    int-to-float v2, v2

    goto/16 :goto_9

    .line 472
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nRight:I

    int-to-float v2, v2

    goto/16 :goto_a

    .line 473
    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nRight:I

    int-to-float v2, v2

    goto/16 :goto_b

    .line 474
    :cond_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nTop:I

    int-to-float v2, v2

    goto/16 :goto_c

    .line 475
    :cond_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nTop:I

    int-to-float v2, v2

    goto/16 :goto_d

    .line 476
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nBottom:I

    int-to-float v2, v2

    goto/16 :goto_e

    .line 477
    :cond_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nBottom:I

    int-to-float v2, v2

    goto/16 :goto_f

    .line 495
    .end local v20           #varLimit:F
    :cond_20
    const-string v2, "SimeHWTransparentView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Left = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nLeft:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Right= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nRight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Top = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nTop:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Bot = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nBottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_21

    .line 498
    const-string v2, "SimeHWTransparentView"

    const-string v4, " invalidate(orginalRect) ..."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    sget-object v2, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->orginalRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->invalidate(Landroid/graphics/Rect;)V

    .line 501
    :cond_21
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmXBezier:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    .line 502
    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->fmYBezier:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    goto/16 :goto_0
.end method

.method protected touch_up()V
    .locals 8

    .prologue
    const v7, 0xffff

    const/4 v6, 0x0

    .line 507
    iget v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->totalPointNum:I

    .line 508
    .local v0, finalLength:I
    iput-boolean v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->bInitWidthVarRatio:Z

    .line 509
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    if-gez v1, :cond_0

    .line 510
    iput v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    .line 511
    :cond_0
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    if-gez v1, :cond_1

    .line 512
    iput v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    .line 513
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->getWidth()I

    move-result v2

    if-le v1, v2, :cond_2

    .line 514
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    .line 515
    :cond_2
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_3

    .line 516
    invoke-virtual {p0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    .line 518
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 520
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    if-ltz v1, :cond_4

    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    if-ltz v1, :cond_4

    .line 521
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    iget v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    iget v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPointData:Ljava/util/Vector;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 526
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->isHandwriteDefPaintStyle()Z

    move-result v1

    if-nez v1, :cond_5

    .line 527
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    iget v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSpeed:I

    invoke-virtual {v1, p0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->startRecognize(Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;I)V

    .line 574
    :goto_0
    return-void

    .line 531
    :cond_5
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    iget v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    if-le v1, v2, :cond_6

    .line 533
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    iput v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nLeft:I

    .line 534
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    iput v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nRight:I

    .line 540
    :goto_1
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    iget v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    if-le v1, v2, :cond_7

    .line 542
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    iput v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nTop:I

    .line 543
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    iput v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nBottom:I

    .line 548
    :goto_2
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->strokeRect:Landroid/graphics/Rect;

    iget v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nLeft:I

    add-int/lit16 v2, v2, -0xa0

    iget v3, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nTop:I

    add-int/lit16 v3, v3, -0xa0

    iget v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nRight:I

    add-int/lit16 v4, v4, 0xa0

    iget v5, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nBottom:I

    add-int/lit16 v5, v5, 0xa0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 550
    sget-object v1, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->strokeRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->invalidate(Landroid/graphics/Rect;)V

    .line 553
    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 555
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    mul-int/lit8 v2, v0, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 556
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 564
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 565
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mStrokeNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mStrokeNum:I

    .line 567
    iput v7, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nLeft:I

    .line 568
    iput v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nRight:I

    .line 569
    iput v7, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nTop:I

    .line 570
    iput v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nBottom:I

    .line 571
    iput-boolean v6, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->bButtonDown:Z

    .line 573
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mService:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    iget v2, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mSpeed:I

    invoke-virtual {v1, p0, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->startRecognize(Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;I)V

    goto :goto_0

    .line 537
    :cond_6
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mX:I

    iput v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nLeft:I

    .line 538
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->x:I

    iput v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nRight:I

    goto :goto_1

    .line 545
    :cond_7
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mY:I

    iput v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nTop:I

    .line 546
    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->y:I

    iput v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->nBottom:I

    goto :goto_2

    .line 560
    :cond_8
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mBeautifyPointData:Ljava/util/Vector;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method

.method public updateSetting()V
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineProperty:[I

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->getHandwriteLine([I)V

    .line 670
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineProperty:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->setLineWidth(I)V

    .line 671
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLineProperty:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->setLineColor(I)V

    .line 672
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpeed()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->setSpeed(I)V

    .line 676
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLinewidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 677
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->mLinecolor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 679
    :cond_0
    return-void
.end method

.method public velocityFrom(Landroid/graphics/Point;)F
    .locals 6
    .parameter "end"

    .prologue
    .line 769
    const/4 v0, 0x0

    .line 770
    .local v0, retVal:F
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->distanceTo(Landroid/graphics/Point;)F

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastPointTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/samsung/inputmethod/handwriting/SimeHWTransparentView;->lastPointTime:J

    .line 772
    return v0
.end method
