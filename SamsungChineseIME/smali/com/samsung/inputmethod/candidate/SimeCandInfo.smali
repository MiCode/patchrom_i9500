.class public Lcom/samsung/inputmethod/candidate/SimeCandInfo;
.super Ljava/lang/Object;
.source "SimeCandInfo.java"


# static fields
.field public static final MAX_PAGE_SIZE_DISPLAY:I = 0x32


# instance fields
.field protected mBFetchCandOver:Z

.field protected mCandidatesFromApp:Z

.field protected mCnToPage:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultActiveIndex:I

.field private mIsCandChange:Z

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNodesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/decoder/SimeDecCandNode;",
            ">;"
        }
    .end annotation
.end field

.field protected mPageStart:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCnToPage:Ljava/util/Vector;

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    .line 47
    iput-boolean v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCandidatesFromApp:Z

    .line 58
    iput-boolean v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mBFetchCandOver:Z

    .line 61
    iput v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mDefaultActiveIndex:I

    .line 63
    iput-boolean v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mIsCandChange:Z

    return-void
.end method


# virtual methods
.method public add(Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;)V
    .locals 1
    .parameter "candInfo"

    .prologue
    .line 163
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public add(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, newCand:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addDecoderCands(Lcom/samsung/inputmethod/decoder/SimeDecAbstract;Ljava/util/List;)V
    .locals 10
    .parameter "decoder"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/inputmethod/decoder/SimeDecAbstract;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, candList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    const/4 v9, 0x0

    .line 259
    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 264
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    if-nez v7, :cond_0

    .line 265
    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    iput-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    .line 267
    :cond_0
    const/4 v6, 0x0

    .line 268
    .local v6, nodePos:I
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 269
    .local v4, nNodesListSize:I
    const/4 v5, 0x0

    .line 270
    .local v5, nodeInfo:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 272
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;

    iget-object v7, v7, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mDecoder:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 273
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #nodeInfo:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    check-cast v5, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;

    .line 274
    .restart local v5       #nodeInfo:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    move v6, v2

    .line 279
    :cond_1
    if-nez v5, :cond_2

    .line 281
    new-instance v5, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;

    .end local v5           #nodeInfo:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    invoke-direct {v5, p1}, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;-><init>(Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)V

    .line 282
    .restart local v5       #nodeInfo:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    iput v9, v5, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mCnt:I

    .line 285
    iget-object v7, v5, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mDecoder:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    instance-of v7, v7, Lcom/samsung/inputmethod/decoder/SimeDecContact;

    if-eqz v7, :cond_4

    .line 286
    iput v9, v5, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->index:I

    .line 287
    const/4 v6, 0x0

    .line 298
    :goto_1
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    invoke-interface {v7, v6, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 303
    :cond_2
    iget v7, v5, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->index:I

    iget v8, v5, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mCnt:I

    add-int v0, v7, v8

    .line 304
    .local v0, addPos:I
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 305
    .local v1, addSize:I
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {p2, v9, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v8

    invoke-interface {v7, v0, v8}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 308
    iget v7, v5, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mCnt:I

    add-int/2addr v7, v1

    iput v7, v5, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mCnt:I

    .line 309
    add-int/lit8 v3, v6, 0x1

    .local v3, moveInx:I
    :goto_2
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_6

    .line 311
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;

    iget v8, v7, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->index:I

    add-int/2addr v8, v1

    iput v8, v7, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->index:I

    .line 309
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 270
    .end local v0           #addPos:I
    .end local v1           #addSize:I
    .end local v3           #moveInx:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 291
    :cond_4
    if-lez v4, :cond_5

    .line 292
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    add-int/lit8 v8, v4, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;

    iget v7, v7, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mCnt:I

    iput v7, v5, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->index:I

    .line 296
    :goto_3
    move v6, v4

    goto :goto_1

    .line 294
    :cond_5
    iput v9, v5, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->index:I

    goto :goto_3

    .line 314
    .end local v2           #i:I
    .end local v4           #nNodesListSize:I
    .end local v5           #nodeInfo:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    .end local v6           #nodePos:I
    :cond_6
    return-void
.end method

.method public candidatesFromApp()Z
    .locals 1

    .prologue
    .line 245
    iget-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCandidatesFromApp:Z

    return v0
.end method

.method public get(I)Ljava/lang/String;
    .locals 1
    .parameter "candId"

    .prologue
    .line 142
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 143
    :cond_0
    const/4 v0, 0x0

    .line 145
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getCnToPage()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCnToPage:Ljava/util/Vector;

    return-object v0
.end method

.method public getCurrentPageSize(I)I
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-gt v0, v1, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 214
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    goto :goto_0
.end method

.method public getCurrentPageStart(I)I
    .locals 2
    .parameter "currentPage"

    .prologue
    .line 218
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    if-ge v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 221
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getDecoderCandNode(I)Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    .locals 5
    .parameter "gIndex"

    .prologue
    .line 317
    const/4 v0, 0x0

    .line 319
    .local v0, candNode:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 321
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;

    .line 322
    .local v2, nodeContent:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    iget v3, v2, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->index:I

    if-lt p1, v3, :cond_1

    iget v3, v2, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->index:I

    iget v4, v2, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mCnt:I

    add-int/2addr v3, v4

    if-ge p1, v3, :cond_1

    .line 324
    move-object v0, v2

    .line 329
    .end local v2           #nodeContent:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    :cond_0
    return-object v0

    .line 319
    .restart local v2       #nodeContent:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getDefaultActiveIndex()I
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mDefaultActiveIndex:I

    return v0
.end method

.method public getDetailInfo(I)Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    .locals 1
    .parameter "candId"

    .prologue
    .line 149
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 150
    :cond_0
    const/4 v0, 0x0

    .line 152
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    goto :goto_0
.end method

.method public getIsCandChange()Z
    .locals 1

    .prologue
    .line 120
    iget-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mIsCandChange:Z

    return v0
.end method

.method public getPageStart()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    return-object v0
.end method

.method public isCandFetchOver()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mBFetchCandOver:Z

    return v0
.end method

.method public isCandidatesListEmpty()Z
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pageBackwardable(I)Z
    .locals 1
    .parameter "currentPage"

    .prologue
    .line 234
    if-lez p1, :cond_0

    .line 235
    const/4 v0, 0x1

    .line 236
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pageForwardable(I)Z
    .locals 3
    .parameter "currentPage"

    .prologue
    const/4 v1, 0x0

    .line 225
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v2, p1, 0x1

    if-gt v0, v2, :cond_0

    move v0, v1

    .line 230
    :goto_0
    return v0

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    move v0, v1

    .line 228
    goto :goto_0

    .line 230
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public pageReady(I)Z
    .locals 3
    .parameter "pageNo"

    .prologue
    const/4 v0, 0x0

    .line 170
    if-gez p1, :cond_1

    .line 178
    :cond_0
    :goto_0
    return v0

    .line 174
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v2, p1, 0x1

    if-le v1, v2, :cond_0

    .line 178
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public preparePage(I)Z
    .locals 4
    .parameter "pageNo"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 183
    if-gez p1, :cond_0

    move v0, v1

    .line 208
    :goto_0
    return v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    move v0, v1

    .line 188
    goto :goto_0

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v3, p1, 0x1

    if-le v0, v3, :cond_2

    move v0, v2

    .line 193
    goto :goto_0

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v3, v0

    const/16 v3, 0x32

    if-lt v0, v3, :cond_3

    move v0, v2

    .line 198
    goto :goto_0

    .line 203
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_4

    move v0, v1

    .line 204
    goto :goto_0

    :cond_4
    move v0, v2

    .line 208
    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 102
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 103
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mPageStart:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCnToPage:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 105
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCnToPage:Ljava/util/Vector;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 106
    iput-boolean v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCandidatesFromApp:Z

    .line 108
    iput-boolean v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mBFetchCandOver:Z

    .line 109
    iput v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mDefaultActiveIndex:I

    .line 110
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setIsCandChange(Z)V

    .line 112
    return-void
.end method

.method public setCandFetchOver(Z)V
    .locals 0
    .parameter "isOver"

    .prologue
    .line 130
    iput-boolean p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mBFetchCandOver:Z

    .line 131
    return-void
.end method

.method public setCandidatesFromApp(Z)V
    .locals 0
    .parameter "fromApp"

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mCandidatesFromApp:Z

    .line 250
    return-void
.end method

.method public setDefaultActiveIndex(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 92
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mDefaultActiveIndex:I

    .line 93
    return-void
.end method

.method public setDefaultActiveIndex(Lcom/samsung/inputmethod/decoder/SimeDecAbstract;I)Z
    .locals 5
    .parameter "decoder"
    .parameter "index"

    .prologue
    .line 66
    const/4 v0, 0x0

    .line 68
    .local v0, bRet:Z
    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 70
    const/4 v3, 0x0

    .line 71
    .local v3, nodeInfo:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mNodesList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;

    .line 72
    .local v2, m:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    iget-object v4, v2, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mDecoder:Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 73
    move-object v3, v2

    .line 78
    .end local v2           #m:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    :cond_1
    if-eqz v3, :cond_2

    .line 80
    iget v4, v3, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->mCnt:I

    if-ge p2, v4, :cond_2

    .line 82
    iget v4, v3, Lcom/samsung/inputmethod/decoder/SimeDecCandNode;->index:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mDefaultActiveIndex:I

    .line 83
    const/4 v0, 0x1

    .line 87
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #nodeInfo:Lcom/samsung/inputmethod/decoder/SimeDecCandNode;
    :cond_2
    return v0
.end method

.method public setIsCandChange(Z)V
    .locals 1
    .parameter "isChange"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mIsCandChange:Z

    if-eq v0, p1, :cond_0

    .line 116
    iput-boolean p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mIsCandChange:Z

    .line 117
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
