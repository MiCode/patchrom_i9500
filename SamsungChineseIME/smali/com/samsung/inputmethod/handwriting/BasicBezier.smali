.class public Lcom/samsung/inputmethod/handwriting/BasicBezier;
.super Ljava/lang/Object;
.source "BasicBezier.java"


# static fields
.field private static final AP:F = 0.5f


# instance fields
.field private final TAG:Ljava/lang/String;

.field private bPath:Landroid/graphics/Path;

.field private bPoints:[Landroid/graphics/Point;

.field private usedForBug:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v0, "BasicBezier"

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->TAG:Ljava/lang/String;

    .line 21
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->usedForBug:Z

    .line 25
    return-void
.end method

.method public constructor <init>([Landroid/graphics/Point;)V
    .locals 49
    .parameter "points"

    .prologue
    .line 32
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-string v44, "BasicBezier"

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/handwriting/BasicBezier;->TAG:Ljava/lang/String;

    .line 21
    const/16 v44, 0x0

    move/from16 v0, v44

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/inputmethod/handwriting/BasicBezier;->usedForBug:Z

    .line 34
    new-instance v44, Landroid/graphics/Path;

    invoke-direct/range {v44 .. v44}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    .line 36
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    .line 37
    .local v21, n:I
    const/16 v44, 0x3

    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_1

    .line 89
    :cond_0
    return-void

    .line 41
    :cond_1
    add-int/lit8 v44, v21, -0x2

    mul-int/lit8 v44, v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [Landroid/graphics/Point;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPoints:[Landroid/graphics/Point;

    .line 43
    const/16 v44, 0x0

    aget-object v44, p1, v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v34, v0

    .line 44
    .local v34, pbX:D
    const/16 v44, 0x0

    aget-object v44, p1, v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v36, v0

    .line 45
    .local v36, pbY:D
    const/16 v44, 0x1

    aget-object v44, p1, v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v38, v0

    .line 46
    .local v38, pcX:D
    const/16 v44, 0x1

    aget-object v44, p1, v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v40, v0

    .line 47
    .local v40, pcY:D
    const/16 v18, 0x0

    .local v18, i:I
    :goto_0
    add-int/lit8 v44, v21, -0x2

    move/from16 v0, v18

    move/from16 v1, v44

    if-ge v0, v1, :cond_0

    .line 48
    move-wide/from16 v30, v34

    .line 49
    .local v30, paX:D
    move-wide/from16 v32, v36

    .line 50
    .local v32, paY:D
    move-wide/from16 v34, v38

    .line 51
    move-wide/from16 v36, v40

    .line 52
    add-int/lit8 v44, v18, 0x2

    aget-object v44, p1, v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v38, v0

    .line 53
    add-int/lit8 v44, v18, 0x2

    aget-object v44, p1, v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v44, v0

    move/from16 v0, v44

    int-to-double v0, v0

    move-wide/from16 v40, v0

    .line 54
    sub-double v2, v34, v30

    .line 55
    .local v2, abX:D
    sub-double v4, v36, v32

    .line 56
    .local v4, abY:D
    sub-double v6, v38, v30

    .line 57
    .local v6, acX:D
    sub-double v8, v40, v32

    .line 58
    .local v8, acY:D
    mul-double v44, v6, v6

    mul-double v46, v8, v8

    add-double v44, v44, v46

    invoke-static/range {v44 .. v45}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v19

    .line 59
    .local v19, lac:D
    div-double v6, v6, v19

    .line 60
    div-double v8, v8, v19

    .line 61
    mul-double v44, v2, v6

    mul-double v46, v4, v8

    add-double v42, v44, v46

    .line 62
    .local v42, proj:D
    const-wide/16 v44, 0x0

    cmpg-double v44, v42, v44

    if-gez v44, :cond_2

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    .line 63
    :cond_2
    mul-double v10, v42, v6

    .line 64
    .local v10, apX:D
    mul-double v12, v42, v8

    .line 65
    .local v12, apY:D
    const-wide/high16 v44, 0x3fe0

    mul-double v44, v44, v10

    sub-double v22, v34, v44

    .line 66
    .local v22, p1X:D
    const-wide/high16 v44, 0x3fe0

    mul-double v44, v44, v12

    sub-double v24, v36, v44

    .line 67
    .local v24, p1Y:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPoints:[Landroid/graphics/Point;

    move-object/from16 v44, v0

    mul-int/lit8 v45, v18, 0x2

    new-instance v46, Landroid/graphics/Point;

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v47, v0

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v48, v0

    invoke-direct/range {v46 .. v48}, Landroid/graphics/Point;-><init>(II)V

    aput-object v46, v44, v45

    .line 68
    neg-double v6, v6

    .line 69
    neg-double v8, v8

    .line 70
    sub-double v14, v34, v38

    .line 71
    .local v14, cbX:D
    sub-double v16, v36, v40

    .line 72
    .local v16, cbY:D
    mul-double v44, v14, v6

    mul-double v46, v16, v8

    add-double v42, v44, v46

    .line 73
    const-wide/16 v44, 0x0

    cmpg-double v44, v42, v44

    if-gez v44, :cond_3

    move-wide/from16 v0, v42

    neg-double v0, v0

    move-wide/from16 v42, v0

    .line 74
    :cond_3
    mul-double v10, v42, v6

    .line 75
    mul-double v12, v42, v8

    .line 76
    const-wide/high16 v44, 0x3fe0

    mul-double v44, v44, v10

    sub-double v26, v34, v44

    .line 77
    .local v26, p2X:D
    const-wide/high16 v44, 0x3fe0

    mul-double v44, v44, v12

    sub-double v28, v36, v44

    .line 78
    .local v28, p2Y:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPoints:[Landroid/graphics/Point;

    move-object/from16 v44, v0

    mul-int/lit8 v45, v18, 0x2

    add-int/lit8 v45, v45, 0x1

    new-instance v46, Landroid/graphics/Point;

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v47, v0

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v48, v0

    invoke-direct/range {v46 .. v48}, Landroid/graphics/Point;-><init>(II)V

    aput-object v46, v44, v45

    .line 81
    if-nez v18, :cond_4

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPoints:[Landroid/graphics/Point;

    move-object/from16 v45, v0

    mul-int/lit8 v46, v18, 0x2

    aget-object v45, v45, v46

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPoints:[Landroid/graphics/Point;

    move-object/from16 v46, v0

    mul-int/lit8 v47, v18, 0x2

    aget-object v46, v46, v47

    move-object/from16 v0, v46

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/Path;->moveTo(FF)V

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPoints:[Landroid/graphics/Point;

    move-object/from16 v45, v0

    mul-int/lit8 v46, v18, 0x2

    add-int/lit8 v46, v46, 0x1

    aget-object v45, v45, v46

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPoints:[Landroid/graphics/Point;

    move-object/from16 v46, v0

    mul-int/lit8 v47, v18, 0x2

    add-int/lit8 v47, v47, 0x1

    aget-object v46, v46, v47

    move-object/from16 v0, v46

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/Path;->lineTo(FF)V

    .line 47
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_0

    .line 85
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPoints:[Landroid/graphics/Point;

    move-object/from16 v45, v0

    mul-int/lit8 v46, v18, 0x2

    aget-object v45, v45, v46

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPoints:[Landroid/graphics/Point;

    move-object/from16 v46, v0

    mul-int/lit8 v47, v18, 0x2

    aget-object v46, v46, v47

    move-object/from16 v0, v46

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/Path;->moveTo(FF)V

    .line 86
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    move-object/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPoints:[Landroid/graphics/Point;

    move-object/from16 v45, v0

    mul-int/lit8 v46, v18, 0x2

    add-int/lit8 v46, v46, 0x1

    aget-object v45, v45, v46

    move-object/from16 v0, v45

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v45, v0

    move/from16 v0, v45

    int-to-float v0, v0

    move/from16 v45, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPoints:[Landroid/graphics/Point;

    move-object/from16 v46, v0

    mul-int/lit8 v47, v18, 0x2

    add-int/lit8 v47, v47, 0x1

    aget-object v46, v46, v47

    move-object/from16 v0, v46

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v46, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v46, v0

    invoke-virtual/range {v44 .. v46}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1
.end method


# virtual methods
.method public Bin(IID)D
    .locals 7
    .parameter "n"
    .parameter "i"
    .parameter "t"

    .prologue
    .line 132
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/handwriting/BasicBezier;->factorial(I)I

    move-result v2

    invoke-virtual {p0, p2}, Lcom/samsung/inputmethod/handwriting/BasicBezier;->factorial(I)I

    move-result v3

    sub-int v4, p1, p2

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/handwriting/BasicBezier;->factorial(I)I

    move-result v4

    mul-int/2addr v3, v4

    div-int/2addr v2, v3

    int-to-double v2, v2

    invoke-virtual {p0, p3, p4, p2}, Lcom/samsung/inputmethod/handwriting/BasicBezier;->pow(DI)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0

    sub-double/2addr v4, p3

    sub-int v6, p1, p2

    invoke-virtual {p0, v4, v5, v6}, Lcom/samsung/inputmethod/handwriting/BasicBezier;->pow(DI)D

    move-result-wide v4

    mul-double v0, v2, v4

    .line 133
    .local v0, tm:D
    return-wide v0
.end method

.method public clearPath()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 127
    :cond_0
    const-string v0, "BasicBezier"

    const-string v1, "[BasicBezier] clearPath();"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    return-void
.end method

.method public factorial(I)I
    .locals 3
    .parameter "n"

    .prologue
    const/4 v2, 0x1

    .line 148
    const/4 v1, 0x1

    .line 149
    .local v1, val:I
    if-eqz p1, :cond_0

    if-ne p1, v2, :cond_2

    .line 150
    :cond_0
    const/4 v1, 0x1

    .line 158
    :cond_1
    return v1

    .line 153
    :cond_2
    move v0, p1

    .local v0, i1:I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 154
    mul-int/2addr v1, v0

    .line 153
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getBezier([Landroid/graphics/Point;)V
    .locals 14
    .parameter "points"

    .prologue
    .line 162
    const/4 v7, 0x0

    .local v7, x1:I
    const/4 v9, 0x0

    .line 163
    .local v9, y1:I
    const/4 v1, 0x4

    .line 165
    .local v1, n:I
    array-length v10, p1

    const/4 v11, 0x4

    if-eq v10, v11, :cond_1

    .line 189
    :cond_0
    return-void

    .line 169
    :cond_1
    iget-object v10, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    if-nez v10, :cond_2

    .line 170
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    .line 172
    :cond_2
    iget-object v10, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    const/4 v11, 0x0

    aget-object v11, p1, v11

    iget v11, v11, Landroid/graphics/Point;->x:I

    int-to-float v11, v11

    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 174
    const/4 v10, 0x0

    aget-object v10, p1, v10

    iget v6, v10, Landroid/graphics/Point;->x:I

    .line 175
    .local v6, x0:I
    const/4 v10, 0x0

    aget-object v10, p1, v10

    iget v8, v10, Landroid/graphics/Point;->y:I

    .line 176
    .local v8, y0:I
    const-wide v2, 0x3f947ae147ae147bL

    .line 177
    .local v2, step:D
    const-wide/16 v4, 0x0

    .local v4, t:D
    :goto_0
    const-wide/high16 v10, 0x3ff0

    cmpg-double v10, v4, v10

    if-gtz v10, :cond_0

    .line 178
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 179
    const/4 v10, 0x3

    invoke-virtual {p0, v10, v0, v4, v5}, Lcom/samsung/inputmethod/handwriting/BasicBezier;->Bin(IID)D

    move-result-wide v10

    aget-object v12, p1, v0

    iget v12, v12, Landroid/graphics/Point;->x:I

    int-to-double v12, v12

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v7, v10

    .line 180
    const/4 v10, 0x3

    invoke-virtual {p0, v10, v0, v4, v5}, Lcom/samsung/inputmethod/handwriting/BasicBezier;->Bin(IID)D

    move-result-wide v10

    aget-object v12, p1, v0

    iget v12, v12, Landroid/graphics/Point;->y:I

    int-to-double v12, v12

    mul-double/2addr v10, v12

    double-to-int v10, v10

    add-int/2addr v9, v10

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 183
    :cond_3
    iget-object v10, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    int-to-float v11, v7

    int-to-float v12, v9

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 184
    move v6, v7

    .line 185
    move v8, v9

    .line 186
    const/4 v7, 0x0

    .line 187
    const/4 v9, 0x0

    .line 177
    add-double/2addr v4, v2

    goto :goto_0
.end method

.method public getBezier2([Landroid/graphics/Point;)V
    .locals 11
    .parameter "points"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 223
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 224
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    aget-object v1, p1, v8

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aget-object v2, p1, v8

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    aget-object v3, p1, v9

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    aget-object v4, p1, v9

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    aget-object v5, p1, v10

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    aget-object v6, p1, v10

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 228
    const-string v7, ","

    .line 229
    .local v7, com:Ljava/lang/String;
    const-string v0, "BasicBezier"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BasicBezier] getBezier2(); cubicTo("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v8

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v8

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v9

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v9

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v10

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v10

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    return-void
.end method

.method public getBezierF([Landroid/graphics/PointF;)V
    .locals 14
    .parameter "pointfs"

    .prologue
    .line 193
    const/4 v7, 0x0

    .local v7, x1:F
    const/4 v9, 0x0

    .line 194
    .local v9, y1:F
    const/4 v1, 0x4

    .line 196
    .local v1, n:I
    array-length v10, p1

    const/4 v11, 0x4

    if-eq v10, v11, :cond_1

    .line 220
    :cond_0
    return-void

    .line 200
    :cond_1
    iget-object v10, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    if-nez v10, :cond_2

    .line 201
    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    iput-object v10, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    .line 203
    :cond_2
    iget-object v10, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    const/4 v11, 0x0

    aget-object v11, p1, v11

    iget v11, v11, Landroid/graphics/PointF;->x:F

    const/4 v12, 0x0

    aget-object v12, p1, v12

    iget v12, v12, Landroid/graphics/PointF;->y:F

    invoke-virtual {v10, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 205
    const/4 v10, 0x0

    aget-object v10, p1, v10

    iget v6, v10, Landroid/graphics/PointF;->x:F

    .line 206
    .local v6, x0:F
    const/4 v10, 0x0

    aget-object v10, p1, v10

    iget v8, v10, Landroid/graphics/PointF;->y:F

    .line 207
    .local v8, y0:F
    const-wide v2, 0x3f947ae147ae147bL

    .line 208
    .local v2, step:D
    const-wide/16 v4, 0x0

    .local v4, t:D
    :goto_0
    const-wide/high16 v10, 0x3ff0

    cmpg-double v10, v4, v10

    if-gtz v10, :cond_0

    .line 209
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 210
    const/4 v10, 0x3

    invoke-virtual {p0, v10, v0, v4, v5}, Lcom/samsung/inputmethod/handwriting/BasicBezier;->Bin(IID)D

    move-result-wide v10

    aget-object v12, p1, v0

    iget v12, v12, Landroid/graphics/PointF;->x:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    double-to-float v10, v10

    add-float/2addr v7, v10

    .line 211
    const/4 v10, 0x3

    invoke-virtual {p0, v10, v0, v4, v5}, Lcom/samsung/inputmethod/handwriting/BasicBezier;->Bin(IID)D

    move-result-wide v10

    aget-object v12, p1, v0

    iget v12, v12, Landroid/graphics/PointF;->y:F

    float-to-double v12, v12

    mul-double/2addr v10, v12

    double-to-float v10, v10

    add-float/2addr v9, v10

    .line 209
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 214
    :cond_3
    iget-object v10, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    invoke-virtual {v10, v7, v9}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 215
    move v6, v7

    .line 216
    move v8, v9

    .line 217
    const/4 v7, 0x0

    .line 218
    const/4 v9, 0x0

    .line 208
    add-double/2addr v4, v2

    goto :goto_0
.end method

.method public getCurvePath(Landroid/graphics/Point;Landroid/graphics/Point;I)V
    .locals 10
    .parameter "p1"
    .parameter "p2"
    .parameter "heightControl"

    .prologue
    .line 269
    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    iget v6, p1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, p1, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 270
    const/16 v4, 0x14

    .line 271
    .local v4, widthControl:I
    new-instance v3, Landroid/graphics/Point;

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->x:I

    iget v7, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    sub-int/2addr v5, v4

    iget v6, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 273
    .local v3, pmid:Landroid/graphics/Point;
    new-instance v0, Landroid/graphics/Point;

    iget v5, p1, Landroid/graphics/Point;->x:I

    iget v6, v3, Landroid/graphics/Point;->x:I

    iget v7, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, p3

    invoke-direct {v0, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 274
    .local v0, ctn1:Landroid/graphics/Point;
    new-instance v1, Landroid/graphics/Point;

    iget v5, v3, Landroid/graphics/Point;->x:I

    iget v6, p2, Landroid/graphics/Point;->x:I

    iget v7, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    iget v6, p2, Landroid/graphics/Point;->y:I

    add-int/2addr v6, p3

    invoke-direct {v1, v5, v6}, Landroid/graphics/Point;-><init>(II)V

    .line 275
    .local v1, ctn2:Landroid/graphics/Point;
    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    iget v6, v0, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    iget v7, v0, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, v3, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 277
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 278
    .local v2, ph1:Landroid/graphics/Path;
    iget v5, v3, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 279
    iget v5, v1, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    iget v6, v1, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v7, p2, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    iget v8, p2, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    invoke-virtual {v2, v5, v6, v7, v8}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 280
    iget-object v5, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    invoke-virtual {v5, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    .line 281
    return-void
.end method

.method public getPath()Landroid/graphics/Path;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    return-object v0
.end method

.method public getPoint(I)Landroid/graphics/Point;
    .locals 1
    .parameter "i"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPoints:[Landroid/graphics/Point;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPointCount()I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPoints:[Landroid/graphics/Point;

    array-length v0, v0

    return v0
.end method

.method public getPoints()[Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPoints:[Landroid/graphics/Point;

    return-object v0
.end method

.method public pow(DI)D
    .locals 4
    .parameter "t"
    .parameter "i"

    .prologue
    .line 137
    const-wide/16 v0, 0x0

    .line 138
    .local v0, val:D
    const-wide/16 v2, 0x0

    cmpl-double v2, p1, v2

    if-nez v2, :cond_0

    if-nez p3, :cond_0

    .line 139
    const-wide/high16 v0, 0x3ff0

    .line 144
    :goto_0
    return-wide v0

    .line 142
    :cond_0
    int-to-double v2, p3

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0
.end method

.method public setBezierContour([Landroid/graphics/Point;I)V
    .locals 9
    .parameter "points"
    .parameter "nLength"

    .prologue
    const/4 v2, 0x0

    .line 242
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    .line 245
    :cond_0
    array-length v0, p1

    if-le p2, v0, :cond_1

    .line 265
    :goto_0
    return-void

    .line 248
    :cond_1
    const-string v7, ","

    .line 249
    .local v7, com:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    aget-object v1, p1, v2

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aget-object v2, p1, v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 252
    const/4 v8, 0x1

    .local v8, i1:I
    :goto_1
    if-ge v8, p2, :cond_2

    .line 253
    iget-boolean v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->usedForBug:Z

    if-eqz v0, :cond_3

    .line 254
    aget-object v0, p1, v8

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_3

    aget-object v0, p1, v8

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_3

    .line 255
    add-int/lit8 v8, v8, 0x4

    .line 264
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    goto :goto_0

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    aget-object v1, p1, v8

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    aget-object v2, p1, v8

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    add-int/lit8 v3, v8, 0x1

    aget-object v3, p1, v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-int/lit8 v4, v8, 0x1

    aget-object v4, p1, v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-int/lit8 v5, v8, 0x2

    aget-object v5, p1, v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    add-int/lit8 v6, v8, 0x2

    aget-object v6, p1, v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 261
    add-int/lit8 v8, v8, 0x4

    goto :goto_1
.end method

.method public setBezierContourBegin(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    if-nez v1, :cond_0

    .line 234
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/handwriting/BasicBezier;->bPath:Landroid/graphics/Path;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 237
    const-string v0, ","

    .line 238
    .local v0, com:Ljava/lang/String;
    const-string v1, "BasicBezier"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[BasicBezier] setBezierContourBegin(); moveTo("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return-void
.end method
