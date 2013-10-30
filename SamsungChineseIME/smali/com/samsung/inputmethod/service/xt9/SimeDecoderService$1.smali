.class Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;
.super Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;
.source "SimeDecoderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    invoke-direct {p0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public ImXT9AddMdb(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "phrase"
    .parameter "spell"

    .prologue
    .line 850
    invoke-static {p1, p2}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9AddMdb(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ImXT9DeleteMdb(Ljava/lang/String;)I
    .locals 1
    .parameter "phrase"

    .prologue
    .line 854
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9DeleteMdb(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ImXT9ExportMdb(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 862
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9ExportMdb(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ImXT9ImportMdb(Ljava/lang/String;)I
    .locals 1
    .parameter "fileName"

    .prologue
    .line 858
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9ImportMdb(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ImXT9ResetMdb()I
    .locals 1

    .prologue
    .line 865
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9ResetMdb()I

    move-result v0

    return v0
.end method

.method public XT9AWCandidatesList(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 872
    .local p1, candidatesList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    const/4 v1, 0x0

    .line 874
    .local v1, i:I
    :cond_0
    invoke-static {v1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9AWGetPhrase(I)Ljava/lang/String;

    move-result-object v2

    .line 875
    .local v2, retStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 876
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Ljava/lang/String;)V

    .line 877
    .local v0, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    add-int/lit8 v1, v1, 0x1

    .line 880
    .end local v0           #candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 881
    return-void
.end method

.method public XT9AWChooseCand(I)I
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 892
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9AWChoosePhrase(I)I

    move-result v0

    return v0
.end method

.method public XT9AWClearInput()I
    .locals 1

    .prologue
    .line 899
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9AWClearInput()I

    move-result v0

    return v0
.end method

.method public XT9AWDelSearch()I
    .locals 1

    .prologue
    .line 903
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9AWDelSearch()I

    move-result v0

    return v0
.end method

.method public XT9AWGetActiveIndex()I
    .locals 1

    .prologue
    .line 896
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9AWGetDefaultActiveIndex()I

    move-result v0

    return v0
.end method

.method public XT9AWGetNthCandidate(I)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 888
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9AWGetPhrase(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public XT9AWGetNumSymbs()I
    .locals 1

    .prologue
    .line 907
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9AWGetNumSymbs()I

    move-result v0

    return v0
.end method

.method public XT9AWSearch(C)I
    .locals 1
    .parameter "symbol"

    .prologue
    .line 884
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9AWSearch(C)I

    move-result v0

    return v0
.end method

.method public XT9AWSetCapsLock()I
    .locals 1

    .prologue
    .line 924
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9AWSetCapsLock()I

    move-result v0

    return v0
.end method

.method public XT9AWSetShift()I
    .locals 1

    .prologue
    .line 911
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9AWSetShift()I

    move-result v0

    return v0
.end method

.method public XT9AWSetShiftMode(I)I
    .locals 1
    .parameter "ShiftMode"

    .prologue
    .line 919
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9AWSetShiftMode(I)I

    move-result v0

    return v0
.end method

.method public XT9AWSetUnShift()I
    .locals 1

    .prologue
    .line 915
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9AWSetUnShift()I

    move-result v0

    return v0
.end method

.method public XT9KORCandidatesList(Ljava/util/List;Z)V
    .locals 4
    .parameter
    .parameter "enablePrediction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 934
    .local p1, candidatesList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    const/4 v1, 0x0

    .line 936
    .local v1, i:I
    :cond_0
    invoke-static {v1, p2}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9KORGetPhrase(IZ)Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, retStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 938
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Ljava/lang/String;)V

    .line 939
    .local v0, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 940
    add-int/lit8 v1, v1, 0x1

    .line 942
    .end local v0           #candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_0

    .line 943
    return-void
.end method

.method public XT9KORChooseCand(I)I
    .locals 1
    .parameter "choiceId"

    .prologue
    .line 956
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9KORChoosePhrase(I)I

    move-result v0

    return v0
.end method

.method public XT9KORClearInput()I
    .locals 1

    .prologue
    .line 964
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9KORClearInput()I

    move-result v0

    return v0
.end method

.method public XT9KORDecodeHangul(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "hangulSpell"

    .prologue
    .line 992
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9KORDecodeHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public XT9KORDelSearch()I
    .locals 1

    .prologue
    .line 968
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9KORDelSearch()I

    move-result v0

    return v0
.end method

.method public XT9KORDeletePreSyms(I)I
    .locals 1
    .parameter "deleteLen"

    .prologue
    .line 976
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9KORDeletePreSyms(I)I

    move-result v0

    return v0
.end method

.method public XT9KORGetActiveIndex()I
    .locals 1

    .prologue
    .line 960
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9KORGetDefaultActiveIndex()I

    move-result v0

    return v0
.end method

.method public XT9KORGetCompleteLenght()I
    .locals 1

    .prologue
    .line 972
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9KORGetCompleteLength()I

    move-result v0

    return v0
.end method

.method public XT9KORGetNthCandidate(I)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 952
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9KORGetPhrase(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public XT9KORGetPredictionList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter "fixedStr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 946
    .local p2, preList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9KORFillContext(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 947
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;->XT9KORCandidatesList(Ljava/util/List;Z)V

    .line 949
    :cond_0
    return-void
.end method

.method public XT9KORSearch(C)I
    .locals 1
    .parameter "symbol"

    .prologue
    .line 988
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9KORSearch(C)I

    move-result v0

    return v0
.end method

.method public XT9KORSetShift()I
    .locals 1

    .prologue
    .line 980
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9KORSetShift()I

    move-result v0

    return v0
.end method

.method public XT9KORSetUnShift()I
    .locals 1

    .prologue
    .line 984
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9KORSetUnShift()I

    move-result v0

    return v0
.end method

.method public imXT9CHNAddOneChar(C)I
    .locals 1
    .parameter "symbol"

    .prologue
    .line 545
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNAddOneChar(C)I

    move-result v0

    return v0
.end method

.method public imXT9CHNChooseCand(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 736
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNChoosePhrase(I)I

    move-result v0

    return v0
.end method

.method public imXT9CHNDelUDBPhrase(I)Z
    .locals 1
    .parameter "index"

    .prologue
    .line 816
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNDelUDBPhrase(I)Z

    move-result v0

    return v0
.end method

.method public imXT9CHNEnableErrorCorrect(Z)I
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 840
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNEnableErrorCorrect(Z)I

    move-result v0

    return v0
.end method

.method public imXT9CHNEnableFullSentence(Z)I
    .locals 1
    .parameter "bHigh"

    .prologue
    .line 843
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNEnableFullSentence(Z)I

    move-result v0

    return v0
.end method

.method public imXT9CHNGetCandsList(Ljava/util/List;II)I
    .locals 6
    .parameter
    .parameter "start"
    .parameter "num"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;II)I"
        }
    .end annotation

    .prologue
    .line 702
    .local p1, candList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    const/4 v2, 0x0

    .line 703
    .local v2, retCnt:I
    if-nez p1, :cond_0

    move v3, v2

    .line 720
    .end local v2           #retCnt:I
    .local v3, retCnt:I
    :goto_0
    return v3

    .line 705
    .end local v3           #retCnt:I
    .restart local v2       #retCnt:I
    :cond_0
    move v1, p2

    .local v1, i:I
    :goto_1
    add-int v5, p2, p3

    if-ge v1, v5, :cond_1

    .line 707
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>()V

    .line 708
    .local v0, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    invoke-static {v1, v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNGetPhraseInfo(ILcom/samsung/inputmethod/candidate/SimeCandDetailInfo;)V

    .line 709
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContent()Ljava/lang/String;

    move-result-object v4

    .line 711
    .local v4, retStr:Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 712
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 714
    add-int/lit8 v2, v2, 0x1

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    .end local v4           #retStr:Ljava/lang/String;
    :cond_1
    move v3, v2

    .line 720
    .end local v2           #retCnt:I
    .restart local v3       #retCnt:I
    goto :goto_0
.end method

.method public imXT9CHNGetPredictionList(Ljava/lang/String;Ljava/util/List;)I
    .locals 5
    .parameter "fixedStr"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p2, preList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    const/4 v3, 0x0

    .line 769
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNPreparePrediction(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3

    .line 771
    const/4 v1, 0x0

    .line 772
    .local v1, i:I
    if-nez p2, :cond_0

    .line 799
    .end local v1           #i:I
    :goto_0
    return v1

    .line 776
    .restart local v1       #i:I
    :cond_0
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>()V

    .line 777
    .local v0, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    invoke-static {v1, v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNGetPhraseInfo(ILcom/samsung/inputmethod/candidate/SimeCandDetailInfo;)V

    .line 778
    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContent()Ljava/lang/String;

    move-result-object v2

    .line 785
    .local v2, retStr:Ljava/lang/String;
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DEL_UDB_FEATURE:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->isContentTypeUDB()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 787
    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->setContentType(I)V

    .line 791
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 792
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 793
    add-int/lit8 v1, v1, 0x1

    .line 796
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    .end local v0           #candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    .end local v1           #i:I
    .end local v2           #retStr:Ljava/lang/String;
    :cond_3
    move v1, v3

    .line 799
    goto :goto_0
.end method

.method public imXT9CHNGetPrefixCount()I
    .locals 1

    .prologue
    .line 582
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNGetPrefixCount()I

    move-result v0

    return v0
.end method

.method public imXT9CHNGetPrefixs(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 599
    .local p1, prefixsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 600
    .local v0, i:I
    if-nez p1, :cond_0

    move v1, v0

    .line 615
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    return v1

    .line 603
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNGetPrefixCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 606
    :cond_1
    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNGetPrefix(I)Ljava/lang/String;

    move-result-object v2

    .line 608
    .local v2, retStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 609
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 610
    add-int/lit8 v0, v0, 0x1

    .line 613
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .end local v2           #retStr:Ljava/lang/String;
    :cond_3
    move v1, v0

    .line 615
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method public imXT9CHNGetRefinedSpell()Ljava/lang/String;
    .locals 1

    .prologue
    .line 752
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNGetRefinedSpell()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imXT9CHNGetSpell()Ljava/lang/String;
    .locals 1

    .prologue
    .line 578
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNGetSpell()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public imXT9CHNGetSuffixCount()I
    .locals 1

    .prologue
    .line 619
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNGetSuffixCount()I

    move-result v0

    return v0
.end method

.method public imXT9CHNGetSuffixs(Ljava/util/List;)I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 636
    .local p1, prefixsList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 637
    .local v0, i:I
    if-nez p1, :cond_0

    move v1, v0

    .line 652
    .end local v0           #i:I
    .local v1, i:I
    :goto_0
    return v1

    .line 640
    .end local v1           #i:I
    .restart local v0       #i:I
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNGetSuffixCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 643
    :cond_1
    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNGetSuffix(I)Ljava/lang/String;

    move-result-object v2

    .line 645
    .local v2, retStr:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 646
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 647
    add-int/lit8 v0, v0, 0x1

    .line 650
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_1

    .end local v2           #retStr:Ljava/lang/String;
    :cond_3
    move v1, v0

    .line 652
    .end local v0           #i:I
    .restart local v1       #i:I
    goto :goto_0
.end method

.method public imXT9CHNPYEnableMohuPairs(I)I
    .locals 1
    .parameter "iPairsModeMask"

    .prologue
    .line 834
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNPYEnableMohuPairs(I)I

    move-result v0

    return v0
.end method

.method public imXT9CHNProcessBackspace()I
    .locals 1

    .prologue
    .line 561
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNProcessBackspace()I

    move-result v0

    return v0
.end method

.method public imXT9CHNReset()V
    .locals 0

    .prologue
    .line 530
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNReset()V

    .line 531
    return-void
.end method

.method public imXT9CHNSTREnableComponent(Z)I
    .locals 1
    .parameter "enable"

    .prologue
    .line 846
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNSTREnableComponent(Z)I

    move-result v0

    return v0
.end method

.method public imXT9CHNSetActivePrefix(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 668
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNSetActivePrefix(I)I

    move-result v0

    return v0
.end method

.method public imXT9CHNSetActiveSuffix(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 684
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNSetActiveSuffix(I)I

    move-result v0

    return v0
.end method

.method public imXT9CHNSetMdbPriorityHigh(Z)I
    .locals 1
    .parameter "bHigh"

    .prologue
    .line 837
    invoke-static {p1}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNSetMdbPriorityHigh(Z)I

    move-result v0

    return v0
.end method

.method public imXT9FreeUdb()V
    .locals 0

    .prologue
    .line 440
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNFreeUdbBuf()V

    .line 441
    invoke-static {}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9KORFreeUdbBuf()V

    .line 442
    return-void
.end method

.method public imXT9SetInputMode(IZ)V
    .locals 2
    .parameter "mode"
    .parameter "isPhonePad"

    .prologue
    .line 482
    iget-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 485
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNSetInputMode(IZ)I

    .line 491
    :cond_1
    :goto_0
    return-void

    .line 486
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 487
    invoke-static {p1, p2}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9KORSetInputMode(IZ)I

    goto :goto_0

    .line 488
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    invoke-static {p1, p2}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9AWSetInputMode(IZ)I

    goto :goto_0
.end method

.method public imXT9SetLanguage(Ljava/lang/String;)V
    .locals 1
    .parameter "language"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iput-object p1, v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    .line 459
    const-string v0, "zh_CN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 460
    sget v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->XT9PLIDChineseSimplified:I

    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNLoadLDBNum(I)V

    .line 466
    :cond_0
    :goto_0
    return-void

    .line 461
    :cond_1
    const-string v0, "zh_TW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 462
    sget v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->XT9PLIDChineseTraditional:I

    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNLoadLDBNum(I)V

    goto :goto_0

    .line 463
    :cond_2
    const-string v0, "zh_HK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 464
    sget v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->XT9PLIDChineseHongkong:I

    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNLoadLDBNum(I)V

    goto :goto_0
.end method

.method public imXT9SetSKBValue(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 505
    iget-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "zh_CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "zh_TW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "zh_HK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 508
    :cond_0
    invoke-static {p1, p2}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeImXT9CHNSetSKBValue(II)V

    .line 514
    :cond_1
    :goto_0
    return-void

    .line 509
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "ko"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    invoke-static {p1, p2}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9KORSetSKBValue(II)V

    goto :goto_0

    .line 511
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    #getter for: Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->mIMEXT9Info:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;
    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->access$100(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$IMEXT9Info;->Language:Ljava/lang/String;

    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    invoke-static {p1, p2}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->nativeXT9AWSetSKBValue(II)V

    goto :goto_0
.end method

.method public imXT9StoreUdb()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService$1;->this$0:Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;

    #calls: Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->storeUdbToFile()V
    invoke-static {v0}, Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;->access$000(Lcom/samsung/inputmethod/service/xt9/SimeDecoderService;)V

    .line 436
    return-void
.end method
