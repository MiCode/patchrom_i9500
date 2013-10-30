.class public Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;
.super Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;
.source "SimeDecSwiftKeyEnglish.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final NResults:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SimeDecSwiftKeyEnglish"

.field public static final mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;


# instance fields
.field private mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

.field private mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

.field private mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    const/16 v1, 0x14

    sget-object v2, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    sget-object v3, Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;->ENABLED:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    invoke-direct {v0, v1, v2, v3}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;)V

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 33
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    .line 34
    sget-object v0, Lcom/touchtype_fluency/TouchHistory$ShiftState;->UNSHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    .line 38
    return-void
.end method

.method private updateComposingStrForDisplay()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mComposingStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mComposingStrDisplay:Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mActiveCmpsDisplayLen:I

    .line 275
    return-void
.end method

.method private updateShiftState()V
    .locals 3

    .prologue
    .line 330
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v1

    const/high16 v2, 0xf0

    and-int v0, v1, v2

    .line 333
    .local v0, upperCase:I
    const/high16 v1, 0x20

    if-ne v1, v0, :cond_0

    .line 334
    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    .line 335
    sget-object v1, Lcom/touchtype_fluency/TouchHistory$ShiftState;->SHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    .line 345
    :goto_0
    return-void

    .line 336
    :cond_0
    const/high16 v1, 0x30

    if-ne v1, v0, :cond_1

    .line 337
    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->INITIAL_UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    .line 338
    sget-object v1, Lcom/touchtype_fluency/TouchHistory$ShiftState;->SHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    goto :goto_0

    .line 341
    :cond_1
    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    .line 342
    sget-object v1, Lcom/touchtype_fluency/TouchHistory$ShiftState;->UNSHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    goto :goto_0
.end method


# virtual methods
.method public addInputData(CLandroid/graphics/PointF;Z)V
    .locals 3
    .parameter "ch"
    .parameter "pos"
    .parameter "bReset"

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 93
    if-eqz p3, :cond_0

    .line 94
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->resetInput()I

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->updateShiftState()V

    .line 99
    new-instance v0, Lcom/touchtype_fluency/Point;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getPoint()Landroid/graphics/PointF;

    move-result-object v1

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    .line 100
    .local v0, point:Lcom/touchtype_fluency/Point;
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;)V

    .line 104
    .end local v0           #point:Lcom/touchtype_fluency/Point;
    :goto_0
    return-void

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->addCharacter(C)V

    goto :goto_0
.end method

.method public chooseCandidate(I)I
    .locals 3
    .parameter "candIdx"

    .prologue
    .line 177
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCandList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 179
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->selectAlphaCandidate(I)I

    .line 181
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCandList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, choice:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 184
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->needAutoSpace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    const-string v0, " "

    .line 187
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->updateShiftState()V

    .line 192
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->reset()V

    .line 198
    .end local v0           #choice:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public configfeature()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 53
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->configfeature()Z

    .line 56
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mInputLanguage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setInputLanguage(Ljava/lang/String;)I

    .line 57
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mInputMode:I

    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mKeyboardType:I

    if-ne v1, v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getMajorView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v5

    invoke-virtual {v3, v4, v0, v5}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setInputLayout(IZLcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;)I

    .line 60
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->enableWildcards(Z)V

    .line 62
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyEnglish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->enableVerbatim(Z)V

    .line 68
    :goto_1
    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->bWordDelSupport:Z

    .line 69
    return v1

    :cond_0
    move v0, v2

    .line 57
    goto :goto_0

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->enableVerbatim(Z)V

    goto :goto_1
.end method

.method public decoding()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 151
    const/4 v1, 0x1

    .line 153
    .local v1, nRet:I
    sget-object v2, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/ResultsFilter;->with(Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    .line 154
    .local v0, filter:Lcom/touchtype_fluency/ResultsFilter;
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    const/16 v3, 0x96

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->getContextString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->peparePredicts(Ljava/lang/String;Lcom/touchtype_fluency/ResultsFilter;)I

    move-result v1

    .line 156
    if-nez v1, :cond_1

    .line 157
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mComposingStr:Ljava/lang/String;

    .line 166
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->updateComposingStrForDisplay()V

    .line 168
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 170
    return v4

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mComposingStr:Ljava/lang/String;

    goto :goto_0

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->EMPTY:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mComposingStr:Ljava/lang/String;

    goto :goto_0
.end method

.method public delUdbPhrase(I)Z
    .locals 1
    .parameter "candIdx"

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCandIdx()I
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCmpsDisplayLen()I
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x0

    return v0
.end method

.method public getAllCandidates()I
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
.end method

.method public getComposingStrForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigianlSplStr()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPartCandidates(IZ)I
    .locals 8
    .parameter "candNum"
    .parameter "bResetCand"

    .prologue
    .line 218
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCandList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 220
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v4

    .line 222
    .local v4, predictions:Lcom/touchtype_fluency/Predictions;
    const-string v5, "SimeDecSwiftKeyEnglish"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "encoding get predictions size =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const/4 v2, 0x0

    .line 226
    .local v2, maxProbability:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 227
    invoke-virtual {v4, v1}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v3

    .line 229
    .local v3, prediction:Lcom/touchtype_fluency/Prediction;
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>()V

    .line 230
    .local v0, cand:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->setContentType(I)V

    .line 231
    invoke-virtual {v3}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->setContent(Ljava/lang/String;)V

    .line 233
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCandList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {v3}, Lcom/touchtype_fluency/Prediction;->getProbability()F

    move-result v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_0

    .line 236
    invoke-virtual {v3}, Lcom/touchtype_fluency/Prediction;->getProbability()F

    move-result v2

    .line 237
    iput v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mActiveCandIdx:I

    .line 239
    :cond_0
    const-string v5, "SimeDecSwiftKeyEnglish"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "i="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "current probability ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/touchtype_fluency/Prediction;->getProbability()F

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 242
    .end local v0           #cand:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    .end local v3           #prediction:Lcom/touchtype_fluency/Prediction;
    :cond_1
    const-string v5, "SimeDecSwiftKeyEnglish"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mActiveCandIdx is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mActiveCandIdx:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v5, :cond_2

    .line 246
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCandList:Ljava/util/List;

    invoke-interface {v5, v6, v7, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 248
    :cond_2
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCandList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    return v5
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    return v0
.end method

.method public preparePredicts(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "history"

    .prologue
    .line 109
    const/4 v0, -0x1

    .line 111
    .local v0, activeCandIdx:I
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mDecPredictList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 113
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->resetCandList()V

    .line 115
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mDecPredictList:Ljava/util/List;

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

    .line 117
    .local v3, m:Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
    sget-object v4, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;

    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v4, v5}, Lcom/touchtype_fluency/ResultsFilter;->with(Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v1

    .line 119
    .local v1, filter:Lcom/touchtype_fluency/ResultsFilter;
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCandList:Ljava/util/List;

    invoke-interface {v3, p1, v4, v1}, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;->preparePredicts(Ljava/lang/CharSequence;Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 121
    invoke-interface {v3}, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;->getActiveCandIdx()I

    move-result v0

    .line 129
    .end local v1           #filter:Lcom/touchtype_fluency/ResultsFilter;
    .end local v3           #m:Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v4, :cond_2

    .line 131
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCandList:Ljava/util/List;

    invoke-interface {v4, v5, v6, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 135
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 145
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public processBackspace()I
    .locals 5

    .prologue
    .line 281
    const-string v2, "SimeDecSwiftKeyEnglish"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processBackspace mSurface="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/4 v1, 0x1

    .line 284
    .local v1, nRet:I
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->deleteAlpha()V

    .line 285
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->updateShiftState()V

    .line 287
    sget-object v2, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/ResultsFilter;->with(Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    .line 288
    .local v0, filter:Lcom/touchtype_fluency/ResultsFilter;
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    const/16 v3, 0x96

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->getContextString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->peparePredicts(Ljava/lang/String;Lcom/touchtype_fluency/ResultsFilter;)I

    move-result v1

    .line 290
    if-nez v1, :cond_2

    .line 291
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 292
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mComposingStr:Ljava/lang/String;

    .line 300
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->updateComposingStrForDisplay()V

    .line 303
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 304
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 305
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->reset()V

    .line 307
    :cond_0
    return v1

    .line 294
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mComposingStr:Ljava/lang/String;

    goto :goto_0

    .line 297
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->EMPTY:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mComposingStr:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDecoderService(Ljava/lang/Object;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 48
    check-cast p1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyEnglish;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    .line 49
    return-void
.end method

.method public stopGetCandidates()I
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method
