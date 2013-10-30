.class public Lcom/samsung/inputmethod/SimeLanguageMgr;
.super Ljava/lang/Object;
.source "SimeLanguageMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/SimeLanguageMgr$1;,
        Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;,
        Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;,
        Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field protected static final LANGCNT:I = 0x5

.field public static final LANGUAGE_ENGLISH:Ljava/lang/String; = "en"

.field public static final LANGUAGE_KOREAN:Ljava/lang/String; = "ko"

.field public static final LANGUAGE_SIMPLIFY_CHN:Ljava/lang/String; = "zh_CN"

.field public static final LANGUAGE_TRADITIONAL_HK:Ljava/lang/String; = "zh_HK"

.field public static final LANGUAGE_TRADITIONAL_TW:Ljava/lang/String; = "zh_TW"

.field private static final TAG:Ljava/lang/String; = "SimeLanguageMgr"

.field private static final mSupportedLangList:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;


# instance fields
.field mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

.field mCurLangIdx:I

.field mLangChangeNotifier:Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;

.field mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_KOR:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mSupportedLangList:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    .line 56
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangChangeNotifier:Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;

    .line 96
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    const/4 v1, 0x0

    new-instance v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    sget-object v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v4, "zh_TW"

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;-><init>(Lcom/samsung/inputmethod/SimeLanguageMgr;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 97
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    const/4 v1, 0x1

    new-instance v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    sget-object v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v4, "zh_HK"

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;-><init>(Lcom/samsung/inputmethod/SimeLanguageMgr;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 98
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    const/4 v1, 0x2

    new-instance v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    sget-object v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v4, "zh_CN"

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;-><init>(Lcom/samsung/inputmethod/SimeLanguageMgr;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 99
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    const/4 v1, 0x3

    new-instance v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    sget-object v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_KOR:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v4, "ko"

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;-><init>(Lcom/samsung/inputmethod/SimeLanguageMgr;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 100
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    const/4 v1, 0x4

    new-instance v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    sget-object v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    const-string v4, "en"

    invoke-direct {v2, p0, v3, v4}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;-><init>(Lcom/samsung/inputmethod/SimeLanguageMgr;Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;Ljava/lang/String;)V

    aput-object v2, v0, v1

    .line 102
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->initialize()V

    .line 103
    return-void
.end method

.method public static getSupportedLang()[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mSupportedLangList:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    return-object v0
.end method

.method public static isChineseLanguage(Ljava/lang/String;)Z
    .locals 2
    .parameter "lanStr"

    .prologue
    .line 567
    const/4 v0, 0x0

    .line 569
    .local v0, bRet:Z
    if-eqz p0, :cond_1

    const-string v1, "zh_CN"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_HK"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "zh_TW"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 573
    :cond_0
    const/4 v0, 0x1

    .line 575
    :cond_1
    return v0
.end method

.method public static isEnglishLanguage(Ljava/lang/String;)Z
    .locals 2
    .parameter "lanStr"

    .prologue
    .line 587
    const/4 v0, 0x0

    .line 588
    .local v0, bRet:Z
    if-eqz p0, :cond_0

    const-string v1, "en"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    const/4 v0, 0x1

    .line 591
    :cond_0
    return v0
.end method

.method public static isKoreanLanguage(Ljava/lang/String;)Z
    .locals 2
    .parameter "lanStr"

    .prologue
    .line 579
    const/4 v0, 0x0

    .line 580
    .local v0, bRet:Z
    if-eqz p0, :cond_0

    const-string v1, "ko"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    const/4 v0, 0x1

    .line 583
    :cond_0
    return v0
.end method


# virtual methods
.method protected findCurLangIdx()V
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findLangIdx(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    .line 310
    return-void
.end method

.method protected findLangIdx(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I
    .locals 3
    .parameter "eLang"

    .prologue
    .line 317
    const/4 v1, -0x1

    .line 318
    .local v1, langIdx:I
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq p1, v2, :cond_0

    .line 319
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 320
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v2, p1, :cond_1

    .line 321
    move v1, v0

    .line 326
    .end local v0           #i:I
    :cond_0
    return v1

    .line 319
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getCurLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    return-object v0
.end method

.method public getCurLangStr()Ljava/lang/String;
    .locals 3

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, langStr:Ljava/lang/String;
    iget v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    if-ltz v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    iget v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    aget-object v1, v1, v2

    iget-object v0, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLangStr:Ljava/lang/String;

    .line 398
    :cond_0
    return-object v0
.end method

.method public getNextLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getNextLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v0

    return-object v0
.end method

.method protected getNextLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 6
    .parameter "aLang"

    .prologue
    .line 404
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 408
    .local v2, nextLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    sget-object v4, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq p1, v4, :cond_3

    .line 409
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findLangIdx(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v1

    .line 411
    .local v1, langIdx:I
    const/4 v3, -0x1

    .line 412
    .local v3, nextLangIdx:I
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v4, v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    .line 413
    const/4 v0, 0x1

    .line 415
    .local v0, i:I
    :cond_0
    add-int v3, v1, v0

    .line 416
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v4, v4

    if-lt v3, v4, :cond_1

    .line 417
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v4, v4

    sub-int/2addr v3, v4

    .line 419
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v4, v4, v3

    iget-boolean v4, v4, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eqz v4, :cond_4

    .line 425
    :goto_0
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 426
    const/4 v3, -0x1

    .line 430
    .end local v0           #i:I
    :cond_2
    :goto_1
    if-ltz v3, :cond_3

    .line 431
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v4, v4, v3

    iget-object v2, v4, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 436
    .end local v1           #langIdx:I
    .end local v3           #nextLangIdx:I
    :cond_3
    return-object v2

    .line 422
    .restart local v0       #i:I
    .restart local v1       #langIdx:I
    .restart local v3       #nextLangIdx:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 423
    iget-object v4, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v4, v4

    if-lt v0, v4, :cond_0

    goto :goto_0

    .line 428
    .end local v0           #i:I
    :cond_5
    const/4 v3, -0x1

    goto :goto_1
.end method

.method protected getOrderedLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 5
    .parameter "aLang"

    .prologue
    .line 458
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 462
    .local v1, orderLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    sget-object v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq p1, v3, :cond_2

    .line 463
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findLangIdx(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v0

    .line 464
    .local v0, langIdx:I
    const/4 v2, 0x0

    .line 465
    .local v2, orderLangIdx:I
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 466
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 469
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eqz v3, :cond_3

    if-eq v2, v0, :cond_3

    .line 476
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 477
    const/4 v2, -0x1

    .line 481
    :cond_1
    :goto_1
    if-ltz v2, :cond_2

    .line 482
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v2

    iget-object v1, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 487
    .end local v0           #langIdx:I
    .end local v2           #orderLangIdx:I
    :cond_2
    return-object v1

    .line 473
    .restart local v0       #langIdx:I
    .restart local v2       #orderLangIdx:I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    :cond_4
    const/4 v2, -0x1

    goto :goto_1
.end method

.method public getPreLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getPrelang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v0

    return-object v0
.end method

.method protected getPrelang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    .locals 5
    .parameter "aLang"

    .prologue
    .line 494
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 497
    .local v1, preLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    sget-object v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq p1, v3, :cond_3

    .line 498
    const/4 v2, -0x1

    .line 499
    .local v2, preLangIdx:I
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v3, v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_5

    .line 500
    const/4 v0, 0x1

    .line 502
    .local v0, i:I
    :cond_0
    iget v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    sub-int v2, v3, v0

    .line 503
    if-gez v2, :cond_1

    .line 504
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v3, v3

    add-int/2addr v2, v3

    .line 506
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v2

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eqz v3, :cond_4

    .line 512
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v3, v3

    if-lt v0, v3, :cond_2

    .line 513
    const/4 v2, -0x1

    .line 517
    .end local v0           #i:I
    :cond_2
    :goto_1
    if-ltz v2, :cond_3

    .line 518
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v2

    iget-object v1, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 523
    .end local v2           #preLangIdx:I
    :cond_3
    return-object v1

    .line 509
    .restart local v0       #i:I
    .restart local v2       #preLangIdx:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 510
    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    goto :goto_0

    .line 515
    .end local v0           #i:I
    :cond_5
    const/4 v2, -0x1

    goto :goto_1
.end method

.method protected initialize()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 126
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 127
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$1;->$SwitchMap$com$samsung$inputmethod$SimeLanguageMgr$ImeLang:[I

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 154
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    .line 126
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 129
    :pswitch_0
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    goto :goto_1

    .line 134
    :pswitch_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    goto :goto_1

    .line 139
    :pswitch_2
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    goto :goto_1

    .line 144
    :pswitch_3
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    goto :goto_1

    .line 149
    :pswitch_4
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageEnglish()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    goto :goto_1

    .line 158
    :cond_1
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public isLangValid(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z
    .locals 4
    .parameter "eLang"

    .prologue
    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, bRet:Z
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq p1, v2, :cond_0

    .line 337
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 338
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne p1, v2, :cond_1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-ne v2, v3, :cond_1

    .line 340
    const/4 v0, 0x1

    .line 345
    .end local v1           #i:I
    :cond_0
    return v0

    .line 337
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public isValidLangChanged()Z
    .locals 4

    .prologue
    .line 165
    const/4 v0, 0x0

    .line 167
    .local v0, bRet:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 168
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v2, v3, :cond_2

    .line 169
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eq v2, v3, :cond_3

    .line 185
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 186
    const/4 v0, 0x1

    .line 189
    :cond_1
    return v0

    .line 171
    :cond_2
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v2, v3, :cond_4

    .line 172
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-ne v2, v3, :cond_0

    .line 167
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    :cond_4
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v2, v3, :cond_5

    .line 175
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 177
    :cond_5
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_KOR:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v2, v3, :cond_6

    .line 178
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eq v2, v3, :cond_3

    goto :goto_1

    .line 180
    :cond_6
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->mLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v2, v3, :cond_3

    .line 181
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageEnglish()Z

    move-result v2

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v3, v3, v1

    iget-boolean v3, v3, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eq v2, v3, :cond_3

    goto :goto_1
.end method

.method public reInitialize()Z
    .locals 3

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->resetStates()V

    .line 202
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->initialize()V

    .line 204
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->isLangValid(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 206
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getOrderedLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 207
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v1, v2, :cond_0

    .line 208
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findCurLangIdx()V

    .line 210
    const/4 v0, 0x1

    .line 218
    :cond_1
    return v0
.end method

.method public reInitialize(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z
    .locals 3
    .parameter "newLang"

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 224
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->resetStates()V

    .line 226
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->initialize()V

    .line 228
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq p1, v1, :cond_6

    .line 230
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->isLangValid(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 232
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findCurLangIdx()V

    .line 233
    const/4 v0, 0x1

    .line 301
    :cond_0
    :goto_0
    return v0

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->isLangValid(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$1;->$SwitchMap$com$samsung$inputmethod$SimeLanguageMgr$ImeLang:[I

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 257
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 260
    :goto_1
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v1, v2, :cond_2

    .line 261
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 262
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findCurLangIdx()V

    .line 263
    const/4 v0, 0x1

    goto :goto_0

    .line 241
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getNextLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_1

    .line 245
    :pswitch_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 246
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_1

    .line 247
    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_1

    .line 249
    :cond_4
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 250
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_1

    .line 252
    :cond_5
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_1

    .line 267
    :cond_6
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->isLangValid(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 270
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$1;->$SwitchMap$com$samsung$inputmethod$SimeLanguageMgr$ImeLang:[I

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 290
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 293
    :goto_2
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-ne v1, v2, :cond_7

    .line 294
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 295
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findCurLangIdx()V

    .line 296
    const/4 v0, 0x1

    goto :goto_0

    .line 274
    :pswitch_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getNextLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_2

    .line 278
    :pswitch_3
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 279
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_SCHN:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_2

    .line 280
    :cond_8
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseTw()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 281
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_TW:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_2

    .line 282
    :cond_9
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChineseHk()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 283
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_HK:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_2

    .line 285
    :cond_a
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_ENG:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    goto :goto_2

    .line 237
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 270
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public registerCallBack(Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 558
    if-eqz p1, :cond_0

    .line 559
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangChangeNotifier:Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;

    .line 560
    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    .line 112
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->resetStates()V

    .line 113
    return-void
.end method

.method public resetLangCallBack()V
    .locals 1

    .prologue
    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangChangeNotifier:Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;

    .line 564
    return-void
.end method

.method protected resetStates()V
    .locals 3

    .prologue
    .line 119
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    .line 119
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method

.method public setCurLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z
    .locals 4
    .parameter "curLang"

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq v2, p1, :cond_2

    .line 358
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->findLangIdx(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)I

    move-result v1

    .line 359
    .local v1, langIdx:I
    if-ltz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangStates:[Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLangState;->isValid:Z

    if-eqz v2, :cond_1

    .line 361
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 363
    iput v1, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLangIdx:I

    .line 365
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangChangeNotifier:Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mLangChangeNotifier:Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;

    iget-object v3, p0, Lcom/samsung/inputmethod/SimeLanguageMgr;->mCurLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    invoke-interface {v2, v3}, Lcom/samsung/inputmethod/SimeLanguageMgr$langNotifier;->onLangChange(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)V

    .line 367
    :cond_0
    const/4 v0, 0x1

    .line 377
    .end local v1           #langIdx:I
    :cond_1
    :goto_0
    return v0

    .line 374
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public switchToNextLang()Z
    .locals 3

    .prologue
    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, bRet:Z
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 534
    .local v1, nextLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getNextLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v1

    .line 535
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq v1, v2, :cond_0

    .line 536
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->setCurLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    .line 537
    const/4 v0, 0x1

    .line 541
    :cond_0
    return v0
.end method

.method public switchToPreLang()Z
    .locals 3

    .prologue
    .line 545
    const/4 v0, 0x0

    .line 546
    .local v0, bRet:Z
    sget-object v1, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    .line 547
    .local v1, preLang:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SimeLanguageMgr;->getPreLang()Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    move-result-object v1

    .line 548
    sget-object v2, Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;->IMELANG_NONE:Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;

    if-eq v1, v2, :cond_0

    .line 549
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SimeLanguageMgr;->setCurLang(Lcom/samsung/inputmethod/SimeLanguageMgr$ImeLang;)Z

    .line 550
    const/4 v0, 0x1

    .line 554
    :cond_0
    return v0
.end method
