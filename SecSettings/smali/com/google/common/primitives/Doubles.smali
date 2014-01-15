.class public final Lcom/google/common/primitives/Doubles;
.super Ljava/lang/Object;
.source "Doubles.java"


# annotations
.annotation build Lcom/google/common/annotations/GwtCompatible;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/primitives/Doubles$DoubleArrayAsList;,
        Lcom/google/common/primitives/Doubles$LexicographicalComparator;
    }
.end annotation


# static fields
.field public static final BYTES:I = 0x8


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([DDII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method static synthetic access$100([DDII)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 45
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method public static varargs asList([D)Ljava/util/List;
    .locals 1
    .parameter "backingArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([D)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    array-length v0, p0

    if-nez v0, :cond_0

    .line 402
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 404
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    invoke-direct {v0, p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;-><init>([D)V

    goto :goto_0
.end method

.method public static compare(DD)I
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 82
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public static varargs concat([[D)[D
    .locals 9
    .parameter "arrays"

    .prologue
    .line 244
    const/4 v4, 0x0

    .line 245
    .local v4, length:I
    move-object v0, p0

    .local v0, arr$:[[D
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 246
    .local v1, array:[D
    array-length v7, v1

    add-int/2addr v4, v7

    .line 245
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v1           #array:[D
    :cond_0
    new-array v6, v4, [D

    .line 249
    .local v6, result:[D
    const/4 v5, 0x0

    .line 250
    .local v5, pos:I
    move-object v0, p0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 251
    .restart local v1       #array:[D
    const/4 v7, 0x0

    array-length v8, v1

    invoke-static {v1, v7, v6, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    array-length v7, v1

    add-int/2addr v5, v7

    .line 250
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 254
    .end local v1           #array:[D
    :cond_1
    return-object v6
.end method

.method public static contains([DD)Z
    .locals 6
    .parameter "array"
    .parameter "target"

    .prologue
    .line 107
    move-object v0, p0

    .local v0, arr$:[D
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-wide v3, v0, v1

    .line 108
    .local v3, value:D
    cmpl-double v5, v3, p1

    if-nez v5, :cond_0

    .line 109
    const/4 v5, 0x1

    .line 112
    .end local v3           #value:D
    :goto_1
    return v5

    .line 107
    .restart local v3       #value:D
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    .end local v3           #value:D
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static copyOf([DI)[D
    .locals 3
    .parameter "original"
    .parameter "length"

    .prologue
    const/4 v2, 0x0

    .line 284
    new-array v0, p1, [D

    .line 285
    .local v0, copy:[D
    array-length v1, p0

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 286
    return-object v0
.end method

.method public static ensureCapacity([DII)[D
    .locals 6
    .parameter "array"
    .parameter "minLength"
    .parameter "padding"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 275
    if-ltz p1, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "Invalid minLength: %s"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 276
    if-ltz p2, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "Invalid padding: %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 277
    array-length v0, p0

    if-ge v0, p1, :cond_0

    add-int v0, p1, p2

    invoke-static {p0, v0}, Lcom/google/common/primitives/Doubles;->copyOf([DI)[D

    move-result-object p0

    .end local p0
    :cond_0
    return-object p0

    .restart local p0
    :cond_1
    move v0, v2

    .line 275
    goto :goto_0

    :cond_2
    move v0, v2

    .line 276
    goto :goto_1
.end method

.method public static hashCode(D)I
    .locals 1
    .parameter "value"

    .prologue
    .line 64
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v0

    return v0
.end method

.method public static indexOf([DD)I
    .locals 2
    .parameter "array"
    .parameter "target"

    .prologue
    .line 126
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Doubles;->indexOf([DDII)I

    move-result v0

    return v0
.end method

.method private static indexOf([DDII)I
    .locals 3
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 132
    move v0, p3

    .local v0, i:I
    :goto_0
    if-ge v0, p4, :cond_1

    .line 133
    aget-wide v1, p0, v0

    cmpl-double v1, v1, p1

    if-nez v1, :cond_0

    .line 137
    .end local v0           #i:I
    :goto_1
    return v0

    .line 132
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static indexOf([D[D)I
    .locals 6
    .parameter "array"
    .parameter "target"

    .prologue
    .line 155
    const-string v2, "array"

    invoke-static {p0, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v2, "target"

    invoke-static {p1, v2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    array-length v2, p1

    if-nez v2, :cond_1

    .line 158
    const/4 v0, 0x0

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 162
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    array-length v3, p1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_3

    .line 163
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 164
    add-int v2, v0, v1

    aget-wide v2, p0, v2

    aget-wide v4, p1, v1

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_2

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 170
    .end local v1           #j:I
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isFinite(D)Z
    .locals 5
    .parameter "value"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    const-wide/high16 v2, -0x10

    cmpg-double v2, v2, p0

    if-gez v2, :cond_0

    move v2, v0

    :goto_0
    const-wide/high16 v3, 0x7ff0

    cmpg-double v3, p0, v3

    if-gez v3, :cond_1

    :goto_1
    and-int/2addr v0, v2

    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public static varargs join(Ljava/lang/String;[D)Ljava/lang/String;
    .locals 5
    .parameter "separator"
    .parameter "array"

    .prologue
    .line 304
    invoke-static {p0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    array-length v2, p1

    if-nez v2, :cond_0

    .line 306
    const-string v2, ""

    .line 315
    :goto_0
    return-object v2

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v2, p1

    mul-int/lit8 v2, v2, 0xc

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 311
    .local v0, builder:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    aget-wide v2, p1, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 312
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 313
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-wide v3, p1, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 315
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static lastIndexOf([DD)I
    .locals 2
    .parameter "array"
    .parameter "target"

    .prologue
    .line 184
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/google/common/primitives/Doubles;->lastIndexOf([DDII)I

    move-result v0

    return v0
.end method

.method private static lastIndexOf([DDII)I
    .locals 3
    .parameter "array"
    .parameter "target"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 190
    add-int/lit8 v0, p4, -0x1

    .local v0, i:I
    :goto_0
    if-lt v0, p3, :cond_1

    .line 191
    aget-wide v1, p0, v0

    cmpl-double v1, v1, p1

    if-nez v1, :cond_0

    .line 195
    .end local v0           #i:I
    :goto_1
    return v0

    .line 190
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 195
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static lexicographicalComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<[D>;"
        }
    .end annotation

    .prologue
    .line 335
    sget-object v0, Lcom/google/common/primitives/Doubles$LexicographicalComparator;->INSTANCE:Lcom/google/common/primitives/Doubles$LexicographicalComparator;

    return-object v0
.end method

.method public static varargs max([D)D
    .locals 5
    .parameter "array"

    .prologue
    const/4 v4, 0x0

    .line 226
    array-length v3, p0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 227
    aget-wide v1, p0, v4

    .line 228
    .local v1, max:D
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 229
    aget-wide v3, p0, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    .line 228
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #max:D
    :cond_0
    move v3, v4

    .line 226
    goto :goto_0

    .line 231
    .restart local v0       #i:I
    .restart local v1       #max:D
    :cond_1
    return-wide v1
.end method

.method public static varargs min([D)D
    .locals 5
    .parameter "array"

    .prologue
    const/4 v4, 0x0

    .line 208
    array-length v3, p0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {v3}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 209
    aget-wide v1, p0, v4

    .line 210
    .local v1, min:D
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 211
    aget-wide v3, p0, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #min:D
    :cond_0
    move v3, v4

    .line 208
    goto :goto_0

    .line 213
    .restart local v0       #i:I
    .restart local v1       #min:D
    :cond_1
    return-wide v1
.end method

.method public static toArray(Ljava/util/Collection;)[D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Double;",
            ">;)[D"
        }
    .end annotation

    .prologue
    .line 369
    .local p0, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Double;>;"
    instance-of v4, p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    if-eqz v4, :cond_1

    .line 370
    check-cast p0, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;

    .end local p0           #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Double;>;"
    invoke-virtual {p0}, Lcom/google/common/primitives/Doubles$DoubleArrayAsList;->toDoubleArray()[D

    move-result-object v0

    .line 380
    .local v0, array:[D
    .local v1, boxedArray:[Ljava/lang/Object;
    .local v2, i:I
    .local v3, len:I
    .restart local p0       #collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Double;>;"
    :cond_0
    return-object v0

    .line 373
    .end local v0           #array:[D
    .end local v1           #boxedArray:[Ljava/lang/Object;
    .end local v2           #i:I
    .end local v3           #len:I
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    .line 374
    .restart local v1       #boxedArray:[Ljava/lang/Object;
    array-length v3, v1

    .line 375
    .restart local v3       #len:I
    new-array v0, v3, [D

    .line 376
    .restart local v0       #array:[D
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 378
    aget-object v4, v1, v2

    invoke-static {v4}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Double;

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
