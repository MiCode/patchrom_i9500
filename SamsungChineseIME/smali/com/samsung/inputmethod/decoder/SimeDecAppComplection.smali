.class public Lcom/samsung/inputmethod/decoder/SimeDecAppComplection;
.super Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
.source "SimeDecAppComplection.java"


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 0
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 11
    return-void
.end method


# virtual methods
.method public chooseCandidate(I)I
    .locals 1
    .parameter "candId"

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public configfeature()Z
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public decoding()I
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public delUdbPhrase(I)Z
    .locals 1
    .parameter "candIdx"

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCandIdx()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getAllCandidates()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getPartCandidates(IZ)I
    .locals 1
    .parameter "candNum"
    .parameter "bResetCand"

    .prologue
    .line 64
    const/4 v0, 0x0

    return v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public processBackspace()I
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public setDecoderService(Ljava/lang/Object;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 29
    return-void
.end method

.method public stopGetCandidates()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method
