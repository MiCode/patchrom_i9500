.class public Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;
.super Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;
.source "SimeDecSwiftKeyChinese.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeDecSwiftKeyChinese"

.field protected static strEngineStroke:[C

.field protected static strInputStroke:[C


# instance fields
.field private mFetchedCandCount:I

.field mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x6

    .line 22
    new-array v0, v1, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->strInputStroke:[C

    .line 25
    new-array v0, v1, [C

    fill-array-data v0, :array_1

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->strEngineStroke:[C

    return-void

    .line 22
    :array_0
    .array-data 0x2
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
    .end array-data

    .line 25
    :array_1
    .array-data 0x2
        0xd0t 0x31t
        0xd1t 0x31t
        0xd3t 0x31t
        0xd4t 0x31t
        0xd6t 0x31t
        0x2at 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mFetchedCandCount:I

    .line 36
    return-void
.end method

.method private getCandidates(I)I
    .locals 8
    .parameter "candNum"

    .prologue
    const/16 v7, 0xc8

    .line 339
    const/4 v3, 0x0

    .line 340
    .local v3, retCnt:I
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 341
    .local v0, addedCandList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    if-gtz p1, :cond_0

    move v4, v3

    .line 377
    .end local v3           #retCnt:I
    .local v4, retCnt:I
    :goto_0
    return v4

    .line 347
    .end local v4           #retCnt:I
    .restart local v3       #retCnt:I
    :cond_0
    iget v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mFetchedCandCount:I

    .line 348
    .local v5, startIdx:I
    move v1, p1

    .line 349
    .local v1, fetchCnt:I
    add-int v6, v1, v5

    if-lt v6, v7, :cond_1

    .line 350
    rsub-int v1, v5, 0xc8

    .line 353
    :cond_1
    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v6, v0, v5, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getCandList(Ljava/util/List;II)I

    move-result v3

    .line 356
    iget v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mFetchedCandCount:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mFetchedCandCount:I

    .line 357
    const/4 v2, 0x0

    .line 359
    .local v2, msgId:I
    if-lt v3, p1, :cond_2

    iget v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mFetchedCandCount:I

    if-lt v6, v7, :cond_4

    .line 361
    :cond_2
    const/4 v2, 0x0

    .line 368
    :goto_1
    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mCandList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 370
    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v6, :cond_3

    .line 371
    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    invoke-interface {v6, v2, v0, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    :cond_3
    move v4, v3

    .line 377
    .end local v3           #retCnt:I
    .restart local v4       #retCnt:I
    goto :goto_0

    .line 365
    .end local v4           #retCnt:I
    .restart local v3       #retCnt:I
    :cond_4
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private prepare34SplCandidatesList()V
    .locals 3

    .prologue
    .line 227
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 229
    .local v0, tmpCandidatesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->reset()V

    .line 231
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->prepareSpellList(Ljava/util/List;I)V

    .line 232
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandFetchOver(Z)V

    .line 234
    return-void
.end method

.method private prepareSpellList(Ljava/util/List;I)V
    .locals 4
    .parameter
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, candidateList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 239
    .local v1, nCount:I
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getPrefixPredicts(Ljava/util/List;)I

    move-result v3

    if-nez v3, :cond_1

    if-eqz p1, :cond_1

    .line 242
    const-string v2, ""

    .line 243
    .local v2, str:Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 245
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 247
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #str:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 248
    .restart local v2       #str:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->add(Ljava/lang/String;)V

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v0           #i:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 253
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #str:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 254
    .restart local v2       #str:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->add(Ljava/lang/String;)V

    .line 252
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 258
    .end local v0           #i:I
    .end local v2           #str:Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public addInputData(CLandroid/graphics/PointF;Z)V
    .locals 1
    .parameter "ch"
    .parameter "pos"
    .parameter "bReset"

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 93
    if-eqz p3, :cond_0

    .line 94
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->resetInput()I

    .line 96
    :cond_0
    return-void
.end method

.method public chooseCandidate(I)I
    .locals 6
    .parameter "candId"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 163
    const/4 v0, -0x1

    .line 165
    .local v0, ret:I
    const/4 v1, 0x0

    .line 168
    .local v1, selectPhrase:Ljava/lang/String;
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mCandList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 169
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->selectChineseCandidate(I)I

    move-result v0

    .line 172
    :cond_0
    if-ne v0, v5, :cond_3

    .line 173
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getSelectPhrase()Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->updateComposingStrForDisplay()V

    .line 186
    sget-object v2, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese$1;->$SwitchMap$com$samsung$inputmethod$SamsungIME$ImeState:[I

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME$ImeState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 221
    :cond_2
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 175
    :cond_3
    if-ne v0, v4, :cond_5

    .line 176
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    :cond_4
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->prepare34SplCandidatesList()V

    goto :goto_0

    .line 179
    :cond_5
    if-nez v0, :cond_1

    .line 180
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mCandList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 189
    :pswitch_0
    if-ne v0, v5, :cond_7

    .line 190
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 191
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 193
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    goto :goto_1

    .line 196
    :cond_7
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateCommitSelection(Z)V

    goto :goto_1

    .line 200
    :pswitch_1
    if-ne v0, v5, :cond_2

    .line 202
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_8

    .line 203
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 205
    :cond_8
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    goto :goto_1

    .line 211
    :pswitch_2
    if-eqz v1, :cond_2

    .line 212
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    goto :goto_1

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public configfeature()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 55
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->configfeature()Z

    .line 57
    iput-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->bWordDelSupport:Z

    .line 59
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputLanguage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setInputLanguage(Ljava/lang/String;)I

    .line 61
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputMode:I

    iget v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mKeyboardType:I

    if-ne v1, v4, :cond_0

    move v0, v1

    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getMajorView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setInputLayout(IZLcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;)I

    .line 63
    return v1
.end method

.method protected convertToEngineStrokeSymbol(C)C
    .locals 2
    .parameter "c"

    .prologue
    .line 444
    const/4 v0, 0x0

    .line 445
    .local v0, j:I
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->strInputStroke:[C

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 446
    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->strInputStroke:[C

    aget-char v1, v1, v0

    if-ne p1, v1, :cond_2

    .line 449
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Stroke()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->strInputStroke:[C

    array-length v1, v1

    if-ne v0, v1, :cond_3

    .line 453
    :cond_1
    :goto_1
    return p1

    .line 445
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    :cond_3
    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->strEngineStroke:[C

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->strEngineStroke:[C

    aget-char p1, v1, v0

    goto :goto_1
.end method

.method public decoding()I
    .locals 7

    .prologue
    .line 101
    const/4 v3, 0x1

    .line 103
    .local v3, nRet:I
    const/16 v5, 0x96

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->getContextString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, contextString:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getChar()C

    move-result v0

    .line 107
    .local v0, addChar:C
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 108
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->convertToBPMFSymbol(C)C

    move-result v0

    .line 121
    :cond_0
    :goto_0
    const/4 v4, 0x0

    .line 123
    .local v4, point:Lcom/touchtype_fluency/Point;
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getPoint()Landroid/graphics/PointF;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 124
    new-instance v4, Lcom/touchtype_fluency/Point;

    .end local v4           #point:Lcom/touchtype_fluency/Point;
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getPoint()Landroid/graphics/PointF;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->x:F

    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getPoint()Landroid/graphics/PointF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-direct {v4, v5, v6}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    .line 126
    .restart local v4       #point:Lcom/touchtype_fluency/Point;
    :cond_1
    new-instance v2, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;

    invoke-direct {v2, v0, v4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;-><init>(CLcom/touchtype_fluency/Point;)V

    .line 128
    .local v2, data:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v5, v1, v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->addInputContext(Ljava/lang/String;Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;)I

    move-result v3

    .line 130
    if-nez v3, :cond_4

    .line 132
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 133
    :cond_2
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->prepare34SplCandidatesList()V

    .line 135
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->updateComposingStrForDisplay()V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->decodingFinish()V

    .line 137
    const/4 v3, 0x0

    .line 140
    :cond_4
    return v3

    .line 109
    .end local v2           #data:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyAddData;
    .end local v4           #point:Lcom/touchtype_fluency/Point;
    :cond_5
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Stroke()Z

    move-result v5

    if-nez v5, :cond_0

    .line 113
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v5

    if-eqz v5, :cond_6

    const/16 v5, 0x2a

    if-ne v0, v5, :cond_6

    .line 115
    const/16 v0, 0x23

    goto :goto_0

    .line 116
    :cond_6
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyCangjie()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    const/16 v5, 0x61

    if-lt v0, v5, :cond_0

    const/16 v5, 0x7a

    if-gt v0, v5, :cond_0

    .line 118
    add-int/lit8 v5, v0, -0x20

    int-to-char v0, v5

    goto :goto_0
.end method

.method public delUdbPhrase(I)Z
    .locals 1
    .parameter "candIdx"

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCandIdx()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCmpsDisplayLen()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mActiveCmpsDisplayLen:I

    return v0
.end method

.method public getAllCandidates()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 318
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mFetchedCandCount:I

    rsub-int/lit8 v0, v0, 0x1e

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->getPartCandidates(IZ)I

    .line 319
    return v1
.end method

.method public getComposingStrForDisplay()Ljava/lang/String;
    .locals 4

    .prologue
    .line 284
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isCangjieMode()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQuickCangjieMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 287
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 290
    .local v2, pyStrCangjie:Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mComposingStrDisplay:Ljava/lang/String;

    .line 291
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 306
    .local v0, c:C
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->convertToCangjieSymbol(C)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 308
    .end local v0           #c:C
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 310
    .end local v1           #i:I
    .end local v2           #pyStrCangjie:Ljava/lang/StringBuffer;
    :goto_1
    return-object v3

    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mComposingStrDisplay:Ljava/lang/String;

    goto :goto_1
.end method

.method public getPartCandidates(IZ)I
    .locals 1
    .parameter "candNum"
    .parameter "bResetCand"

    .prologue
    .line 331
    if-eqz p2, :cond_0

    .line 332
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->resetCandList()V

    .line 334
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->getCandidates(I)I

    move-result v0

    return v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public preparePredicts(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "history"

    .prologue
    .line 401
    const/4 v0, -0x1

    .line 402
    .local v0, activeCandIdx:I
    new-instance v1, Lcom/touchtype_fluency/ResultsFilter;

    const/16 v4, 0x1e

    invoke-direct {v1, v4}, Lcom/touchtype_fluency/ResultsFilter;-><init>(I)V

    .line 404
    .local v1, filter:Lcom/touchtype_fluency/ResultsFilter;
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mDecPredictList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 406
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->resetCandList()V

    .line 408
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mDecPredictList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;

    .line 410
    .local v3, m:Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mCandList:Ljava/util/List;

    invoke-interface {v3, p1, v4, v1}, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;->preparePredicts(Ljava/lang/CharSequence;Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 412
    invoke-interface {v3}, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;->getActiveCandIdx()I

    move-result v0

    .line 420
    .end local v3           #m:Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v4, :cond_2

    .line 422
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mCandList:Ljava/util/List;

    invoke-interface {v4, v5, v6, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 426
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 436
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public processBackspace()I
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->deleteInput()I

    .line 148
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->prepare34SplCandidatesList()V

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->updateComposingStrForDisplay()V

    .line 153
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->decodingFinish()V

    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->reset()V

    .line 71
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->resetInput()I

    .line 72
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->resetCandList()V

    .line 73
    return-void
.end method

.method protected resetCandList()V
    .locals 1

    .prologue
    .line 78
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->resetCandList()V

    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mFetchedCandCount:I

    .line 80
    return-void
.end method

.method public setActivePrefixSuffix(I)I
    .locals 2
    .parameter "index"

    .prologue
    .line 384
    const/4 v0, 0x1

    .line 386
    .local v0, nRet:I
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setActivePrefix(I)I

    move-result v1

    if-nez v1, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->updateComposingStrForDisplay()V

    .line 391
    const/4 v0, 0x0

    .line 395
    :cond_0
    return v0
.end method

.method public setDecoderService(Ljava/lang/Object;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 48
    check-cast p1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    .line 50
    return-void
.end method

.method public stopGetCandidates()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public updateComposingStrForDisplay()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getSpell()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mComposingStrDisplay:Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mActiveCmpsDisplayLen:I

    .line 271
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyChinese;->setComposingStr(Ljava/lang/String;)V

    .line 272
    return-void
.end method
