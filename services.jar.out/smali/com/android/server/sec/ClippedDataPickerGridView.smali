.class public Lcom/android/server/sec/ClippedDataPickerGridView;
.super Landroid/widget/GridView;
.source "ClippedDataPickerGridView.java"


# instance fields
.field final ANIMATION_DELAY:I

.field final ANIMATION_TIME:I

.field COLUMN_COUNT:I

.field final TAG:Ljava/lang/String;

.field delCnt:I

.field delayTime:I

.field deleteItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field deleteItemSize:I

.field private isAnimating:Z

.field isDelete:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/sec/ClippedDataPickerGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "c"
    .parameter "attr"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const-string v1, "ClippedDataPickerGridView"

    iput-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->TAG:Ljava/lang/String;

    .line 35
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->ANIMATION_TIME:I

    .line 36
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->ANIMATION_DELAY:I

    .line 38
    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    .line 42
    iput-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isDelete:Z

    .line 44
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    .line 45
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    .line 46
    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    .line 48
    iput-boolean v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    .line 57
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 58
    .local v0, cfg:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_1

    .line 59
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Landroid/widget/AbsListView;->setEnableEndEffect(Z)V

    .line 67
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 68
    return-void

    .line 60
    :cond_1
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 61
    iput v4, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/server/sec/ClippedDataPickerGridView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    return p1
.end method

.method private checkDeleteCount(I)I
    .locals 5
    .parameter "index"

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 153
    .local v1, n:I
    move v2, p1

    .line 155
    .local v2, prevIndex:I
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    .line 157
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    if-ge v0, v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 160
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 161
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    .line 162
    move v2, v1

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    if-le v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .end local p1
    :cond_1
    return p1
.end method

.method private getAnim(III)Landroid/view/animation/TranslateAnimation;
    .locals 5
    .parameter "width"
    .parameter "height"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 85
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v2, p1

    int-to-float v3, p2

    invoke-direct {v0, v2, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 86
    .local v0, anim:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 87
    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 88
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 90
    move v1, p3

    .line 91
    .local v1, currIndex:I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v2

    add-int v3, v1, v2

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_1

    .line 92
    new-instance v2, Lcom/android/server/sec/ClippedDataPickerGridView$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/sec/ClippedDataPickerGridView$1;-><init>(Lcom/android/server/sec/ClippedDataPickerGridView;I)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 134
    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    add-int/lit8 v2, v2, 0x0

    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    .line 136
    return-object v0

    .line 113
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    .line 114
    new-instance v2, Lcom/android/server/sec/ClippedDataPickerGridView$2;

    invoke-direct {v2, p0}, Lcom/android/server/sec/ClippedDataPickerGridView$2;-><init>(Lcom/android/server/sec/ClippedDataPickerGridView;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0
.end method

.method private requestAnimation(Landroid/view/View;I)V
    .locals 7
    .parameter "view"
    .parameter "index"

    .prologue
    .line 140
    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    rem-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    rem-int v5, p2, v5

    sub-int v2, v4, v5

    .line 141
    .local v2, indexW:I
    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    add-int/2addr v4, p2

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    div-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->COLUMN_COUNT:I

    div-int v5, p2, v5

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    sub-int v1, v4, v5

    .line 144
    .local v1, indexH:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    mul-int v0, v4, v2

    .line 145
    .local v0, horizontalAnimationWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int v3, v4, v1

    .line 147
    .local v3, verticalAnimationHeight:I
    invoke-direct {p0, v0, v3, p2}, Lcom/android/server/sec/ClippedDataPickerGridView;->getAnim(III)Landroid/view/animation/TranslateAnimation;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 149
    return-void
.end method


# virtual methods
.method public isLayoutAnimating()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    return v0
.end method

.method protected layoutChildren()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 173
    invoke-super {p0}, Landroid/widget/GridView;->layoutChildren()V

    .line 175
    iget-boolean v6, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isDelete:Z

    if-eqz v6, :cond_3

    .line 178
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 179
    .local v2, len:I
    invoke-virtual {p0}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v0

    .line 180
    .local v0, first:I
    iget-object v6, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 181
    .local v4, startItemIndex:I
    move v3, v4

    .line 183
    .local v3, nextItemIndex:I
    iput v8, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    .line 184
    iput v8, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delayTime:I

    .line 186
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 188
    add-int v6, v0, v1

    if-lt v6, v4, :cond_1

    .line 189
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 191
    .local v5, view:Landroid/view/View;
    add-int v6, v0, v1

    iget v7, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->delCnt:I

    sub-int v7, v3, v7

    if-ne v6, v7, :cond_0

    .line 192
    invoke-direct {p0, v3}, Lcom/android/server/sec/ClippedDataPickerGridView;->checkDeleteCount(I)I

    move-result v3

    .line 195
    :cond_0
    invoke-direct {p0, v5, v1}, Lcom/android/server/sec/ClippedDataPickerGridView;->requestAnimation(Landroid/view/View;I)V

    .line 186
    .end local v5           #view:Landroid/view/View;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 198
    :cond_2
    iput-boolean v8, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isDelete:Z

    .line 200
    .end local v0           #first:I
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #nextItemIndex:I
    .end local v4           #startItemIndex:I
    :cond_3
    return-void
.end method

.method public setDeletedItems(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p1, deleteItems:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 73
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    .line 79
    iget v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->deleteItemSize:I

    if-lez v1, :cond_1

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isDelete:Z

    .line 82
    :cond_1
    return-void
.end method

.method public setLayoutAnimationState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    if-eq v0, p1, :cond_0

    .line 208
    iput-boolean p1, p0, Lcom/android/server/sec/ClippedDataPickerGridView;->isAnimating:Z

    .line 210
    :cond_0
    return-void
.end method
