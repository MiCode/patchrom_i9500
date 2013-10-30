.class public Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;
.super Ljava/lang/Object;
.source "SimeKProcManager.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KeyProcessorMgr"


# instance fields
.field private mEngInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mKoreanKeyProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;

.field private mSChnInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;

.field private mTChnInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;

.field private mhandwriteInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;

.field private mspecialInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 1
    .parameter "ime"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;

    invoke-direct {v0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mspecialInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;

    .line 43
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;

    invoke-direct {v0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mhandwriteInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;

    .line 44
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    invoke-direct {v0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mEngInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    .line 45
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;

    invoke-direct {v0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mSChnInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;

    .line 46
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;

    invoke-direct {v0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mTChnInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;

    .line 47
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 48
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;

    invoke-direct {v0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mKoreanKeyProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;

    .line 49
    return-void
.end method


# virtual methods
.method public getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 70
    .local v0, keyProcessorHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMonth()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDateTime()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mspecialInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;

    .line 103
    :goto_0
    return-object v0

    .line 77
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mhandwriteInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;

    goto :goto_0

    .line 81
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34English()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 84
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mEngInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    goto :goto_0

    .line 85
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mSChnInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;

    goto :goto_0

    .line 89
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 92
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mEngInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    goto :goto_0

    .line 93
    :cond_5
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 96
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mKoreanKeyProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;

    goto :goto_0

    .line 100
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mTChnInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;

    goto :goto_0
.end method

.method public getSimeKProcEnglish()Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mEngInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mspecialInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSpecial;->reset()V

    .line 58
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mEngInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->reset()V

    .line 59
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mSChnInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->reset()V

    .line 60
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->mTChnInputProcessor:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->reset()V

    .line 61
    return-void
.end method
