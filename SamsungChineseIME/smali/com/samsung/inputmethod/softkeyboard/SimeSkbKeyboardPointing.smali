.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
.super Ljava/lang/Object;
.source "SimeSkbKeyboardPointing.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final MOVE_AXIS_X:I = 0x1

.field public static final MOVE_AXIS_Y:I = 0x2

.field public static final MOVE_NONE:I

.field public static MOVE_THRESHOLD:I

.field public static THRESHOLD_X:I

.field public static THRESHOLD_Y:I

.field public static height:I

.field private static mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

.field private static mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

.field public static width:I


# instance fields
.field PointingMotion:Landroid/view/MotionEvent;

.field private beforeX:F

.field private beforeY:F

.field private currentX:F

.field private currentY:F

.field private fisrtDownX:F

.field private fisrtDownY:F

.field private mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field public onPointing:Z

.field private pointingAction:Z

.field private pointingMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->width:I

    .line 30
    sput v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->height:I

    .line 34
    const/16 v0, 0x32

    sput v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->MOVE_THRESHOLD:I

    .line 36
    const/16 v0, 0xa

    sput v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->THRESHOLD_X:I

    .line 37
    const/16 v0, 0x28

    sput v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->THRESHOLD_Y:I

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownX:F

    .line 21
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownY:F

    .line 23
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeX:F

    .line 24
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeY:F

    .line 26
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    .line 27
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    .line 43
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingAction:Z

    .line 44
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingMode:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    .line 47
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->onPointing:Z

    .line 50
    invoke-static {}, Lcom/samsung/inputmethod/SamsungIME;->getInstance()Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v0

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    .line 51
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 2
    .parameter "imeService"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownX:F

    .line 21
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownY:F

    .line 23
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeX:F

    .line 24
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeY:F

    .line 26
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    .line 27
    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    .line 43
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingAction:Z

    .line 44
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingMode:Z

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    .line 47
    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->onPointing:Z

    .line 55
    sput-object p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    .line 56
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 57
    return-void
.end method

.method private getDistance(FFFF)I
    .locals 6
    .parameter "startX"
    .parameter "startY"
    .parameter "endX"
    .parameter "endY"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 194
    sub-float v0, p1, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-float v2, p2, p4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public static getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;
    .locals 2

    .prologue
    .line 70
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    .line 73
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mInstance:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    return-object v0
.end method


# virtual methods
.method public checkNeedMove(Landroid/view/MotionEvent;)I
    .locals 3
    .parameter "me"

    .prologue
    const/4 v2, 0x1

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    .line 94
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, moveDirection:I
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    .line 98
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->isPointingKeyboard(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingMode:Z

    .line 100
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->onPointing:Z

    .line 102
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingMode:Z

    if-eqz v1, :cond_3

    .line 103
    iput-boolean v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingAction:Z

    .line 104
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->THRESHOLD_X:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 105
    const/4 v0, 0x1

    .line 114
    :goto_0
    return v0

    .line 106
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->THRESHOLD_Y:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 107
    const/4 v0, 0x2

    goto :goto_0

    .line 109
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingAction:Z

    .line 112
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public finishPointing()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingMode:Z

    .line 262
    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingAction:Z

    .line 263
    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->onPointing:Z

    .line 264
    return-void
.end method

.method public getDirectionX(Landroid/view/MotionEvent;)I
    .locals 3
    .parameter "me"

    .prologue
    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, directionX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    .line 202
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeX:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 203
    const/16 v0, 0x16

    .line 207
    :goto_0
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeX:F

    .line 209
    return v0

    .line 205
    :cond_0
    const/16 v0, 0x15

    goto :goto_0
.end method

.method public getDirectionY(Landroid/view/MotionEvent;)I
    .locals 3
    .parameter "me"

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, directionY:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    .line 216
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeY:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 217
    const/16 v0, 0x14

    .line 221
    :goto_0
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeY:F

    .line 223
    return v0

    .line 219
    :cond_0
    const/16 v0, 0x13

    goto :goto_0
.end method

.method public getMultiDirection()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    sget v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->width:I

    div-int/lit8 v0, v2, 0xa

    .line 123
    .local v0, validRangeX:I
    sget v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->height:I

    div-int/lit8 v1, v2, 0x5

    .line 130
    .local v1, validRangeY:I
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 131
    const/16 v2, 0x15

    .line 139
    :goto_0
    return v2

    .line 132
    :cond_0
    sget v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->width:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->width:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    .line 133
    const/16 v2, 0x16

    goto :goto_0

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v2, v4, v2

    if-gtz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    int-to-float v3, v1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 135
    const/16 v2, 0x13

    goto :goto_0

    .line 136
    :cond_2
    sget v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->height:I

    sub-int/2addr v2, v1

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->PointingMotion:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->height:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    .line 137
    const/16 v2, 0x14

    goto :goto_0

    .line 139
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 60
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWidth()I

    move-result v0

    sput v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->width:I

    .line 61
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    sub-int/2addr v0, v1

    sput v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->height:I

    .line 63
    sget v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->width:I

    div-int/lit8 v0, v0, 0xb

    sput v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->MOVE_THRESHOLD:I

    .line 65
    sget v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->width:I

    div-int/lit8 v0, v0, 0x18

    sput v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->THRESHOLD_X:I

    .line 66
    sget v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->height:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->THRESHOLD_Y:I

    .line 67
    return-void
.end method

.method public isConditionCheck(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "me"

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->isPointingKeyboard(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->isCurrentLocation(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x1

    .line 189
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentLocation(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "me"

    .prologue
    .line 176
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeX:F

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownX:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeY:F

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownY:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPointingAction()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->pointingAction:Z

    return v0
.end method

.method public isPointingKeyboard(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "me"

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 145
    .local v0, currentDistance:I
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownX:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownY:F

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    iget v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->getDistance(FFFF)I

    move-result v0

    .line 157
    sget v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->MOVE_THRESHOLD:I

    if-lt v0, v1, :cond_0

    .line 158
    const/4 v1, 0x1

    .line 160
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onDownKeyEvent(I)V
    .locals 19
    .parameter "keyEventCode"

    .prologue
    .line 227
    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v17

    .line 230
    .local v17, ic:Landroid/view/inputmethod/InputConnection;
    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->mSamsungIME:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isSearchActionEdit()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 231
    const-string v18, ""

    .line 232
    .local v18, leadingChar:Ljava/lang/CharSequence;
    const-string v16, ""

    .line 233
    .local v16, PrevLeadingChar:Ljava/lang/CharSequence;
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v18

    .line 234
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v5, v6}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v16

    .line 236
    if-eqz v18, :cond_3

    if-eqz v16, :cond_3

    .line 237
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x16

    move/from16 v0, p1

    if-eq v0, v5, :cond_2

    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x15

    move/from16 v0, p1

    if-eq v0, v5, :cond_2

    :cond_1
    const/16 v5, 0x14

    move/from16 v0, p1

    if-eq v0, v5, :cond_2

    const/16 v5, 0x13

    move/from16 v0, p1

    if-ne v0, v5, :cond_3

    .line 258
    .end local v16           #PrevLeadingChar:Ljava/lang/CharSequence;
    .end local v18           #leadingChar:Ljava/lang/CharSequence;
    :cond_2
    :goto_0
    return-void

    .line 244
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 246
    .local v2, eventTime:J
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x6

    move-wide v4, v2

    move/from16 v7, p1

    invoke-direct/range {v1 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 250
    .local v1, downKeyEvent:Landroid/view/KeyEvent;
    new-instance v4, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const/4 v9, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x6

    move-wide v7, v2

    move/from16 v10, p1

    invoke-direct/range {v4 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 254
    .local v4, upKeyEvent:Landroid/view/KeyEvent;
    if-eqz v17, :cond_2

    .line 255
    move-object/from16 v0, v17

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 256
    move-object/from16 v0, v17

    invoke-interface {v0, v4}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method public setDownPosition(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "me"

    .prologue
    .line 82
    if-eqz p1, :cond_0

    .line 83
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownX:F

    .line 84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownY:F

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentX:F

    .line 86
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->currentY:F

    .line 87
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownX:F

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeX:F

    .line 88
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->fisrtDownY:F

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;->beforeY:F

    .line 90
    :cond_0
    return-void
.end method
