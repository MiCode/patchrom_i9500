.class public Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;
.super Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
.source "SimeKProcEnglish.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$1;,
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SYMBOL_ENTER:Ljava/lang/String; = "\n"

.field private static final SYMBOL_SPACE:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "EnglishKeyProcessor"

.field private static final endPunctuationArray:[Ljava/lang/String; = null

.field private static mCharCaseGap:I = 0x0

.field private static final mEn34KeyMap:[[I = null

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
.field isShiftKeyNeedProcess:Z

.field private mCapsLockState:Z

.field private mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

.field private mLastKeyCode:I

.field private mkeyCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x3

    .line 67
    const/16 v0, -0x20

    sput v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCharCaseGap:I

    .line 69
    const/16 v0, 0xa

    new-array v0, v0, [[I

    new-array v1, v6, [I

    const/16 v2, 0x20

    aput v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mEn34KeyMap:[[I

    .line 76
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "!"

    aput-object v1, v0, v5

    const-string v1, "?"

    aput-object v1, v0, v6

    const-string v1, ","

    aput-object v1, v0, v7

    const-string v1, ":"

    aput-object v1, v0, v3

    const-string v1, ";"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "."

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->endPunctuationArray:[Ljava/lang/String;

    return-void

    .line 69
    :array_0
    .array-data 0x4
        0x2ct 0x0t 0x0t 0x0t
        0x3ft 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x61t 0x0t 0x0t 0x0t
        0x62t 0x0t 0x0t 0x0t
        0x63t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x65t 0x0t 0x0t 0x0t
        0x66t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x67t 0x0t 0x0t 0x0t
        0x68t 0x0t 0x0t 0x0t
        0x69t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x6at 0x0t 0x0t 0x0t
        0x6bt 0x0t 0x0t 0x0t
        0x6ct 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x6dt 0x0t 0x0t 0x0t
        0x6et 0x0t 0x0t 0x0t
        0x6ft 0x0t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x70t 0x0t 0x0t 0x0t
        0x71t 0x0t 0x0t 0x0t
        0x72t 0x0t 0x0t 0x0t
        0x73t 0x0t 0x0t 0x0t
    .end array-data

    :array_7
    .array-data 0x4
        0x74t 0x0t 0x0t 0x0t
        0x75t 0x0t 0x0t 0x0t
        0x76t 0x0t 0x0t 0x0t
    .end array-data

    :array_8
    .array-data 0x4
        0x77t 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x79t 0x0t 0x0t 0x0t
        0x7at 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 1
    .parameter "ime"

    .prologue
    const/4 v0, 0x0

    .line 85
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 50
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    .line 51
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    .line 52
    iput-boolean v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isShiftKeyNeedProcess:Z

    .line 65
    iput-boolean v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCapsLockState:Z

    .line 79
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;-><init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    return v0
.end method

.method private getCapsLockState()Z
    .locals 1

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCapsLockState:Z

    return v0
.end method

.method private isLongpressKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, bIsLong:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    .line 114
    .local v1, nkeyRepCnt:I
    if-lez v1, :cond_0

    rem-int/lit8 v2, v1, 0x3

    if-nez v2, :cond_0

    .line 115
    const/4 v0, 0x1

    .line 116
    :cond_0
    return v0
.end method

.method private keycodeTransToKeyChar(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 137
    const/4 v0, 0x0

    .line 139
    .local v0, keyChar:I
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 140
    add-int/lit8 v1, p1, -0x1d

    add-int/lit8 v0, v1, 0x61

    .line 141
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextUpperCaseWithSkb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    sget v1, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCharCaseGap:I

    add-int/2addr v0, v1

    .line 170
    :cond_0
    :goto_0
    return v0

    .line 144
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 145
    add-int/lit8 v1, p1, -0x7

    add-int/lit8 v0, v1, 0x30

    goto :goto_0

    .line 146
    :cond_2
    const/16 v1, 0x37

    if-ne p1, v1, :cond_3

    .line 147
    const/16 v0, 0x2c

    goto :goto_0

    .line 148
    :cond_3
    const/16 v1, 0x38

    if-ne p1, v1, :cond_4

    .line 149
    const/16 v0, 0x2e

    goto :goto_0

    .line 150
    :cond_4
    const/16 v1, 0x4b

    if-ne p1, v1, :cond_5

    .line 151
    const/16 v0, 0x27

    goto :goto_0

    .line 152
    :cond_5
    const/16 v1, 0x4d

    if-ne p1, v1, :cond_6

    .line 153
    const/16 v0, 0x40

    goto :goto_0

    .line 154
    :cond_6
    const/16 v1, 0x4c

    if-ne p1, v1, :cond_7

    .line 155
    const/16 v0, 0x2f

    goto :goto_0

    .line 156
    :cond_7
    const/16 v1, 0x45

    if-ne p1, v1, :cond_8

    .line 157
    const/16 v0, 0x2d

    goto :goto_0

    .line 158
    :cond_8
    const/16 v1, 0x4a

    if-ne p1, v1, :cond_9

    .line 159
    const/16 v0, 0x3b

    goto :goto_0

    .line 160
    :cond_9
    const/16 v1, 0x3f

    if-ne p1, v1, :cond_a

    .line 161
    const/16 v0, 0x3f

    goto :goto_0

    .line 162
    :cond_a
    const/16 v1, 0x42

    if-ne p1, v1, :cond_b

    .line 163
    const/16 v0, 0xa

    goto :goto_0

    .line 164
    :cond_b
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_0

    .line 165
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private processFuncKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/high16 v7, 0x1121

    const/high16 v6, 0x1111

    const/high16 v5, 0x10

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1476
    const/4 v0, 0x0

    .line 1477
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v1

    .line 1479
    .local v1, keyCode:I
    sparse-switch v1, :sswitch_data_0

    .line 1563
    :cond_0
    :goto_0
    return v0

    .line 1481
    :sswitch_0
    if-eqz p2, :cond_1

    .line 1482
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->handleClipboardKey()V

    .line 1484
    :cond_1
    const/4 v0, 0x1

    .line 1486
    goto :goto_0

    .line 1488
    :sswitch_1
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1489
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processLangKey()V

    .line 1490
    const/4 v0, 0x1

    goto :goto_0

    .line 1494
    :sswitch_2
    if-eqz p2, :cond_2

    .line 1497
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processBackKey()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1503
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 1504
    goto :goto_0

    .line 1499
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1500
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto :goto_1

    .line 1506
    :sswitch_3
    if-eqz p2, :cond_4

    .line 1509
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processLangKey()V

    .line 1511
    :cond_4
    const/4 v0, 0x1

    .line 1513
    goto :goto_0

    .line 1515
    :sswitch_4
    if-eqz p2, :cond_5

    .line 1516
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCapsLockOn()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1517
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->setCapsLockState(Z)V

    .line 1521
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processDockCapsLockKey()V

    .line 1523
    :cond_5
    const/4 v0, 0x1

    .line 1525
    goto :goto_0

    .line 1519
    :cond_6
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->setCapsLockState(Z)V

    goto :goto_2

    .line 1528
    :sswitch_5
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_7

    iget-boolean v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isShiftKeyNeedProcess:Z

    if-ne v2, v4, :cond_7

    .line 1529
    const/4 v0, 0x0

    .line 1530
    goto :goto_0

    .line 1533
    :cond_7
    iget-boolean v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isShiftKeyNeedProcess:Z

    if-nez v2, :cond_a

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_a

    .line 1535
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getMetaState()I

    move-result v2

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_9

    .line 1536
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 1540
    :goto_3
    iput-boolean v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isShiftKeyNeedProcess:Z

    .line 1541
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1542
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 1557
    :cond_8
    :goto_4
    const/4 v0, 0x0

    .line 1559
    goto :goto_0

    .line 1538
    :cond_9
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_3

    .line 1544
    :cond_a
    iget-boolean v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isShiftKeyNeedProcess:Z

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_8

    .line 1546
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getMetaState()I

    move-result v2

    and-int/2addr v2, v5

    if-ne v2, v5, :cond_b

    .line 1547
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 1552
    :goto_5
    iput-boolean v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isShiftKeyNeedProcess:Z

    .line 1553
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1554
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_4

    .line 1550
    :cond_b
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_5

    .line 1479
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x3b -> :sswitch_5
        0x3c -> :sswitch_5
        0x3e -> :sswitch_1
        0x73 -> :sswitch_4
        0xdd -> :sswitch_0
        0xe3 -> :sswitch_3
    .end sparse-switch
.end method

.method private processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 9
    .parameter "event"
    .parameter "isPressedDown"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1567
    const/4 v0, 0x0

    .line 1568
    .local v0, bProcessed:Z
    const/4 v3, 0x0

    .line 1569
    .local v3, isSoftKey:Z
    const/4 v1, 0x0

    .line 1570
    .local v1, bRealAction:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v4

    .line 1571
    .local v4, keyCode:I
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v2

    .line 1575
    .local v2, count:I
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1576
    const/4 v3, 0x1

    .line 1578
    :cond_0
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyEnglish()Z

    move-result v7

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34English()Z

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    :goto_0
    move v5, v0

    .line 1645
    :cond_2
    :goto_1
    return v5

    .line 1582
    :cond_3
    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_BYPASS:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v8

    if-eq v7, v8, :cond_1

    .line 1586
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, p1}, Lcom/samsung/inputmethod/SamsungIME;->needHideSoftKeyboard(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1587
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->hideSoftKeyboard()V

    .line 1593
    :cond_4
    const/4 v7, 0x4

    if-ne v4, v7, :cond_5

    .line 1594
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v7

    if-nez v7, :cond_5

    move v5, v0

    .line 1598
    goto :goto_1

    .line 1602
    :cond_5
    if-eqz v3, :cond_7

    .line 1604
    if-nez p2, :cond_6

    .line 1605
    const/4 v1, 0x1

    .line 1628
    :cond_6
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processFuncKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1629
    const/4 v0, 0x1

    goto :goto_0

    .line 1609
    :cond_7
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyProcessedWhenLong(I)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1613
    if-gtz v2, :cond_2

    .line 1616
    if-nez p2, :cond_8

    move v1, v5

    :goto_3
    goto :goto_2

    :cond_8
    move v1, v6

    goto :goto_3

    .line 1617
    :cond_9
    const/16 v7, 0x3b

    if-eq v4, v7, :cond_a

    const/16 v7, 0x3c

    if-ne v4, v7, :cond_b

    .line 1619
    :cond_a
    const/4 v1, 0x1

    goto :goto_2

    .line 1620
    :cond_b
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isHardKeyProcessedWhenUp(I)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1621
    if-nez p2, :cond_c

    move v1, v5

    :goto_4
    goto :goto_2

    :cond_c
    move v1, v6

    goto :goto_4

    .line 1624
    :cond_d
    move v1, p2

    goto :goto_2

    .line 1630
    :cond_e
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9QwertyEnglish()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1632
    invoke-virtual {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processT9QwertyKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto :goto_0

    .line 1633
    :cond_f
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyEnglish()Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v5

    if-nez v5, :cond_10

    .line 1636
    invoke-virtual {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processQwertyKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto/16 :goto_0

    .line 1637
    :cond_10
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT934English()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1639
    invoke-virtual {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processT934key(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto/16 :goto_0

    .line 1642
    :cond_11
    invoke-virtual {p0, p1, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->process34key(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto/16 :goto_0
.end method

.method private processStatePredict(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1712
    const/4 v0, 0x0

    .line 1713
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v2

    .line 1714
    .local v2, keyCode:I
    const/4 v1, 0x0

    .line 1717
    .local v1, keyChar:I
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v1

    .line 1723
    sparse-switch v2, :sswitch_data_0

    .line 1792
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1793
    if-eqz p2, :cond_0

    .line 1794
    invoke-virtual {p0, v1, p1, v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 1797
    :cond_0
    const/4 v0, 0x1

    .line 1840
    :cond_1
    :goto_0
    return v0

    .line 1725
    :sswitch_0
    if-eqz p2, :cond_2

    .line 1726
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1728
    :cond_2
    const/4 v0, 0x1

    .line 1729
    goto :goto_0

    .line 1731
    :sswitch_1
    if-eqz p2, :cond_3

    .line 1732
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processEnterKey()V

    .line 1733
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1735
    :cond_3
    const/4 v0, 0x1

    .line 1736
    goto :goto_0

    .line 1738
    :sswitch_2
    if-eqz p2, :cond_4

    .line 1740
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpaceKeyInputAssociate()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, p1}, Lcom/samsung/inputmethod/SamsungIME;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1741
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v1

    .line 1742
    if-lez v1, :cond_4

    .line 1743
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 1744
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1745
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1746
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyEnglish()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1747
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->autoPeriod()V

    .line 1762
    .end local v3           #result:Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 1763
    goto :goto_0

    .line 1754
    :cond_5
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1756
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1757
    const/4 v0, 0x1

    goto :goto_1

    .line 1768
    :sswitch_3
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1770
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1771
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1776
    :sswitch_4
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1778
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1779
    const/4 v0, 0x1

    .line 1782
    :cond_6
    const/4 v0, 0x1

    .line 1783
    goto/16 :goto_0

    .line 1786
    :sswitch_5
    if-eqz p2, :cond_7

    .line 1787
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v5, ""

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v4, v5, v1, v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 1789
    :cond_7
    const/4 v0, 0x1

    .line 1790
    goto/16 :goto_0

    .line 1798
    :cond_8
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 1799
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1804
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v4

    if-eq v4, v6, :cond_9

    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v4, :cond_9

    .line 1807
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1809
    :cond_9
    if-eqz p2, :cond_a

    .line 1810
    invoke-virtual {p0, v1, p1, v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 1812
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1815
    :cond_b
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1816
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v4

    if-eq v4, v6, :cond_c

    .line 1817
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1819
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1822
    :cond_c
    if-eqz p2, :cond_d

    .line 1823
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 1824
    .restart local v3       #result:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1825
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1827
    .end local v3           #result:Ljava/lang/String;
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1830
    :cond_e
    if-lez v1, :cond_1

    .line 1831
    if-eqz p2, :cond_f

    .line 1832
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 1833
    .restart local v3       #result:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1835
    .end local v3           #result:Ljava/lang/String;
    :cond_f
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1723
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

.method private processT9Period(ILandroid/view/inputmethod/InputConnection;)V
    .locals 3
    .parameter "keyCode"
    .parameter "ic"

    .prologue
    .line 864
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v0

    .line 866
    .local v0, keyChar:I
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v1, v2, :cond_0

    .line 867
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->autoDelSpaceBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 870
    :cond_0
    if-eqz p2, :cond_1

    .line 871
    invoke-interface {p2}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 872
    int-to-char v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 875
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_2

    .line 876
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 877
    :cond_2
    return-void
.end method

.method private setCapsLockState(Z)V
    .locals 0
    .parameter "bCapsLockState"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCapsLockState:Z

    .line 124
    return-void
.end method


# virtual methods
.method public autoDelSpaceBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 4
    .parameter "ic"
    .parameter "keyLabel"

    .prologue
    .line 1207
    sget-object v2, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->endPunctuationArray:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1208
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1209
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1210
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1211
    const/16 v2, 0x43

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->simulateKeyEventDownUp(I)V

    .line 1214
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_0
    return-void
.end method

.method public clearFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 100
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    .line 101
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    .line 102
    return-void
.end method

.method public getCommitHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    return-object v0
.end method

.method protected process34key(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 9
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 1234
    const/4 v0, 0x0

    .line 1235
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v4

    .line 1236
    .local v4, keyCode:I
    const/4 v3, 0x0

    .line 1237
    .local v3, keyChar:I
    const/4 v2, 0x0

    .line 1238
    .local v2, isLongPressed:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1244
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isLongpressKey(Landroid/view/KeyEvent;)Z

    move-result v2

    .line 1246
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1452
    :cond_0
    :goto_0
    if-eqz p2, :cond_2

    if-lez v3, :cond_2

    .line 1453
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextUpperCaseWithSkb()Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v6, 0x61

    if-lt v3, v6, :cond_1

    const/16 v6, 0x7a

    if-gt v3, v6, :cond_1

    .line 1455
    sget v6, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCharCaseGap:I

    add-int/2addr v3, v6

    .line 1457
    :cond_1
    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 1461
    .local v5, result:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v6

    if-eqz v6, :cond_1b

    const/4 v6, 0x7

    if-eq v4, v6, :cond_1b

    .line 1463
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 1464
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->startCommitTimer(Landroid/view/inputmethod/InputConnection;)V

    .line 1471
    .end local v5           #result:Ljava/lang/String;
    :cond_2
    :goto_1
    return v0

    .line 1252
    :cond_3
    sparse-switch v4, :sswitch_data_0

    .line 1423
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 1424
    if-eqz v2, :cond_4

    .line 1425
    const/4 p2, 0x1

    .line 1426
    :cond_4
    if-eqz p2, :cond_5

    .line 1427
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v3

    .line 1429
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 1255
    :sswitch_0
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v6, :cond_0

    .line 1256
    if-eqz p2, :cond_6

    .line 1257
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStarKey()V

    .line 1259
    :cond_6
    const/4 v0, 0x1

    goto :goto_0

    .line 1265
    :sswitch_1
    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v6, :cond_0

    .line 1266
    if-eqz p2, :cond_7

    .line 1267
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processPoundKey(Lcom/samsung/inputmethod/SimeKeyEvent;)V

    .line 1269
    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    .line 1275
    :sswitch_2
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1276
    if-eqz p2, :cond_8

    .line 1277
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processBackKey()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1278
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1279
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 1282
    :cond_8
    const/4 v0, 0x1

    goto :goto_0

    .line 1298
    :sswitch_3
    if-eqz v2, :cond_9

    .line 1299
    const/4 p2, 0x1

    .line 1300
    :cond_9
    if-eqz p2, :cond_a

    .line 1301
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1302
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 1303
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processEnterKey()V

    .line 1305
    :cond_a
    const/4 v0, 0x1

    .line 1307
    goto/16 :goto_0

    .line 1309
    :sswitch_4
    if-eqz v2, :cond_b

    .line 1310
    const/4 p2, 0x1

    .line 1311
    :cond_b
    if-eqz p2, :cond_c

    .line 1313
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1314
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 1319
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_d

    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v6, :cond_d

    .line 1320
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->deleteFast(I)V

    .line 1328
    :cond_c
    :goto_2
    const/4 v0, 0x1

    .line 1330
    goto/16 :goto_0

    .line 1322
    :cond_d
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->simulateKeyEventDownUp(I)V

    goto :goto_2

    .line 1341
    :sswitch_5
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1343
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    invoke-virtual {v6, v4, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1344
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1361
    :sswitch_6
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v6

    if-eq v6, v8, :cond_e

    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v6, :cond_e

    .line 1364
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1366
    :cond_e
    if-eqz v2, :cond_f

    .line 1367
    const/4 p2, 0x1

    .line 1368
    :cond_f
    if-eqz p2, :cond_10

    .line 1369
    sget-object v6, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mEn34KeyMap:[[I

    aget-object v6, v6, v7

    aget v3, v6, v7

    .line 1371
    :cond_10
    const/4 v0, 0x1

    .line 1374
    goto/16 :goto_0

    .line 1391
    :sswitch_7
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v6

    if-eq v6, v8, :cond_11

    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v6, :cond_11

    .line 1394
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1396
    :cond_11
    if-eqz v2, :cond_12

    .line 1397
    const/4 p2, 0x1

    .line 1398
    :cond_12
    if-eqz p2, :cond_14

    .line 1399
    iget v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    if-eq v6, v4, :cond_15

    .line 1401
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1402
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 1404
    iput v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    .line 1412
    :goto_3
    const/16 v6, 0xe

    if-eq v6, v4, :cond_13

    const/16 v6, 0x10

    if-ne v6, v4, :cond_16

    .line 1413
    :cond_13
    sget-object v6, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mEn34KeyMap:[[I

    add-int/lit8 v7, v4, -0x7

    aget-object v6, v6, v7

    iget v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    rem-int/lit8 v7, v7, 0x4

    aget v3, v6, v7

    .line 1418
    :cond_14
    :goto_4
    const/4 v0, 0x1

    .line 1421
    goto/16 :goto_0

    .line 1407
    :cond_15
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1408
    iget v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    goto :goto_3

    .line 1415
    :cond_16
    sget-object v6, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mEn34KeyMap:[[I

    add-int/lit8 v7, v4, -0x7

    aget-object v6, v6, v7

    iget v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    rem-int/lit8 v7, v7, 0x3

    aget v3, v6, v7

    goto :goto_4

    .line 1431
    :cond_17
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v3

    .line 1432
    if-lez v3, :cond_1a

    .line 1433
    const/4 v0, 0x1

    .line 1434
    if-eqz v2, :cond_18

    .line 1435
    const/4 p2, 0x1

    .line 1436
    :cond_18
    if-eqz p2, :cond_19

    .line 1437
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1438
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 1440
    :cond_19
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1444
    :cond_1a
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1445
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 1466
    .restart local v5       #result:Ljava/lang/String;
    :cond_1b
    if-eqz v1, :cond_1c

    .line 1467
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 1468
    :cond_1c
    const/4 v6, 0x1

    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    goto/16 :goto_1

    .line 1252
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x7 -> :sswitch_6
        0x8 -> :sswitch_7
        0x9 -> :sswitch_7
        0xa -> :sswitch_7
        0xb -> :sswitch_7
        0xc -> :sswitch_7
        0xd -> :sswitch_7
        0xe -> :sswitch_7
        0xf -> :sswitch_7
        0x10 -> :sswitch_7
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_5
        0x14 -> :sswitch_5
        0x15 -> :sswitch_5
        0x16 -> :sswitch_5
        0x17 -> :sswitch_5
        0x42 -> :sswitch_3
        0x43 -> :sswitch_4
    .end sparse-switch
.end method

.method protected processDockCapsLockKey()V
    .locals 2

    .prologue
    .line 1698
    invoke-direct {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getCapsLockState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1699
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1121

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 1703
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1704
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 1707
    :goto_1
    return-void

    .line 1701
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1111

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_0

    .line 1706
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->updateConfigDecoder()V

    goto :goto_1
.end method

.method protected processInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 7
    .parameter "keyChar"
    .parameter "event"
    .parameter "clearAll"

    .prologue
    const/16 v4, 0x61

    const/16 v3, 0x43

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1904
    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v1

    .line 1908
    .local v1, keyCode:I
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->isSplStrFull()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eq v3, v1, :cond_0

    .line 1910
    const-string v2, "EnglishKeyProcessor"

    const-string v3, "------the string is full and it is not del key------return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2049
    :goto_0
    return v5

    .line 1914
    :cond_0
    if-lt p1, v4, :cond_1

    const/16 v2, 0x7a

    if-le p1, v2, :cond_3

    :cond_1
    const/16 v2, 0x41

    if-lt p1, v2, :cond_2

    const/16 v2, 0x5a

    if-le p1, v2, :cond_3

    :cond_2
    const/16 v2, 0x30

    if-lt p1, v2, :cond_9

    const/16 v2, 0x39

    if-gt p1, v2, :cond_9

    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1918
    :cond_3
    const-string v2, "EnglishKeyProcessor"

    const-string v3, "------enter decoding-----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v2

    int-to-char v3, p1

    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyPos()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 1921
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 1923
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v0

    .line 1924
    .local v0, composingStr:Ljava/lang/String;
    const-string v2, "EnglishKeyProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------composingStr-----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    const-string v2, "EnglishKeyProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------State is -----"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    sget-object v2, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$1;->$SwitchMap$com$samsung$inputmethod$SamsungIME$ImeState:[I

    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME$ImeState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1973
    :goto_1
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processShift(Z)V

    goto/16 :goto_0

    .line 1935
    :pswitch_1
    const-string v2, "EnglishKeyProcessor"

    const-string v3, "------IDLE ----- Clear the candidates"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1938
    :pswitch_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1939
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v0, v5}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 1941
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCommonCandidatesListEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1943
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1944
    const-string v2, "EnglishKeyProcessor"

    const-string v3, "------STATE_INPUT ----- State Error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1946
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v6}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_1

    .line 1950
    :pswitch_3
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCommonCandidatesListEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1952
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1953
    const-string v2, "EnglishKeyProcessor"

    const-string v3, "------STATE_PREDICT ----- State Error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1955
    :cond_6
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v6}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_1

    .line 1959
    :pswitch_4
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 1960
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v0, v5}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 1962
    :cond_7
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCommonCandidatesListEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1964
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1965
    const-string v2, "EnglishKeyProcessor"

    const-string v3, "------STATE_APP_COMPLETION ----- State Error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1967
    :cond_8
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v6}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_1

    .line 1974
    .end local v0           #composingStr:Ljava/lang/String;
    :cond_9
    if-ne v1, v3, :cond_f

    .line 1975
    const-string v2, "EnglishKeyProcessor"

    const-string v3, "------DEL key ----processBackspace-----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->deleteInputData()V

    .line 1978
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->processBackspace()V

    .line 1980
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v0

    .line 1984
    .restart local v0       #composingStr:Ljava/lang/String;
    sget-object v2, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$1;->$SwitchMap$com$samsung$inputmethod$SamsungIME$ImeState:[I

    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME$ImeState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    .line 2043
    :goto_2
    :pswitch_5
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processShift(Z)V

    goto/16 :goto_0

    .line 1990
    :pswitch_6
    const-string v2, "EnglishKeyProcessor"

    const-string v3, "------IDLE ----- Clear the candidates"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1993
    :pswitch_7
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_a

    .line 1994
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v0, v5}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 1996
    :cond_a
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCommonCandidatesListEmpty()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1998
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1999
    const-string v2, "EnglishKeyProcessor"

    const-string v3, "------STATE_INPUT ----- State Error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2001
    :cond_b
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v6}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_2

    .line 2005
    :pswitch_8
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCommonCandidatesListEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2007
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 2008
    const-string v2, "EnglishKeyProcessor"

    const-string v3, "------STATE_PREDICT ----- State Error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2010
    :cond_c
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v6}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_2

    .line 2014
    :pswitch_9
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_d

    .line 2015
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v0, v5}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 2017
    :cond_d
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCommonCandidatesListEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 2019
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 2020
    const-string v2, "EnglishKeyProcessor"

    const-string v3, "------STATE_APP_COMPLETION ----- State Error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2022
    :cond_e
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v6}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_2

    .line 2046
    .end local v0           #composingStr:Ljava/lang/String;
    :cond_f
    const-string v2, "EnglishKeyProcessor"

    const-string v3, "Wrong key--------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    const-string v2, "EnglishKeyProcessor"

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1929
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 1984
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_7
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method public processKeyDown(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1656
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public processKeyUp(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1664
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    return v0
.end method

.method public processLongPressKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1672
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1674
    .local v0, keyCode:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyProcessedWhenLong(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1679
    const/16 v1, 0x8

    if-lt v0, v1, :cond_1

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    .line 1680
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT934English()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1682
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v1, v2, :cond_1

    .line 1684
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processLongPressKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1685
    const/4 v1, 0x1

    .line 1693
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processLongPressKey(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected processQwerty34Key(Landroid/view/KeyEvent;Z)Z
    .locals 1
    .parameter "event"
    .parameter "isPressedDown"

    .prologue
    .line 1223
    const/4 v0, 0x0

    .line 1226
    .local v0, bProcessed:Z
    return v0
.end method

.method protected processQwertyKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 7
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 886
    const/4 v0, 0x0

    .line 887
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 888
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 889
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 898
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return v0

    .line 906
    :cond_1
    sparse-switch v3, :sswitch_data_0

    .line 1011
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1012
    if-eqz p2, :cond_3

    .line 1013
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1015
    const/16 v5, 0x3b

    iget v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    if-eq v5, v6, :cond_2

    const/16 v5, 0x3c

    iget v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    if-ne v5, v6, :cond_3

    .line 1019
    :cond_2
    sget v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCharCaseGap:I

    add-int/2addr v2, v5

    .line 1022
    :cond_3
    const/4 v0, 0x1

    .line 1045
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    if-lez v2, :cond_6

    .line 1046
    if-eqz p2, :cond_5

    .line 1048
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1049
    .local v4, result:Ljava/lang/String;
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->commiteText(Ljava/lang/String;)V

    .line 1052
    .end local v4           #result:Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1053
    invoke-virtual {p0, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processShift(Z)V

    .line 1060
    :cond_6
    :goto_2
    iput v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    goto :goto_0

    .line 909
    :sswitch_0
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_6

    .line 910
    if-eqz p2, :cond_7

    .line 911
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStarKey()V

    .line 913
    :cond_7
    const/4 v0, 0x1

    goto :goto_2

    .line 919
    :sswitch_1
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_6

    .line 920
    if-eqz p2, :cond_8

    .line 921
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processPoundKey(Lcom/samsung/inputmethod/SimeKeyEvent;)V

    .line 923
    :cond_8
    const/4 v0, 0x1

    goto :goto_2

    .line 929
    :sswitch_2
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 930
    if-eqz p2, :cond_6

    .line 931
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processBackKey()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 932
    const/4 v0, 0x1

    goto :goto_2

    .line 945
    :sswitch_3
    if-eqz p2, :cond_9

    .line 946
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processEnterKey()V

    .line 948
    :cond_9
    const/4 v0, 0x1

    .line 950
    goto :goto_2

    .line 952
    :sswitch_4
    if-eqz p2, :cond_a

    .line 956
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_b

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v5, :cond_b

    .line 957
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->deleteFast(I)V

    .line 965
    :cond_a
    :goto_3
    const/4 v0, 0x1

    .line 967
    goto :goto_2

    .line 959
    :cond_b
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->simulateKeyEventDownUp(I)V

    goto :goto_3

    .line 969
    :sswitch_5
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 970
    if-lez v2, :cond_c

    .line 971
    if-eqz p2, :cond_c

    .line 972
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 973
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 974
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->autoPeriod()V

    .line 980
    .end local v4           #result:Ljava/lang/String;
    :cond_c
    const/4 v0, 0x1

    .line 982
    goto :goto_2

    .line 994
    :sswitch_6
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 998
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1000
    const/4 v0, 0x1

    goto :goto_2

    .line 1023
    :cond_d
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1024
    if-eqz p2, :cond_e

    .line 1025
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1027
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1030
    :cond_f
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1031
    if-lez v2, :cond_4

    .line 1033
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 906
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x13 -> :sswitch_6
        0x14 -> :sswitch_6
        0x15 -> :sswitch_6
        0x16 -> :sswitch_6
        0x17 -> :sswitch_6
        0x3e -> :sswitch_5
        0x42 -> :sswitch_3
        0x43 -> :sswitch_4
    .end sparse-switch
.end method

.method protected processState34Idle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 7
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v6, 0x0

    .line 522
    const/4 v0, 0x0

    .line 523
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 524
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 525
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 528
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v3, :sswitch_data_0

    .line 615
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 616
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 621
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v5, :cond_7

    .line 624
    const/4 v0, 0x0

    .line 642
    :cond_0
    :goto_0
    return v0

    .line 537
    :sswitch_0
    if-eqz p2, :cond_1

    .line 538
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 539
    if-lez v2, :cond_1

    .line 540
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 541
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 542
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 548
    .end local v4           #result:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    .line 550
    goto :goto_0

    .line 552
    :sswitch_1
    if-eqz p2, :cond_2

    .line 553
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processEnterKey()V

    .line 555
    :cond_2
    const/4 v0, 0x1

    .line 557
    goto :goto_0

    .line 559
    :sswitch_2
    if-eqz p2, :cond_3

    .line 561
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_4

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v5, :cond_4

    .line 562
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->deleteFast(I)V

    .line 569
    :goto_1
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 571
    :cond_3
    const/4 v0, 0x1

    .line 573
    goto :goto_0

    .line 564
    :cond_4
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 575
    :sswitch_3
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 580
    :cond_5
    if-eqz p2, :cond_6

    .line 581
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 582
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 586
    :cond_6
    const/4 v0, 0x1

    .line 589
    goto :goto_0

    .line 600
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 602
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 603
    const/4 v0, 0x1

    goto :goto_0

    .line 626
    :cond_7
    const-string v5, "EnglishKeyProcessor"

    const-string v6, "--- send to imes"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    if-eqz p2, :cond_8

    .line 628
    const/4 v5, 0x1

    invoke-virtual {p0, v2, p1, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 629
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 631
    :cond_9
    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCtrlPressed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 632
    if-eqz p2, :cond_a

    .line 633
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 634
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 636
    .end local v4           #result:Ljava/lang/String;
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 528
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x3e -> :sswitch_0
        0x42 -> :sswitch_1
        0x43 -> :sswitch_2
    .end sparse-switch
.end method

.method protected processState34Input(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 650
    const/4 v0, 0x0

    .line 651
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v2

    .line 652
    .local v2, keyCode:I
    const/4 v1, 0x0

    .line 658
    .local v1, keyChar:I
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v1

    .line 660
    sparse-switch v2, :sswitch_data_0

    .line 721
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 726
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v4

    if-eq v4, v6, :cond_5

    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v4, :cond_5

    .line 729
    const/4 v0, 0x0

    .line 761
    :cond_0
    :goto_0
    return v0

    .line 662
    :sswitch_0
    if-eqz p2, :cond_1

    .line 663
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 664
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 666
    :cond_1
    const/4 v0, 0x1

    .line 668
    goto :goto_0

    .line 671
    :sswitch_1
    if-eqz p2, :cond_2

    .line 672
    invoke-virtual {p0, v1, p1, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 673
    :cond_2
    const/4 v0, 0x1

    .line 674
    goto :goto_0

    .line 676
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 677
    if-eqz p2, :cond_3

    .line 678
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 679
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 680
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 687
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 682
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processEnterKey()V

    .line 684
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 692
    :sswitch_3
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 694
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 695
    const/4 v0, 0x1

    goto :goto_0

    .line 707
    :sswitch_4
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 709
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 710
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 717
    :sswitch_5
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v5, ""

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v4, v5, v1, v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto/16 :goto_0

    .line 730
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v4

    if-eq v4, v6, :cond_8

    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v4, :cond_8

    .line 732
    if-eqz p2, :cond_6

    .line 733
    const/4 v4, 0x7

    if-ne v2, v4, :cond_7

    .line 734
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 736
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    const/16 v5, 0x3e

    invoke-virtual {v4, v5, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 737
    const/4 v0, 0x1

    .line 744
    :cond_6
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 741
    :cond_7
    invoke-virtual {p0, v1, p1, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    goto :goto_2

    .line 746
    :cond_8
    if-eqz p2, :cond_9

    .line 747
    invoke-virtual {p0, v1, p1, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 749
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 751
    :cond_a
    if-lez v1, :cond_0

    .line 752
    if-eqz p2, :cond_b

    .line 753
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 756
    .end local v3           #result:Ljava/lang/String;
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 660
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x37 -> :sswitch_5
        0x38 -> :sswitch_5
        0x3e -> :sswitch_3
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x4c -> :sswitch_1
    .end sparse-switch
.end method

.method protected processStateAppCompletion(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 6
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 177
    const/4 v0, 0x0

    .line 178
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 179
    .local v3, keyCode:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 183
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v3, :sswitch_data_0

    .line 238
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 239
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 241
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processState34Idle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 191
    :sswitch_0
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 194
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 195
    const/4 v0, 0x1

    goto :goto_0

    .line 205
    :sswitch_1
    if-eqz p2, :cond_1

    .line 207
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v4

    if-lez v4, :cond_2

    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v4, :cond_2

    .line 208
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->deleteFast(I)V

    .line 216
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 218
    goto :goto_0

    .line 210
    :cond_2
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 220
    :sswitch_2
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 221
    if-eqz p2, :cond_3

    .line 222
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 223
    .local v2, keyChar:I
    if-eqz v1, :cond_3

    .line 224
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 225
    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 228
    .end local v2           #keyChar:I
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 231
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 232
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processState34Idle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 234
    goto :goto_0

    .line 244
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStateQwertyIdle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto :goto_0

    .line 183
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3e -> :sswitch_2
        0x43 -> :sswitch_1
    .end sparse-switch
.end method

.method protected processStateQwertyIdle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v7, 0x0

    .line 256
    const/4 v0, 0x0

    .line 257
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v4

    .line 258
    .local v4, keyCode:I
    const/4 v3, 0x0

    .line 259
    .local v3, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 264
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v4, :sswitch_data_0

    .line 351
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v3

    .line 353
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCtrlPressed()Z

    move-result v6

    if-nez v6, :cond_8

    .line 354
    if-eqz p2, :cond_0

    .line 355
    int-to-char v6, v3

    const/4 v7, 0x1

    invoke-virtual {p0, v6, p1, v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 357
    :cond_0
    const/4 v0, 0x1

    .line 383
    :cond_1
    :goto_0
    return v0

    .line 266
    :sswitch_0
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 271
    :cond_2
    if-eqz p2, :cond_3

    .line 272
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 273
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 277
    :cond_3
    const/4 v0, 0x1

    .line 280
    goto :goto_0

    .line 289
    :sswitch_1
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v3

    .line 290
    if-lez v3, :cond_4

    .line 291
    if-eqz p2, :cond_4

    .line 292
    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 293
    .local v5, result:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 294
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 295
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->autoPeriod()V

    .line 302
    .end local v5           #result:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    .line 304
    goto :goto_0

    .line 306
    :sswitch_2
    if-eqz p2, :cond_5

    .line 307
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processEnterKey()V

    .line 309
    :cond_5
    const/4 v0, 0x1

    .line 311
    goto :goto_0

    .line 313
    :sswitch_3
    if-eqz p2, :cond_6

    .line 315
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_7

    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v6, :cond_7

    .line 316
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->deleteFast(I)V

    .line 323
    :goto_1
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 325
    :cond_6
    const/4 v0, 0x1

    .line 327
    goto :goto_0

    .line 318
    :cond_7
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 335
    :sswitch_4
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 338
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    invoke-virtual {v6, v4, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 339
    const/4 v0, 0x1

    goto :goto_0

    .line 358
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isAltPressed()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 360
    invoke-static {v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v1

    .line 361
    .local v1, fullwidth_char:C
    if-eqz v1, :cond_a

    .line 362
    if-eqz p2, :cond_9

    .line 363
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 364
    .restart local v5       #result:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 366
    .end local v5           #result:Ljava/lang/String;
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 368
    :cond_a
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 369
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 372
    .end local v1           #fullwidth_char:C
    :cond_b
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCtrlPressed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 373
    if-eqz p2, :cond_c

    .line 374
    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 375
    .restart local v5       #result:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 377
    .end local v5           #result:Ljava/lang/String;
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 264
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x3e -> :sswitch_1
        0x42 -> :sswitch_2
        0x43 -> :sswitch_3
    .end sparse-switch
.end method

.method protected processStateQwertyInput(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v2

    .line 392
    .local v2, keyCode:I
    const/4 v1, 0x0

    .line 397
    .local v1, keyChar:I
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v1

    .line 399
    sparse-switch v2, :sswitch_data_0

    .line 471
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeAlpha(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 472
    if-eqz p2, :cond_1

    .line 473
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextUpperCaseWithSkb()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 474
    sget v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mCharCaseGap:I

    sub-int/2addr v1, v4

    .line 476
    :cond_0
    invoke-virtual {p0, v1, p1, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 478
    :cond_1
    const/4 v0, 0x1

    .line 514
    :cond_2
    :goto_0
    return v0

    .line 401
    :sswitch_0
    if-eqz p2, :cond_3

    .line 402
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 403
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v6}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 405
    :cond_3
    const/4 v0, 0x1

    .line 407
    goto :goto_0

    .line 418
    :sswitch_1
    if-eqz p2, :cond_4

    .line 419
    invoke-virtual {p0, v1, p1, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 421
    :cond_4
    const/4 v0, 0x1

    .line 423
    goto :goto_0

    .line 425
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 426
    if-eqz p2, :cond_5

    .line 427
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 428
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 429
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 436
    :cond_5
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 431
    :cond_6
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processEnterKey()V

    .line 433
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 441
    :sswitch_3
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 443
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 444
    const/4 v0, 0x1

    .line 447
    :cond_7
    const/4 v0, 0x1

    .line 449
    goto :goto_0

    .line 456
    :sswitch_4
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 458
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 459
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 467
    :sswitch_5
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v5, ""

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v4, v5, v1, v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto/16 :goto_0

    .line 479
    :cond_8
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->isKeyCodeNum(I)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_c

    .line 481
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_9

    .line 482
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 486
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 489
    :cond_9
    if-eqz p2, :cond_b

    .line 491
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 492
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 494
    :cond_a
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 495
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 496
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 498
    .end local v3           #result:Ljava/lang/String;
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 502
    :cond_c
    if-lez v1, :cond_2

    .line 503
    if-eqz p2, :cond_d

    .line 504
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 505
    .restart local v3       #result:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 507
    .end local v3           #result:Ljava/lang/String;
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 399
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x13 -> :sswitch_4
        0x14 -> :sswitch_4
        0x15 -> :sswitch_4
        0x16 -> :sswitch_4
        0x17 -> :sswitch_4
        0x37 -> :sswitch_5
        0x38 -> :sswitch_5
        0x3e -> :sswitch_3
        0x42 -> :sswitch_2
        0x43 -> :sswitch_1
        0x4c -> :sswitch_1
    .end sparse-switch
.end method

.method protected processT934key(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 1072
    const/4 v0, 0x0

    .line 1073
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 1074
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 1075
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1080
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    const/16 v5, 0x8

    if-ne v5, v3, :cond_6

    .line 1085
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v5

    if-eq v5, v7, :cond_1

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v5, :cond_1

    .line 1088
    const/4 v0, 0x0

    .line 1201
    :cond_0
    :goto_0
    return v0

    .line 1089
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v5

    if-eq v5, v7, :cond_4

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_4

    .line 1092
    if-eqz p2, :cond_2

    .line 1094
    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    if-eq v5, v3, :cond_3

    .line 1096
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1097
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 1098
    iput v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    .line 1105
    :goto_1
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mEn34KeyMap:[[I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    rem-int/lit8 v6, v6, 0x3

    aget v2, v5, v6

    .line 1106
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1107
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 1108
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->startCommitTimer(Landroid/view/inputmethod/InputConnection;)V

    .line 1111
    .end local v4           #result:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1100
    :cond_3
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1101
    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mkeyCount:I

    goto :goto_1

    .line 1114
    :cond_4
    if-eqz p2, :cond_5

    .line 1115
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1116
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1117
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1119
    .end local v4           #result:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x1

    goto :goto_0

    .line 1122
    :cond_6
    if-eqz p2, :cond_7

    .line 1124
    iget v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mLastKeyCode:I

    if-eqz v5, :cond_7

    .line 1125
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 1126
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 1129
    :cond_7
    sparse-switch v3, :sswitch_data_0

    .line 1177
    sget-object v5, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$1;->$SwitchMap$com$samsung$inputmethod$SamsungIME$ImeState:[I

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME$ImeState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1179
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processState34Idle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 1180
    goto/16 :goto_0

    .line 1132
    :sswitch_0
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_0

    .line 1133
    if-eqz p2, :cond_8

    .line 1134
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStarKey()V

    .line 1136
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1142
    :sswitch_1
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_0

    .line 1143
    if-eqz p2, :cond_9

    .line 1144
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processPoundKey(Lcom/samsung/inputmethod/SimeKeyEvent;)V

    .line 1146
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1152
    :sswitch_2
    if-eqz p2, :cond_a

    .line 1153
    invoke-direct {p0, v3, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processT9Period(ILandroid/view/inputmethod/InputConnection;)V

    .line 1155
    :cond_a
    const/4 v0, 0x1

    .line 1156
    goto/16 :goto_0

    .line 1165
    :sswitch_3
    if-eqz p2, :cond_c

    .line 1166
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1167
    if-eqz v1, :cond_b

    .line 1168
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1169
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v6}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1171
    :cond_b
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v5, v6, :cond_c

    .line 1172
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1174
    :cond_c
    const/4 v0, 0x1

    .line 1175
    goto/16 :goto_0

    .line 1182
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStateAppCompletion(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 1183
    goto/16 :goto_0

    .line 1186
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processState34Input(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 1187
    goto/16 :goto_0

    .line 1190
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStatePredict(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 1191
    goto/16 :goto_0

    .line 1129
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x37 -> :sswitch_3
        0x38 -> :sswitch_2
        0x4c -> :sswitch_3
    .end sparse-switch

    .line 1177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected processT9QwertyKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 6
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 770
    const/4 v0, 0x0

    .line 771
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 772
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 773
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 779
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v3, :sswitch_data_0

    .line 829
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$1;->$SwitchMap$com$samsung$inputmethod$SamsungIME$ImeState:[I

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME$ImeState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 855
    :cond_0
    :goto_0
    return v0

    .line 782
    :sswitch_0
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v4, :cond_0

    .line 783
    if-eqz p2, :cond_1

    .line 784
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStarKey()V

    .line 786
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 792
    :sswitch_1
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v4, :cond_0

    .line 793
    if-eqz p2, :cond_2

    .line 794
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processPoundKey(Lcom/samsung/inputmethod/SimeKeyEvent;)V

    .line 796
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 809
    :sswitch_2
    if-eqz p2, :cond_3

    .line 810
    invoke-direct {p0, v3, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processT9Period(ILandroid/view/inputmethod/InputConnection;)V

    .line 812
    :cond_3
    const/4 v0, 0x1

    .line 813
    goto :goto_0

    .line 817
    :sswitch_3
    if-eqz p2, :cond_5

    .line 818
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 819
    if-eqz v1, :cond_4

    .line 820
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 821
    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 823
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v4

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v4, v5, :cond_5

    .line 824
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 826
    :cond_5
    const/4 v0, 0x1

    .line 827
    goto :goto_0

    .line 831
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStateQwertyIdle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 832
    goto :goto_0

    .line 834
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStateAppCompletion(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 835
    goto :goto_0

    .line 838
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStateQwertyInput(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 839
    goto :goto_0

    .line 843
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->processStatePredict(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 844
    goto :goto_0

    .line 779
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x37 -> :sswitch_3
        0x38 -> :sswitch_2
        0x4c -> :sswitch_3
    .end sparse-switch

    .line 829
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->stopDelayCommit()V

    .line 94
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish$EngCommitComposingTextTimer;->finishCompsingEngText(Landroid/view/inputmethod/InputConnection;)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->clearFlags()V

    .line 96
    return-void
.end method
