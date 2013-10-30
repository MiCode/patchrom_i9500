.class public Lcom/samsung/inputmethod/candidate/SimeCandProcessor;
.super Ljava/lang/Object;
.source "SimeCandProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeCandProcessor"


# instance fields
.field private mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

.field private mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

.field private mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field private mLongPressCandId:I

.field private mModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 1
    .parameter "imeService"

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mLongPressCandId:I

    .line 36
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 37
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    .line 38
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 39
    return-void
.end method

.method private FocusOnTopItem(I)Z
    .locals 3
    .parameter "choiceId"

    .prologue
    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->hwFocusOnItem(I)Z

    move-result v0

    .line 194
    :cond_1
    :goto_0
    return v0

    .line 187
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    :cond_3
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->pinyinFocusOnItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method private ProcessHzCommonKey(IZZ)Z
    .locals 6
    .parameter "keyCode"
    .parameter "realAction"
    .parameter "isLongPressed"

    .prologue
    const/4 v5, 0x0

    .line 310
    const/4 v3, 0x0

    .line 316
    .local v3, bRet:Z
    sparse-switch p1, :sswitch_data_0

    .line 420
    :cond_0
    :goto_0
    return v3

    .line 318
    :sswitch_0
    if-eqz p2, :cond_1

    .line 321
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->activeCurseBackward()Z

    .line 323
    :cond_1
    const/4 v3, 0x1

    .line 324
    goto :goto_0

    .line 326
    :sswitch_1
    if-eqz p2, :cond_2

    .line 329
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->activeCurseForward()Z

    .line 331
    :cond_2
    const/4 v3, 0x1

    .line 332
    goto :goto_0

    .line 334
    :sswitch_2
    if-eqz p2, :cond_3

    .line 337
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->isFirstPage()Z

    move-result v4

    if-nez v4, :cond_4

    .line 338
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageBackward(Z)Z

    .line 355
    :cond_3
    :goto_1
    const/4 v3, 0x1

    .line 356
    goto :goto_0

    .line 343
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 346
    :cond_5
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getTopCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    goto :goto_1

    .line 358
    :sswitch_3
    if-eqz p2, :cond_6

    .line 362
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageForward(Z)Z

    .line 364
    :cond_6
    const/4 v3, 0x1

    .line 365
    goto :goto_0

    .line 367
    :sswitch_4
    if-eqz p2, :cond_7

    .line 370
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v1

    .line 371
    .local v1, activeCandNo:I
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->chooseCandidate(I)Z

    .line 373
    .end local v1           #activeCandNo:I
    :cond_7
    const/4 v3, 0x1

    .line 375
    goto :goto_0

    .line 378
    :sswitch_5
    if-eqz p2, :cond_8

    .line 381
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v1

    .line 382
    .restart local v1       #activeCandNo:I
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->chooseCandidate(I)Z

    .line 384
    .end local v1           #activeCandNo:I
    :cond_8
    const/4 v3, 0x1

    .line 386
    goto/16 :goto_0

    .line 397
    :sswitch_6
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-nez v4, :cond_a

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez p3, :cond_a

    :cond_9
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v5, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 402
    :cond_a
    if-eqz p2, :cond_b

    .line 403
    add-int/lit8 v4, p1, -0x7

    add-int/lit8 v0, v4, -0x1

    .line 406
    .local v0, activeCandInPage:I
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->setActiveCand(I)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 407
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v2

    .line 410
    .local v2, activeGlobalPos:I
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->onSelectChoice(I)Z

    .line 413
    .end local v0           #activeCandInPage:I
    .end local v2           #activeGlobalPos:I
    :cond_b
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 316
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_6
        0x8 -> :sswitch_6
        0x9 -> :sswitch_6
        0xa -> :sswitch_6
        0xb -> :sswitch_6
        0xc -> :sswitch_6
        0xd -> :sswitch_6
        0xe -> :sswitch_6
        0xf -> :sswitch_6
        0x10 -> :sswitch_6
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
    .end sparse-switch
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/candidate/SimeCandProcessor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mLongPressCandId:I

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/candidate/SimeCandProcessor;)Lcom/samsung/inputmethod/decoder/SimeDecManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/candidate/SimeCandProcessor;)Lcom/samsung/inputmethod/SamsungIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method private processHzTopKey(IZZ)Z
    .locals 6
    .parameter "keyCode"
    .parameter "realAction"
    .parameter "isLongPressed"

    .prologue
    const/4 v5, 0x0

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, bRet:Z
    const/4 v2, -0x1

    .line 208
    .local v2, globalChoiceId:I
    sparse-switch p1, :sswitch_data_0

    .line 305
    :goto_0
    return v1

    .line 210
    :sswitch_0
    if-eqz p2, :cond_0

    .line 213
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getTopCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->activeCurseBackward()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getTopCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v2

    .line 215
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->FocusOnTopItem(I)Z

    .line 218
    :cond_0
    const/4 v1, 0x1

    .line 219
    goto :goto_0

    .line 221
    :sswitch_1
    if-eqz p2, :cond_1

    .line 224
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getTopCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->activeCurseForward()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getTopCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v2

    .line 226
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->FocusOnTopItem(I)Z

    .line 229
    :cond_1
    const/4 v1, 0x1

    .line 230
    goto :goto_0

    .line 232
    :sswitch_2
    if-eqz p2, :cond_2

    .line 235
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 236
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getTopCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->isFirstPage()Z

    move-result v3

    if-nez v3, :cond_2

    .line 237
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getTopCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageBackward(Z)Z

    .line 246
    :cond_2
    const/4 v1, 0x1

    .line 247
    goto :goto_0

    .line 249
    :sswitch_3
    if-eqz p2, :cond_4

    .line 253
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 256
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 265
    :cond_4
    :goto_1
    const/4 v1, 0x1

    .line 266
    goto/16 :goto_0

    .line 257
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 258
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getTopCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->pageForward(Z)Z

    goto :goto_1

    .line 268
    :sswitch_4
    if-eqz p2, :cond_7

    .line 271
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 273
    :cond_6
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setActiveCCItem(Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;)V

    .line 287
    :cond_7
    :goto_2
    const/4 v1, 0x1

    .line 289
    goto/16 :goto_0

    .line 274
    :cond_8
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 277
    :cond_9
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getTopCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 278
    .local v0, activeCandNo:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->hwSelectItem(I)Z

    goto :goto_2

    .line 292
    .end local v0           #activeCandNo:I
    :sswitch_5
    if-eqz p2, :cond_a

    .line 295
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result v0

    .line 296
    .restart local v0       #activeCandNo:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->chooseCandidate(I)Z

    .line 298
    .end local v0           #activeCandNo:I
    :cond_a
    const/4 v1, 0x1

    .line 300
    goto/16 :goto_0

    .line 208
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_4
        0x3e -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public chooseCandidate(I)Z
    .locals 4
    .parameter "activeCandNo"

    .prologue
    const/4 v3, 0x0

    .line 51
    const/4 v0, 0x0

    .line 52
    .local v0, bRet:Z
    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1;->$SwitchMap$com$samsung$inputmethod$SamsungIME$ImeState:[I

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME$ImeState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 56
    :pswitch_0
    if-gez p1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getActiveCandiatePos()I

    move-result p1

    .line 60
    :cond_1
    if-ltz p1, :cond_2

    .line 61
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->chooseCandidate(I)I

    .line 62
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCommonCandidatesListEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 71
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 72
    goto :goto_0

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 66
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_1

    .line 68
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_1

    .line 74
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->chooseAppCompletionCand(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 76
    const/4 v0, 0x1

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public hwFocusOnItem(I)Z
    .locals 8
    .parameter "choiceId"

    .prologue
    const/4 v7, 0x1

    .line 111
    const/4 v0, 0x0

    .line 113
    .local v0, bRet:Z
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getHWDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    move-result-object v2

    .line 118
    .local v2, hwDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;
    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->focusHwRegCand(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, choice:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 121
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 122
    invoke-interface {v3, v1, v7}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 128
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->preparePredictions()I

    .line 129
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCommonCandidatesListEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 130
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isExpandWindowShown()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 131
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->UP:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 134
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4, v7, v7}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(ZZ)V

    .line 141
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 143
    .end local v1           #choice:Ljava/lang/String;
    .end local v3           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    return v0

    .line 136
    .restart local v1       #choice:Ljava/lang/String;
    .restart local v3       #ic:Landroid/view/inputmethod/InputConnection;
    :cond_3
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;->LeftAndRightAndDown:Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    invoke-virtual {v4, v5, v6}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    goto :goto_0
.end method

.method public hwSelectItem(I)Z
    .locals 4
    .parameter "choiceId"

    .prologue
    const/4 v3, 0x0

    .line 89
    const/4 v0, 0x0

    .line 91
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getHWDecInfo()Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;

    move-result-object v1

    .line 95
    .local v1, hwDecInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;
    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->chooseHwRegCand(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 96
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->preparePredictions()I

    .line 97
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCommonCandidatesListEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 98
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    .line 99
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 104
    :goto_0
    const/4 v0, 0x1

    .line 106
    :cond_0
    return v0

    .line 101
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->reset()V

    .line 102
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    goto :goto_0
.end method

.method public initialize(Lcom/samsung/inputmethod/candidate/SimeCandManager;)V
    .locals 0
    .parameter "candMgr"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    .line 43
    return-void
.end method

.method public onSelectChoice(I)Z
    .locals 4
    .parameter "choiceId"

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 172
    .local v0, bRet:Z
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 173
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->chooseCandidate(I)Z

    .line 174
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isExpandWindowShown()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isNeedAdjustExpd()Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpandItem(ZZ)V

    .line 176
    :cond_0
    const/4 v0, 0x1

    .line 178
    :cond_1
    return v0
.end method

.method public pinyinFocusOnItem(I)Z
    .locals 4
    .parameter "choiceId"

    .prologue
    .line 148
    const/4 v0, 0x0

    .line 151
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setActivePrefixSuffix(I)V

    .line 154
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->updateComposingViewDisplay()V

    .line 155
    const/4 v0, 0x1

    .line 157
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCandVerScrollContainer()Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/candidate/SimeCandVerScrollContainer;->updateFocusTextView(I)V

    .line 158
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->getArrowShowType()Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/ArrowUpdater$ArrowShowType;)V

    .line 162
    :cond_0
    return v0
.end method

.method public processKey(IZ)Z
    .locals 5
    .parameter "keyCode"
    .parameter "realAction"

    .prologue
    const/4 v4, 0x0

    .line 465
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 466
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v0, 0x0

    .line 470
    .local v0, bRet:Z
    if-eqz v1, :cond_0

    .line 471
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isExpandWindowShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 478
    packed-switch p1, :pswitch_data_0

    .line 505
    :cond_0
    :goto_0
    return v0

    .line 484
    :pswitch_0
    const/4 v0, 0x1

    .line 485
    goto :goto_0

    .line 491
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getTopCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getActivCCItem()Landroid/widget/RelativeLayout;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 492
    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->processHzTopKey(IZZ)Z

    move-result v0

    goto :goto_0

    .line 494
    :cond_2
    invoke-direct {p0, p1, p2, v4}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->ProcessHzCommonKey(IZZ)Z

    move-result v0

    goto :goto_0

    .line 478
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processLongPressKey(I)Z
    .locals 5
    .parameter "keyCode"

    .prologue
    const/4 v4, 0x1

    .line 512
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 513
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 514
    const/4 v0, 0x0

    .line 555
    :cond_0
    :goto_0
    return v0

    .line 515
    :cond_1
    const/4 v0, 0x0

    .line 518
    .local v0, bRet:Z
    packed-switch p1, :pswitch_data_0

    .line 536
    const/4 v2, 0x7

    if-lt p1, v2, :cond_0

    const/16 v2, 0x10

    if-gt p1, v2, :cond_0

    .line 537
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isExpandWindowShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 538
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getActivCCItem()Landroid/widget/RelativeLayout;

    move-result-object v3

    if-eq v2, v3, :cond_5

    .line 541
    invoke-direct {p0, p1, v4, v4}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->ProcessHzCommonKey(IZZ)Z

    move-result v0

    goto :goto_0

    .line 524
    :pswitch_0
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isExpandWindowShown()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 525
    const/4 v0, 0x1

    goto :goto_0

    .line 528
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getTopCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getActivCCItem()Landroid/widget/RelativeLayout;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 529
    invoke-direct {p0, p1, v4, v4}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->processHzTopKey(IZZ)Z

    move-result v0

    goto :goto_0

    .line 531
    :cond_4
    invoke-direct {p0, p1, v4, v4}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->ProcessHzCommonKey(IZZ)Z

    move-result v0

    .line 534
    goto :goto_0

    .line 542
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mCandMgr:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isCCShowType(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    :cond_6
    invoke-direct {p0, p1, v4, v4}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->ProcessHzCommonKey(IZZ)Z

    move-result v0

    goto :goto_0

    .line 518
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processLongTouchCommonCand(I)Z
    .locals 3
    .parameter "globalIdx"

    .prologue
    .line 427
    const/4 v0, 0x0

    .line 432
    .local v0, bRet:Z
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_DEL_UDB_FEATURE:Z

    if-eqz v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCandDeletable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 434
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mLongPressCandId:I

    .line 442
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getDialogMgr()Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1UdbDelOkListener;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1UdbDelOkListener;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandProcessor;)V

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->showDelUdbDialog(Landroid/content/DialogInterface$OnClickListener;)V

    .line 443
    const/4 v0, 0x1

    .line 447
    :cond_0
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_CONTACT_ACCESS_FEATURE:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLinkToContacts()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 448
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mDecMgrInfo:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCandContact(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 449
    iput p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mLongPressCandId:I

    .line 456
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandProcessor;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getDialogMgr()Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    move-result-object v1

    new-instance v2, Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1ContactDisplayListener;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/candidate/SimeCandProcessor$1ContactDisplayListener;-><init>(Lcom/samsung/inputmethod/candidate/SimeCandProcessor;)V

    invoke-virtual {v1, v2, p1}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->showContactDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    .line 457
    const/4 v0, 0x1

    .line 460
    :cond_1
    return v0
.end method
