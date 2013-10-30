.class public Lcom/samsung/inputmethod/setting/SimeSelfDefItem;
.super Ljava/lang/Object;
.source "SimeSelfDefItem.java"


# instance fields
.field private mCount:I

.field private mDescription:Ljava/lang/String;

.field private mPoint:[I

.field private mType:I

.field private mUnicode:C


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-char v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mUnicode:C

    .line 45
    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mCount:I

    .line 46
    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mType:I

    .line 47
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mDescription:Ljava/lang/String;

    .line 48
    const/16 v0, 0x1fe

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mPoint:[I

    .line 49
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 65
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mCount:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint([I)I
    .locals 4
    .parameter "point"

    .prologue
    .line 82
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mCount:I

    if-ge v0, v1, :cond_0

    .line 83
    mul-int/lit8 v1, v0, 0x2

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mPoint:[I

    mul-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    aput v2, p1, v1

    .line 84
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mPoint:[I

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    aput v2, p1, v1

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    :cond_0
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mCount:I

    return v1
.end method

.method public getPoint()[I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mPoint:[I

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mType:I

    return v0
.end method

.method public getUnicode()C
    .locals 1

    .prologue
    .line 53
    iget-char v0, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mUnicode:C

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter "des"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mDescription:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPoint(I[I)V
    .locals 4
    .parameter "count"
    .parameter "point"

    .prologue
    .line 94
    iput p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mCount:I

    .line 96
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mPoint:[I

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x2

    aget v3, p2, v3

    aput v3, v1, v2

    .line 98
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mPoint:[I

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget v3, p2, v3

    aput v3, v1, v2

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_0
    return-void
.end method

.method public setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 69
    iput p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mType:I

    .line 70
    return-void
.end method

.method public setUnicode(C)V
    .locals 0
    .parameter "unicode"

    .prologue
    .line 57
    iput-char p1, p0, Lcom/samsung/inputmethod/setting/SimeSelfDefItem;->mUnicode:C

    .line 58
    return-void
.end method
