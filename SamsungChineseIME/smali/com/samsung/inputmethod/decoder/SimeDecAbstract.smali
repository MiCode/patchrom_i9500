.class public abstract Lcom/samsung/inputmethod/decoder/SimeDecAbstract;
.super Ljava/lang/Object;
.source "SimeDecAbstract.java"


# static fields
.field private static final DEBUG:Z = false

.field protected static final MAX_CAND_NUM:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "SimeDecAbstract"


# instance fields
.field EMPTY:Ljava/lang/String;

.field protected bWordDelSupport:Z

.field protected mActiveCandIdx:I

.field protected mCandList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mComposingStr:Ljava/lang/String;

.field protected mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

.field protected mDecPredictList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;",
            ">;"
        }
    .end annotation
.end field

.field protected mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

.field protected mIme:Lcom/samsung/inputmethod/SamsungIME;

.field protected mInputLanguage:Ljava/lang/String;

.field protected mInputMode:I

.field protected mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field protected mKeyboardType:I


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 3
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->EMPTY:Ljava/lang/String;

    .line 41
    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mCandList:Ljava/util/List;

    .line 42
    iput v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mActiveCandIdx:I

    .line 44
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputMode:I

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mKeyboardType:I

    .line 46
    const-string v0, "en"

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputLanguage:Ljava/lang/String;

    .line 61
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mDecPredictList:Ljava/util/List;

    .line 62
    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    .line 63
    iput-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->bWordDelSupport:Z

    .line 67
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 68
    iput-object p2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    .line 69
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mCandList:Ljava/util/List;

    .line 70
    return-void
.end method


# virtual methods
.method public abstract chooseCandidate(I)I
.end method

.method public configfeature()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 151
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    iput v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mKeyboardType:I

    .line 159
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Stroke()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 160
    const/4 v2, 0x2

    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputMode:I

    .line 182
    :goto_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHK()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 183
    const-string v2, "zh_HK"

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputLanguage:Ljava/lang/String;

    .line 195
    :goto_2
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mDecPredictList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;

    .line 196
    .local v1, m:Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputLanguage:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;->configFeature(Ljava/lang/String;)Z

    goto :goto_3

    .line 154
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #m:Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 155
    iput v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mKeyboardType:I

    goto :goto_0

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    iput v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputMode:I

    goto :goto_1

    .line 165
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isCangjieMode()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 166
    const/4 v2, 0x3

    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputMode:I

    goto :goto_1

    .line 167
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQuickCangjieMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    const/4 v2, 0x4

    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputMode:I

    goto :goto_1

    .line 169
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 170
    iput v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputMode:I

    goto :goto_1

    .line 171
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34English()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 172
    const/4 v2, 0x7

    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputMode:I

    goto :goto_1

    .line 173
    :cond_7
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyEnglish()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 174
    const/4 v2, 0x6

    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputMode:I

    goto :goto_1

    .line 175
    :cond_8
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 176
    const/16 v2, 0x8

    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputMode:I

    goto/16 :goto_1

    .line 178
    :cond_9
    iput v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputMode:I

    goto/16 :goto_1

    .line 184
    :cond_a
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isTW()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 185
    const-string v2, "zh_TW"

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputLanguage:Ljava/lang/String;

    goto/16 :goto_2

    .line 186
    :cond_b
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 187
    const-string v2, "zh_CN"

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputLanguage:Ljava/lang/String;

    goto/16 :goto_2

    .line 188
    :cond_c
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 189
    const-string v2, "en"

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputLanguage:Ljava/lang/String;

    goto/16 :goto_2

    .line 190
    :cond_d
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 191
    const-string v2, "ko"

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputLanguage:Ljava/lang/String;

    goto/16 :goto_2

    .line 193
    :cond_e
    const-string v2, "zh_CN"

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputLanguage:Ljava/lang/String;

    goto/16 :goto_2

    .line 198
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_f
    return v3
.end method

.method public abstract decoding()I
.end method

.method public abstract delUdbPhrase(I)Z
.end method

.method public abstract getActiveCandIdx()I
.end method

.method public abstract getAllCandidates()I
.end method

.method public getCandList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mCandList:Ljava/util/List;

    return-object v0
.end method

.method public getComposingStr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mComposingStr:Ljava/lang/String;

    return-object v0
.end method

.method protected getContextString(I)Ljava/lang/String;
    .locals 4
    .parameter "numBeforeCursor"

    .prologue
    .line 133
    const-string v0, ""

    .line 134
    .local v0, contextString:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 135
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 136
    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 137
    .local v1, cs:Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    .end local v1           #cs:Ljava/lang/CharSequence;
    :cond_0
    return-object v0
.end method

.method public abstract getPartCandidates(IZ)I
.end method

.method public abstract init()Z
.end method

.method public isWordDeleteSupport()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->bWordDelSupport:Z

    return v0
.end method

.method public preparePredicts(Ljava/lang/CharSequence;)V
    .locals 6
    .parameter "history"

    .prologue
    .line 112
    const/4 v0, -0x1

    .line 113
    .local v0, activeCandIdx:I
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mDecPredictList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->resetCandList()V

    .line 115
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mDecPredictList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;

    .line 116
    .local v2, m:Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mCandList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, p1, v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;->preparePredicts(Ljava/lang/CharSequence;Ljava/util/List;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-interface {v2}, Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;->getActiveCandIdx()I

    move-result v0

    .line 121
    .end local v2           #m:Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v3, :cond_2

    .line 122
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mCandList:Ljava/util/List;

    invoke-interface {v3, v4, v5, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 124
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    .line 129
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public abstract processBackspace()I
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->EMPTY:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mComposingStr:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->resetCandList()V

    .line 86
    return-void
.end method

.method protected resetCandList()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mCandList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 91
    return-void
.end method

.method public setComposingStr(Ljava/lang/String;)V
    .locals 0
    .parameter "str"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mComposingStr:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public abstract setDecoderService(Ljava/lang/Object;)V
.end method

.method public setGetCandNotifier(Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;)V
    .locals 0
    .parameter "notifier"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    .line 78
    return-void
.end method

.method public setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 0
    .parameter "inputModeSwitcher"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 74
    return-void
.end method

.method public setPredict(Lcom/samsung/inputmethod/decoder/SimeDecPredictInterface;)V
    .locals 1
    .parameter "dec"

    .prologue
    .line 107
    if-eqz p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->mDecPredictList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_0
    return-void
.end method

.method public abstract stopGetCandidates()I
.end method
