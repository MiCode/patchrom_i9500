.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;
.super Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
.source "SimeSkbUnionKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SamsungSoftKeyUnite"


# instance fields
.field mLabel:Ljava/lang/String;

.field mOrientation:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

.field mSoftKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;",
            ">;"
        }
    .end annotation
.end field

.field mUniteId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mSoftKeys:Ljava/util/List;

    .line 52
    return-void
.end method


# virtual methods
.method public addSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z
    .locals 2
    .parameter "childSoftKey"

    .prologue
    .line 69
    if-nez p1, :cond_0

    .line 70
    const/4 v0, 0x0

    .line 87
    :goto_0
    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mSoftKeys:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget v0, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mLeftF:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 75
    iget v0, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftF:F

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mLeftF:F

    .line 77
    :cond_1
    iget v0, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mTopF:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 78
    iget v0, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mTopF:F

    .line 80
    :cond_2
    iget v0, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mRightF:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 81
    iget v0, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightF:F

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mRightF:F

    .line 83
    :cond_3
    iget v0, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mBottomF:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 84
    iget v0, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    iput v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mBottomF:F

    .line 87
    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLable()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mLabel:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mLabel:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;)V
    .locals 8
    .parameter "keyType"

    .prologue
    const/4 v2, 0x0

    .line 128
    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-super/range {v0 .. v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setKeyType(Lcom/samsung/inputmethod/softkeyboard/SoftKeyType;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 129
    return-void
.end method

.method public setSkbCoreSize(II)V
    .locals 7
    .parameter "skbWidth"
    .parameter "skbHeight"

    .prologue
    .line 93
    invoke-super {p0, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setSkbCoreSize(II)V

    .line 94
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mSoftKeys:Ljava/util/List;

    .line 95
    .local v3, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 96
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mSoftKeys:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 97
    .local v2, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-virtual {v2, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setSkbCoreSize(II)V

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v2           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_0
    const/4 v1, 0x0

    .line 101
    .local v1, left:I
    const/4 v4, 0x0

    .line 102
    .local v4, top:I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 103
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mSoftKeys:Ljava/util/List;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 104
    .restart local v2       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    iget v1, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    .line 105
    iget v4, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    .line 108
    .end local v2           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_1
    const/4 v0, 0x1

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 109
    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mSoftKeys:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 110
    .restart local v2       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    iget v5, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    if-ne v5, v1, :cond_3

    .line 111
    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;->UNITE_VERTICAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    iput-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mOrientation:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    .line 120
    .end local v2           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_2
    :goto_2
    return-void

    .line 113
    .restart local v2       #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_3
    iget v5, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    if-ne v5, v4, :cond_4

    .line 114
    sget-object v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;->UNITE_HORIZONTAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    iput-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mOrientation:Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey$Orientation;

    goto :goto_2

    .line 108
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public setUniteDimensions(FF)V
    .locals 0
    .parameter "left"
    .parameter "top"

    .prologue
    .line 60
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mLeftF:F

    .line 61
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mRightF:F

    .line 62
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mTopF:F

    .line 63
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mBottomF:F

    .line 65
    return-void
.end method
