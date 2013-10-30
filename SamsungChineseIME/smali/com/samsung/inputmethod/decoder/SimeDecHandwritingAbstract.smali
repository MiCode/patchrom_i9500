.class public abstract Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;
.super Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
.source "SimeDecHandwritingAbstract.java"


# static fields
.field public static final MAX_REG_CAND_CNT:I = 0xa


# instance fields
.field protected mEventNotifier:Lcom/samsung/inputmethod/SimeEventNotifier;

.field protected mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

.field protected mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 1
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 19
    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 20
    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    .line 21
    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->mEventNotifier:Lcom/samsung/inputmethod/SimeEventNotifier;

    .line 26
    new-instance v0, Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-direct {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 27
    return-void
.end method


# virtual methods
.method public addHwdata(Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;)Z
    .locals 1
    .parameter "hwInputData"

    .prologue
    .line 30
    const/4 v0, 0x1

    .line 31
    .local v0, bRet:Z
    if-eqz p1, :cond_0

    .line 32
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    .line 36
    :goto_0
    return v0

    .line 34
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract chooseHwRegCand(I)Z
.end method

.method public delUdbPhrase(I)Z
    .locals 1
    .parameter "candIdx"

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public abstract focusHwRegCand(I)Z
.end method

.method protected getHWCandidateResult(C)Ljava/lang/String;
    .locals 2
    .parameter "candStr"

    .prologue
    .line 73
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->isSefDefCode(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/setting/SimeSelfDefDatabase;->getStringByCode(C)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, str:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 76
    .end local v0           #str:Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #str:Ljava/lang/String;
    goto :goto_0
.end method

.method public getHwData()Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    return-object v0
.end method

.method public getHwRegCandInfo()Lcom/samsung/inputmethod/candidate/SimeCandInfo;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    return-object v0
.end method

.method public isHwRegCandListEmpty()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeEventNotifier()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->mEventNotifier:Lcom/samsung/inputmethod/SimeEventNotifier;

    .line 69
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 50
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->reset()V

    .line 51
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->resetHwRegCandList()V

    .line 52
    return-void
.end method

.method protected resetHwRegCandList()V
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->reset()V

    .line 56
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->EMPTY:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->mComposingStr:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setEventNotifier(Lcom/samsung/inputmethod/SimeEventNotifier;)V
    .locals 0
    .parameter "eventNotifier"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->mEventNotifier:Lcom/samsung/inputmethod/SimeEventNotifier;

    .line 65
    return-void
.end method
