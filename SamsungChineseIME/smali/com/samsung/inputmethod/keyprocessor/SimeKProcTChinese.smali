.class public Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;
.super Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
.source "SimeKProcTChinese.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$1;,
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SIMULATE_KEY_DELETE:Z = true

.field private static final SYMBOL_ENTER:Ljava/lang/String; = "\n"

.field private static final SYMBOL_SPACE:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "TChnKeyProcessor"

.field private static mCharCaseGap:I = 0x0

.field private static final mChn34KeyMap:[[I = null

.field private static final mPeriodofZhuyin:I = 0xc8

.field private static final mStrApotrophe:I = 0x27

.field private static final mStrAsk:I = 0x3f

.field private static final mStrAt:I = 0x40

.field private static final mStrComma:I = 0x2c

.field private static final mStrEnter:I = 0xa

.field private static final mStrMinus:I = 0x2d

.field private static final mStrPeriod:I = 0x2e

.field private static final mStrPound:I = 0x2a

.field private static final mStrSemi:I = 0x3b

.field private static final mStrSlash:I = 0x2f

.field private static final mStrSpace:I = 0x20


# instance fields
.field private mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

.field private mLastKeyCode:I

.field private mkeyCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x3

    .line 67
    const/16 v0, -0x20

    sput v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mCharCaseGap:I

    .line 70
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

    sput-object v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mChn34KeyMap:[[I

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

    .line 101
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 49
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mLastKeyCode:I

    .line 50
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mkeyCount:I

    .line 52
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;-><init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$1;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    .line 102
    return-void
.end method

.method private isSChnInputMode()Z
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 126
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    :cond_0
    const/4 v0, 0x1

    .line 130
    :cond_1
    return v0
.end method

.method private keycodeTransToKeyChar(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, keyChar:I
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    add-int/lit8 v1, p1, -0x1d

    add-int/lit8 v0, v1, 0x61

    .line 145
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextUpperCaseWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 146
    sget v1, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mCharCaseGap:I

    add-int/2addr v0, v1

    .line 174
    :cond_0
    :goto_0
    return v0

    .line 148
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeNum(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    add-int/lit8 v1, p1, -0x7

    add-int/lit8 v0, v1, 0x30

    goto :goto_0

    .line 150
    :cond_2
    const/16 v1, 0x37

    if-ne p1, v1, :cond_3

    .line 151
    const/16 v0, 0x2c

    goto :goto_0

    .line 152
    :cond_3
    const/16 v1, 0x38

    if-ne p1, v1, :cond_4

    .line 153
    const/16 v0, 0x2e

    goto :goto_0

    .line 154
    :cond_4
    const/16 v1, 0x4b

    if-ne p1, v1, :cond_5

    .line 155
    const/16 v0, 0x27

    goto :goto_0

    .line 156
    :cond_5
    const/16 v1, 0x4d

    if-ne p1, v1, :cond_6

    .line 157
    const/16 v0, 0x40

    goto :goto_0

    .line 158
    :cond_6
    const/16 v1, 0x4c

    if-ne p1, v1, :cond_7

    .line 159
    const/16 v0, 0x2f

    goto :goto_0

    .line 160
    :cond_7
    const/16 v1, 0x45

    if-ne p1, v1, :cond_8

    .line 161
    const/16 v0, 0x2d

    goto :goto_0

    .line 162
    :cond_8
    const/16 v1, 0x4a

    if-ne p1, v1, :cond_9

    .line 163
    const/16 v0, 0x3b

    goto :goto_0

    .line 164
    :cond_9
    const/16 v1, 0x3f

    if-ne p1, v1, :cond_a

    .line 165
    const/16 v0, 0x3f

    goto :goto_0

    .line 166
    :cond_a
    const/16 v1, 0x42

    if-ne p1, v1, :cond_b

    .line 167
    const/16 v0, 0xa

    goto :goto_0

    .line 168
    :cond_b
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_c

    .line 169
    const/16 v0, 0x20

    goto :goto_0

    .line 170
    :cond_c
    const/16 v1, 0x12

    if-ne p1, v1, :cond_0

    .line 171
    const/16 v0, 0x2a

    goto :goto_0
.end method

.method private preProcessKeyboard(IZ)Z
    .locals 8
    .parameter "keyCode"
    .parameter "realAction"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x7

    .line 467
    const/4 v0, 0x0

    .line 468
    .local v0, bProcessed:Z
    const/4 v2, 0x0

    .line 469
    .local v2, keyChar:I
    const/4 v3, 0x0

    .line 470
    .local v3, keyValue:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 474
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 476
    if-eq v6, p1, :cond_0

    if-ne v7, p1, :cond_8

    .line 480
    :cond_0
    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mLastKeyCode:I

    if-ne v5, p1, :cond_6

    .line 481
    if-eqz p2, :cond_1

    .line 482
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->stopDelayCommit()V

    .line 483
    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mkeyCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mkeyCount:I

    .line 495
    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    .line 498
    if-ne p1, v7, :cond_7

    .line 499
    const/4 v3, 0x1

    .line 503
    :cond_2
    :goto_1
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mChn34KeyMap:[[I

    aget-object v5, v5, v3

    iget v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mkeyCount:I

    rem-int/lit8 v6, v6, 0x2

    aget v2, v5, v6

    .line 508
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 510
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_3

    .line 512
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 514
    :cond_3
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 515
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->startCommitTimer(Landroid/view/inputmethod/InputConnection;)V

    .line 517
    iput p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mLastKeyCode:I

    .line 519
    .end local v4           #result:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    .line 528
    :cond_5
    :goto_2
    return v0

    .line 489
    :cond_6
    if-eqz p2, :cond_1

    .line 490
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->stopDelayCommit()V

    .line 491
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_0

    .line 500
    :cond_7
    if-ne p1, v6, :cond_2

    .line 501
    const/4 v3, 0x0

    goto :goto_1

    .line 522
    :cond_8
    if-eqz v1, :cond_5

    if-eqz p2, :cond_5

    .line 523
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->stopDelayCommit()V

    .line 524
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_2
.end method

.method private processDecoding(Lcom/samsung/inputmethod/SimeKeyEvent;Z)V
    .locals 5
    .parameter "event"
    .parameter "bReset"

    .prologue
    const/4 v4, 0x1

    .line 1389
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->keycodeTransToKeyChar(I)I

    move-result v0

    .line 1390
    .local v0, keyChar:I
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v1

    int-to-char v2, v0

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyPos()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v2, v3, p2}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 1391
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 1393
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1394
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v4}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 1398
    :goto_0
    return-void

    .line 1396
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v4}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0
.end method

.method private processFuncKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 4
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v3, 0x0

    .line 1116
    const/4 v0, 0x0

    .line 1117
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v1

    .line 1119
    .local v1, keyCode:I
    sparse-switch v1, :sswitch_data_0

    .line 1195
    :cond_0
    :goto_0
    return v0

    .line 1121
    :sswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1122
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processLangKey()V

    .line 1123
    const/4 v0, 0x1

    goto :goto_0

    .line 1131
    :sswitch_1
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->isComposingViewShown()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1133
    const/4 v0, 0x1

    goto :goto_0

    .line 1138
    :sswitch_2
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 1139
    if-eqz p2, :cond_1

    .line 1142
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processStarKey()V

    .line 1144
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1149
    :sswitch_3
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 1150
    if-eqz p2, :cond_2

    .line 1153
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processPoundKey(Lcom/samsung/inputmethod/SimeKeyEvent;)V

    .line 1155
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1160
    :sswitch_4
    if-eqz p2, :cond_3

    .line 1163
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processBackKey()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1164
    const/4 v0, 0x1

    .line 1170
    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 1171
    goto :goto_0

    .line 1166
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1167
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto :goto_1

    .line 1179
    :sswitch_5
    if-eqz p2, :cond_5

    .line 1182
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processLangKey()V

    .line 1184
    :cond_5
    const/4 v0, 0x1

    .line 1186
    goto :goto_0

    .line 1188
    :sswitch_6
    invoke-static {v3}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardLedState(Z)V

    .line 1189
    const/4 v0, 0x1

    goto :goto_0

    .line 1119
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x11 -> :sswitch_2
        0x12 -> :sswitch_3
        0x3e -> :sswitch_0
        0x4b -> :sswitch_1
        0x73 -> :sswitch_6
        0xe3 -> :sswitch_5
    .end sparse-switch
.end method

.method private processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 11
    .parameter "event"
    .parameter "isPressedDown"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1200
    const/4 v0, 0x0

    .line 1201
    .local v0, bProcessed:Z
    const/4 v5, 0x0

    .line 1202
    .local v5, isSoftKey:Z
    const/4 v1, 0x0

    .line 1203
    .local v1, bRealAction:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v6

    .line 1204
    .local v6, keyCode:I
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v2

    .line 1205
    .local v2, count:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v4

    .line 1206
    .local v4, ic:Landroid/view/inputmethod/InputConnection;
    const/4 v3, 0x0

    .line 1210
    .local v3, enterNormalState:Z
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1211
    const/4 v5, 0x1

    .line 1219
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isSChnInputMode()Z

    move-result v9

    if-nez v9, :cond_5

    .line 1313
    :cond_1
    :goto_1
    if-nez v5, :cond_2

    .line 1314
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1315
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    :cond_2
    move v7, v0

    .line 1318
    :cond_3
    :goto_2
    return v7

    .line 1214
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 1215
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getEnterKeyNormalState()Z

    move-result v3

    .line 1216
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    goto :goto_0

    .line 1222
    :cond_5
    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_BYPASS:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v10

    if-eq v9, v10, :cond_1

    .line 1227
    if-eqz v4, :cond_1

    .line 1232
    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9, p1}, Lcom/samsung/inputmethod/SamsungIME;->needHideSoftKeyboard(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1233
    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->hideSoftKeyboard()V

    .line 1240
    :cond_6
    const/4 v9, 0x4

    if-ne v6, v9, :cond_7

    .line 1241
    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v9

    if-nez v9, :cond_7

    iget-object v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v9

    if-nez v9, :cond_7

    move v7, v0

    .line 1248
    goto :goto_2

    .line 1253
    :cond_7
    if-eqz v5, :cond_9

    .line 1255
    if-nez p2, :cond_8

    .line 1256
    const/4 v1, 0x1

    .line 1278
    :cond_8
    :goto_3
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processFuncKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1281
    const/4 v0, 0x1

    goto :goto_1

    .line 1261
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyProcessedWhenLong(I)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1265
    if-gtz v2, :cond_3

    .line 1268
    if-nez p2, :cond_a

    move v1, v7

    :goto_4
    goto :goto_3

    :cond_a
    move v1, v8

    goto :goto_4

    .line 1269
    :cond_b
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isHardKeyProcessedWhenUp(I)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1270
    if-nez p2, :cond_c

    move v1, v7

    :goto_5
    goto :goto_3

    :cond_c
    move v1, v8

    goto :goto_5

    .line 1274
    :cond_d
    move v1, p2

    goto :goto_3

    .line 1283
    :cond_e
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSymbolKeys(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 1286
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1287
    :cond_f
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-direct {p0, v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->preProcessKeyboard(IZ)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1291
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1294
    :cond_10
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v7

    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v7, v8, :cond_11

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v7

    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v7, v8, :cond_13

    .line 1296
    :cond_11
    if-eqz v1, :cond_12

    .line 1298
    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 1300
    :cond_12
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processStateIdle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto/16 :goto_1

    .line 1301
    :cond_13
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v7

    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v7, v8, :cond_14

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v8

    if-ne v7, v8, :cond_15

    .line 1303
    :cond_14
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processStateInput(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto/16 :goto_1

    .line 1304
    :cond_15
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v7

    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v7, v8, :cond_1

    .line 1305
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processStatePredict(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto/16 :goto_1
.end method

.method private processStateIdle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 11
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 533
    const/4 v6, 0x0

    .line 534
    .local v6, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v9

    .line 535
    .local v9, keyCode:I
    const/4 v2, 0x0

    .line 536
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v8

    .line 542
    .local v8, ic:Landroid/view/inputmethod/InputConnection;
    invoke-direct {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 551
    sparse-switch v9, :sswitch_data_0

    .line 633
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_9

    .line 638
    if-eqz p2, :cond_0

    .line 639
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processDecoding(Lcom/samsung/inputmethod/SimeKeyEvent;Z)V

    .line 645
    :cond_0
    const/4 v6, 0x1

    .line 707
    :cond_1
    :goto_0
    return v6

    .line 553
    :sswitch_0
    if-eqz p2, :cond_2

    .line 555
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_3

    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v0, :cond_3

    .line 556
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->deleteFast(I)V

    .line 563
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 567
    :cond_2
    const/4 v6, 0x1

    .line 569
    goto :goto_0

    .line 558
    :cond_3
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 571
    :sswitch_1
    if-eqz p2, :cond_4

    .line 572
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processEnterKey()V

    .line 574
    :cond_4
    const/4 v6, 0x1

    .line 576
    goto :goto_0

    .line 579
    :sswitch_2
    if-eqz p2, :cond_5

    .line 581
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 582
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 606
    :cond_5
    :goto_2
    const/4 v6, 0x1

    .line 608
    goto :goto_0

    .line 586
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v0

    if-nez v0, :cond_7

    .line 591
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getUnicodeChar()I

    move-result v2

    .line 593
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x1

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 598
    :cond_7
    const/16 v2, 0x2e

    .line 600
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    const/4 v3, 0x0

    const/4 v4, 0x1

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 610
    :sswitch_3
    if-lez v2, :cond_8

    .line 611
    if-eqz p2, :cond_8

    .line 612
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 613
    .local v10, result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 614
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 615
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->autoPeriod()V

    .line 621
    .end local v10           #result:Ljava/lang/String;
    :cond_8
    const/4 v6, 0x1

    .line 623
    goto/16 :goto_0

    .line 646
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 647
    invoke-static {v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v7

    .line 653
    .local v7, fullwidth_char:C
    if-eqz v7, :cond_b

    .line 654
    if-eqz p2, :cond_a

    .line 655
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 656
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 659
    .end local v10           #result:Ljava/lang/String;
    :cond_a
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 661
    :cond_b
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 665
    .end local v7           #fullwidth_char:C
    :cond_c
    invoke-virtual {p0, v9}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeNum(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 669
    :cond_d
    if-eqz p2, :cond_e

    .line 670
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 671
    :cond_e
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 681
    :cond_f
    const/16 v0, 0x2d

    if-eq v2, v0, :cond_10

    const/16 v0, 0x3b

    if-eq v2, v0, :cond_10

    const/16 v0, 0x2f

    if-ne v2, v0, :cond_12

    .line 682
    :cond_10
    if-eqz p2, :cond_11

    .line 683
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 684
    :cond_11
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 686
    :cond_12
    const/16 v0, 0x2a

    if-ne v2, v0, :cond_14

    .line 687
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v0, :cond_1

    .line 688
    if-eqz p2, :cond_13

    .line 689
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 690
    :cond_13
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 694
    :cond_14
    if-lez v2, :cond_1

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCtrlPressed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 698
    if-eqz p2, :cond_15

    .line 699
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 700
    .restart local v10       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v10}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 702
    .end local v10           #result:Ljava/lang/String;
    :cond_15
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 551
    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_2
        0x38 -> :sswitch_2
        0x3e -> :sswitch_3
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private processStateInput(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 13
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x1

    .line 712
    const/4 v10, 0x0

    .line 713
    .local v10, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v11

    .line 714
    .local v11, keyCode:I
    const/4 v2, 0x0

    .line 717
    .local v2, keyChar:I
    invoke-direct {p0, v11}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 730
    sparse-switch v11, :sswitch_data_0

    .line 820
    invoke-virtual {p0, v11}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 821
    if-eqz p2, :cond_0

    .line 822
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 824
    :cond_0
    const/4 v10, 0x1

    .line 898
    :cond_1
    :goto_0
    return v10

    .line 734
    :sswitch_0
    if-eqz p2, :cond_2

    .line 735
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 736
    :cond_2
    const/4 v10, 0x1

    .line 738
    goto :goto_0

    .line 740
    :sswitch_1
    if-eqz p2, :cond_3

    .line 741
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 742
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 743
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 755
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 757
    :cond_3
    const/4 v10, 0x1

    .line 759
    goto :goto_0

    .line 746
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    goto :goto_1

    .line 750
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 752
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processEnterKey()V

    goto :goto_1

    .line 765
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v11, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    const/4 v10, 0x1

    goto :goto_0

    .line 774
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v11, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 784
    :sswitch_4
    if-eqz p2, :cond_6

    .line 785
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 787
    :cond_6
    const/4 v10, 0x1

    .line 789
    goto/16 :goto_0

    .line 792
    :sswitch_5
    if-eqz p2, :cond_7

    .line 793
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 794
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 816
    :cond_7
    :goto_2
    const/4 v10, 0x1

    .line 818
    goto/16 :goto_0

    .line 796
    :cond_8
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v0

    if-nez v0, :cond_9

    .line 801
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getUnicodeChar()I

    move-result v2

    .line 803
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 808
    :cond_9
    const/16 v2, 0x2e

    .line 810
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v5, ""

    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move v6, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 825
    :cond_a
    invoke-virtual {p0, v11}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeNum(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 826
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 832
    :cond_b
    if-eqz p2, :cond_c

    .line 833
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 834
    :cond_c
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 843
    :cond_d
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 849
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    .line 850
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v11, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 857
    :cond_e
    if-eqz p2, :cond_f

    .line 862
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    .line 865
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 866
    .local v12, result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v12}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 867
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 869
    .end local v12           #result:Ljava/lang/String;
    :cond_f
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 872
    :cond_10
    if-eqz p2, :cond_11

    .line 873
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 874
    .restart local v12       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v12}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 876
    .end local v12           #result:Ljava/lang/String;
    :cond_11
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 878
    :cond_12
    const/16 v0, 0x2d

    if-eq v2, v0, :cond_13

    const/16 v0, 0x3b

    if-eq v2, v0, :cond_13

    const/16 v0, 0x2f

    if-eq v2, v0, :cond_13

    const/16 v0, 0x2a

    if-ne v2, v0, :cond_15

    .line 881
    :cond_13
    if-eqz p2, :cond_14

    .line 882
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 883
    :cond_14
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 885
    :cond_15
    if-lez v2, :cond_1

    .line 887
    if-eqz p2, :cond_16

    .line 888
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 889
    .restart local v12       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v12}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 891
    .end local v12           #result:Ljava/lang/String;
    :cond_16
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 730
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_2
        0x15 -> :sswitch_2
        0x16 -> :sswitch_2
        0x17 -> :sswitch_2
        0x37 -> :sswitch_5
        0x38 -> :sswitch_5
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

    .line 903
    const/4 v10, 0x0

    .line 904
    .local v10, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v11

    .line 905
    .local v11, keyCode:I
    const/4 v2, 0x0

    .line 908
    .local v2, keyChar:I
    invoke-direct {p0, v11}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 920
    sparse-switch v11, :sswitch_data_0

    .line 1025
    invoke-virtual {p0, v11}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1026
    if-eqz p2, :cond_0

    .line 1027
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 1028
    invoke-direct {p0, p1, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processDecoding(Lcom/samsung/inputmethod/SimeKeyEvent;Z)V

    .line 1031
    :cond_0
    const/4 v10, 0x1

    .line 1111
    :cond_1
    :goto_0
    return v10

    .line 923
    :sswitch_0
    if-eqz p2, :cond_2

    .line 924
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 925
    :cond_2
    const/4 v10, 0x1

    .line 927
    goto :goto_0

    .line 929
    :sswitch_1
    if-eqz p2, :cond_3

    .line 930
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processEnterKey()V

    .line 931
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 933
    :cond_3
    const/4 v10, 0x1

    .line 935
    goto :goto_0

    .line 937
    :sswitch_2
    if-eqz p2, :cond_4

    .line 940
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpaceKeyInputAssociate()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/SamsungIME;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 941
    invoke-direct {p0, v11}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 942
    if-lez v2, :cond_4

    .line 943
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 944
    .local v12, result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v12}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 945
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 961
    .end local v12           #result:Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v10, 0x1

    .line 963
    goto :goto_0

    .line 951
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 953
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v11, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 955
    const/4 v10, 0x1

    goto :goto_1

    .line 971
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 973
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v11, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    const/4 v10, 0x1

    goto :goto_0

    .line 983
    :sswitch_4
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 985
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v11, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 986
    const/4 v10, 0x1

    .line 989
    :cond_6
    const/4 v10, 0x1

    .line 991
    goto/16 :goto_0

    .line 994
    :sswitch_5
    if-eqz p2, :cond_7

    .line 996
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 997
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 998
    invoke-direct {p0, p1, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processDecoding(Lcom/samsung/inputmethod/SimeKeyEvent;Z)V

    .line 1021
    :cond_7
    :goto_2
    const/4 v10, 0x1

    .line 1023
    goto/16 :goto_0

    .line 1001
    :cond_8
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1006
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getUnicodeChar()I

    move-result v2

    .line 1008
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v1, ""

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 1013
    :cond_9
    const/16 v2, 0x2e

    .line 1015
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v5, ""

    sget-object v9, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move v6, v2

    move v8, v3

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_2

    .line 1032
    :cond_a
    invoke-virtual {p0, v11}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeNum(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1033
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1039
    :cond_b
    if-eqz p2, :cond_c

    .line 1040
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 1041
    invoke-direct {p0, p1, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processDecoding(Lcom/samsung/inputmethod/SimeKeyEvent;Z)V

    .line 1043
    :cond_c
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1053
    :cond_d
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1059
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_e

    .line 1060
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v0

    invoke-virtual {v0, v11, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1067
    :cond_e
    if-eqz p2, :cond_f

    .line 1068
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 1069
    .restart local v12       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v12}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1070
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1072
    .end local v12           #result:Ljava/lang/String;
    :cond_f
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1075
    :cond_10
    if-eqz p2, :cond_11

    .line 1076
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 1077
    .restart local v12       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v12}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1079
    .end local v12           #result:Ljava/lang/String;
    :cond_11
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1081
    :cond_12
    const/16 v0, 0x2d

    if-eq v2, v0, :cond_13

    const/16 v0, 0x3b

    if-eq v2, v0, :cond_13

    const/16 v0, 0x2f

    if-eq v2, v0, :cond_13

    const/16 v0, 0x2a

    if-ne v2, v0, :cond_16

    .line 1084
    :cond_13
    if-eqz p2, :cond_14

    .line 1085
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 1086
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v0

    int-to-char v1, v2

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyPos()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v3}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 1088
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 1090
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 1091
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 1097
    :cond_14
    :goto_3
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 1093
    :cond_15
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_3

    .line 1098
    :cond_16
    if-lez v2, :cond_1

    .line 1100
    if-eqz p2, :cond_17

    .line 1101
    int-to-char v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 1102
    .restart local v12       #result:Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, v12}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1104
    .end local v12           #result:Ljava/lang/String;
    :cond_17
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 920
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_3
        0x15 -> :sswitch_3
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x37 -> :sswitch_5
        0x38 -> :sswitch_5
        0x3e -> :sswitch_2
        0x42 -> :sswitch_1
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private processSymbolKeys(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 10
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x2

    const/16 v5, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, bProcessed:Z
    const/4 v2, 0x0

    .line 181
    .local v2, keyChar:I
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 183
    .local v3, keyCode:I
    const/4 v1, 0x1

    .line 188
    .local v1, bResetToIdle:Z
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyCangjie()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 191
    packed-switch v3, :pswitch_data_0

    .line 305
    :pswitch_0
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeNum(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 306
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 308
    if-eqz p2, :cond_0

    .line 309
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 311
    :cond_0
    const/4 v0, 0x1

    .line 314
    :cond_1
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->isKeyCodeAlpha(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 315
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 317
    if-eqz p2, :cond_2

    .line 318
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 320
    :cond_2
    const/4 v0, 0x1

    .line 440
    :cond_3
    :goto_0
    if-eqz v2, :cond_5

    .line 447
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v4

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v4, v5, :cond_4

    .line 449
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    const/16 v5, 0x3e

    invoke-virtual {v4, v5, v7}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    .line 453
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    .line 457
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v4

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v4, v5, :cond_5

    if-ne v1, v7, :cond_5

    .line 458
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 460
    :cond_5
    return v0

    .line 193
    :pswitch_1
    if-eqz p2, :cond_6

    .line 194
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 196
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 201
    :cond_6
    :goto_1
    const/4 v0, 0x1

    .line 203
    goto :goto_0

    .line 198
    :cond_7
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v9

    aget v2, v4, v9

    goto :goto_1

    .line 205
    :pswitch_2
    if-eqz p2, :cond_8

    .line 206
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 208
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 214
    :cond_8
    :goto_2
    const/4 v0, 0x1

    .line 216
    goto :goto_0

    .line 210
    :cond_9
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    const/4 v5, 0x3

    aget-object v4, v4, v5

    aget v2, v4, v7

    goto :goto_2

    .line 218
    :pswitch_3
    if-eqz p2, :cond_a

    .line 219
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 221
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 226
    :cond_a
    :goto_3
    const/4 v0, 0x1

    .line 228
    goto :goto_0

    .line 223
    :cond_b
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v8

    aget v2, v4, v8

    goto :goto_3

    .line 230
    :pswitch_4
    if-eqz p2, :cond_c

    .line 231
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 233
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 239
    :cond_c
    :goto_4
    const/4 v0, 0x1

    .line 241
    goto :goto_0

    .line 235
    :cond_d
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v8

    aget v2, v4, v9

    goto :goto_4

    .line 243
    :pswitch_5
    if-eqz p2, :cond_e

    .line 244
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 246
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 251
    :cond_e
    :goto_5
    const/4 v0, 0x1

    .line 253
    goto/16 :goto_0

    .line 248
    :cond_f
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v5

    goto :goto_5

    .line 255
    :pswitch_6
    if-eqz p2, :cond_10

    .line 256
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_11

    .line 257
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 263
    :cond_10
    :goto_6
    const/4 v0, 0x1

    .line 265
    goto/16 :goto_0

    .line 259
    :cond_11
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    const/4 v5, 0x3

    aget v2, v4, v5

    goto :goto_6

    .line 267
    :pswitch_7
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 268
    if-eqz p2, :cond_12

    .line 269
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 271
    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 272
    :cond_13
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v4

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v4, v5, :cond_3

    .line 273
    if-eqz p2, :cond_14

    .line 274
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v7

    const/4 v5, 0x4

    aget v2, v4, v5

    .line 277
    :cond_14
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 282
    :pswitch_8
    if-eqz p2, :cond_15

    .line 283
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 284
    invoke-static {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v2

    .line 289
    :cond_15
    :goto_7
    const/4 v0, 0x1

    .line 291
    goto/16 :goto_0

    .line 286
    :cond_16
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v5

    goto :goto_7

    .line 326
    :cond_17
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Stroke()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 329
    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    .line 331
    :sswitch_0
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputMode()Z

    move-result v4

    if-nez v4, :cond_3

    .line 332
    if-eqz p2, :cond_18

    .line 333
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getEnvironment()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v4

    if-nez v4, :cond_18

    .line 334
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v7

    .line 336
    :cond_18
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 340
    :sswitch_1
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputMode()Z

    move-result v4

    if-nez v4, :cond_3

    .line 341
    if-eqz p2, :cond_19

    .line 342
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getEnvironment()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v4

    if-nez v4, :cond_19

    .line 343
    const v2, 0xff1a

    .line 345
    :cond_19
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 349
    :sswitch_2
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputMode()Z

    move-result v4

    if-nez v4, :cond_3

    .line 350
    if-eqz p2, :cond_1a

    .line 351
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getEnvironment()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 352
    const/16 v2, 0x201c

    .line 354
    :cond_1a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 359
    :sswitch_3
    if-eqz p2, :cond_1b

    .line 360
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v4

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v4

    if-nez v4, :cond_1c

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v4

    if-nez v4, :cond_1c

    .line 363
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v6

    .line 368
    :cond_1b
    :goto_8
    const/4 v0, 0x1

    .line 370
    goto/16 :goto_0

    .line 365
    :cond_1c
    const/16 v2, 0x2e

    goto :goto_8

    .line 376
    :cond_1d
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 377
    packed-switch v3, :pswitch_data_1

    goto/16 :goto_0

    .line 380
    :pswitch_9
    if-eqz p2, :cond_1f

    .line 385
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v4

    if-nez v4, :cond_1e

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v4

    if-eqz v4, :cond_20

    .line 386
    :cond_1e
    const/16 v2, 0x2e

    .line 391
    :cond_1f
    :goto_9
    const/4 v0, 0x1

    .line 393
    goto/16 :goto_0

    .line 388
    :cond_20
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v6

    goto :goto_9

    .line 398
    :cond_21
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 399
    const/16 v4, 0x38

    if-ne v3, v4, :cond_3

    .line 401
    if-eqz p2, :cond_23

    .line 405
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v4

    if-nez v4, :cond_22

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 406
    :cond_22
    const/16 v2, 0x2e

    .line 411
    :cond_23
    :goto_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 408
    :cond_24
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v6

    goto :goto_a

    .line 416
    :cond_25
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isCangjieMode()Z

    move-result v4

    if-nez v4, :cond_26

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQuickCangjieMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 418
    :cond_26
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Cangjie()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 419
    if-ne v3, v5, :cond_28

    .line 420
    if-eqz p2, :cond_27

    .line 421
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v5

    .line 422
    :cond_27
    const/4 v0, 0x1

    .line 426
    :cond_28
    const/16 v4, 0x38

    if-ne v3, v4, :cond_3

    .line 427
    if-eqz p2, :cond_3

    .line 429
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v4

    if-nez v4, :cond_29

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 430
    :cond_29
    const/16 v2, 0x2e

    .line 435
    :goto_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 432
    :cond_2a
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->fullSymbolMap:[[I

    aget-object v4, v4, v6

    aget v2, v4, v6

    goto :goto_b

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 329
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0xf -> :sswitch_1
        0x10 -> :sswitch_2
        0x38 -> :sswitch_3
    .end sparse-switch

    .line 377
    :pswitch_data_1
    .packed-switch 0xc8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public clearFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mkeyCount:I

    .line 117
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mLastKeyCode:I

    .line 118
    return-void
.end method

.method public processKeyDown(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1327
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public processKeyUp(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1335
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method protected processPoundKey(Lcom/samsung/inputmethod/SimeKeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->charBeforeCursorIsTone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1347
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->processDecoding(Lcom/samsung/inputmethod/SimeKeyEvent;Z)V

    .line 1349
    :cond_0
    return-void
.end method

.method protected processSurfaceChange(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/16 v8, 0x43

    const/16 v7, 0x39

    const/16 v6, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1402
    if-nez p1, :cond_0

    .line 1447
    :goto_0
    return v3

    .line 1405
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v2

    .line 1406
    .local v2, keyCode:I
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->keycodeTransToKeyChar(I)I

    move-result v1

    .line 1411
    .local v1, keyChar:I
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->isSplStrFull()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eq v8, v2, :cond_1

    move v3, v4

    .line 1412
    goto :goto_0

    .line 1415
    :cond_1
    const/16 v5, 0x61

    if-lt v1, v5, :cond_2

    const/16 v5, 0x7a

    if-le v1, v5, :cond_8

    :cond_2
    const/16 v5, 0x27

    if-eq v1, v5, :cond_8

    if-lt v1, v6, :cond_3

    if-le v1, v7, :cond_4

    :cond_3
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v5

    if-eqz v5, :cond_5

    const/16 v5, 0x2a

    if-ne v1, v5, :cond_5

    :cond_4
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v5

    if-nez v5, :cond_8

    :cond_5
    if-lt v1, v6, :cond_6

    if-le v1, v7, :cond_7

    :cond_6
    const/16 v5, 0x2d

    if-eq v1, v5, :cond_7

    const/16 v5, 0x3b

    if-eq v1, v5, :cond_7

    const/16 v5, 0x2f

    if-eq v1, v5, :cond_7

    const/16 v5, 0x2c

    if-eq v1, v5, :cond_7

    const/16 v5, 0x2e

    if-ne v1, v5, :cond_b

    :cond_7
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1423
    :cond_8
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v5

    int-to-char v6, v1

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyPos()Landroid/graphics/PointF;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v3}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 1425
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 1426
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 1427
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    :cond_9
    :goto_1
    move v3, v4

    .line 1447
    goto/16 :goto_0

    .line 1429
    :cond_a
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 1432
    :cond_b
    if-ne v2, v8, :cond_9

    .line 1433
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->processBackspace()V

    .line 1434
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v5

    if-lez v5, :cond_c

    .line 1435
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 1440
    :goto_2
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1441
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1442
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_9

    .line 1443
    invoke-interface {v0, v4, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_1

    .line 1437
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_c
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_2
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->stopDelayCommit()V

    .line 110
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese$CnCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcTChinese;->clearFlags()V

    .line 112
    return-void
.end method
