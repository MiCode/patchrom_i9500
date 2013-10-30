.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;
.super Ljava/lang/Object;
.source "SimeSkbKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    }
.end annotation


# instance fields
.field private mBalloonBg:Landroid/graphics/drawable/Drawable;

.field private mCacheFlag:Z

.field private mCacheId:I

.field protected mCorrectionX:I

.field protected mCorrectionY:I

.field private mEnabledRowId:I

.field private mHorizontalLinenum:I

.field private mIsQwerty:Z

.field private mIsQwertyUpperCase:Z

.field private mKeyRows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyXMargin:F

.field private mKeyYMargin:F

.field private mNewlyLoadedFlag:Z

.field private mPopupBg:Landroid/graphics/drawable/Drawable;

.field public mSkbBg:Landroid/graphics/drawable/Drawable;

.field private mSkbCoreHeight:I

.field private mSkbCoreWidth:I

.field private mSkbSoftkeyViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;",
            ">;"
        }
    .end annotation
.end field

.field private mSkbSoftkeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;",
            ">;"
        }
    .end annotation
.end field

.field private mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

.field private mSkbXmlId:I

.field private mStickyFlag:Z

.field private mTmpRect:Landroid/graphics/Rect;

.field private mVerticalLinenum:I


# direct methods
.method public constructor <init>(ILcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;II)V
    .locals 3
    .parameter "skbXmlId"
    .parameter "skbTemplate"
    .parameter "skbWidth"
    .parameter "skbHeight"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mNewlyLoadedFlag:Z

    .line 124
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyXMargin:F

    .line 127
    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyYMargin:F

    .line 129
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mTmpRect:Landroid/graphics/Rect;

    .line 131
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mVerticalLinenum:I

    .line 133
    iput v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mHorizontalLinenum:I

    .line 137
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbXmlId:I

    .line 138
    iput-object p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    .line 139
    iput p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreWidth:I

    .line 140
    iput p4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreHeight:I

    .line 141
    return-void
.end method

.method private enableRow(I)Z
    .locals 4
    .parameter "rowId"

    .prologue
    .line 649
    const/4 v3, -0x1

    if-ne v3, p1, :cond_1

    const/4 v0, 0x0

    .line 662
    :cond_0
    :goto_0
    return v0

    .line 651
    :cond_1
    const/4 v0, 0x0

    .line 652
    .local v0, enabled:Z
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 653
    .local v2, rowNum:I
    add-int/lit8 v1, v2, -0x1

    .local v1, row:I
    :goto_1
    if-ltz v1, :cond_2

    .line 654
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    iget v3, v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mRowId:I

    if-ne v3, p1, :cond_3

    .line 655
    const/4 v0, 0x1

    .line 659
    :cond_2
    if-eqz v0, :cond_0

    .line 660
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mEnabledRowId:I

    goto :goto_0

    .line 653
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private getPadding()Landroid/graphics/Rect;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 634
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 635
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSkbBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 636
    .local v0, skbBg:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mTmpRect:Landroid/graphics/Rect;

    .line 638
    :goto_0
    return-object v1

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 638
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mTmpRect:Landroid/graphics/Rect;

    goto :goto_0
.end method


# virtual methods
.method public addSoftKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)Z
    .locals 5
    .parameter "softKey"

    .prologue
    const/4 v2, 0x0

    .line 241
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v2

    .line 242
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    .line 243
    .local v0, keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    if-eqz v0, :cond_0

    .line 244
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 246
    .local v1, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreWidth:I

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreHeight:I

    invoke-virtual {p1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setSkbCoreSize(II)V

    .line 247
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    iget v2, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    iget v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mTopF:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 249
    iget v2, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopF:F

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mTopF:F

    .line 251
    :cond_2
    iget v2, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    iget v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mBottomF:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 252
    iget v2, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomF:F

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mBottomF:F

    .line 254
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public addSoftKeyView(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;)Z
    .locals 5
    .parameter "softKeyView"

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 237
    :cond_0
    :goto_0
    return v2

    .line 224
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    .line 225
    .local v0, keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    if-eqz v0, :cond_0

    .line 228
    iget-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeyViews:Ljava/util/List;

    .line 229
    .local v1, softKeyViews:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;>;"
    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreWidth:I

    iget v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreHeight:I

    invoke-virtual {p1, v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->setSkbCoreSize(II)V

    .line 230
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget v2, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mTopF:F

    iget v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mTopF:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 232
    iget v2, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mTopF:F

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mTopF:F

    .line 234
    :cond_2
    iget v2, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mBottomF:F

    iget v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mBottomF:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    .line 235
    iget v2, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->mBottomF:F

    iput v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mBottomF:F

    .line 237
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public beginNewRow(IFFF)V
    .locals 2
    .parameter "rowId"
    .parameter "yStartingPos"
    .parameter "topMargin"
    .parameter "bottomMargin"

    .prologue
    .line 209
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    .line 210
    :cond_0
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;-><init>(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;)V

    .line 211
    .local v0, keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    iput p1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mRowId:I

    .line 212
    iput p2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mTopF:F

    .line 213
    iput p2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mBottomF:F

    .line 214
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeyViews:Ljava/util/List;

    .line 216
    iput p3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mTopMargin:F

    .line 217
    iput p4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mBottomMargin:F

    .line 218
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method public disableToggleState(IZ)V
    .locals 8
    .parameter "toggleStateId"
    .parameter "resetIfNotFound"

    .prologue
    .line 576
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 577
    .local v4, rowNum:I
    const/4 v3, 0x0

    .local v3, row:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 578
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    .line 579
    .local v2, keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    iget-object v6, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 580
    .local v6, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 581
    .local v1, keyNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 582
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 583
    .local v5, sKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    instance-of v7, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    if-eqz v7, :cond_0

    .line 584
    check-cast v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    .end local v5           #sKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-virtual {v5, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->disableToggleState(IZ)Z

    .line 581
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 577
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 589
    .end local v0           #i:I
    .end local v1           #keyNum:I
    .end local v2           #keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    .end local v6           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    :cond_2
    return-void
.end method

.method public dynamicMapToKey(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 521
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    if-nez v1, :cond_0

    .line 522
    const/4 v1, 0x0

    .line 532
    :goto_0
    return-object v1

    .line 524
    :cond_0
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DYNAMIC_CHARACTER_RECOGNITION:Z

    if-eqz v1, :cond_2

    .line 525
    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->mKeyDetecter:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->getKeyIndexAndNearbyCodes(II)I

    move-result v0

    .line 526
    .local v0, keyIndex:I
    if-gtz v0, :cond_1

    .line 527
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mapToKey(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v1

    goto :goto_0

    .line 529
    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getSoftkeyByIndex(I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v1

    goto :goto_0

    .line 532
    .end local v0           #keyIndex:I
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mapToKey(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    move-result-object v1

    goto :goto_0
.end method

.method public enableToggleState(IZ)V
    .locals 8
    .parameter "toggleStateId"
    .parameter "resetIfNotFound"

    .prologue
    .line 560
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 561
    .local v4, rowNum:I
    const/4 v3, 0x0

    .local v3, row:I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 562
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    .line 563
    .local v2, keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    iget-object v6, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 564
    .local v6, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 565
    .local v1, keyNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 566
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 567
    .local v5, sKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    instance-of v7, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    if-eqz v7, :cond_0

    .line 568
    check-cast v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    .end local v5           #sKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-virtual {v5, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->enableToggleState(IZ)Z

    .line 565
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 561
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 573
    .end local v0           #i:I
    .end local v1           #keyNum:I
    .end local v2           #keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    .end local v6           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    :cond_2
    return-void
.end method

.method public enableToggleStates(Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;)V
    .locals 17
    .parameter "toggleStates"

    .prologue
    .line 592
    if-nez p1, :cond_0

    .line 631
    :goto_0
    return-void

    .line 594
    :cond_0
    move-object/from16 v0, p1

    iget v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->enableRow(I)Z

    .line 596
    move-object/from16 v0, p1

    iget-boolean v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwerty:Z

    .line 597
    .local v1, isQwerty:Z
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    .line 598
    .local v2, isQwertyUpperCase:Z
    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mIsQwerty:Z

    if-eqz v14, :cond_2

    const/4 v6, 0x1

    .line 599
    .local v6, needUpdateQwerty:Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mKeyStates:[I

    .line 600
    .local v12, states:[I
    move-object/from16 v0, p1

    iget v13, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mKeyStatesNum:I

    .line 602
    .local v13, statesNum:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    .line 603
    .local v8, rowNum:I
    const/4 v7, 0x0

    .local v7, row:I
    :goto_2
    if-ge v7, v8, :cond_8

    .line 604
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    .line 605
    .local v5, keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    const/4 v14, -0x1

    iget v15, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mRowId:I

    if-eq v14, v15, :cond_3

    iget v14, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mRowId:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mEnabledRowId:I

    if-eq v14, v15, :cond_3

    .line 603
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 598
    .end local v5           #keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    .end local v6           #needUpdateQwerty:Z
    .end local v7           #row:I
    .end local v8           #rowNum:I
    .end local v12           #states:[I
    .end local v13           #statesNum:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    .line 609
    .restart local v5       #keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    .restart local v6       #needUpdateQwerty:Z
    .restart local v7       #row:I
    .restart local v8       #rowNum:I
    .restart local v12       #states:[I
    .restart local v13       #statesNum:I
    :cond_3
    iget-object v10, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 610
    .local v10, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v3

    .line 611
    .local v3, keyNum:I
    const/4 v4, 0x0

    .local v4, keyPos:I
    :goto_3
    if-ge v4, v3, :cond_1

    .line 612
    invoke-interface {v10, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 613
    .local v9, sKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    instance-of v14, v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    if-eqz v14, :cond_6

    .line 614
    const/4 v11, 0x0

    .local v11, statePos:I
    :goto_4
    if-ge v11, v13, :cond_5

    move-object v14, v9

    .line 615
    check-cast v14, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    aget v16, v12, v11

    if-nez v11, :cond_4

    const/4 v15, 0x1

    :goto_5
    move/from16 v0, v16

    invoke-virtual {v14, v0, v15}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->enableToggleState(IZ)Z

    .line 614
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 615
    :cond_4
    const/4 v15, 0x0

    goto :goto_5

    .line 618
    :cond_5
    if-nez v13, :cond_6

    move-object v14, v9

    .line 619
    check-cast v14, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    invoke-virtual {v14}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->disableAllToggleStates()Z

    .line 622
    .end local v11           #statePos:I
    :cond_6
    if-eqz v6, :cond_7

    .line 623
    iget v14, v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    const/16 v15, 0x1d

    if-lt v14, v15, :cond_7

    iget v14, v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    const/16 v15, 0x36

    if-gt v14, v15, :cond_7

    .line 625
    invoke-virtual {v9, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->changeCase(Z)V

    .line 611
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 630
    .end local v3           #keyNum:I
    .end local v4           #keyPos:I
    .end local v5           #keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    .end local v9           #sKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .end local v10           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    :cond_8
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mIsQwertyUpperCase:Z

    goto/16 :goto_0
.end method

.method public getBalloonBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    .line 326
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getBalloonBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getCacheFlag()Z
    .locals 1

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mCacheFlag:Z

    return v0
.end method

.method public getCacheId()I
    .locals 1

    .prologue
    .line 193
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mCacheId:I

    return v0
.end method

.method public getDistancePointToEdge(III)I
    .locals 3
    .parameter "min"
    .parameter "max"
    .parameter "data"

    .prologue
    .line 430
    const/4 v0, 0x0

    .line 433
    .local v0, dis:I
    if-le p1, p2, :cond_0

    .line 434
    xor-int/2addr p1, p2

    .line 435
    xor-int/2addr p2, p1

    .line 436
    xor-int/2addr p1, p2

    .line 441
    :cond_0
    if-ge p3, p1, :cond_2

    .line 442
    sub-int v1, p1, p3

    sub-int v2, p1, p3

    mul-int v0, v1, v2

    .line 447
    :cond_1
    :goto_0
    return v0

    .line 444
    :cond_2
    if-lt p3, p2, :cond_1

    .line 445
    sub-int v1, p3, p2

    add-int/lit8 v1, v1, 0x1

    sub-int v2, p3, p2

    add-int/lit8 v2, v2, 0x1

    mul-int v0, v1, v2

    goto :goto_0
.end method

.method public getDistancePointToRect(IIIIII)I
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "pointX"
    .parameter "pointY"

    .prologue
    .line 453
    invoke-virtual {p0, p1, p3, p5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getDistancePointToEdge(III)I

    move-result v0

    invoke-virtual {p0, p2, p4, p6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getDistancePointToEdge(III)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getHorizontalLinenum()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mHorizontalLinenum:I

    return v0
.end method

.method public getKey(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 2
    .parameter "row"
    .parameter "location"

    .prologue
    .line 363
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    iget-object v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 365
    .local v0, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p2, :cond_0

    .line 366
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 369
    .end local v0           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getKeyRowForDisplay(I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    .locals 3
    .parameter "row"

    .prologue
    .line 352
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, p1, :cond_1

    .line 353
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    .line 354
    .local v0, keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    const/4 v1, -0x1

    iget v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mRowId:I

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mRowId:I

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mEnabledRowId:I

    if-ne v1, v2, :cond_1

    .line 359
    .end local v0           #keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getKeyViews()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbSoftkeyViews:Ljava/util/List;

    if-nez v4, :cond_4

    .line 394
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    if-nez v4, :cond_0

    .line 395
    const/4 v4, 0x0

    .line 409
    :goto_0
    return-object v4

    .line 397
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 398
    .local v3, softKeyViews:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;>;"
    const/4 v1, 0x0

    .local v1, row:I
    :goto_1
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 399
    const/4 v5, -0x1

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mRowId:I

    if-eq v5, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mRowId:I

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mEnabledRowId:I

    if-ne v4, v5, :cond_2

    .line 401
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    iget-object v2, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeyViews:Ljava/util/List;

    .line 402
    .local v2, rowSoftKeyvKeyViews:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 403
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 402
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 398
    .end local v0           #i:I
    .end local v2           #rowSoftKeyvKeyViews:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 407
    :cond_3
    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbSoftkeyViews:Ljava/util/List;

    .line 409
    .end local v1           #row:I
    .end local v3           #softKeyViews:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;>;"
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbSoftkeyViews:Ljava/util/List;

    goto :goto_0
.end method

.method public getKeyXMargin()I
    .locals 3

    .prologue
    .line 310
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 311
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyXMargin:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreWidth:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getKeyXMarginFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getKeyYMargin()I
    .locals 3

    .prologue
    .line 315
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 316
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyYMargin:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getKeyYMarginFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getKeys()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbSoftkeys:Ljava/util/List;

    if-nez v0, :cond_0

    .line 415
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->setSkbSoftKeys()V

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbSoftkeys:Ljava/util/List;

    return-object v0
.end method

.method public getNewlyLoadedFlag()Z
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mNewlyLoadedFlag:Z

    return v0
.end method

.method public getPopupBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mPopupBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mPopupBg:Landroid/graphics/drawable/Drawable;

    .line 331
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getPopupBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getRowBottomMargin(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;)I
    .locals 3
    .parameter "keyRow"

    .prologue
    .line 340
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 341
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mBottomMargin:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getKeyYMarginFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getRowNum()I
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 348
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRowTopMargin(Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;)I
    .locals 3
    .parameter "keyRow"

    .prologue
    .line 335
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 336
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget v1, p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mTopMargin:F

    iget v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreHeight:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getKeyYMarginFactor()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public getSkbBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbBg:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbBg:Landroid/graphics/drawable/Drawable;

    .line 321
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbTemplate:Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbTemplate;->getSkbBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public getSkbCoreHeight()I
    .locals 1

    .prologue
    .line 296
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreHeight:I

    return v0
.end method

.method public getSkbCoreWidth()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreWidth:I

    return v0
.end method

.method public getSkbTotalHeight()I
    .locals 3

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 306
    .local v0, padding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreHeight:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getSkbTotalWidth()I
    .locals 3

    .prologue
    .line 300
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getPadding()Landroid/graphics/Rect;

    move-result-object v0

    .line 301
    .local v0, padding:Landroid/graphics/Rect;
    iget v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreWidth:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    return v1
.end method

.method public getSkbXmlId()I
    .locals 1

    .prologue
    .line 258
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbXmlId:I

    return v0
.end method

.method public getSoftkeyByIndex(I)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 1
    .parameter "Index"

    .prologue
    .line 421
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 422
    :cond_0
    const/4 v0, 0x0

    .line 424
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getKeys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    goto :goto_0
.end method

.method public getStickyFlag()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mStickyFlag:Z

    return v0
.end method

.method public getVerticalLinenum()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mVerticalLinenum:I

    return v0
.end method

.method public isQwertyUpperCase()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mIsQwertyUpperCase:Z

    return v0
.end method

.method public mapToKey(II)Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .locals 22
    .parameter "x"
    .parameter "y"

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    if-nez v2, :cond_1

    .line 458
    const/4 v9, 0x0

    .line 516
    :cond_0
    :goto_0
    return-object v9

    .line 462
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v18

    .line 463
    .local v18, rowNum:I
    const v15, 0x7f7fffff

    .line 464
    .local v15, nearestDis:F
    const/16 v16, 0x0

    .line 467
    .local v16, nearestKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    const/16 v17, 0x0

    .local v17, row:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    .line 469
    .local v14, keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    const/4 v2, -0x1

    iget v3, v14, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mRowId:I

    if-eq v2, v3, :cond_3

    iget v2, v14, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mRowId:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mEnabledRowId:I

    if-eq v2, v3, :cond_3

    .line 467
    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 471
    :cond_3
    iget v2, v14, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mTop:I

    move/from16 v0, p2

    if-le v2, v0, :cond_4

    iget v2, v14, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mBottom:I

    move/from16 v0, p2

    if-le v2, v0, :cond_2

    .line 473
    :cond_4
    iget-object v0, v14, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    move-object/from16 v20, v0

    .line 474
    .local v20, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v13

    .line 476
    .local v13, keyNum:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    if-ge v11, v13, :cond_2

    .line 477
    move-object/from16 v0, v20

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 480
    .local v19, sKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v0, v19

    instance-of v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;

    if-eqz v2, :cond_6

    .line 481
    check-cast v19, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;

    .end local v19           #sKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbUnionKey;->mSoftKeys:Ljava/util/List;

    move-object/from16 v21, v0

    .line 482
    .local v21, uniteChildren:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    const/4 v12, 0x0

    .local v12, j:I
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_8

    .line 483
    move-object/from16 v0, v21

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 486
    .local v9, childKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    iget v3, v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    iget v4, v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    iget v5, v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    iget v6, v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    move-object/from16 v2, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getDistancePointToRect(IIIIII)I

    move-result v10

    .line 491
    .local v10, dis:I
    if-eqz v10, :cond_0

    .line 493
    int-to-float v2, v10

    cmpg-float v2, v2, v15

    if-gez v2, :cond_5

    .line 494
    int-to-float v15, v10

    .line 495
    move-object/from16 v16, v9

    .line 482
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 501
    .end local v9           #childKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    .end local v10           #dis:I
    .end local v12           #j:I
    .end local v21           #uniteChildren:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    .restart local v19       #sKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_6
    move-object/from16 v0, v19

    iget v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeft:I

    move-object/from16 v0, v19

    iget v3, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mLeftMargin:F

    float-to-int v3, v3

    sub-int v3, v2, v3

    move-object/from16 v0, v19

    iget v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTop:I

    move-object/from16 v0, v19

    iget v4, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mTopMargin:F

    float-to-int v4, v4

    sub-int v4, v2, v4

    move-object/from16 v0, v19

    iget v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRight:I

    move-object/from16 v0, v19

    iget v5, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mRightMargin:F

    float-to-int v5, v5

    add-int/2addr v5, v2

    move-object/from16 v0, v19

    iget v2, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottom:I

    move-object/from16 v0, v19

    iget v6, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mBottomMargin:F

    float-to-int v6, v6

    add-int/2addr v6, v2

    move-object/from16 v2, p0

    move/from16 v7, p1

    move/from16 v8, p2

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->getDistancePointToRect(IIIIII)I

    move-result v10

    .line 506
    .restart local v10       #dis:I
    if-nez v10, :cond_7

    move-object/from16 v9, v19

    .line 507
    goto/16 :goto_0

    .line 508
    :cond_7
    int-to-float v2, v10

    cmpg-float v2, v2, v15

    if-gez v2, :cond_8

    .line 509
    int-to-float v15, v10

    .line 510
    move-object/from16 v16, v19

    .line 476
    .end local v10           #dis:I
    .end local v19           #sKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_8
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .end local v11           #i:I
    .end local v13           #keyNum:I
    .end local v14           #keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    .end local v20           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    :cond_9
    move-object/from16 v9, v16

    .line 516
    goto/16 :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 198
    :cond_0
    return-void
.end method

.method public setCacheId(I)V
    .locals 0
    .parameter "cacheId"

    .prologue
    .line 168
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mCacheId:I

    .line 169
    return-void
.end method

.method public setFlags(ZZZZ)V
    .locals 0
    .parameter "cacheFlag"
    .parameter "stickyFlag"
    .parameter "isQwerty"
    .parameter "isQwertyUpperCase"

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mCacheFlag:Z

    .line 158
    iput-boolean p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mStickyFlag:Z

    .line 159
    iput-boolean p3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mIsQwerty:Z

    .line 160
    iput-boolean p4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mIsQwertyUpperCase:Z

    .line 161
    return-void
.end method

.method public setKeyBalloonBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "balloonBg"

    .prologue
    .line 184
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mBalloonBg:Landroid/graphics/drawable/Drawable;

    .line 185
    return-void
.end method

.method public setKeyMargins(FF)V
    .locals 0
    .parameter "xMargin"
    .parameter "yMargin"

    .prologue
    .line 188
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyXMargin:F

    .line 189
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyYMargin:F

    .line 190
    return-void
.end method

.method public setLinenums(II)V
    .locals 0
    .parameter "verLinenum"
    .parameter "horLinenum"

    .prologue
    .line 144
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mVerticalLinenum:I

    .line 145
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mHorizontalLinenum:I

    .line 146
    return-void
.end method

.method public setNewlyLoadedFlag(Z)V
    .locals 0
    .parameter "newlyLoadedFlag"

    .prologue
    .line 201
    iput-boolean p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mNewlyLoadedFlag:Z

    .line 202
    return-void
.end method

.method public setPopupBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "popupBg"

    .prologue
    .line 180
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mPopupBg:Landroid/graphics/drawable/Drawable;

    .line 181
    return-void
.end method

.method public setSkbBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "skbBg"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbBg:Landroid/graphics/drawable/Drawable;

    .line 177
    return-void
.end method

.method public setSkbCoreSize(II)V
    .locals 9
    .parameter "skbCoreWidth"
    .parameter "skbCoreHeight"

    .prologue
    .line 267
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    if-nez v7, :cond_0

    .line 289
    :goto_0
    return-void

    .line 270
    :cond_0
    const/4 v2, 0x0

    .local v2, row:I
    :goto_1
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 271
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    .line 272
    .local v1, keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    int-to-float v7, p2

    iget v8, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mBottomF:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mBottom:I

    .line 273
    int-to-float v7, p2

    iget v8, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mTopF:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mTop:I

    .line 275
    iget-object v6, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 276
    .local v6, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_1

    .line 277
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 278
    .local v3, softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    invoke-virtual {v3, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->setSkbCoreSize(II)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 281
    .end local v3           #softKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_1
    iget-object v5, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeyViews:Ljava/util/List;

    .line 282
    .local v5, softKeyViews:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;>;"
    const/4 v0, 0x0

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 283
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;

    .line 284
    .local v4, softKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    invoke-virtual {v4, p1, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;->setSkbCoreSize(II)V

    .line 282
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 270
    .end local v4           #softKeyView:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 287
    .end local v0           #i:I
    .end local v1           #keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    .end local v5           #softKeyViews:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKeyView;>;"
    .end local v6           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    :cond_3
    iput p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreWidth:I

    .line 288
    iput p2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreHeight:I

    goto :goto_0
.end method

.method public setSkbSoftKeys()V
    .locals 6

    .prologue
    .line 375
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    if-nez v4, :cond_0

    .line 390
    :goto_0
    return-void

    .line 378
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .local v3, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    const/4 v2, 0x0

    .local v2, row:I
    :goto_1
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 380
    const/4 v5, -0x1

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mRowId:I

    if-eq v5, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    iget v4, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mRowId:I

    iget v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mEnabledRowId:I

    if-ne v4, v5, :cond_2

    .line 382
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    iget-object v1, v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 383
    .local v1, mSoftKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 384
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 379
    .end local v0           #i:I
    .end local v1           #mSoftKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 388
    :cond_3
    iput-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbSoftkeys:Ljava/util/List;

    goto :goto_0
.end method

.method public switchQwertyMode(IZ)V
    .locals 9
    .parameter "toggle_state_id"
    .parameter "upperCase"

    .prologue
    .line 538
    iget-boolean v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mIsQwerty:Z

    if-nez v7, :cond_1

    .line 557
    :cond_0
    return-void

    .line 540
    :cond_1
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 541
    .local v4, rowNum:I
    const/4 v3, 0x0

    .local v3, row:I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 542
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    .line 543
    .local v2, keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    iget-object v6, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 544
    .local v6, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    .line 545
    .local v1, keyNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 546
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    .line 547
    .local v5, sKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    instance-of v7, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    if-eqz v7, :cond_2

    move-object v7, v5

    .line 548
    check-cast v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;

    const/4 v8, 0x1

    invoke-virtual {v7, p1, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToogleKey;->enableToggleState(IZ)Z

    .line 551
    :cond_2
    iget v7, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    const/16 v8, 0x1d

    if-lt v7, v8, :cond_3

    iget v7, v5, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->mKeyCode:I

    const/16 v8, 0x36

    if-gt v7, v8, :cond_3

    .line 553
    invoke-virtual {v5, p2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->changeCase(Z)V

    .line 545
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 541
    .end local v5           #sKey:Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 667
    const-string v6, "------------------SkbInfo----------------------\n"

    .line 668
    .local v6, str:Ljava/lang/String;
    const-string v0, "-----------------------------------------------\n"

    .line 669
    .local v0, endStr:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Width: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreWidth:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 670
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "Height: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mSkbCoreHeight:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 671
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "KeyRowNum: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v7, "0"

    :goto_0
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 674
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 685
    :goto_1
    return-object v7

    .line 671
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "\n"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 675
    :cond_1
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 676
    .local v4, rowNum:I
    const/4 v3, 0x0

    .local v3, row:I
    :goto_2
    if-ge v3, v4, :cond_3

    .line 677
    iget-object v7, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;->mKeyRows:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;

    .line 678
    .local v2, keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    iget-object v5, v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;->mSoftKeys:Ljava/util/List;

    .line 680
    .local v5, softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    .line 681
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "-key "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 680
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 676
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 685
    .end local v1           #i:I
    .end local v2           #keyRow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard$KeyRow;
    .end local v5           #softKeys:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;>;"
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method
