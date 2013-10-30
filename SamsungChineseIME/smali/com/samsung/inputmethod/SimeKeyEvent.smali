.class public Lcom/samsung/inputmethod/SimeKeyEvent;
.super Landroid/view/KeyEvent;
.source "SimeKeyEvent.java"


# instance fields
.field private mKeyPos:Landroid/graphics/PointF;

.field private mOriginalKeyEvent:Landroid/view/KeyEvent;


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .parameter "action"
    .parameter "code"

    .prologue
    const/high16 v1, -0x4080

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mOriginalKeyEvent:Landroid/view/KeyEvent;

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    .line 20
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeKeyEvent;->reset()V

    .line 21
    return-void
.end method

.method public constructor <init>(JJIII)V
    .locals 2
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "code"
    .parameter "repeat"

    .prologue
    const/high16 v1, -0x4080

    .line 48
    invoke-direct/range {p0 .. p7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mOriginalKeyEvent:Landroid/view/KeyEvent;

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    .line 49
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeKeyEvent;->reset()V

    .line 50
    return-void
.end method

.method public constructor <init>(JJIIII)V
    .locals 2
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "code"
    .parameter "repeat"
    .parameter "metaState"

    .prologue
    const/high16 v1, -0x4080

    .line 43
    invoke-direct/range {p0 .. p8}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mOriginalKeyEvent:Landroid/view/KeyEvent;

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    .line 44
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeKeyEvent;->reset()V

    .line 45
    return-void
.end method

.method public constructor <init>(JJIIIIII)V
    .locals 2
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "code"
    .parameter "repeat"
    .parameter "metaState"
    .parameter "deviceId"
    .parameter "scancode"

    .prologue
    const/high16 v1, -0x4080

    .line 37
    invoke-direct/range {p0 .. p10}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mOriginalKeyEvent:Landroid/view/KeyEvent;

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    .line 38
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeKeyEvent;->reset()V

    .line 39
    return-void
.end method

.method public constructor <init>(JJIIIIIII)V
    .locals 2
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "code"
    .parameter "repeat"
    .parameter "metaState"
    .parameter "deviceId"
    .parameter "scancode"
    .parameter "flags"

    .prologue
    const/high16 v1, -0x4080

    .line 31
    invoke-direct/range {p0 .. p11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mOriginalKeyEvent:Landroid/view/KeyEvent;

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    .line 32
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeKeyEvent;->reset()V

    .line 33
    return-void
.end method

.method public constructor <init>(JJIIIIIIII)V
    .locals 2
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "code"
    .parameter "repeat"
    .parameter "metaState"
    .parameter "deviceId"
    .parameter "scancode"
    .parameter "flags"
    .parameter "source"

    .prologue
    const/high16 v1, -0x4080

    .line 14
    invoke-direct/range {p0 .. p12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mOriginalKeyEvent:Landroid/view/KeyEvent;

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    .line 15
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeKeyEvent;->reset()V

    .line 16
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;II)V
    .locals 2
    .parameter "time"
    .parameter "characters"
    .parameter "deviceId"
    .parameter "flags"

    .prologue
    const/high16 v1, -0x4080

    .line 53
    invoke-direct/range {p0 .. p5}, Landroid/view/KeyEvent;-><init>(JLjava/lang/String;II)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mOriginalKeyEvent:Landroid/view/KeyEvent;

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    .line 54
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeKeyEvent;->reset()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/view/KeyEvent;)V
    .locals 2
    .parameter "origEvent"

    .prologue
    const/high16 v1, -0x4080

    .line 24
    invoke-direct {p0, p1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mOriginalKeyEvent:Landroid/view/KeyEvent;

    .line 10
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    .line 25
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mOriginalKeyEvent:Landroid/view/KeyEvent;

    .line 26
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeKeyEvent;->reset()V

    .line 27
    return-void
.end method


# virtual methods
.method public getKeyPos()Landroid/graphics/PointF;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    goto :goto_0
.end method

.method public getOrigEvent()Landroid/view/KeyEvent;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mOriginalKeyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/high16 v1, -0x4080

    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 67
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 68
    return-void
.end method

.method public setKeyPos(Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 72
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mKeyPos:Landroid/graphics/PointF;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 73
    return-void
.end method

.method public setOrigKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0
    .parameter "origEvent"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeKeyEvent;->mOriginalKeyEvent:Landroid/view/KeyEvent;

    .line 59
    return-void
.end method
