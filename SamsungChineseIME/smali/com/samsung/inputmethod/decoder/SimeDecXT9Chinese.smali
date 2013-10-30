.class public Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;
.super Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;
.source "SimeDecXT9Chinese.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$1;,
        Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;,
        Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$hotWordEditor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final PY_STRING_MAX:I = 0x20

.field private static final PY_STRING_MAX_FLOATING:I = 0x17

.field private static SPELL_TYPE_PREFIX:I = 0x0

.field private static SPELL_TYPE_SUFFIX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimeDecXT9Chinese"


# instance fields
.field protected isCandFetchOver:Z

.field private mFetchedCandCount:I

.field private mHandler:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;

.field private mHotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;

.field private mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->SPELL_TYPE_PREFIX:I

    .line 40
    const/4 v0, 0x1

    sput v0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->SPELL_TYPE_SUFFIX:I

    return-void
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 3
    .parameter "imeService"
    .parameter "decMgr"

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 42
    new-instance v1, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;-><init>(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mHandler:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;

    .line 44
    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mFetchedCandCount:I

    .line 46
    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->isCandFetchOver:Z

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, len:I
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v1, v2, :cond_0

    .line 143
    const/16 v0, 0x17

    .line 147
    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setMaxSurfaceLen(I)V

    .line 148
    new-instance v1, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mHotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;

    .line 149
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mHotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;

    new-instance v2, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$hotWordEditor;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$hotWordEditor;-><init>(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;)V

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->setHotWordEditor(Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotwordEditInterface;)V

    .line 150
    return-void

    .line 145
    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;)Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getCandidates(I)I

    move-result v0

    return v0
.end method

.method private bpmfConvert(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "spellString"

    .prologue
    const/16 v11, 0x27

    const/16 v10, 0x19

    const/4 v9, 0x0

    .line 637
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 638
    .local v1, mSpellBuf:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_8

    .line 639
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v1, v0

    .line 640
    aget-char v7, v1, v0

    if-ne v10, v7, :cond_2

    .line 641
    aput-char v11, v1, v0

    .line 656
    :cond_0
    :goto_1
    invoke-static {v1, v0}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v6

    .line 657
    .local v6, value:I
    const v7, 0xf200

    if-le v6, v7, :cond_1

    const v7, 0xf2ff

    if-ge v6, v7, :cond_1

    .line 658
    aget-char v7, v1, v0

    const v8, 0xc100

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v0

    .line 638
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 642
    .end local v6           #value:I
    :cond_2
    const/16 v7, 0xb1

    aget-char v8, v1, v0

    if-ne v7, v8, :cond_3

    .line 643
    const/16 v7, 0x2c9

    aput-char v7, v1, v0

    goto :goto_1

    .line 644
    :cond_3
    const/16 v7, 0xb2

    aget-char v8, v1, v0

    if-ne v7, v8, :cond_4

    .line 645
    const/16 v7, 0x2ca

    aput-char v7, v1, v0

    goto :goto_1

    .line 646
    :cond_4
    const/16 v7, 0xb3

    aget-char v8, v1, v0

    if-ne v7, v8, :cond_5

    .line 647
    const/16 v7, 0x2c7

    aput-char v7, v1, v0

    goto :goto_1

    .line 648
    :cond_5
    const/16 v7, 0xb4

    aget-char v8, v1, v0

    if-ne v7, v8, :cond_6

    .line 649
    const/16 v7, 0x2cb

    aput-char v7, v1, v0

    goto :goto_1

    .line 650
    :cond_6
    const/16 v7, 0xb5

    aget-char v8, v1, v0

    if-ne v7, v8, :cond_7

    .line 651
    const/16 v7, 0x2d9

    aput-char v7, v1, v0

    goto :goto_1

    .line 652
    :cond_7
    const/16 v7, 0x1a

    aget-char v8, v1, v0

    if-ne v7, v8, :cond_0

    .line 653
    aput-char v11, v1, v0

    goto :goto_1

    .line 662
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v1, v9, v7}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v2

    .line 663
    .local v2, sBuf:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 664
    .local v5, tmp1:Ljava/lang/StringBuffer;
    if-eqz v2, :cond_c

    .line 665
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x7c

    invoke-direct {v3, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 666
    .local v3, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 667
    const/4 v4, 0x0

    .line 668
    .local v4, tmp:Ljava/lang/String;
    :cond_9
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 669
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 670
    invoke-virtual {v4, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    const/16 v8, 0x3105

    if-lt v7, v8, :cond_9

    .line 671
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 672
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_b

    .line 673
    invoke-virtual {v4, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    if-ne v7, v10, :cond_a

    .line 672
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 676
    :cond_a
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 678
    :cond_b
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 682
    .end local v3           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v4           #tmp:Ljava/lang/String;
    :goto_4
    return-object v7

    :cond_c
    const-string v7, ""

    goto :goto_4
.end method

.method private enableFullSentence(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 815
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNEnableFullSentence(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 816
    :catch_0
    move-exception v0

    .line 818
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimeDecXT9Chinese"

    const-string v2, "enable full sentence  failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private errorCorrectEnable(Z)V
    .locals 3
    .parameter "bEnable"

    .prologue
    .line 793
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNEnableErrorCorrect(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 799
    :goto_0
    return-void

    .line 794
    :catch_0
    move-exception v0

    .line 796
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimeDecXT9Chinese"

    const-string v2, "enable error correction  failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private getCandidates(I)I
    .locals 9
    .parameter "candNum"

    .prologue
    const/16 v8, 0xc8

    .line 526
    const/4 v4, 0x0

    .line 527
    .local v4, retCnt:I
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 528
    .local v0, addedCandList:Ljava/util/List;,"Ljava/util/List<Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;>;"
    if-gtz p1, :cond_0

    move v5, v4

    .line 573
    .end local v4           #retCnt:I
    .local v5, retCnt:I
    :goto_0
    return v5

    .line 536
    .end local v5           #retCnt:I
    .restart local v4       #retCnt:I
    :cond_0
    :try_start_0
    iget v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mFetchedCandCount:I

    .line 537
    .local v6, startIdx:I
    move v2, p1

    .line 538
    .local v2, fetchCnt:I
    add-int v7, v2, v6

    if-lt v7, v8, :cond_1

    .line 539
    rsub-int v2, v6, 0xc8

    .line 542
    :cond_1
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v7, v0, v6, v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNGetCandsList(Ljava/util/List;II)I

    move-result v4

    .line 545
    iget v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mFetchedCandCount:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mFetchedCandCount:I

    .line 546
    const/4 v3, 0x0

    .line 548
    .local v3, msgId:I
    if-lt v4, p1, :cond_2

    iget v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mFetchedCandCount:I

    if-lt v7, v8, :cond_4

    .line 550
    :cond_2
    const/4 v3, 0x0

    .line 551
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->isCandFetchOver:Z

    .line 557
    :goto_1
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCandList:Ljava/util/List;

    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 559
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v7, :cond_3

    .line 560
    iget-object v7, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    invoke-interface {v7, v3, v0, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #fetchCnt:I
    .end local v3           #msgId:I
    .end local v6           #startIdx:I
    :cond_3
    :goto_2
    move v5, v4

    .line 573
    .end local v4           #retCnt:I
    .restart local v5       #retCnt:I
    goto :goto_0

    .line 554
    .end local v5           #retCnt:I
    .restart local v2       #fetchCnt:I
    .restart local v3       #msgId:I
    .restart local v4       #retCnt:I
    .restart local v6       #startIdx:I
    :cond_4
    const/4 v3, 0x1

    goto :goto_1

    .line 566
    .end local v2           #fetchCnt:I
    .end local v3           #msgId:I
    .end local v6           #startIdx:I
    :catch_0
    move-exception v1

    .line 567
    .local v1, e:Landroid/os/RemoteException;
    const-string v7, "SimeDecXT9Chinese"

    const-string v8, "prepareCandidatesList is fail-- (7)"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private mohuPinyinEnable(I)V
    .locals 3
    .parameter "maskcode"

    .prologue
    .line 782
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNPYEnableMohuPairs(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 788
    :goto_0
    return-void

    .line 783
    :catch_0
    move-exception v0

    .line 785
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimeDecXT9Chinese"

    const-string v2, "enable mohu pinyin  failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private pinyinConvert(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "spellString"

    .prologue
    .line 745
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 746
    .local v1, mSpellBuf:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 747
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v1, v0

    .line 748
    const/16 v2, 0x19

    aget-char v3, v1, v0

    if-eq v2, v3, :cond_0

    const/16 v2, 0x1a

    aget-char v3, v1, v0

    if-ne v2, v3, :cond_1

    .line 749
    :cond_0
    const/16 v2, 0x27

    aput-char v2, v1, v0

    .line 746
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 752
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private prepare34SplCandidatesList()V
    .locals 3

    .prologue
    .line 383
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 385
    .local v0, tmpCandidatesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->reset()V

    .line 387
    sget v1, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->SPELL_TYPE_PREFIX:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->prepareSpellList(Ljava/util/List;I)V

    .line 388
    sget v1, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->SPELL_TYPE_SUFFIX:I

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->prepareSpellList(Ljava/util/List;I)V

    .line 389
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandFetchOver(Z)V

    .line 390
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setDefaultActiveIndex(I)V

    .line 392
    return-void
.end method

.method private prepareSpellList(Ljava/util/List;I)V
    .locals 6
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
    .line 395
    .local p1, candidateList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 397
    .local v2, nCount:I
    sget v4, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->SPELL_TYPE_PREFIX:I

    if-ne p2, v4, :cond_1

    .line 399
    :try_start_0
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v4, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNGetPrefixs(Ljava/util/List;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 415
    :cond_0
    :goto_0
    const-string v3, ""

    .line 416
    .local v3, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 417
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_3

    .line 418
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #str:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 419
    .restart local v3       #str:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->bpmfConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->add(Ljava/lang/String;)V

    .line 417
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 401
    .end local v1           #i:I
    .end local v3           #str:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 403
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 405
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    sget v4, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->SPELL_TYPE_SUFFIX:I

    if-ne p2, v4, :cond_0

    .line 407
    :try_start_1
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v4, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNGetSuffixs(Ljava/util/List;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_0

    .line 409
    :catch_1
    move-exception v0

    .line 411
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 422
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v3       #str:Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 423
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #str:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 424
    .restart local v3       #str:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->m34SplCandidates:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v4, v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->add(Ljava/lang/String;)V

    .line 422
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 427
    :cond_3
    return-void
.end method

.method private setMdbProrityHigh(Z)V
    .locals 3
    .parameter "bHigh"

    .prologue
    .line 804
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNSetMdbPriorityHigh(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :goto_0
    return-void

    .line 805
    :catch_0
    move-exception v0

    .line 807
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimeDecXT9Chinese"

    const-string v2, "set mdb prority  failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private setXT9InputMode(IZ)V
    .locals 5
    .parameter "inputMode"
    .parameter "phonepad"

    .prologue
    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1, p1, p2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9SetInputMode(IZ)V

    .line 761
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbHeight(I)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9SetSKBValue(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    :goto_0
    return-void

    .line 762
    :catch_0
    move-exception v0

    .line 763
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 764
    const-string v1, "SimeDecXT9Chinese"

    const-string v2, "set inputmode  failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setXT9Language(Ljava/lang/String;)V
    .locals 3
    .parameter "language"

    .prologue
    .line 824
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    if-nez v1, :cond_0

    .line 832
    :goto_0
    return-void

    .line 826
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9SetLanguage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 827
    :catch_0
    move-exception v0

    .line 829
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimeDecXT9Chinese"

    const-string v2, "set Language failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private strokeConvert(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "spellString"

    .prologue
    const/4 v9, 0x0

    .line 687
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 688
    .local v1, mSpellBuf:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_2

    .line 689
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v1, v0

    .line 690
    const/16 v7, 0x19

    aget-char v8, v1, v0

    if-ne v7, v8, :cond_0

    .line 691
    const/16 v7, 0x27

    aput-char v7, v1, v0

    .line 693
    :cond_0
    invoke-static {v1, v0}, Ljava/lang/Character;->codePointAt([CI)I

    move-result v6

    .line 694
    .local v6, value:I
    const v7, 0xf200

    if-le v6, v7, :cond_1

    const v7, 0xf2ff

    if-ge v6, v7, :cond_1

    .line 695
    aget-char v7, v1, v0

    const v8, 0xc100

    sub-int/2addr v7, v8

    int-to-char v7, v7

    aput-char v7, v1, v0

    .line 688
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    .end local v6           #value:I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v1, v9, v7}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v2

    .line 700
    .local v2, sBuf:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 701
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v7, 0x7c

    invoke-direct {v3, v7}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 702
    .local v3, splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 703
    const/4 v4, 0x0

    .line 704
    .local v4, tmp:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 705
    .local v5, tmp1:Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 706
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 707
    invoke-virtual {v4, v9}, Ljava/lang/String;->codePointAt(I)I

    move-result v7

    const/16 v8, 0xa

    if-ge v7, v8, :cond_3

    .line 708
    invoke-virtual {v5, v9}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 709
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v0, v7, :cond_4

    .line 711
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 731
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 709
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 713
    :pswitch_0
    const/16 v7, 0x4e00

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 716
    :pswitch_1
    const/16 v7, 0x4e28

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 719
    :pswitch_2
    const/16 v7, 0x4e3f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 722
    :pswitch_3
    const/16 v7, 0x4e36

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 725
    :pswitch_4
    const/16 v7, 0x4e5b

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 728
    :pswitch_5
    const v7, 0xff1f

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->appendCodePoint(I)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 736
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 740
    .end local v3           #splitter:Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v4           #tmp:Ljava/lang/String;
    .end local v5           #tmp1:Ljava/lang/StringBuffer;
    :goto_3
    return-object v7

    :cond_5
    const-string v7, ""

    goto :goto_3

    .line 711
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private strokeEnableComponent(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 771
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNSTREnableComponent(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_0
    return-void

    .line 772
    :catch_0
    move-exception v0

    .line 774
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SimeDecXT9Chinese"

    const-string v2, "enable component  failed..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public addInputData(CLandroid/graphics/PointF;Z)V
    .locals 2
    .parameter "ch"
    .parameter "pos"
    .parameter "bReset"

    .prologue
    .line 235
    if-eqz p3, :cond_0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 246
    return-void

    .line 239
    :catch_0
    move-exception v0

    .line 240
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public chooseCandidate(I)I
    .locals 7
    .parameter "candId"

    .prologue
    const/4 v6, 0x1

    .line 308
    const/4 v2, 0x0

    .line 311
    .local v2, ret:I
    :try_start_0
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v4, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNChooseCand(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 317
    :goto_0
    if-lez v2, :cond_2

    .line 318
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->EMPTY:Ljava/lang/String;

    iput-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mRefinedSpell:Ljava/lang/String;

    .line 321
    :try_start_1
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v4}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNGetRefinedSpell()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mRefinedSpell:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->updateComposingStrForDisplay()V

    .line 338
    sget-object v4, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$1;->$SwitchMap$com$samsung$inputmethod$SamsungIME$ImeState:[I

    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME$ImeState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 377
    :cond_1
    :goto_2
    const/4 v4, 0x0

    return v4

    .line 312
    :catch_0
    move-exception v1

    .line 314
    .local v1, e1:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 323
    .end local v1           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 325
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 330
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 331
    :cond_3
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->prepare34SplCandidatesList()V

    goto :goto_1

    .line 341
    :pswitch_0
    if-lez v2, :cond_5

    .line 342
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mRefinedSpell:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_4

    .line 343
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mRefinedSpell:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 345
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v6}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    goto :goto_2

    .line 348
    :cond_5
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v6}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateCommitSelection(Z)V

    goto :goto_2

    .line 352
    :pswitch_1
    if-lez v2, :cond_1

    .line 354
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mRefinedSpell:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_6

    .line 355
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mRefinedSpell:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 357
    :cond_6
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v6}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    goto :goto_2

    .line 363
    :pswitch_2
    const/4 v3, 0x0

    .line 364
    .local v3, selectCand:Ljava/lang/String;
    if-ltz p1, :cond_7

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCandList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_7

    .line 365
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mCandList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;->getContent()Ljava/lang/String;

    move-result-object v3

    .line 367
    :cond_7
    if-eqz v3, :cond_1

    .line 368
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    goto :goto_2

    .line 338
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public configfeature()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 168
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->configfeature()Z

    .line 170
    iput-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->bWordDelSupport:Z

    .line 173
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    if-nez v0, :cond_0

    .line 199
    :goto_0
    return v2

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputLanguage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setXT9Language(Ljava/lang/String;)V

    .line 179
    iget v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputMode:I

    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mKeyboardType:I

    if-ne v1, v0, :cond_5

    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setXT9InputMode(IZ)V

    .line 181
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 182
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->strokeEnableComponent(Z)V

    .line 184
    :cond_1
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputMode:I

    if-ne v0, v1, :cond_2

    .line 185
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getFuzzyPinyinState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mohuPinyinEnable(I)V

    .line 187
    :cond_2
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mKeyboardType:I

    if-nez v0, :cond_4

    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputMode:I

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputMode:I

    if-nez v0, :cond_4

    .line 189
    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getErrorCorrect()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->errorCorrectEnable(Z)V

    .line 191
    :cond_4
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getMdbPrority()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setMdbProrityHigh(Z)V

    .line 192
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getFullSentence()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->enableFullSentence(Z)V

    .line 194
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mHotwordMgr:Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;

    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/dbmanager/hotword/SimeHotWordMgr;->loadHotWord(Ljava/lang/String;)Z

    goto :goto_0

    :cond_5
    move v0, v2

    .line 179
    goto :goto_1
.end method

.method public decoding()I
    .locals 4

    .prologue
    .line 251
    const/4 v2, 0x0

    .line 252
    .local v2, status:I
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputData:Lcom/samsung/inputmethod/decoder/SimeDecInputData;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecInputData;->getChar()C

    move-result v0

    .line 253
    .local v0, addChar:C
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->convertToBPMFSymbol(C)C

    move-result v0

    .line 257
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v3, v0}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNAddOneChar(C)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 262
    :goto_0
    if-lez v2, :cond_1

    .line 272
    .end local v2           #status:I
    :goto_1
    return v2

    .line 258
    .restart local v2       #status:I
    :catch_0
    move-exception v1

    .line 260
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 266
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 267
    :cond_2
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->prepare34SplCandidatesList()V

    .line 270
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->updateComposingStrForDisplay()V

    .line 271
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->decodingFinish()V

    .line 272
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public delUdbPhrase(I)Z
    .locals 3
    .parameter "candIdx"

    .prologue
    .line 581
    const/4 v0, 0x0

    .line 583
    .local v0, bRet:Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNDelUDBPhrase(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 590
    :goto_0
    return v0

    .line 584
    :catch_0
    move-exception v1

    .line 586
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getActiveCandIdx()I
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public getActiveCmpsDisplayLen()I
    .locals 1

    .prologue
    .line 469
    iget v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mActiveCmpsDisplayLen:I

    return v0
.end method

.method public getAllCandidates()I
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mHandler:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->PrepareCandidates()V

    .line 507
    const/4 v0, 0x0

    return v0
.end method

.method public getComposingStrForDisplay()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x29

    .line 476
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 479
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 483
    .local v3, pyStrZhuyin:Ljava/lang/StringBuffer;
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    .line 484
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 485
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 486
    .local v0, c:C
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v5, :cond_0

    .line 487
    sget-object v4, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->strPy:[C

    aget-char v4, v4, v2

    if-ne v0, v4, :cond_2

    .line 490
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 491
    if-ne v2, v5, :cond_3

    .line 495
    :cond_1
    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 484
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 486
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 491
    :cond_3
    sget-object v4, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->strZy:[C

    aget-char v0, v4, v2

    goto :goto_2

    .line 492
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isCangjieMode()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQuickCangjieMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 493
    :cond_5
    if-ne v2, v5, :cond_6

    :goto_3
    goto :goto_2

    :cond_6
    sget-object v4, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->strCang:[C

    aget-char v0, v4, v2

    goto :goto_3

    .line 497
    .end local v0           #c:C
    .end local v2           #j:I
    :cond_7
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 499
    .end local v1           #i:I
    .end local v3           #pyStrZhuyin:Ljava/lang/StringBuffer;
    :goto_4
    return-object v4

    :cond_8
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    goto :goto_4
.end method

.method public getPartCandidates(IZ)I
    .locals 1
    .parameter "candNum"
    .parameter "bResetCand"

    .prologue
    .line 519
    if-eqz p2, :cond_0

    .line 520
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->resetCandList()V

    .line 521
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->getCandidates(I)I

    move-result v0

    return v0
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public processBackspace()I
    .locals 3

    .prologue
    .line 281
    const/4 v1, 0x0

    .line 286
    .local v1, status:I
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNProcessBackspace()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 292
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 293
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->prepare34SplCandidatesList()V

    .line 296
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->updateComposingStrForDisplay()V

    .line 297
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->decodingFinish()V

    .line 299
    return v1

    .line 287
    :catch_0
    move-exception v0

    .line 289
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 204
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->reset()V

    .line 208
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->resetCandList()V

    .line 209
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mHandler:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;

    #calls: Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->stopPrepareCandeidateTimer()V
    invoke-static {v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->access$100(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;)V

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .line 215
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public resetCandList()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 222
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->resetCandList()V

    .line 223
    iput v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mFetchedCandCount:I

    .line 224
    iput-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->isCandFetchOver:Z

    .line 225
    return-void
.end method

.method public setActivePrefixSuffix(I)I
    .locals 5
    .parameter "activeCandNo"

    .prologue
    .line 596
    const/4 v1, 0x0

    .line 597
    .local v1, nPrefixCount:I
    const/4 v2, 0x0

    .line 600
    .local v2, nRet:I
    :try_start_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v3}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNGetPrefixCount()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 605
    :goto_0
    if-ge p1, v1, :cond_0

    .line 607
    :try_start_1
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v3, p1}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNSetActivePrefix(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    .line 622
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->updateComposingStrForDisplay()V

    .line 624
    return v2

    .line 601
    :catch_0
    move-exception v0

    .line 603
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 609
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 611
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 615
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    sub-int v4, p1, v1

    invoke-interface {v3, v4}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNSetActiveSuffix(I)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v2

    goto :goto_1

    .line 617
    :catch_2
    move-exception v0

    .line 619
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method public setDecoderService(Ljava/lang/Object;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 162
    check-cast p1, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    .line 163
    return-void
.end method

.method public stopGetCandidates()I
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mHandler:Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;

    #calls: Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->stopPrepareCandeidateTimer()V
    invoke-static {v0}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;->access$100(Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese$PrepareCandidatesTimer;)V

    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public updateComposingStrForDisplay()V
    .locals 3

    .prologue
    .line 434
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->EMPTY:Ljava/lang/String;

    .line 437
    .local v1, spellString:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mISamsungDecoderService:Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;

    invoke-interface {v2}, Lcom/samsung/inputmethod/service/xt9/ISamsungIMEDecoderService;->imXT9CHNGetSpell()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 446
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->bpmfConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    .line 461
    :goto_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mActiveCmpsDisplayLen:I

    .line 462
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->setComposingStr(Ljava/lang/String;)V

    .line 463
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 440
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 458
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    iput-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecXT9Chinese;->mComposingStrDisplay:Ljava/lang/String;

    goto :goto_1
.end method
