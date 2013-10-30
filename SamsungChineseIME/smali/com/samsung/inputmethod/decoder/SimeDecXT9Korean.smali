.class public Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;
.super Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;
.source "SimeDecXT9Korean.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final KOR_STRING_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SimeDecXT9Korean"


# instance fields
.field private isCandFetchOver:Z

.field private mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->isCandFetchOver:Z

    .line 30
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->setMaxSurfaceLen(I)V

    .line 31
    return-void
.end method

.method private setShiftMode()V
    .locals 4

    .prologue
    .line 132
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    const/high16 v3, 0xf0

    and-int v1, v2, v3

    .line 134
    .local v1, upperCase:I
    const/high16 v2, 0x30

    if-eq v2, v1, :cond_0

    const/high16 v2, 0x20

    if-ne v2, v1, :cond_1

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORSetShift()I

    .line 145
    .end local v1           #upperCase:I
    :goto_0
    return-void

    .line 139
    .restart local v1       #upperCase:I
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORSetUnShift()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v1           #upperCase:I
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setXT9InputMode(IZ)V
    .locals 5
    .parameter "inputMode"
    .parameter "phonepad"

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9SetInputMode(IZ)V

    .line 106
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9SetSKBValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 111
    const-string v1, "SimeDecXT9Korean"

    const-string v2, "set inputmode  failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setXT9Language(Ljava/lang/String;)V
    .locals 3
    .parameter "language"

    .prologue
    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    if-nez v1, :cond_0

    .line 97
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9SetLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimeDecXT9Korean"

    const-string v2, "set Language failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addInputData(CLandroid/graphics/PointF;Z)V
    .locals 5
    .parameter "ch"
    .parameter "pos"
    .parameter "bReset"

    .prologue
    .line 334
    if-eqz p3, :cond_3

    .line 335
    :try_start_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORClearInput()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextTempUpperCaseWithSkb()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextUpperCaseWithSkb()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    const/4 v2, 0x1

    .line 346
    .local v2, shift:Z
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->convetToHangulChar(IZ)C

    move-result v1

    .line 347
    .local v1, hangulChar:C
    invoke-super {p0, v1, p2, p3}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 349
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->isShiftableKey(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 350
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->setShiftMode()V

    .line 354
    :goto_2
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v3

    if-nez v3, :cond_2

    .line 355
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getChar()C

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORSearch(C)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 360
    :cond_2
    :goto_3
    return-void

    .line 337
    .end local v1           #hangulChar:C
    .end local v2           #shift:Z
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mComposingStr:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 338
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORClearInput()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SimeDecXT9Korean"

    const-string v4, "addInputData failed..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 344
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    .line 352
    .restart local v1       #hangulChar:C
    .restart local v2       #shift:Z
    :cond_6
    :try_start_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->setUnShift()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 356
    :catch_1
    move-exception v0

    .line 357
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v3, "SimeDecXT9Korean"

    const-string v4, "addInputData failed..."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method public addInputData(Ljava/lang/String;Z)V
    .locals 4
    .parameter "hangulSpell"
    .parameter "bReset"

    .prologue
    .line 363
    if-eqz p2, :cond_0

    .line 365
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    const/4 v3, -0x1

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORDeletePreSyms(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORDecodeHangul(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 373
    .local v1, inputSpell:Ljava/lang/String;
    invoke-super {p0, v1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->addInputData(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 378
    .end local v1           #inputSpell:Ljava/lang/String;
    :goto_1
    return-void

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimeDecXT9Korean"

    const-string v3, "addInputData failed..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 375
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v2, "SimeDecXT9Korean"

    const-string v3, "addInputData failed..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public chooseCandidate(I)I
    .locals 4
    .parameter "candId"

    .prologue
    .line 223
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mCandList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 225
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORChooseCand(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mCandList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, choice:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 242
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->needAutoSpace()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    const-string v0, " "

    .line 245
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->setUnShift()V

    .line 254
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->reset()V

    .line 262
    .end local v0           #choice:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "SimeDecXT9Korean"

    const-string v3, "chooseCandidate failed..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public configfeature()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 63
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->configfeature()Z

    .line 65
    iput-boolean v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->bWordDelSupport:Z

    .line 67
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    if-nez v2, :cond_0

    .line 82
    :goto_0
    return v4

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mDecPredictList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;

    .line 74
    .local v1, m:Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
    const-string v2, "ko"

    invoke-interface {v1, v2}, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;->configFeature(Ljava/lang/String;)Z

    goto :goto_1

    .line 76
    .end local v1           #m:Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
    :cond_1
    const-string v2, "ko"

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->setXT9Language(Ljava/lang/String;)V

    .line 78
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 79
    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mKeyboardType:I

    if-ne v3, v2, :cond_2

    move v2, v3

    :goto_2
    invoke-direct {p0, v3, v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->setXT9InputMode(IZ)V

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_2

    .line 81
    :cond_3
    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mKeyboardType:I

    if-ne v3, v2, :cond_4

    :goto_3
    invoke-direct {p0, v4, v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->setXT9InputMode(IZ)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_3
.end method

.method public decoding()I
    .locals 5

    .prologue
    .line 149
    const/4 v2, 0x1

    .line 152
    .local v2, nRet:I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getChar()C

    move-result v4

    invoke-interface {v3, v4}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORSearch(C)I

    .line 156
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORGetActiveIndex()I

    move-result v1

    .line 158
    .local v1, index:I
    if-ltz v1, :cond_2

    .line 159
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v3, v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORGetNthCandidate(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mComposingStr:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v1           #index:I
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 169
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->updateComposingStrForDisplay()V

    .line 172
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 175
    :cond_1
    const/4 v2, 0x0

    .line 176
    return v2

    .line 161
    .restart local v1       #index:I
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->EMPTY:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mComposingStr:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 164
    .end local v1           #index:I
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public delUdbPhrase(I)Z
    .locals 1
    .parameter "candIdx"

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCandIdx()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mActiveCandIdx:I

    return v0
.end method

.method public getActiveCmpsDisplayLen()I
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mActiveCmpsDisplayLen:I

    return v0
.end method

.method public getAllCandidates()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 270
    const/4 v1, 0x0

    .line 273
    .local v1, retCnt:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mCandList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORCandidatesList(Ljava/util/List;Z)V

    .line 274
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mCandList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 275
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORGetActiveIndex()I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mActiveCandIdx:I

    .line 277
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->isCandFetchOver:Z

    .line 278
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mCandList:Ljava/util/List;

    invoke-interface {v2, v3, v4, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 280
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v3, 0x2

    iget v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mActiveCandIdx:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    :cond_0
    :goto_0
    return v5

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimeDecXT9Korean"

    const-string v3, "getPartCandidates is fail-- (Eng)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getComposingStrCompleteLength()I
    .locals 4

    .prologue
    .line 382
    const/4 v1, 0x0

    .line 384
    .local v1, len:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORGetCompleteLenght()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 390
    :goto_0
    return v1

    .line 385
    :catch_0
    move-exception v0

    .line 386
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimeDecXT9Korean"

    const-string v3, "getComposingStrCompleteLength failed..."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getComposingStrForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mComposingStrDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigianlSplStr()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 406
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPartCandidates(IZ)I
    .locals 4
    .parameter "candNum"
    .parameter "bResetCand"

    .prologue
    const/4 v3, 0x0

    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, retCnt:I
    if-lez p1, :cond_0

    .line 299
    if-eqz p2, :cond_1

    .line 300
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->resetCandList()V

    .line 301
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->getAllCandidates()I

    move-result v0

    .line 316
    :cond_0
    :goto_0
    return v3

    .line 302
    :cond_1
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->isCandFetchOver:Z

    if-nez v1, :cond_0

    .line 305
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->isCandFetchOver:Z

    .line 306
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mCandList:Ljava/util/List;

    invoke-interface {v1, v3, v2, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    goto :goto_0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public processBackspace()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 182
    const/4 v2, 0x1

    .line 186
    .local v2, nRet:I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORDelSearch()I

    .line 190
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->setUnShift()V

    .line 193
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORGetActiveIndex()I

    move-result v1

    .line 194
    .local v1, index:I
    if-ltz v1, :cond_1

    .line 195
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v3, v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORGetNthCandidate(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mComposingStr:Ljava/lang/String;

    .line 199
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mComposingStr:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-super {p0, v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->addInputData(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    .end local v1           #index:I
    :goto_1
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->updateComposingStrForDisplay()V

    .line 209
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 210
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->reset()V

    .line 214
    :cond_0
    const/4 v2, 0x0

    .line 215
    return v2

    .line 197
    .restart local v1       #index:I
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->EMPTY:Ljava/lang/String;

    iput-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mComposingStr:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 200
    .end local v1           #index:I
    :catch_0
    move-exception v0

    .line 202
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->reset()V

    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORClearInput()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimeDecXT9Korean"

    const-string v2, "reset failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected resetCandList()V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->resetCandList()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->isCandFetchOver:Z

    .line 52
    return-void
.end method

.method public setDecoderService(Ljava/lang/Object;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 118
    check-cast p1, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    .line 119
    return-void
.end method

.method public setShift()V
    .locals 3

    .prologue
    .line 425
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORSetShift()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    :goto_0
    return-void

    .line 427
    :catch_0
    move-exception v0

    .line 428
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimeDecXT9Korean"

    const-string v2, "setShift failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUnShift()V
    .locals 3

    .prologue
    .line 436
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9KORSetUnShift()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimeDecXT9Korean"

    const-string v2, "setUnShift failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopGetCandidates()I
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public updateComposingStrForDisplay()V
    .locals 1

    .prologue
    .line 417
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mComposingStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mComposingStrDisplay:Ljava/lang/String;

    .line 418
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Korean;->mActiveCmpsDisplayLen:I

    .line 419
    return-void
.end method
