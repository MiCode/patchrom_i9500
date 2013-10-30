.class public Lcom/samsung/inputmethod/decoder/SimeDecInputData;
.super Ljava/lang/Object;
.source "SimeDecInputData.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeDecInputData"


# instance fields
.field protected mAddChar:C

.field protected mCursorPos:I

.field protected mPos:Landroid/graphics/PointF;

.field protected mPosList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field protected mSurface:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mAddChar:C

    .line 19
    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mSurface:Ljava/lang/StringBuffer;

    .line 27
    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mPos:Landroid/graphics/PointF;

    .line 29
    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mPosList:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mSurface:Ljava/lang/StringBuffer;

    .line 34
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mPos:Landroid/graphics/PointF;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mPosList:Ljava/util/List;

    .line 36
    return-void
.end method

.method private addPos(Landroid/graphics/PointF;)Z
    .locals 4
    .parameter "pos"

    .prologue
    const/high16 v2, -0x4080

    .line 88
    const/4 v0, 0x1

    .line 89
    .local v0, bRet:Z
    if-eqz p1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mPos:Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 91
    const/4 v0, 0x1

    .line 95
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v1, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0
.end method


# virtual methods
.method public add(CLandroid/graphics/PointF;Z)V
    .locals 3
    .parameter "ch"
    .parameter "pos"
    .parameter "bReset"

    .prologue
    const/4 v2, 0x0

    .line 49
    iput-char p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mAddChar:C

    .line 50
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->addPos(Landroid/graphics/PointF;)Z

    .line 51
    if-eqz p3, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mSurface:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 53
    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mCursorPos:I

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mSurface:Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mCursorPos:I

    invoke-virtual {v0, v1, p1}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 56
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mCursorPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mCursorPos:I

    .line 57
    return-void
.end method

.method public addSpell(Ljava/lang/String;Z)Z
    .locals 4
    .parameter "str"
    .parameter "bReset"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, bRet:Z
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    iput-char v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mAddChar:C

    .line 76
    if-eqz p2, :cond_0

    .line 77
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mSurface:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mSurface:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mCursorPos:I

    invoke-virtual {v1, v2, p1}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mCursorPos:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mCursorPos:I

    .line 81
    const/4 v0, 0x1

    .line 83
    :cond_1
    return v0
.end method

.method public addTrace(Ljava/util/List;Z)Z
    .locals 2
    .parameter
    .parameter "bReset"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, posList:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/PointF;>;"
    const/4 v0, 0x0

    .line 101
    .local v0, bRet:Z
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 102
    if-eqz p2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mPosList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mPosList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    const/4 v0, 0x1

    .line 107
    :cond_1
    return v0
.end method

.method public delChar()V
    .locals 3

    .prologue
    const/high16 v2, -0x4080

    .line 60
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mCursorPos:I

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mSurface:Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mCursorPos:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 62
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mCursorPos:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mCursorPos:I

    .line 63
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mCursorPos:I

    if-lez v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mSurface:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mAddChar:C

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mAddChar:C

    .line 67
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/PointF;->set(FF)V

    goto :goto_0
.end method

.method public getChar()C
    .locals 1

    .prologue
    .line 111
    iget-char v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mAddChar:C

    return v0
.end method

.method public getCursorPos()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mCursorPos:I

    return v0
.end method

.method public getPoint()Landroid/graphics/PointF;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mPos:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getSpell()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mSurface:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method public getTrace()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mPosList:Ljava/util/List;

    return-object v0
.end method

.method public reset()V
    .locals 4

    .prologue
    const/high16 v3, -0x4080

    const/4 v2, 0x0

    .line 39
    iput-char v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mAddChar:C

    .line 40
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mSurface:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mSurface:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 43
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mPos:Landroid/graphics/PointF;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 44
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mPosList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->mCursorPos:I

    .line 46
    return-void
.end method
