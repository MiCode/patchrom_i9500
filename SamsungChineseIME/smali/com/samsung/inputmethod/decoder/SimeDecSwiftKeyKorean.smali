.class public Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;
.super Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;
.source "SimeDecSwiftKeyKorean.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final NResults:I = 0x14

.field private static final TAG:Ljava/lang/String; = "SimeDecSwiftKeyKorean"

.field public static final mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;


# instance fields
.field private mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

.field private mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

.field private mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/touchtype_fluency/ResultsFilter;

    const/16 v1, 0x14

    sget-object v2, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    sget-object v3, Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;->ENABLED:Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;

    invoke-direct {v0, v1, v2, v3}, Lcom/touchtype_fluency/ResultsFilter;-><init>(ILcom/touchtype_fluency/ResultsFilter$CapitalizationHint;Lcom/touchtype_fluency/ResultsFilter$VerbatimMode;)V

    sput-object v0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 36
    sget-object v0, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    .line 37
    sget-object v0, Lcom/touchtype_fluency/TouchHistory$ShiftState;->UNSHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    .line 42
    return-void
.end method

.method private deleteHangulChar()V
    .locals 4

    .prologue
    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 397
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 399
    .local v1, length:I
    if-lez v1, :cond_0

    .line 400
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 402
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    .line 403
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-super {p0, v2, v3}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->addInputData(Ljava/lang/String;Z)V

    .line 404
    return-void
.end method

.method private updateComposingStrForDisplay()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStrDisplay:Ljava/lang/String;

    .line 373
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mActiveCmpsDisplayLen:I

    .line 374
    return-void
.end method

.method private updateShiftState()V
    .locals 3

    .prologue
    .line 378
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v1

    const/high16 v2, 0xf0

    and-int v0, v1, v2

    .line 381
    .local v0, upperCase:I
    const/high16 v1, 0x20

    if-ne v1, v0, :cond_0

    .line 382
    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    .line 383
    sget-object v1, Lcom/touchtype_fluency/TouchHistory$ShiftState;->SHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    .line 393
    :goto_0
    return-void

    .line 384
    :cond_0
    const/high16 v1, 0x30

    if-ne v1, v0, :cond_1

    .line 385
    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->INITIAL_UPPER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    .line 386
    sget-object v1, Lcom/touchtype_fluency/TouchHistory$ShiftState;->SHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    goto :goto_0

    .line 389
    :cond_1
    sget-object v1, Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;->LOWER_CASE:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    .line 390
    sget-object v1, Lcom/touchtype_fluency/TouchHistory$ShiftState;->UNSHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    goto :goto_0
.end method


# virtual methods
.method public addInputData(CLandroid/graphics/PointF;Z)V
    .locals 4
    .parameter "ch"
    .parameter "pos"
    .parameter "bReset"

    .prologue
    .line 85
    move v0, p1

    .line 87
    .local v0, keyChar:C
    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mKeyboardType:I

    if-nez v2, :cond_3

    .line 88
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->updateShiftState()V

    .line 89
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    sget-object v3, Lcom/touchtype_fluency/TouchHistory$ShiftState;->UNSHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    if-ne v2, v3, :cond_2

    .line 90
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->convetToHangulChar(IZ)C

    move-result v0

    .line 98
    :goto_0
    invoke-super {p0, v0, p2, p3}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 100
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 101
    if-eqz p3, :cond_0

    .line 102
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->resetInput()I

    .line 104
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 105
    new-instance v1, Lcom/touchtype_fluency/Point;

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getPoint()Landroid/graphics/PointF;

    move-result-object v2

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getPoint()Landroid/graphics/PointF;

    move-result-object v3

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Lcom/touchtype_fluency/Point;-><init>(FF)V

    .line 106
    .local v1, point:Lcom/touchtype_fluency/Point;
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    sget-object v3, Lcom/touchtype_fluency/TouchHistory$ShiftState;->UNSHIFTED:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    if-ne v2, v3, :cond_4

    .line 107
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mShiftState:Lcom/touchtype_fluency/TouchHistory$ShiftState;

    invoke-virtual {v2, v1, v3}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->addPress(Lcom/touchtype_fluency/Point;Lcom/touchtype_fluency/TouchHistory$ShiftState;)V

    .line 120
    .end local v1           #point:Lcom/touchtype_fluency/Point;
    :cond_1
    :goto_1
    return-void

    .line 92
    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->convetToHangulChar(IZ)C

    move-result v0

    goto :goto_0

    .line 95
    :cond_3
    move v0, p1

    goto :goto_0

    .line 109
    .restart local v1       #point:Lcom/touchtype_fluency/Point;
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->addCharacter(C)V

    goto :goto_1

    .line 112
    .end local v1           #point:Lcom/touchtype_fluency/Point;
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/touchtype_fluency/Chonjiin;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    .line 113
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->addString(Ljava/lang/String;)V

    goto :goto_1

    .line 116
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/touchtype_fluency/Chonjiin;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    goto :goto_1
.end method

.method public addInputData(Ljava/lang/String;Z)V
    .locals 1
    .parameter "hangulSpell"
    .parameter "bReset"

    .prologue
    .line 123
    invoke-static {p1}, Lcom/touchtype_fluency/Hangul;->split(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, inputSpell:Ljava/lang/String;
    invoke-super {p0, v0, p2}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->addInputData(Ljava/lang/String;Z)V

    .line 125
    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public chooseCandidate(I)I
    .locals 3
    .parameter "candIdx"

    .prologue
    .line 155
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCandList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 157
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->selectAlphaCandidate(I)I

    .line 158
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCandList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 160
    .local v0, choice:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 161
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->needAutoSpace()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    const-string v0, " "

    .line 164
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->updateShiftState()V

    .line 169
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    .line 172
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->reset()V

    .line 175
    .end local v0           #choice:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public configfeature()Z
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 58
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->configfeature()Z

    .line 60
    const-string v1, "ko"

    .line 65
    .local v1, lanStr:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mDecPredictList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;

    .line 66
    .local v2, m:Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
    invoke-interface {v2, v1}, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;->configFeature(Ljava/lang/String;)Z

    goto :goto_0

    .line 70
    .end local v2           #m:Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setInputLanguage(Ljava/lang/String;)I

    .line 71
    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputMode:I

    iget v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mKeyboardType:I

    if-ne v4, v3, :cond_1

    move v3, v4

    :goto_1
    iget-object v8, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getMajorView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->getSoftKeyboard()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;

    move-result-object v8

    invoke-virtual {v6, v7, v3, v8}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->setInputLayout(IZLcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboard;)I

    .line 73
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->enableWildcards(Z)V

    .line 75
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->enableVerbatim(Z)V

    .line 77
    iput-boolean v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->bWordDelSupport:Z

    .line 78
    return v4

    :cond_1
    move v3, v5

    .line 71
    goto :goto_1
.end method

.method public decoding()I
    .locals 5

    .prologue
    .line 220
    const/4 v1, 0x1

    .line 222
    .local v1, nRet:I
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    sget-object v2, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/ResultsFilter;->with(Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    .line 224
    .local v0, filter:Lcom/touchtype_fluency/ResultsFilter;
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    const/16 v3, 0x96

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->getContextString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->peparePredicts(Ljava/lang/String;Lcom/touchtype_fluency/ResultsFilter;)I

    move-result v1

    .line 225
    const-string v2, "SimeDecSwiftKeyKorean"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decoding mInputData.getSpell()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    if-nez v1, :cond_1

    .line 228
    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mKeyboardType:I

    if-nez v2, :cond_0

    .line 229
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    .line 237
    :goto_0
    const-string v2, "SimeDecSwiftKeyKorean"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mComposingStr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->updateComposingStrForDisplay()V

    .line 239
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 249
    .end local v0           #filter:Lcom/touchtype_fluency/ResultsFilter;
    :goto_1
    return v1

    .line 231
    .restart local v0       #filter:Lcom/touchtype_fluency/ResultsFilter;
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    goto :goto_0

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->EMPTY:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    goto :goto_0

    .line 241
    .end local v0           #filter:Lcom/touchtype_fluency/ResultsFilter;
    :cond_2
    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mKeyboardType:I

    if-nez v2, :cond_3

    .line 242
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    .line 246
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 244
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    goto :goto_2
.end method

.method public delUdbPhrase(I)Z
    .locals 1
    .parameter "candIdx"

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public deleteInputData()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->deleteInputData()V

    .line 131
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->deleteAlpha()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->deleteHangulChar()V

    .line 136
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->addString(Ljava/lang/String;)V

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->deleteHangulChar()V

    goto :goto_0
.end method

.method public getActiveCandIdx()I
    .locals 1

    .prologue
    .line 340
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCmpsDisplayLen()I
    .locals 1

    .prologue
    .line 358
    const/4 v0, 0x0

    return v0
.end method

.method public getAllCandidates()I
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public getComposingStrForDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOrigianlSplStr()Ljava/lang/StringBuffer;
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPartCandidates(IZ)I
    .locals 8
    .parameter "candNum"
    .parameter "bResetCand"

    .prologue
    .line 180
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCandList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 182
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->getPredictions()Lcom/touchtype_fluency/Predictions;

    move-result-object v4

    .line 184
    .local v4, predictions:Lcom/touchtype_fluency/Predictions;
    const-string v5, "SimeDecSwiftKeyKorean"

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

    .line 186
    const/4 v2, 0x0

    .line 188
    .local v2, maxProbability:F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Lcom/touchtype_fluency/Predictions;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 189
    invoke-virtual {v4, v1}, Lcom/touchtype_fluency/Predictions;->get(I)Lcom/touchtype_fluency/Prediction;

    move-result-object v3

    .line 191
    .local v3, prediction:Lcom/touchtype_fluency/Prediction;
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>()V

    .line 192
    .local v0, cand:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->setContentType(I)V

    .line 193
    invoke-virtual {v3}, Lcom/touchtype_fluency/Prediction;->getPrediction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->setContent(Ljava/lang/String;)V

    .line 195
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCandList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    invoke-virtual {v3}, Lcom/touchtype_fluency/Prediction;->getProbability()F

    move-result v5

    cmpg-float v5, v2, v5

    if-gez v5, :cond_0

    .line 198
    invoke-virtual {v3}, Lcom/touchtype_fluency/Prediction;->getProbability()F

    move-result v2

    .line 199
    iput v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mActiveCandIdx:I

    .line 188
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    .end local v0           #cand:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    .end local v3           #prediction:Lcom/touchtype_fluency/Prediction;
    :cond_1
    const-string v5, "SimeDecSwiftKeyKorean"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mActiveCandIdx is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mActiveCandIdx:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v5, :cond_2

    .line 207
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCandList:Ljava/util/List;

    invoke-interface {v5, v6, v7, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 209
    :cond_2
    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCandList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    return v5
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public preparePredicts(Ljava/lang/CharSequence;)V
    .locals 7
    .parameter "history"

    .prologue
    .line 296
    const-string v4, "SimeDecSwiftKeyKorean"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preparePredicts**** history="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v0, -0x1

    .line 300
    .local v0, activeCandIdx:I
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mDecPredictList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 302
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->resetCandList()V

    .line 304
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mDecPredictList:Ljava/util/List;

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

    .line 306
    .local v3, m:Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
    sget-object v4, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;

    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v4, v5}, Lcom/touchtype_fluency/ResultsFilter;->with(Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v1

    .line 308
    .local v1, filter:Lcom/touchtype_fluency/ResultsFilter;
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCandList:Ljava/util/List;

    invoke-interface {v3, p1, v4, v1}, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;->preparePredicts(Ljava/lang/CharSequence;Ljava/util/List;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    invoke-interface {v3}, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;->getActiveCandIdx()I

    move-result v0

    .line 318
    .end local v1           #filter:Lcom/touchtype_fluency/ResultsFilter;
    .end local v3           #m:Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v4, :cond_2

    .line 320
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCandList:Ljava/util/List;

    invoke-interface {v4, v5, v6, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 324
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v5, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v5, v6, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 334
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public processBackspace()I
    .locals 4

    .prologue
    .line 256
    const/4 v1, 0x1

    .line 259
    .local v1, nRet:I
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->updateShiftState()V

    .line 261
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 262
    sget-object v2, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mDefaultFilter:Lcom/touchtype_fluency/ResultsFilter;

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mCapitalizationState:Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;

    invoke-virtual {v2, v3}, Lcom/touchtype_fluency/ResultsFilter;->with(Lcom/touchtype_fluency/ResultsFilter$CapitalizationHint;)Lcom/touchtype_fluency/ResultsFilter;

    move-result-object v0

    .line 264
    .local v0, filter:Lcom/touchtype_fluency/ResultsFilter;
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    const/16 v3, 0x96

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->getContextString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;->peparePredicts(Ljava/lang/String;Lcom/touchtype_fluency/ResultsFilter;)I

    move-result v1

    .line 266
    if-nez v1, :cond_2

    .line 267
    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mKeyboardType:I

    if-nez v2, :cond_1

    .line 268
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    .line 276
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->updateComposingStrForDisplay()V

    .line 278
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->isSplStrEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 280
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->reset()V

    .line 290
    .end local v0           #filter:Lcom/touchtype_fluency/ResultsFilter;
    :cond_0
    :goto_1
    return v1

    .line 270
    .restart local v0       #filter:Lcom/touchtype_fluency/ResultsFilter;
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    goto :goto_0

    .line 273
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->EMPTY:Ljava/lang/String;

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    goto :goto_0

    .line 283
    .end local v0           #filter:Lcom/touchtype_fluency/ResultsFilter;
    :cond_3
    iget v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mKeyboardType:I

    if-nez v2, :cond_4

    .line 284
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getSpell()Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    .line 288
    :goto_2
    const/4 v1, 0x0

    goto :goto_1

    .line 286
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    invoke-static {v2}, Lcom/touchtype_fluency/Hangul;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mComposingStr:Ljava/lang/String;

    goto :goto_2
.end method

.method public setDecoderService(Ljava/lang/Object;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 46
    check-cast p1, Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecSwiftKeyKorean;->mSwiftKeyService:Lcom/samsung/inputmethod/service/swiftKey/SimeSwiftKeyService;

    .line 48
    return-void
.end method

.method public stopGetCandidates()I
    .locals 1

    .prologue
    .line 346
    const/4 v0, 0x0

    return v0
.end method
