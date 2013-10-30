.class public Lcom/samsung/inputmethod/decoder/SimeDecXT9English;
.super Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;
.source "SimeDecXT9English.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final ENG_STRING_MAX:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SimeDecXT9English"

.field private static final XT9_ENG_MODE_LOWERCASE:I = 0x0

.field private static final XT9_ENG_MODE_TEMPUPPER:I = 0x1

.field private static final XT9_ENG_MODE_UPPERCASE:I = 0x2


# instance fields
.field private isCandFetchOver:Z

.field private mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

.field private mStickToSplType:Z


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 32
    iput-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z

    .line 34
    iput-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->isCandFetchOver:Z

    .line 39
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->setMaxSurfaceLen(I)V

    .line 40
    return-void
.end method

.method private setShiftMode()V
    .locals 6

    .prologue
    const/high16 v5, 0x30

    const/high16 v4, 0x20

    .line 208
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    const/high16 v3, 0xf0

    and-int v1, v2, v3

    .line 210
    .local v1, upperCase:I
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 211
    if-ne v4, v1, :cond_1

    .line 212
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    .line 242
    .end local v1           #upperCase:I
    :cond_0
    :goto_0
    return-void

    .line 214
    .restart local v1       #upperCase:I
    :cond_1
    if-ne v5, v1, :cond_2

    .line 215
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    .line 216
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 238
    .end local v1           #upperCase:I
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #upperCase:I
    :cond_2
    :try_start_1
    iget-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z

    if-eqz v2, :cond_3

    .line 220
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    goto :goto_0

    .line 222
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    goto :goto_0

    .line 225
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    if-ne v4, v1, :cond_5

    .line 227
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    goto :goto_0

    .line 228
    :cond_5
    if-ne v5, v1, :cond_6

    .line 229
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    .line 230
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z

    goto :goto_0

    .line 232
    :cond_6
    iget-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z

    if-eqz v2, :cond_7

    .line 233
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I

    goto :goto_0

    .line 235
    :cond_7
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWSetShiftMode(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private setXT9InputMode(IZ)V
    .locals 5
    .parameter "inputMode"
    .parameter "phonepad"

    .prologue
    .line 193
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9SetInputMode(IZ)V

    .line 194
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9SetSKBValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 199
    const-string v1, "SimeDecXT9English"

    const-string v2, "set inputmode  failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setXT9Language(Ljava/lang/String;)V
    .locals 3
    .parameter "language"

    .prologue
    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    if-nez v1, :cond_0

    .line 185
    :goto_0
    return-void

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9SetLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 180
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimeDecXT9English"

    const-string v2, "set Language failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private updateComposingStrForDisplay()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStrDisplay:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mActiveCmpsDisplayLen:I

    .line 86
    return-void
.end method


# virtual methods
.method public addInputData(CLandroid/graphics/PointF;Z)V
    .locals 2
    .parameter "ch"
    .parameter "pos"
    .parameter "bReset"

    .prologue
    .line 66
    if-eqz p3, :cond_0

    .line 69
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWClearInput()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 78
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public chooseCandidate(I)I
    .locals 5
    .parameter "candId"

    .prologue
    const/4 v4, 0x0

    .line 321
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCandList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 323
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWChooseCand(I)I

    .line 328
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCandList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, choice:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 340
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 341
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->needAutoSpace()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    const-string v0, " "

    .line 343
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 350
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    .line 353
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->reset()V

    .line 358
    .end local v0           #choice:Ljava/lang/String;
    :cond_1
    return v4

    .line 331
    :catch_0
    move-exception v1

    .line 333
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public configfeature()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 141
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->configfeature()Z

    .line 143
    iput-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->bWordDelSupport:Z

    .line 145
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    if-nez v2, :cond_0

    .line 154
    :goto_0
    return v0

    .line 151
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputLanguage:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->setXT9Language(Ljava/lang/String;)V

    .line 152
    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputMode:I

    iget v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mKeyboardType:I

    if-ne v1, v3, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->setXT9InputMode(IZ)V

    move v0, v1

    .line 154
    goto :goto_0
.end method

.method public decoding()I
    .locals 4

    .prologue
    .line 250
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getChar()C

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWSearch(C)I

    .line 252
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->setShiftMode()V

    .line 255
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWGetActiveIndex()I

    move-result v1

    .line 257
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 258
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2, v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWGetNthCandidate(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStr:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .end local v1           #index:I
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->updateComposingStrForDisplay()V

    .line 271
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 273
    const/4 v2, 0x0

    return v2

    .line 260
    .restart local v1       #index:I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->EMPTY:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStr:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 263
    .end local v1           #index:I
    :catch_0
    move-exception v0

    .line 265
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public delUdbPhrase(I)Z
    .locals 1
    .parameter "candIdx"

    .prologue
    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCandIdx()I
    .locals 1

    .prologue
    .line 437
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mActiveCandIdx:I

    return v0
.end method

.method public getActiveCmpsDisplayLen()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mActiveCmpsDisplayLen:I

    return v0
.end method

.method public getAllCandidates()I
    .locals 5

    .prologue
    .line 394
    const/4 v1, 0x0

    .line 397
    .local v1, retCnt:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCandList:Ljava/util/List;

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWCandidatesList(Ljava/util/List;)V

    .line 398
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCandList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 399
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWGetActiveIndex()I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mActiveCandIdx:I

    .line 401
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->isCandFetchOver:Z

    .line 402
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v2, :cond_0

    .line 403
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCandList:Ljava/util/List;

    invoke-interface {v2, v3, v4, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 404
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v3, 0x2

    iget v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mActiveCandIdx:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_0
    :goto_0
    return v1

    .line 406
    :catch_0
    move-exception v0

    .line 407
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SimeDecXT9English"

    const-string v3, "getPartCandidates is fail-- (Eng)"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getComposingStrForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStrDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getOrigianlSplStr()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getPartCandidates(IZ)I
    .locals 4
    .parameter "candNum"
    .parameter "bResetCand"

    .prologue
    .line 366
    const/4 v0, 0x0

    .line 368
    .local v0, retCnt:I
    if-lez p1, :cond_0

    .line 369
    if-eqz p2, :cond_1

    .line 370
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->resetCandList()V

    .line 371
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->getAllCandidates()I

    move-result v0

    .line 386
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    if-nez p2, :cond_0

    iget-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->isCandFetchOver:Z

    if-nez v1, :cond_0

    .line 375
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->isCandFetchOver:Z

    .line 376
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mCandList:Ljava/util/List;

    invoke-interface {v1, v2, v3, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    goto :goto_0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method

.method public processBackspace()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 282
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWDelSearch()I

    .line 285
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWGetNumSymbs()I

    move-result v2

    if-nez v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 287
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->reset()V

    .line 313
    :cond_0
    :goto_0
    return v4

    .line 292
    :cond_1
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->setShiftMode()V

    .line 295
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWGetActiveIndex()I

    move-result v1

    .line 296
    .local v1, index:I
    if-ltz v1, :cond_2

    .line 297
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2, v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWGetNthCandidate(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStr:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v1           #index:I
    :goto_1
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->updateComposingStrForDisplay()V

    .line 309
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 310
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 311
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->reset()V

    goto :goto_0

    .line 299
    .restart local v1       #index:I
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->EMPTY:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mComposingStr:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 301
    .end local v1           #index:I
    :catch_0
    move-exception v0

    .line 303
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 43
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->reset()V

    .line 48
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWClearInput()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mStickToSplType:Z

    .line 55
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 51
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method protected resetCandList()V
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->resetCandList()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->isCandFetchOver:Z

    .line 63
    return-void
.end method

.method public setCapsLock()V
    .locals 2

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWSetCapsLock()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 124
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setDecoderService(Ljava/lang/Object;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 163
    check-cast p1, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    .line 164
    return-void
.end method

.method public setShift()V
    .locals 2

    .prologue
    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWSetShift()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    .line 97
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setUnShift()V
    .locals 2

    .prologue
    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9English;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->XT9AWSetUnShift()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopGetCandidates()I
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    return v0
.end method
