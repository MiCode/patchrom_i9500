.class public Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;
.super Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
.source "SimeDecMultiTabNumber.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeDecMultiTabNumber"


# instance fields
.field private bCannotToggle:Z

.field private bNumInputMode:Z

.field private mNumData:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 2
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mNumData:Ljava/lang/StringBuffer;

    .line 16
    iput-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->bNumInputMode:Z

    .line 17
    iput-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->bCannotToggle:Z

    .line 22
    return-void
.end method


# virtual methods
.method public addNumData(Ljava/lang/String;)V
    .locals 1
    .parameter "numVal"

    .prologue
    .line 178
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mNumData:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    return-void
.end method

.method public chooseCandidate(I)I
    .locals 2
    .parameter "candId"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mNumData:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->reset()V

    .line 87
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->updateToggleStates()V

    .line 88
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->UpdateSkbContainer()V

    .line 90
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public configfeature()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public decoding()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public delUdbPhrase(I)Z
    .locals 1
    .parameter "candIdx"

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCandIdx()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public getAllCandidates()I
    .locals 4

    .prologue
    .line 97
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 102
    .local v0, addedCandList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    new-instance v1, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mNumData:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Ljava/lang/String;I)V

    .line 103
    .local v1, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mCandList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 110
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public getNumData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mNumData:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPartCandidates(IZ)I
    .locals 5
    .parameter "candNum"
    .parameter "bResetCand"

    .prologue
    const/4 v4, 0x1

    .line 119
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 124
    .local v0, addedCandList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    new-instance v1, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mNumData:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Ljava/lang/String;I)V

    .line 125
    .local v1, candInfo:Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mCandList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v0, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 132
    :cond_0
    return v4
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public isNumInputCannotToggle()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->bCannotToggle:Z

    return v0
.end method

.method public isNumInputMode()Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->bNumInputMode:Z

    return v0
.end method

.method public processBackspace()I
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mNumData:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mNumData:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mNumData:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mNumData:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->reset()V

    .line 66
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->updateToggleStates()V

    .line 67
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->UpdateSkbContainer()V

    .line 69
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    .line 72
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 170
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->setNumInputMode(Z)V

    .line 171
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->setNumInputCannotToggle(Z)V

    .line 172
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mNumData:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->mNumData:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 173
    return-void
.end method

.method public setDecoderService(Ljava/lang/Object;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 41
    return-void
.end method

.method public setNumInputCannotToggle(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->bCannotToggle:Z

    if-eq v0, p1, :cond_0

    .line 162
    iput-boolean p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->bCannotToggle:Z

    .line 163
    :cond_0
    return-void
.end method

.method public setNumInputMode(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 152
    iget-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->bNumInputMode:Z

    if-eq v0, p1, :cond_0

    .line 153
    iput-boolean p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecMultiTabNumber;->bNumInputMode:Z

    .line 154
    :cond_0
    return-void
.end method

.method public stopGetCandidates()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method
