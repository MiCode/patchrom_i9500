.class public Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;
.super Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
.source "SimeKProcSChinese.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$1;,
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SIMULATE_KEY_DELETE:Z = true

.field private static final SYMBOL_ENTER:Ljava/lang/String; = "\n"

.field private static final SYMBOL_SPACE:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "SimeKProcSChinese"

.field private static mCharCaseGap:I = 0x0

.field private static final mChn34KeyMap:[[I = null

.field private static final mStrApotrophe:I = 0x27

.field private static final mStrAsk:I = 0x3f

.field private static final mStrAt:I = 0x40

.field private static final mStrComma:I = 0x2c

.field private static final mStrEnter:I = 0xa

.field private static final mStrMinus:I = 0x2d

.field private static final mStrPeriod:I = 0x2e

.field private static final mStrSemi:I = 0x3b

.field private static final mStrSlash:I = 0x2f

.field private static final mStrSpace:I = 0x20


# instance fields
.field private mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;

.field private mLastKeyCode:I

.field private mkeyCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 69
    const/16 v0, -0x20

    sput v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mCharCaseGap:I

    .line 71
    const/16 v0, 0xa

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v4, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v5, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mChn34KeyMap:[[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x3ft 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xct 0xfft 0x0t 0x0t
        0x1t 0x30t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x74t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
    .end array-data

    :array_9
    .array-data 0x4
        0x77t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 2
    .parameter "ime"

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 52
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mLastKeyCode:I

    .line 53
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mkeyCount:I

    .line 55
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;-><init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$1;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;

    .line 81
    return-void
.end method

.method private isSChnInputMode()Z
    .locals 2

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 105
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 108
    :cond_0
    return v0
.end method

.method private keycodeTransToKeyChar(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 121
    .local v0, keyChar:I
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    add-int/lit8 v1, p1, -0x1d

    add-int/lit8 v0, v1, 0x61

    .line 123
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextUpperCaseWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    sget v1, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mCharCaseGap:I

    add-int/2addr v0, v1

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeNum(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    add-int/lit8 v1, p1, -0x7

    add-int/lit8 v0, v1, 0x30

    goto :goto_0

    .line 128
    :cond_2
    const/16 v1, 0x37

    if-ne p1, v1, :cond_3

    .line 129
    const/16 v0, 0x2c

    goto :goto_0

    .line 130
    :cond_3
    const/16 v1, 0x38

    if-ne p1, v1, :cond_4

    .line 131
    const/16 v0, 0x2e

    goto :goto_0

    .line 132
    :cond_4
    const/16 v1, 0x4b

    if-ne p1, v1, :cond_5

    .line 133
    const/16 v0, 0x27

    goto :goto_0

    .line 134
    :cond_5
    const/16 v1, 0x4d

    if-ne p1, v1, :cond_6

    .line 135
    const/16 v0, 0x40

    goto :goto_0

    .line 136
    :cond_6
    const/16 v1, 0x4c

    if-ne p1, v1, :cond_7

    .line 137
    const/16 v0, 0x2f

    goto :goto_0

    .line 138
    :cond_7
    const/16 v1, 0x45

    if-ne p1, v1, :cond_8

    .line 139
    const/16 v0, 0x2d

    goto :goto_0

    .line 140
    :cond_8
    const/16 v1, 0x4a

    if-ne p1, v1, :cond_9

    .line 141
    const/16 v0, 0x3b

    goto :goto_0

    .line 142
    :cond_9
    const/16 v1, 0x3f

    if-ne p1, v1, :cond_a

    .line 143
    const/16 v0, 0x3f

    goto :goto_0

    .line 144
    :cond_a
    const/16 v1, 0x42

    if-ne p1, v1, :cond_b

    .line 145
    const/16 v0, 0xa

    goto :goto_0

    .line 146
    :cond_b
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_0

    .line 147
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private preProcessKeyboard(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v7, 0x0

    .line 498
    const/4 v0, 0x0

    .line 499
    .local v0, bProcessed:Z
    const/4 v2, 0x0

    .line 500
    .local v2, keyChar:I
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 501
    .local v3, keyCode:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 505
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 508
    const/16 v5, 0x8

    if-ne v5, v3, :cond_6

    .line 509
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_4

    .line 512
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_2

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v6

    if-eq v5, v6, :cond_2

    .line 516
    :cond_0
    if-eqz p2, :cond_1

    .line 518
    const v2, 0xff0c

    .line 520
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_1

    .line 521
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 523
    :cond_1
    const/4 v0, 0x1

    .line 543
    :cond_2
    :goto_0
    if-lez v2, :cond_3

    .line 545
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 546
    .local v4, result:Ljava/lang/String;
    if-eqz v1, :cond_3

    .line 547
    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 552
    .end local v4           #result:Ljava/lang/String;
    :cond_3
    return v0

    .line 526
    :cond_4
    if-eqz p2, :cond_5

    .line 528
    const v2, 0xff0c

    .line 530
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_5

    .line 531
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 533
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 535
    :cond_6
    const/4 v5, 0x7

    if-ne v5, v3, :cond_2

    goto :goto_0
.end method

.method private processDecoding(Lcom/samsung/inputmethod/SimeKeyEvent;Z)V
    .locals 5
    .parameter "event"
    .parameter "bReset"

    .prologue
    const/4 v4, 0x1

    .line 1369
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v0

    .line 1370
    .local v0, keyChar:I
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v1

    int-to-char v2, v0

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyPos()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 1371
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 1373
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1374
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v4}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 1378
    :goto_0
    return-void

    .line 1376
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v4}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0
.end method

.method private processFuncKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 4
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v3, 0x0

    .line 1086
    const/4 v0, 0x0

    .line 1087
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v1

    .line 1089
    .local v1, keyCode:I
    sparse-switch v1, :sswitch_data_0

    .line 1164
    :cond_0
    :goto_0
    return v0

    .line 1091
    :sswitch_0
    if-eqz p2, :cond_1

    .line 1092
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->handleClipboardKey()V

    .line 1094
    :cond_1
    const/4 v0, 0x1

    .line 1096
    goto :goto_0

    .line 1098
    :sswitch_1
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1099
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processLangKey()V

    .line 1100
    const/4 v0, 0x1

    goto :goto_0

    .line 1107
    :sswitch_2
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isComposingViewShown()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1108
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1113
    :sswitch_3
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 1114
    if-eqz p2, :cond_3

    .line 1117
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processStarKey()V

    .line 1119
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1124
    :sswitch_4
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 1125
    if-eqz p2, :cond_4

    .line 1128
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processPoundKey(Lcom/samsung/inputmethod/SimeKeyEvent;)V

    .line 1130
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 1135
    :sswitch_5
    if-eqz p2, :cond_5

    .line 1138
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processBackKey()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1139
    const/4 v0, 0x1

    .line 1145
    :cond_5
    :goto_1
    const/4 v0, 0x1

    .line 1146
    goto :goto_0

    .line 1141
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1142
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto :goto_1

    .line 1148
    :sswitch_6
    if-eqz p2, :cond_7

    .line 1151
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processLangKey()V

    .line 1153
    :cond_7
    const/4 v0, 0x1

    .line 1155
    goto :goto_0

    .line 1157
    :sswitch_7
    invoke-static {v3}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardLedState(Z)V

    .line 1158
    const/4 v0, 0x1

    goto :goto_0

    .line 1089
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x3e -> :sswitch_1
        0x4b -> :sswitch_2
        0x73 -> :sswitch_7
        0xdd -> :sswitch_0
        0xe3 -> :sswitch_6
    .end sparse-switch
.end method

.method private processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 10
    .parameter "event"
    .parameter "isPressedDown"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1169
    const/4 v0, 0x0

    .line 1170
    .local v0, bProcessed:Z
    const/4 v4, 0x0

    .line 1171
    .local v4, isSoftKey:Z
    const/4 v1, 0x0

    .line 1172
    .local v1, bRealAction:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v5

    .line 1173
    .local v5, keyCode:I
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v2

    .line 1174
    .local v2, count:I
    const/4 v3, 0x0

    .line 1178
    .local v3, enterNormalState:Z
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1179
    const/4 v4, 0x1

    .line 1187
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isSChnInputMode()Z

    move-result v8

    if-nez v8, :cond_5

    .line 1270
    :cond_1
    :goto_1
    if-nez v4, :cond_2

    .line 1271
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1272
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    :cond_2
    move v6, v0

    .line 1275
    :cond_3
    :goto_2
    return v6

    .line 1182
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 1183
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getEnterKeyNormalState()Z

    move-result v3

    .line 1184
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    goto :goto_0

    .line 1190
    :cond_5
    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_BYPASS:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v9

    if-eq v8, v9, :cond_1

    .line 1196
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8, p1}, Lcom/samsung/inputmethod/SamsungIME;->needHideSoftKeyboard(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1197
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->hideSoftKeyboard()V

    .line 1203
    :cond_6
    const/4 v8, 0x4

    if-ne v5, v8, :cond_7

    .line 1204
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v8

    if-nez v8, :cond_7

    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v8

    if-nez v8, :cond_7

    move v6, v0

    .line 1209
    goto :goto_2

    .line 1214
    :cond_7
    if-eqz v4, :cond_9

    .line 1216
    if-nez p2, :cond_8

    .line 1217
    const/4 v1, 0x1

    .line 1238
    :cond_8
    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processFuncKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 1241
    const/4 v0, 0x1

    goto :goto_1

    .line 1222
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyProcessedWhenLong(I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 1226
    if-gtz v2, :cond_3

    .line 1229
    if-nez p2, :cond_a

    move v1, v6

    :goto_4
    goto :goto_3

    :cond_a
    move v1, v7

    goto :goto_4

    .line 1230
    :cond_b
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v8

    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isHardKeyProcessedWhenUp(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1231
    if-nez p2, :cond_c

    move v1, v6

    :goto_5
    goto :goto_3

    :cond_c
    move v1, v7

    goto :goto_5

    .line 1234
    :cond_d
    move v1, p2

    goto :goto_3

    .line 1242
    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processSymbolKeys(Landroid/view/KeyEvent;Z)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 1245
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1246
    :cond_f
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->preProcessKeyboard(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 1250
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1253
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v6, v7, :cond_11

    .line 1254
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processStateIdle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto/16 :goto_1

    .line 1255
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v6, v7, :cond_12

    .line 1256
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processStateAppCompletion(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto/16 :goto_1

    .line 1258
    :cond_12
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v6, v7, :cond_13

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v7

    if-ne v6, v7, :cond_14

    .line 1260
    :cond_13
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processStateInput(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto/16 :goto_1

    .line 1261
    :cond_14
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v6

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v6, v7, :cond_1

    .line 1262
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processStatePredict(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto/16 :goto_1
.end method

.method private processStateAppCompletion(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 5
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v2

    .line 692
    .local v2, keyCode:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 695
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v2, :sswitch_data_0

    .line 733
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 734
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processStateIdle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 738
    :cond_0
    :goto_0
    return v0

    .line 703
    :sswitch_0
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 705
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v3

    invoke-virtual {v3, v2, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 706
    const/4 v0, 0x1

    goto :goto_0

    .line 716
    :sswitch_1
    if-eqz p2, :cond_1

    .line 718
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v3

    if-lez v3, :cond_2

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v3, :cond_2

    .line 719
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->deleteFast(I)V

    .line 727
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 730
    goto :goto_0

    .line 721
    :cond_2
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 695
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method private processStateIdle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 11
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 557
    const/4 v6, 0x0

    .line 558
    .local v6, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v9

    .line 559
    .local v9, keyCode:I
    const/4 v2, 0x0

    .line 560
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    .line 568
    .local v8, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v9, :sswitch_data_0

    .line 639
    invoke-direct {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 643
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 644
    if-eqz p2, :cond_0

    .line 645
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processDecoding(Lcom/samsung/inputmethod/SimeKeyEvent;Z)V

    .line 649
    :cond_0
    const/4 v6, 0x1

    .line 684
    :cond_1
    :goto_0
    return v6

    .line 570
    :sswitch_0
    if-eqz p2, :cond_2

    .line 574
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_3

    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v0, :cond_3

    .line 575
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->deleteFast(I)V

    .line 582
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 586
    :cond_2
    const/4 v6, 0x1

    .line 588
    goto :goto_0

    .line 577
    :cond_3
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 590
    :sswitch_1
    if-eqz p2, :cond_4

    .line 591
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processEnterKey()V

    .line 593
    :cond_4
    const/4 v6, 0x1

    .line 595
    goto :goto_0

    .line 597
    :sswitch_2
    if-eqz p2, :cond_5

    .line 598
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getUnicodeChar()I

    move-result v2

    .line 599
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 601
    :cond_5
    const/4 v6, 0x1

    .line 603
    goto :goto_0

    .line 605
    :sswitch_3
    if-eqz p2, :cond_6

    .line 607
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v0

    if-nez v0, :cond_7

    .line 610
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getUnicodeChar()I

    move-result v2

    .line 611
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 619
    :cond_6
    :goto_2
    const/4 v6, 0x1

    .line 621
    goto :goto_0

    .line 613
    :cond_7
    const/16 v2, 0x2e

    .line 614
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 623
    :sswitch_4
    invoke-direct {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 624
    if-lez v2, :cond_8

    .line 625
    if-eqz p2, :cond_8

    .line 626
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 627
    .local v10, result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 628
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 629
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->autoPeriod()V

    .line 635
    .end local v10           #result:Ljava/lang/String;
    :cond_8
    const/4 v6, 0x1

    .line 637
    goto/16 :goto_0

    .line 650
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 651
    invoke-static {v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v7

    .line 654
    .local v7, fullwidth_char:C
    if-eqz v7, :cond_b

    .line 655
    if-eqz p2, :cond_a

    .line 656
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 657
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 659
    .end local v10           #result:Ljava/lang/String;
    :cond_a
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 661
    :cond_b
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 665
    .end local v7           #fullwidth_char:C
    :cond_c
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeNum(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 667
    if-eqz p2, :cond_d

    .line 670
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 672
    :cond_d
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 674
    :cond_e
    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 675
    if-eqz p2, :cond_f

    .line 676
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 677
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 679
    .end local v10           #result:Ljava/lang/String;
    :cond_f
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 568
    nop

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_2
        0x38 -> :sswitch_3
        0x3e -> :sswitch_4
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private processStateInput(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 10
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 743
    const/4 v6, 0x0

    .line 744
    .local v6, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v8

    .line 745
    .local v8, keyCode:I
    const/4 v2, 0x0

    .line 746
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    .line 749
    .local v7, ic:Landroid/view/inputmethod/InputConnection;
    invoke-direct {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 755
    sparse-switch v8, :sswitch_data_0

    .line 841
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 842
    if-eqz p2, :cond_0

    .line 843
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 845
    :cond_0
    const/4 v6, 0x1

    .line 914
    :cond_1
    :goto_0
    return v6

    .line 758
    :sswitch_0
    if-eqz p2, :cond_2

    .line 759
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 760
    :cond_2
    const/4 v6, 0x1

    .line 762
    goto :goto_0

    .line 764
    :sswitch_1
    if-eqz p2, :cond_3

    .line 765
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 766
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 767
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 778
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 780
    :cond_3
    const/4 v6, 0x1

    .line 782
    goto :goto_0

    .line 770
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    goto :goto_1

    .line 774
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 776
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processEnterKey()V

    goto :goto_1

    .line 789
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v8, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 792
    const/4 v6, 0x1

    goto :goto_0

    .line 798
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 800
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v8, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 808
    :sswitch_4
    if-eqz p2, :cond_6

    .line 810
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 812
    :cond_6
    const/4 v6, 0x1

    .line 814
    goto/16 :goto_0

    .line 816
    :sswitch_5
    if-eqz p2, :cond_7

    .line 817
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getUnicodeChar()I

    move-result v2

    .line 818
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 820
    :cond_7
    const/4 v6, 0x1

    .line 822
    goto/16 :goto_0

    .line 824
    :sswitch_6
    if-eqz p2, :cond_8

    .line 826
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v0

    if-nez v0, :cond_9

    .line 829
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getUnicodeChar()I

    move-result v2

    .line 830
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 837
    :cond_8
    :goto_2
    const/4 v6, 0x1

    .line 839
    goto/16 :goto_0

    .line 832
    :cond_9
    const/16 v2, 0x2e

    .line 833
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 846
    :cond_a
    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeNum(I)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 847
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 848
    if-eqz p2, :cond_b

    .line 849
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v0, :cond_f

    .line 852
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v8, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 853
    const/4 v6, 0x1

    .line 869
    :cond_b
    :goto_3
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 854
    :cond_c
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x8

    if-ne v0, v8, :cond_e

    .line 856
    if-eqz p2, :cond_d

    .line 857
    const v2, 0xff0c

    .line 858
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    .line 859
    .local v9, result:Ljava/lang/String;
    if-eqz v7, :cond_d

    .line 860
    const/4 v0, 0x1

    invoke-interface {v7, v9, v0}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 862
    .end local v9           #result:Ljava/lang/String;
    :cond_d
    const/4 v6, 0x1

    goto :goto_3

    .line 864
    :cond_e
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    goto :goto_3

    .line 866
    :cond_f
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    goto :goto_3

    .line 870
    :cond_10
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_13

    .line 873
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_11

    .line 874
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v8, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 881
    :cond_11
    if-eqz p2, :cond_12

    .line 884
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    const/16 v1, 0x3e

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    .line 886
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    .line 887
    .restart local v9       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v9}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 888
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 890
    .end local v9           #result:Ljava/lang/String;
    :cond_12
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 893
    :cond_13
    if-eqz p2, :cond_14

    .line 894
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    .line 895
    .restart local v9       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v9}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 897
    .end local v9           #result:Ljava/lang/String;
    :cond_14
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 899
    :cond_15
    const/16 v0, 0x2d

    if-eq v2, v0, :cond_16

    const/16 v0, 0x3b

    if-eq v2, v0, :cond_16

    const/16 v0, 0x2f

    if-ne v2, v0, :cond_17

    .line 900
    :cond_16
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 901
    :cond_17
    if-lez v2, :cond_1

    .line 903
    if-eqz p2, :cond_18

    .line 904
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    .line 905
    .restart local v9       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v9}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 907
    .end local v9           #result:Ljava/lang/String;
    :cond_18
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 755
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_2
        0x37 -> :sswitch_5
        0x38 -> :sswitch_6
        0x3e -> :sswitch_3
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
        0x4b -> :sswitch_4
        0x4c -> :sswitch_0
    .end sparse-switch
.end method

.method private processStatePredict(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 13
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 919
    const/4 v10, 0x0

    .line 920
    .local v10, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v11

    .line 921
    .local v11, keyCode:I
    const/4 v2, 0x0

    .line 924
    .local v2, keyChar:I
    invoke-direct {p0, v11}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 929
    sparse-switch v11, :sswitch_data_0

    .line 1026
    invoke-virtual {p0, v11}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1027
    if-eqz p2, :cond_0

    .line 1029
    invoke-direct {p0, p1, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processDecoding(Lcom/samsung/inputmethod/SimeKeyEvent;Z)V

    .line 1032
    :cond_0
    const/4 v10, 0x1

    .line 1080
    :cond_1
    :goto_0
    return v10

    .line 931
    :sswitch_0
    if-eqz p2, :cond_2

    .line 932
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 933
    :cond_2
    const/4 v10, 0x1

    .line 935
    goto :goto_0

    .line 937
    :sswitch_1
    if-eqz p2, :cond_3

    .line 938
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processEnterKey()V

    .line 939
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 941
    :cond_3
    const/4 v10, 0x1

    .line 943
    goto :goto_0

    .line 945
    :sswitch_2
    if-eqz p2, :cond_4

    .line 947
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpaceKeyInputAssociate()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/SamsungIME;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 948
    invoke-direct {p0, v11}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 949
    if-lez v2, :cond_4

    .line 950
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 951
    .local v12, result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v12}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 952
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 967
    .end local v12           #result:Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v10, 0x1

    .line 969
    goto :goto_0

    .line 958
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 960
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v11, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 961
    const/4 v10, 0x1

    goto :goto_1

    .line 977
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 979
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v11, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    const/4 v10, 0x1

    goto :goto_0

    .line 989
    :sswitch_4
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 991
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v11, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 992
    const/4 v10, 0x1

    .line 995
    :cond_6
    const/4 v10, 0x1

    .line 997
    goto/16 :goto_0

    .line 999
    :sswitch_5
    if-eqz p2, :cond_7

    .line 1000
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getUnicodeChar()I

    move-result v2

    .line 1001
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 1004
    :cond_7
    const/4 v10, 0x1

    .line 1006
    goto/16 :goto_0

    .line 1009
    :sswitch_6
    if-eqz p2, :cond_8

    .line 1011
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1014
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getUnicodeChar()I

    move-result v2

    .line 1015
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 1022
    :cond_8
    :goto_2
    const/4 v10, 0x1

    .line 1024
    goto/16 :goto_0

    .line 1017
    :cond_9
    const/16 v2, 0x2e

    .line 1018
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v5, ""

    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move v6, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 1033
    :cond_a
    invoke-virtual {p0, v11}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeNum(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1034
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1035
    if-eqz p2, :cond_b

    .line 1036
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 1037
    invoke-direct {p0, p1, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processDecoding(Lcom/samsung/inputmethod/SimeKeyEvent;Z)V

    .line 1039
    :cond_b
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1040
    :cond_c
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1043
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_d

    .line 1044
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v11, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1051
    :cond_d
    if-eqz p2, :cond_e

    .line 1052
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 1053
    .restart local v12       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v12}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1054
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1056
    .end local v12           #result:Ljava/lang/String;
    :cond_e
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1059
    :cond_f
    if-eqz p2, :cond_10

    .line 1060
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 1061
    .restart local v12       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v12}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1063
    .end local v12           #result:Ljava/lang/String;
    :cond_10
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1065
    :cond_11
    const/16 v0, 0x2d

    if-eq v2, v0, :cond_12

    const/16 v0, 0x3b

    if-ne v2, v0, :cond_13

    .line 1066
    :cond_12
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1067
    :cond_13
    if-lez v2, :cond_1

    .line 1069
    if-eqz p2, :cond_14

    .line 1070
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 1071
    .restart local v12       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v12}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1073
    .end local v12           #result:Ljava/lang/String;
    :cond_14
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 929
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x37 -> :sswitch_5
        0x38 -> :sswitch_6
        0x3e -> :sswitch_2
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private processSymbolKeys(Landroid/view/KeyEvent;Z)Z
    .locals 11
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v10, 0x3

    const/4 v6, 0x5

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 155
    const/4 v0, 0x0

    .line 156
    .local v0, bProcessed:Z
    const/4 v2, 0x0

    .line 157
    .local v2, keyChar:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 159
    .local v3, keyCode:I
    const/4 v1, 0x1

    .line 164
    .local v1, bResetToIdle:Z
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyPinyin()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 167
    packed-switch v3, :pswitch_data_0

    .line 309
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 310
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 311
    if-eqz p2, :cond_0

    .line 312
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 314
    :cond_0
    const/4 v0, 0x1

    .line 472
    :cond_1
    :goto_0
    if-eqz v2, :cond_3

    .line 479
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v5, v6, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    if-ne v5, v9, :cond_2

    .line 481
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    const/16 v6, 0x3e

    invoke-virtual {v5, v6, v8}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    .line 485
    :cond_2
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v8}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    .line 488
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_3

    if-ne v1, v8, :cond_3

    .line 489
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 491
    :cond_3
    return v0

    .line 169
    :pswitch_1
    if-eqz p2, :cond_4

    .line 170
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 171
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 176
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 178
    goto :goto_0

    .line 173
    :cond_5
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v6

    aget v2, v5, v6

    goto :goto_1

    .line 180
    :pswitch_2
    if-eqz p2, :cond_6

    .line 181
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 182
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 187
    :cond_6
    :goto_2
    const/4 v0, 0x1

    .line 189
    goto :goto_0

    .line 184
    :cond_7
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v10

    aget v2, v5, v8

    goto :goto_2

    .line 191
    :pswitch_3
    if-eqz p2, :cond_8

    .line 192
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 193
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 198
    :cond_8
    :goto_3
    const/4 v0, 0x1

    .line 200
    goto :goto_0

    .line 195
    :cond_9
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v9

    aget v2, v5, v9

    goto :goto_3

    .line 202
    :pswitch_4
    if-eqz p2, :cond_a

    .line 203
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 204
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 209
    :cond_a
    :goto_4
    const/4 v0, 0x1

    .line 211
    goto/16 :goto_0

    .line 206
    :cond_b
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v9

    aget v2, v5, v6

    goto :goto_4

    .line 213
    :pswitch_5
    if-eqz p2, :cond_c

    .line 214
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 215
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 220
    :cond_c
    :goto_5
    const/4 v0, 0x1

    .line 222
    goto/16 :goto_0

    .line 217
    :cond_d
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    const/16 v6, 0x8

    aget v2, v5, v6

    goto :goto_5

    .line 224
    :pswitch_6
    if-eqz p2, :cond_e

    .line 225
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 226
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 231
    :cond_e
    :goto_6
    const/4 v0, 0x1

    .line 233
    goto/16 :goto_0

    .line 228
    :cond_f
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v10

    goto :goto_6

    .line 235
    :pswitch_7
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 236
    if-eqz p2, :cond_10

    .line 237
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 239
    :cond_10
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 240
    :cond_11
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_1

    .line 242
    if-eqz p2, :cond_12

    .line 243
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v8

    const/4 v6, 0x4

    aget v2, v5, v6

    .line 245
    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 250
    :pswitch_8
    if-eqz p2, :cond_13

    .line 251
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 252
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 257
    :cond_13
    :goto_7
    const/4 v0, 0x1

    .line 259
    goto/16 :goto_0

    .line 254
    :cond_14
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v8

    goto :goto_7

    .line 262
    :pswitch_9
    if-eqz p2, :cond_15

    .line 263
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 264
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 277
    :cond_15
    :goto_8
    const/4 v0, 0x1

    .line 279
    goto/16 :goto_0

    .line 267
    :cond_16
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v5

    if-nez v5, :cond_17

    .line 270
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v7

    goto :goto_8

    .line 272
    :cond_17
    const/16 v2, 0x2e

    goto :goto_8

    .line 281
    :pswitch_a
    if-eqz p2, :cond_18

    .line 282
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 283
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 288
    :cond_18
    :goto_9
    const/4 v0, 0x1

    .line 290
    goto/16 :goto_0

    .line 285
    :cond_19
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    const/16 v6, 0x8

    aget v2, v5, v6

    goto :goto_9

    .line 293
    :pswitch_b
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v5, v6, :cond_1

    .line 295
    if-eqz p2, :cond_1a

    .line 298
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 299
    if-lez v2, :cond_1a

    .line 300
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 304
    .end local v4           #result:Ljava/lang/String;
    :cond_1a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 322
    :cond_1b
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 324
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 385
    :sswitch_0
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v5, :cond_1

    .line 387
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v5

    if-eq v5, v9, :cond_1

    .line 388
    if-eqz p2, :cond_1c

    .line 389
    add-int/lit8 v5, v3, -0x7

    add-int/lit8 v2, v5, 0x30

    .line 391
    :cond_1c
    const/4 v1, 0x0

    .line 392
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 326
    :sswitch_1
    if-eqz p2, :cond_1d

    .line 327
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 328
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 333
    :cond_1d
    :goto_a
    const/4 v0, 0x1

    .line 335
    goto/16 :goto_0

    .line 330
    :cond_1e
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v8

    goto :goto_a

    .line 339
    :sswitch_2
    if-eqz p2, :cond_1f

    .line 340
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    if-eqz v5, :cond_20

    .line 341
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 354
    :cond_1f
    :goto_b
    const/4 v0, 0x1

    .line 356
    goto/16 :goto_0

    .line 344
    :cond_20
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v5

    if-eqz v5, :cond_21

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v5

    if-nez v5, :cond_21

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v5

    if-nez v5, :cond_21

    .line 347
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v7

    goto :goto_b

    .line 349
    :cond_21
    const/16 v2, 0x2e

    goto :goto_b

    .line 359
    :sswitch_3
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v5, v6, :cond_1

    .line 361
    if-eqz p2, :cond_22

    .line 364
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 365
    if-lez v2, :cond_22

    .line 366
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 367
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 370
    .end local v4           #result:Ljava/lang/String;
    :cond_22
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 401
    :cond_23
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Stroke()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 404
    sparse-switch v3, :sswitch_data_1

    goto/16 :goto_0

    .line 406
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 407
    if-eqz p2, :cond_24

    .line 408
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getEnvironment()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v5

    if-nez v5, :cond_24

    .line 409
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v8

    .line 411
    :cond_24
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 415
    :sswitch_5
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 416
    if-eqz p2, :cond_25

    .line 417
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getEnvironment()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v5

    if-nez v5, :cond_25

    .line 418
    const v2, 0xff1a

    .line 420
    :cond_25
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 424
    :sswitch_6
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputMode()Z

    move-result v5

    if-nez v5, :cond_1

    .line 425
    if-eqz p2, :cond_26

    .line 426
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getEnvironment()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v5

    if-nez v5, :cond_26

    .line 427
    const/16 v2, 0x201c

    .line 429
    :cond_26
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 434
    :sswitch_7
    if-eqz p2, :cond_27

    .line 435
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v5

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v5

    if-nez v5, :cond_28

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v5

    if-nez v5, :cond_28

    .line 438
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v5, v5, v7

    aget v2, v5, v7

    .line 444
    :cond_27
    :goto_c
    const/4 v0, 0x1

    .line 446
    goto/16 :goto_0

    .line 440
    :cond_28
    const/16 v2, 0x2e

    goto :goto_c

    .line 449
    :sswitch_8
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v5, v6, :cond_1

    .line 451
    if-eqz p2, :cond_29

    .line 454
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 455
    if-lez v2, :cond_29

    .line 456
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 457
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 459
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_29

    .line 460
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 463
    .end local v4           #result:Ljava/lang/String;
    :cond_29
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 167
    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
    .end packed-switch

    .line 324
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0xe -> :sswitch_0
        0xf -> :sswitch_0
        0x10 -> :sswitch_0
        0x37 -> :sswitch_1
        0x38 -> :sswitch_2
        0x3e -> :sswitch_3
    .end sparse-switch

    .line 404
    :sswitch_data_1
    .sparse-switch
        0xe -> :sswitch_4
        0xf -> :sswitch_5
        0x10 -> :sswitch_6
        0x38 -> :sswitch_7
        0x3e -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public clearFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mkeyCount:I

    .line 96
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mLastKeyCode:I

    .line 97
    return-void
.end method

.method public processKeyDown(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1287
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public processKeyUp(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1295
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public processLongPressKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1303
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1305
    .local v0, keyCode:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->isKeyProcessedWhenLong(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1310
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    .line 1312
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v1, v2, :cond_1

    .line 1317
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processLongPressKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1320
    const/4 v1, 0x1

    .line 1327
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processLongPressKey(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/16 v7, 0x43

    const/16 v6, 0x39

    const/16 v5, 0x30

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1382
    if-nez p1, :cond_0

    .line 1420
    :goto_0
    return v2

    .line 1385
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v1

    .line 1386
    .local v1, keyCode:I
    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->keycodeTransToKeyChar(I)I

    move-result v0

    .line 1391
    .local v0, keyChar:I
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->isSplStrFull()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eq v7, v1, :cond_1

    move v2, v3

    .line 1392
    goto :goto_0

    .line 1395
    :cond_1
    const/16 v4, 0x61

    if-lt v0, v4, :cond_2

    const/16 v4, 0x7a

    if-le v0, v4, :cond_8

    :cond_2
    const/16 v4, 0x27

    if-eq v0, v4, :cond_8

    if-lt v0, v5, :cond_3

    if-le v0, v6, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x2a

    if-ne v0, v4, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_5
    if-lt v0, v5, :cond_6

    if-le v0, v6, :cond_7

    :cond_6
    const/16 v4, 0x2d

    if-eq v0, v4, :cond_7

    const/16 v4, 0x3b

    if-eq v0, v4, :cond_7

    const/16 v4, 0x2f

    if-eq v0, v4, :cond_7

    const/16 v4, 0x2c

    if-eq v0, v4, :cond_7

    const/16 v4, 0x2e

    if-ne v0, v4, :cond_b

    :cond_7
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1402
    :cond_8
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v4

    int-to-char v5, v0

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyPos()Landroid/graphics/PointF;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v2}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 1403
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 1404
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-lez v2, :cond_a

    .line 1406
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->dismissTutorialDialog()V

    .line 1407
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    :cond_9
    :goto_1
    move v2, v3

    .line 1420
    goto/16 :goto_0

    .line 1409
    :cond_a
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 1412
    :cond_b
    if-ne v1, v7, :cond_9

    .line 1413
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->processBackspace()V

    .line 1414
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 1415
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_1

    .line 1417
    :cond_c
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;->stopDelayCommit()V

    .line 89
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese$CnCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcSChinese;->clearFlags()V

    .line 91
    return-void
.end method
