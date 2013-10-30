.class public Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;
.super Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
.source "SimeKProcKorean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$1;,
        Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final SYMBOL_ENTER:Ljava/lang/String; = "\n"

.field private static final SYMBOL_SPACE:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String; = "KoreanKeyProcessor"

.field private static final mKor34KeyMap:[[I = null

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

.field private mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

.field private mKeyIndex:I

.field private mLastKeyCode:I

.field private mToggleOnSameKey:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 63
    const/16 v0, 0xa

    new-array v0, v0, [[I

    new-array v1, v6, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v5, [I

    const/16 v2, 0x3163

    aput v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [I

    const/16 v2, 0x119e

    aput v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v5, [I

    const/16 v2, 0x3161

    aput v2, v1, v4

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v6, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    sput-object v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKor34KeyMap:[[I

    return-void

    :array_0
    .array-data 0x4
        0x47t 0x31t 0x0t 0x0t
        0x41t 0x31t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x31t 0x31t 0x0t 0x0t
        0x4bt 0x31t 0x0t 0x0t
        0x32t 0x31t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x34t 0x31t 0x0t 0x0t
        0x39t 0x31t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x37t 0x31t 0x0t 0x0t
        0x4ct 0x31t 0x0t 0x0t
        0x38t 0x31t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x42t 0x31t 0x0t 0x0t
        0x4dt 0x31t 0x0t 0x0t
        0x43t 0x31t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0x45t 0x31t 0x0t 0x0t
        0x4et 0x31t 0x0t 0x0t
        0x46t 0x31t 0x0t 0x0t
    .end array-data

    :array_6
    .array-data 0x4
        0x48t 0x31t 0x0t 0x0t
        0x4at 0x31t 0x0t 0x0t
        0x49t 0x31t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 2
    .parameter "ime"

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 40
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyIndex:I

    .line 41
    iput-boolean v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mToggleOnSameKey:Z

    .line 42
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mLastKeyCode:I

    .line 43
    iput-boolean v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isShiftKeyNeedProcess:Z

    .line 44
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;-><init>(Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$1;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    .line 78
    return-void
.end method

.method private keycodeTransToKeyChar(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 1733
    const/4 v0, 0x0

    .line 1735
    .local v0, keyChar:I
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeAlpha(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1736
    add-int/lit8 v1, p1, -0x1d

    add-int/lit8 v0, v1, 0x61

    .line 1761
    :cond_0
    :goto_0
    return v0

    .line 1737
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeNum(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1738
    add-int/lit8 v1, p1, -0x7

    add-int/lit8 v0, v1, 0x30

    goto :goto_0

    .line 1739
    :cond_2
    const/16 v1, 0x37

    if-ne p1, v1, :cond_3

    .line 1740
    const/16 v0, 0x2c

    goto :goto_0

    .line 1741
    :cond_3
    const/16 v1, 0x38

    if-ne p1, v1, :cond_4

    .line 1742
    const/16 v0, 0x2e

    goto :goto_0

    .line 1743
    :cond_4
    const/16 v1, 0x4b

    if-ne p1, v1, :cond_5

    .line 1744
    const/16 v0, 0x27

    goto :goto_0

    .line 1745
    :cond_5
    const/16 v1, 0x4d

    if-ne p1, v1, :cond_6

    .line 1746
    const/16 v0, 0x40

    goto :goto_0

    .line 1747
    :cond_6
    const/16 v1, 0x4c

    if-ne p1, v1, :cond_7

    .line 1748
    const/16 v0, 0x2f

    goto :goto_0

    .line 1749
    :cond_7
    const/16 v1, 0x45

    if-ne p1, v1, :cond_8

    .line 1750
    const/16 v0, 0x2d

    goto :goto_0

    .line 1751
    :cond_8
    const/16 v1, 0x4a

    if-ne p1, v1, :cond_9

    .line 1752
    const/16 v0, 0x3b

    goto :goto_0

    .line 1753
    :cond_9
    const/16 v1, 0x3f

    if-ne p1, v1, :cond_a

    .line 1754
    const/16 v0, 0x3f

    goto :goto_0

    .line 1755
    :cond_a
    const/16 v1, 0x42

    if-ne p1, v1, :cond_b

    .line 1756
    const/16 v0, 0xa

    goto :goto_0

    .line 1757
    :cond_b
    const/16 v1, 0x3e

    if-ne p1, v1, :cond_0

    .line 1758
    const/16 v0, 0x20

    goto :goto_0
.end method

.method private preProcess34Keyboard(IZ)I
    .locals 5
    .parameter "keyCode"
    .parameter "realAction"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1377
    const/4 v0, 0x0

    .line 1378
    .local v0, keyChar:I
    const/4 v1, 0x0

    .line 1384
    .local v1, toggleCount:I
    packed-switch p1, :pswitch_data_0

    .line 1406
    :goto_0
    iget v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mLastKeyCode:I

    if-ne v2, p1, :cond_2

    .line 1407
    if-eqz p2, :cond_1

    .line 1408
    iget v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyIndex:I

    .line 1409
    iget v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyIndex:I

    if-lt v2, v1, :cond_0

    .line 1410
    iput v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyIndex:I

    .line 1412
    :cond_0
    if-le v1, v4, :cond_1

    .line 1413
    iput-boolean v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mToggleOnSameKey:Z

    .line 1424
    :cond_1
    :goto_1
    const-string v2, "KoreanKeyProcessor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------- preProcess34Keyboard 2------mLastKeyCode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mLastKeyCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "   mkeyCount"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    sget-object v2, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKor34KeyMap:[[I

    add-int/lit8 v3, p1, -0x7

    aget-object v2, v2, v3

    iget v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyIndex:I

    aget v0, v2, v3

    .line 1428
    return v0

    .line 1388
    :pswitch_0
    const/4 v1, 0x1

    .line 1389
    goto :goto_0

    .line 1393
    :pswitch_1
    const/4 v1, 0x2

    .line 1394
    goto :goto_0

    .line 1400
    :pswitch_2
    const/4 v1, 0x3

    .line 1401
    goto :goto_0

    .line 1417
    :cond_2
    if-eqz p2, :cond_1

    .line 1418
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->clearFlags()V

    .line 1419
    iput p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mLastKeyCode:I

    .line 1420
    iput-boolean v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mToggleOnSameKey:Z

    goto :goto_1

    .line 1384
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private process34Key(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v6, 0x0

    .line 199
    const/4 v0, 0x0

    .line 200
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 201
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 202
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 206
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v3, :sswitch_data_0

    .line 300
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 301
    const-string v5, "KoreanKeyProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isKeyCodeNum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeNum(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 310
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_a

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v5, :cond_a

    .line 314
    const/4 v0, 0x0

    .line 338
    :cond_0
    :goto_0
    return v0

    .line 208
    :sswitch_0
    if-eqz p2, :cond_1

    .line 209
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 210
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 211
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 212
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 213
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->reset()V

    .line 223
    :cond_1
    :goto_1
    const/4 v0, 0x1

    .line 225
    goto :goto_0

    .line 214
    :cond_2
    if-lez v2, :cond_1

    .line 215
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 216
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 217
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 227
    .end local v4           #result:Ljava/lang/String;
    :sswitch_1
    if-eqz p2, :cond_4

    .line 228
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->isSplStrEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 229
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 230
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 231
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->reset()V

    .line 233
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processEnterKey()V

    .line 235
    :cond_4
    const/4 v0, 0x1

    .line 237
    goto :goto_0

    .line 239
    :sswitch_2
    if-eqz p2, :cond_5

    .line 240
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->isSplStrEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 241
    int-to-char v5, v2

    invoke-direct {p0, v5, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processInput(ILcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 255
    :cond_5
    :goto_2
    const/4 v0, 0x1

    .line 257
    goto :goto_0

    .line 244
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_7

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v5, :cond_7

    .line 245
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->deleteFast(I)V

    .line 252
    :goto_3
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_2

    .line 247
    :cond_7
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->simulateKeyEventDownUp(I)V

    goto :goto_3

    .line 259
    :sswitch_3
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 264
    :cond_8
    if-eqz p2, :cond_9

    .line 265
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 266
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 270
    :cond_9
    const/4 v0, 0x1

    .line 273
    goto/16 :goto_0

    .line 284
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 286
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 287
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 316
    :cond_a
    const-string v5, "KoreanKeyProcessor"

    const-string v6, "--- send to imes"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    if-eqz p2, :cond_b

    .line 318
    invoke-direct {p0, v2, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processInput(ILcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 320
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 322
    :cond_c
    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCtrlPressed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 323
    if-eqz p2, :cond_e

    .line 324
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 325
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->isSplStrEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    .line 326
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 327
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->CommitComposingText(Landroid/view/inputmethod/InputConnection;)V

    .line 328
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->reset()V

    .line 330
    :cond_d
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 332
    .end local v4           #result:Ljava/lang/String;
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 206
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

.method private processFunctionKeys(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 6
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1107
    const/4 v0, 0x0

    .line 1111
    .local v0, bRet:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v1

    .line 1112
    .local v1, keyCode:I
    sparse-switch v1, :sswitch_data_0

    .line 1200
    :cond_0
    :goto_0
    return v0

    .line 1114
    :sswitch_0
    if-eqz p2, :cond_1

    .line 1117
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->handleClipboardKey()V

    .line 1119
    :cond_1
    const/4 v0, 0x1

    .line 1121
    goto :goto_0

    .line 1123
    :sswitch_1
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1124
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processLangKey()V

    .line 1125
    const/4 v0, 0x1

    goto :goto_0

    .line 1129
    :sswitch_2
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 1130
    if-eqz p2, :cond_2

    .line 1131
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPoundKey(Lcom/samsung/inputmethod/SimeKeyEvent;)V

    .line 1133
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1137
    :sswitch_3
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 1138
    if-eqz p2, :cond_3

    .line 1139
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processStarKey()V

    .line 1141
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 1145
    :sswitch_4
    if-eqz p2, :cond_4

    .line 1148
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processBackKey()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1149
    const/4 v0, 0x1

    .line 1155
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 1157
    goto :goto_0

    .line 1151
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1152
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto :goto_1

    .line 1159
    :sswitch_5
    if-eqz p2, :cond_6

    .line 1162
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processLangKey()V

    .line 1164
    :cond_6
    const/4 v0, 0x1

    .line 1166
    goto :goto_0

    .line 1168
    :sswitch_6
    invoke-static {v4}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardLedState(Z)V

    .line 1169
    const/4 v0, 0x1

    .line 1171
    goto :goto_0

    .line 1174
    :sswitch_7
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v2

    if-lez v2, :cond_7

    iget-boolean v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isShiftKeyNeedProcess:Z

    if-ne v2, v5, :cond_7

    .line 1175
    const/4 v0, 0x0

    .line 1176
    goto :goto_0

    .line 1179
    :cond_7
    iget-boolean v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isShiftKeyNeedProcess:Z

    if-nez v2, :cond_9

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_9

    .line 1181
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v3, 0x1133

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 1182
    iput-boolean v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isShiftKeyNeedProcess:Z

    .line 1183
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1184
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 1194
    :cond_8
    :goto_2
    const/4 v0, 0x0

    .line 1196
    goto :goto_0

    .line 1186
    :cond_9
    iget-boolean v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isShiftKeyNeedProcess:Z

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 1188
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v3, 0x1113

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 1189
    iput-boolean v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isShiftKeyNeedProcess:Z

    .line 1190
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 1191
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_2

    .line 1112
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_4
        0x11 -> :sswitch_3
        0x12 -> :sswitch_2
        0x3b -> :sswitch_7
        0x3c -> :sswitch_7
        0x3e -> :sswitch_1
        0x73 -> :sswitch_6
        0xdd -> :sswitch_0
        0xe3 -> :sswitch_5
    .end sparse-switch
.end method

.method private processInput(ILcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 12
    .parameter "keyChar"
    .parameter "event"

    .prologue
    const/16 v8, 0x43

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 775
    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v4

    .line 776
    .local v4, keyCode:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    .line 781
    .local v3, ic:Landroid/view/inputmethod/InputConnection;
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->isSplStrFull()Z

    move-result v7

    if-eqz v7, :cond_0

    if-eq v8, v4, :cond_0

    .line 783
    const-string v7, "KoreanKeyProcessor"

    const-string v8, "------the string is full and it is not del key------return true"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :goto_0
    return v10

    .line 787
    :cond_0
    const/16 v7, 0x61

    if-lt p1, v7, :cond_1

    const/16 v7, 0x7a

    if-le p1, v7, :cond_2

    :cond_1
    const/16 v7, 0x41

    if-lt p1, v7, :cond_5

    const/16 v7, 0x5a

    if-gt p1, v7, :cond_5

    .line 789
    :cond_2
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    int-to-char v8, p1

    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyPos()Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v11}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 790
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->decoding()I

    .line 791
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v1

    .line 792
    .local v1, composingStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->getComposingStrCompleteLength()I

    move-result v0

    .line 793
    .local v0, completeLength:I
    const-string v7, "KoreanKeyProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "------composingStr-----"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 795
    if-lez v0, :cond_4

    .line 796
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 798
    .local v5, realComposing:Ljava/lang/String;
    invoke-virtual {v1, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 799
    .local v2, confirmStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v2}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 800
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v5, v10}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 801
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7, v5, v10}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->addInputData(Ljava/lang/String;Z)V

    .line 802
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->decoding()I

    .line 808
    .end local v2           #confirmStr:Ljava/lang/String;
    .end local v5           #realComposing:Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-virtual {p0, v10, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processKorShift(ZLcom/samsung/inputmethod/SimeKeyEvent;)V

    goto/16 :goto_0

    .line 804
    :cond_4
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v1, v10}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    goto :goto_1

    .line 810
    .end local v0           #completeLength:I
    .end local v1           #composingStr:Ljava/lang/String;
    :cond_5
    const/16 v7, 0x30

    if-lt p1, v7, :cond_8

    const/16 v7, 0x39

    if-gt p1, v7, :cond_8

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 812
    invoke-direct {p0, v4, v10}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->preProcess34Keyboard(IZ)I

    move-result v6

    .line 813
    .local v6, toggleChar:I
    const-string v7, "KoreanKeyProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0~9 key mKeyCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyIndex:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "toggleChar="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mToggleOnSameKey="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mToggleOnSameKey:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-boolean v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mToggleOnSameKey:Z

    if-eqz v7, :cond_6

    .line 815
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->deleteInputData()V

    .line 817
    :cond_6
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    int-to-char v8, v6

    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyPos()Landroid/graphics/PointF;

    move-result-object v9

    invoke-virtual {v7, v8, v9, v11}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 818
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->decoding()I

    .line 820
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v1

    .line 821
    .restart local v1       #composingStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->getComposingStrCompleteLength()I

    move-result v0

    .line 822
    .restart local v0       #completeLength:I
    const-string v7, "KoreanKeyProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "------composingStr-----"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    if-eqz v1, :cond_7

    if-lez v0, :cond_7

    .line 829
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 831
    .restart local v5       #realComposing:Ljava/lang/String;
    invoke-virtual {v1, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 832
    .restart local v2       #confirmStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 833
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v2}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 835
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v5, v10}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 836
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v7, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->startCommitTimer(Landroid/view/inputmethod/InputConnection;)V

    .line 837
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7, v5, v10}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->addInputData(Ljava/lang/String;Z)V

    .line 838
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->decoding()I

    .line 846
    .end local v2           #confirmStr:Ljava/lang/String;
    .end local v5           #realComposing:Ljava/lang/String;
    :goto_2
    invoke-virtual {p0, v10, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processKorShift(ZLcom/samsung/inputmethod/SimeKeyEvent;)V

    goto/16 :goto_0

    .line 840
    :cond_7
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 841
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v1, v10}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 842
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v7, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->startCommitTimer(Landroid/view/inputmethod/InputConnection;)V

    goto :goto_2

    .line 847
    .end local v0           #completeLength:I
    .end local v1           #composingStr:Ljava/lang/String;
    .end local v6           #toggleChar:I
    :cond_8
    if-ne v4, v8, :cond_a

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 849
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->deleteInputData()V

    .line 850
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->processBackspace()I

    .line 851
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v1

    .line 852
    .restart local v1       #composingStr:Ljava/lang/String;
    const-string v7, "KoreanKeyProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "composingStr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_9

    .line 854
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    .line 855
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v1, v10}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 856
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v7, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->startCommitTimer(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 858
    :cond_9
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v8, ""

    invoke-virtual {v7, v8, v10}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 859
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mHandler:Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$KorCommitComposingTextTimer;->stopDelayCommit()V

    goto/16 :goto_0

    .line 861
    .end local v1           #composingStr:Ljava/lang/String;
    :cond_a
    if-ne v4, v8, :cond_c

    .line 862
    const-string v7, "KoreanKeyProcessor"

    const-string v8, "------DEL key ----processBackspace-----"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->deleteInputData()V

    .line 864
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->processBackspace()I

    .line 865
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v1

    .line 866
    .restart local v1       #composingStr:Ljava/lang/String;
    const-string v7, "KoreanKeyProcessor"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "composingStr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_b

    .line 868
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v1, v10}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 870
    :cond_b
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v8, ""

    invoke-virtual {v7, v8, v10}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 873
    .end local v1           #composingStr:Ljava/lang/String;
    :cond_c
    const-string v7, "KoreanKeyProcessor"

    const-string v8, "Wrong key--------------"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 5
    .parameter "event"
    .parameter "realAction"

    .prologue
    .line 1068
    const/4 v0, 0x0

    .line 1070
    .local v0, bRet:Z
    const/4 v2, 0x0

    .line 1071
    .local v2, isSoftKey:Z
    const/4 v1, 0x0

    .line 1073
    .local v1, enterNormalState:Z
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1074
    const/4 v2, 0x1

    .line 1082
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processFunctionKeys(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1085
    const/4 v0, 0x1

    .line 1098
    :cond_1
    :goto_1
    if-nez v2, :cond_2

    .line 1099
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1100
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    .line 1103
    :cond_2
    return v0

    .line 1077
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getEnterKeyNormalState()Z

    move-result v1

    .line 1079
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    goto :goto_0

    .line 1086
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Korean()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1087
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPrediction34Key(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto :goto_1

    .line 1088
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Korean()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1089
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->process34Key(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto :goto_1

    .line 1090
    :cond_6
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKorean()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1091
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPredictionQwertyKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto :goto_1

    .line 1092
    :cond_7
    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKorean()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1093
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processQwertyKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    goto :goto_1
.end method

.method private processPrediction34Key(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 6
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v5, 0x0

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v2

    .line 343
    .local v2, keyCode:I
    const/4 v1, 0x0

    .line 349
    .local v1, keyChar:I
    sparse-switch v2, :sswitch_data_0

    .line 369
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$1;->$SwitchMap$com$samsung$inputmethod$SamsungIME$ImeState:[I

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME$ImeState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 394
    :goto_0
    :pswitch_0
    return v0

    .line 351
    :sswitch_0
    if-eqz p2, :cond_0

    .line 352
    const/16 v1, 0x2e

    .line 353
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 355
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 357
    .end local v3           #result:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    .line 359
    goto :goto_0

    .line 361
    :sswitch_1
    if-eqz p2, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processEnterKey()V

    .line 363
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    .line 365
    :cond_1
    const/4 v0, 0x1

    .line 367
    goto :goto_0

    .line 371
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processState34Idle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 372
    goto :goto_0

    .line 378
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processState34Input(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 379
    goto :goto_0

    .line 382
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processStatePredict(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 383
    goto :goto_0

    .line 349
    :sswitch_data_0
    .sparse-switch
        0x38 -> :sswitch_0
        0x42 -> :sswitch_1
    .end sparse-switch

    .line 369
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processPredictionInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 7
    .parameter "keyChar"
    .parameter "event"
    .parameter "clearAll"

    .prologue
    const/16 v6, 0x61

    const/16 v4, 0x43

    const/16 v3, 0x3e

    const/4 v5, 0x1

    .line 879
    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v0

    .line 884
    .local v0, keyCode:I
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->isSplStrFull()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eq v4, v0, :cond_1

    if-eq v3, v0, :cond_1

    .line 887
    const-string v2, "KoreanKeyProcessor"

    const-string v3, "------the string is full and it is not del key------return true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_0
    :goto_0
    return v5

    .line 891
    :cond_1
    if-lt p1, v6, :cond_2

    const/16 v2, 0x7a

    if-le p1, v2, :cond_3

    :cond_2
    const/16 v2, 0x41

    if-lt p1, v2, :cond_4

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_4

    .line 893
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v2

    int-to-char v3, p1

    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyPos()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 894
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 895
    invoke-direct {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->updateUI()V

    .line 896
    invoke-virtual {p0, v5, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processKorShift(ZLcom/samsung/inputmethod/SimeKeyEvent;)V

    goto :goto_0

    .line 898
    :cond_4
    const/16 v2, 0x30

    if-lt p1, v2, :cond_6

    const/16 v2, 0x39

    if-gt p1, v2, :cond_6

    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 900
    invoke-direct {p0, v0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->preProcess34Keyboard(IZ)I

    move-result v1

    .line 902
    .local v1, toggleChar:I
    iget-boolean v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mToggleOnSameKey:Z

    if-eqz v2, :cond_5

    .line 903
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->deleteInputData()V

    .line 905
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v2

    int-to-char v3, v1

    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyPos()Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p3}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->addInputData(CLandroid/graphics/PointF;Z)V

    .line 906
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 907
    invoke-direct {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->updateUI()V

    .line 908
    invoke-virtual {p0, v5, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processKorShift(ZLcom/samsung/inputmethod/SimeKeyEvent;)V

    goto :goto_0

    .line 909
    .end local v1           #toggleChar:I
    :cond_6
    if-ne v0, v4, :cond_7

    .line 910
    const-string v2, "KoreanKeyProcessor"

    const-string v3, "------DEL key ----processBackspace-----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->deleteInputData()V

    .line 912
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->processBackspace()V

    .line 913
    invoke-direct {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->updateUI()V

    .line 914
    invoke-virtual {p0, v5, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processKorShift(ZLcom/samsung/inputmethod/SimeKeyEvent;)V

    goto/16 :goto_0

    .line 915
    :cond_7
    if-ne v0, v3, :cond_8

    .line 916
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v2, v3, :cond_0

    .line 917
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->changeToStatePredict(Z)V

    .line 918
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->reset()V

    .line 919
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->preparePredictions()I

    .line 920
    invoke-direct {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->updateUI()V

    goto/16 :goto_0

    .line 924
    :cond_8
    const-string v2, "KoreanKeyProcessor"

    const-string v3, "Wrong key--------------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const-string v2, "KoreanKeyProcessor"

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private processPredictionQwertyKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 6
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 981
    const/4 v0, 0x0

    .line 982
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 983
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 984
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 990
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v3, :sswitch_data_0

    .line 1038
    sget-object v4, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$1;->$SwitchMap$com$samsung$inputmethod$SamsungIME$ImeState:[I

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME$ImeState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 1064
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 992
    :sswitch_0
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v4, :cond_0

    .line 993
    if-eqz p2, :cond_1

    .line 994
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processStarKey()V

    .line 996
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1001
    :sswitch_1
    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v4, :cond_0

    .line 1002
    if-eqz p2, :cond_2

    .line 1003
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPoundKey(Lcom/samsung/inputmethod/SimeKeyEvent;)V

    .line 1005
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1026
    :sswitch_2
    if-eqz p2, :cond_4

    .line 1027
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1028
    if-eqz v1, :cond_3

    .line 1029
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1030
    int-to-char v4, v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1032
    :cond_3
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v4

    sget-object v5, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v4, v5, :cond_4

    .line 1033
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1035
    :cond_4
    const/4 v0, 0x1

    .line 1036
    goto :goto_0

    .line 1040
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processStateQwertyIdle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 1041
    goto :goto_0

    .line 1047
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processStateQwertyInput(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 1048
    goto :goto_0

    .line 1052
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processStatePredict(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    .line 1053
    goto :goto_0

    .line 990
    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x12 -> :sswitch_1
        0x37 -> :sswitch_2
        0x4c -> :sswitch_2
    .end sparse-switch

    .line 1038
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processQwertyKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 6
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    .line 1204
    const/4 v0, 0x0

    .line 1205
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 1206
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 1207
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1216
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeAlpha(I)Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0x43

    if-ne v3, v5, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCtrlPressed()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1372
    :cond_1
    :goto_0
    return v0

    .line 1224
    :cond_2
    sparse-switch v3, :sswitch_data_0

    .line 1334
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1335
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeAlpha(I)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCtrlPressed()Z

    move-result v5

    if-nez v5, :cond_d

    .line 1336
    if-eqz p2, :cond_3

    .line 1337
    int-to-char v5, v2

    invoke-direct {p0, v5, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processInput(ILcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 1339
    :cond_3
    const/4 v0, 0x1

    .line 1367
    :cond_4
    :goto_1
    iput v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mLastKeyCode:I

    goto :goto_0

    .line 1226
    :sswitch_0
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_4

    .line 1227
    if-eqz p2, :cond_5

    .line 1228
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processStarKey()V

    .line 1230
    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    .line 1235
    :sswitch_1
    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_4

    .line 1236
    if-eqz p2, :cond_6

    .line 1237
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPoundKey(Lcom/samsung/inputmethod/SimeKeyEvent;)V

    .line 1239
    :cond_6
    const/4 v0, 0x1

    goto :goto_1

    .line 1245
    :sswitch_2
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1246
    if-eqz p2, :cond_4

    .line 1247
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processBackKey()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1248
    const/4 v0, 0x1

    goto :goto_1

    .line 1258
    :sswitch_3
    if-eqz p2, :cond_7

    .line 1259
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1260
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->reset()V

    .line 1261
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processEnterKey()V

    .line 1263
    :cond_7
    const/4 v0, 0x1

    .line 1265
    goto :goto_1

    .line 1267
    :sswitch_4
    if-eqz p2, :cond_8

    .line 1268
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_9

    .line 1269
    int-to-char v5, v2

    invoke-direct {p0, v5, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processInput(ILcom/samsung/inputmethod/SimeKeyEvent;)Z

    .line 1285
    :cond_8
    :goto_2
    const/4 v0, 0x1

    .line 1288
    goto :goto_1

    .line 1274
    :cond_9
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_a

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v5, :cond_a

    .line 1276
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->deleteFast(I)V

    goto :goto_2

    .line 1278
    :cond_a
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->simulateKeyEventDownUp(I)V

    goto :goto_2

    .line 1290
    :sswitch_5
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1291
    if-eqz p2, :cond_c

    .line 1292
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_b

    .line 1293
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1294
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->reset()V

    .line 1296
    :cond_b
    if-lez v2, :cond_c

    .line 1297
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1298
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1299
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->autoPeriod()V

    .line 1305
    .end local v4           #result:Ljava/lang/String;
    :cond_c
    const/4 v0, 0x1

    .line 1307
    goto/16 :goto_1

    .line 1319
    :sswitch_6
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1323
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1325
    const/4 v0, 0x1

    goto/16 :goto_1

    .line 1342
    :cond_d
    if-lez v2, :cond_e

    .line 1343
    const/4 v0, 0x1

    .line 1348
    :cond_e
    if-eqz v0, :cond_4

    if-lez v2, :cond_4

    .line 1349
    if-eqz p2, :cond_4

    .line 1351
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1352
    .restart local v4       #result:Ljava/lang/String;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1353
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->reset()V

    .line 1354
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->commiteText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1224
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

.method private processStatePredict(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1603
    const/4 v0, 0x0

    .line 1604
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v2

    .line 1605
    .local v2, keyCode:I
    const/4 v1, 0x0

    .line 1608
    .local v1, keyChar:I
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->keycodeTransToKeyChar(I)I

    move-result v1

    .line 1615
    sparse-switch v2, :sswitch_data_0

    .line 1676
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeAlpha(I)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1677
    if-eqz p2, :cond_0

    .line 1678
    invoke-direct {p0, v1, p1, v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPredictionInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 1680
    :cond_0
    const/4 v0, 0x1

    .line 1728
    :cond_1
    :goto_0
    return v0

    .line 1617
    :sswitch_0
    if-eqz p2, :cond_2

    .line 1618
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1620
    :cond_2
    const/4 v0, 0x1

    .line 1621
    goto :goto_0

    .line 1623
    :sswitch_1
    if-eqz p2, :cond_3

    .line 1624
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processEnterKey()V

    .line 1625
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1627
    :cond_3
    const/4 v0, 0x1

    .line 1628
    goto :goto_0

    .line 1630
    :sswitch_2
    if-eqz p2, :cond_4

    .line 1633
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->keycodeTransToKeyChar(I)I

    move-result v1

    .line 1634
    if-lez v1, :cond_4

    .line 1635
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 1636
    .local v3, result:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1637
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKorean()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1638
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->autoPeriod()V

    .line 1646
    .end local v3           #result:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    .line 1647
    goto :goto_0

    .line 1652
    :sswitch_3
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1654
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1655
    const/4 v0, 0x1

    goto :goto_0

    .line 1660
    :sswitch_4
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1662
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1663
    const/4 v0, 0x1

    .line 1666
    :cond_5
    const/4 v0, 0x1

    .line 1667
    goto :goto_0

    .line 1670
    :sswitch_5
    if-eqz p2, :cond_6

    .line 1671
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v5, ""

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v4, v5, v1, v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 1673
    :cond_6
    const/4 v0, 0x1

    .line 1674
    goto :goto_0

    .line 1681
    :cond_7
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeNum(I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1682
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1690
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v4

    if-eq v4, v6, :cond_8

    sget-boolean v4, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v4, :cond_8

    .line 1693
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 1695
    :cond_8
    if-eqz p2, :cond_9

    .line 1696
    invoke-direct {p0, v1, p1, v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPredictionInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 1698
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1703
    :cond_a
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1704
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v4

    if-eq v4, v6, :cond_b

    .line 1705
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v4

    invoke-virtual {v4, v2, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1707
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1710
    :cond_b
    if-eqz p2, :cond_c

    .line 1711
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 1712
    .restart local v3       #result:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1713
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1715
    .end local v3           #result:Ljava/lang/String;
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1718
    :cond_d
    if-lez v1, :cond_1

    .line 1719
    if-eqz p2, :cond_e

    .line 1720
    int-to-char v4, v1

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 1721
    .restart local v3       #result:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1723
    .end local v3           #result:Ljava/lang/String;
    :cond_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1615
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

.method private updateUI()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 932
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v0

    .line 934
    .local v0, composingStr:Ljava/lang/String;
    const-string v1, "KoreanKeyProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------composingStr-----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const-string v1, "KoreanKeyProcessor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------State is -----"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    sget-object v1, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean$1;->$SwitchMap$com$samsung$inputmethod$SamsungIME$ImeState:[I

    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME$ImeState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 977
    :goto_0
    :pswitch_0
    return-void

    .line 939
    :pswitch_1
    const-string v1, "KoreanKeyProcessor"

    const-string v2, "------IDLE ----- Clear the candidates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 942
    :pswitch_2
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 943
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v0, v4}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 945
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCommonCandidatesListEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 947
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v4}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 948
    const-string v1, "KoreanKeyProcessor"

    const-string v2, "------STATE_INPUT ----- State Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 950
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v5}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_0

    .line 954
    :pswitch_3
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCommonCandidatesListEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 956
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v4}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 957
    const-string v1, "KoreanKeyProcessor"

    const-string v2, "------STATE_PREDICT ----- State Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 959
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v5}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_0

    .line 963
    :pswitch_4
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    .line 964
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v0, v4}, Lcom/samsung/inputmethod/SamsungIME;->setComposingText(Ljava/lang/String;I)Z

    .line 966
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isCommonCandidatesListEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 968
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v4}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 969
    const-string v1, "KoreanKeyProcessor"

    const-string v2, "------STATE_APP_COMPLETION ----- State Error"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 971
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v5}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_0

    .line 937
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public clearFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 192
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mKeyIndex:I

    .line 193
    iput v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mLastKeyCode:I

    .line 194
    iput-boolean v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mToggleOnSameKey:Z

    .line 195
    return-void
.end method

.method public processKeyDown(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    const/4 v2, 0x0

    .line 87
    .local v2, isSoftKey:Z
    const/4 v0, 0x0

    .line 88
    .local v0, bRealAction:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v1

    .line 90
    .local v1, count:I
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 91
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v3

    .line 99
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 100
    const/4 v2, 0x1

    .line 104
    :cond_2
    if-eqz v2, :cond_3

    .line 106
    const/4 v0, 0x0

    .line 127
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 128
    goto :goto_0

    .line 111
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyProcessedWhenLong(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 115
    if-lez v1, :cond_4

    move v3, v4

    .line 116
    goto :goto_0

    .line 118
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 119
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isHardKeyProcessedWhenUp(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 120
    const/4 v0, 0x0

    goto :goto_1

    .line 123
    :cond_6
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public processKeyUp(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 139
    const/4 v2, 0x0

    .line 140
    .local v2, isSoftKey:Z
    const/4 v0, 0x0

    .line 141
    .local v0, bRealAction:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v1

    .line 143
    .local v1, count:I
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_1

    .line 144
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-nez v5, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v3

    .line 152
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 153
    const/4 v2, 0x1

    .line 157
    :cond_2
    if-eqz v2, :cond_3

    .line 159
    const/4 v0, 0x1

    .line 180
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 181
    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyProcessedWhenLong(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 168
    if-lez v1, :cond_4

    move v3, v4

    .line 169
    goto :goto_0

    .line 171
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 172
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isHardKeyProcessedWhenUp(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 173
    const/4 v0, 0x1

    goto :goto_1

    .line 176
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method processKorShift(ZLcom/samsung/inputmethod/SimeKeyEvent;)V
    .locals 1
    .parameter "realAction"
    .parameter "event"

    .prologue
    .line 1766
    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1767
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processShift(Z)V

    .line 1769
    :cond_0
    return-void
.end method

.method protected processState34Idle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v6, 0x0

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 401
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 402
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 405
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v3, :sswitch_data_0

    .line 492
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 493
    const-string v5, "KoreanKeyProcessor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isKeyCodeNum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeNum(I)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 499
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v5, :cond_7

    .line 503
    const/4 v0, 0x0

    .line 522
    :cond_0
    :goto_0
    return v0

    .line 414
    :sswitch_0
    if-eqz p2, :cond_1

    .line 415
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 416
    if-lez v2, :cond_1

    .line 417
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 418
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 419
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 425
    .end local v4           #result:Ljava/lang/String;
    :cond_1
    const/4 v0, 0x1

    .line 427
    goto :goto_0

    .line 429
    :sswitch_1
    if-eqz p2, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processEnterKey()V

    .line 432
    :cond_2
    const/4 v0, 0x1

    .line 434
    goto :goto_0

    .line 436
    :sswitch_2
    if-eqz p2, :cond_3

    .line 438
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v5

    if-lez v5, :cond_4

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v5, :cond_4

    .line 439
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->deleteFast(I)V

    .line 446
    :goto_1
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 448
    :cond_3
    const/4 v0, 0x1

    .line 450
    goto :goto_0

    .line 441
    :cond_4
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 452
    :sswitch_3
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 457
    :cond_5
    if-eqz p2, :cond_6

    .line 458
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 459
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 463
    :cond_6
    const/4 v0, 0x1

    .line 466
    goto :goto_0

    .line 477
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 479
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 480
    const/4 v0, 0x1

    goto :goto_0

    .line 505
    :cond_7
    const-string v5, "KoreanKeyProcessor"

    const-string v6, "--- send to imes"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    if-eqz p2, :cond_8

    .line 507
    const/4 v5, 0x1

    invoke-direct {p0, v2, p1, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPredictionInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 509
    :cond_8
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 511
    :cond_9
    if-lez v2, :cond_0

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCtrlPressed()Z

    move-result v5

    if-nez v5, :cond_0

    .line 512
    if-eqz p2, :cond_a

    .line 513
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 514
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 516
    .end local v4           #result:Ljava/lang/String;
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 405
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
    .locals 9
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 529
    const/4 v0, 0x0

    .line 530
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 531
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 532
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 537
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 539
    sparse-switch v3, :sswitch_data_0

    .line 599
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 604
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v5

    if-eq v5, v7, :cond_6

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-nez v5, :cond_6

    .line 607
    const/4 v0, 0x0

    .line 639
    :cond_0
    :goto_0
    return v0

    .line 541
    :sswitch_0
    if-eqz p2, :cond_1

    .line 542
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 543
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 545
    :cond_1
    const/4 v0, 0x1

    .line 547
    goto :goto_0

    .line 550
    :sswitch_1
    if-eqz p2, :cond_2

    .line 551
    invoke-direct {p0, v2, p1, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPredictionInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 552
    :cond_2
    const/4 v0, 0x1

    .line 553
    goto :goto_0

    .line 555
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 556
    if-eqz p2, :cond_3

    .line 557
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 558
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 559
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 566
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 561
    :cond_4
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processEnterKey()V

    .line 563
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 571
    :sswitch_3
    if-eqz p2, :cond_5

    .line 572
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 573
    invoke-direct {p0, v2, p1, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPredictionInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 575
    :cond_5
    const/4 v0, 0x1

    .line 577
    goto :goto_0

    .line 585
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 587
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 588
    const/4 v0, 0x1

    goto :goto_0

    .line 595
    :sswitch_5
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const-string v6, ""

    sget-object v7, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v5, v6, v2, v8, v7}, Lcom/samsung/inputmethod/SamsungIME;->inputCommaPeriod(Ljava/lang/String;IZLcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto/16 :goto_0

    .line 608
    :cond_6
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v5

    if-eq v5, v7, :cond_9

    sget-boolean v5, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v5, :cond_9

    .line 610
    if-eqz p2, :cond_7

    .line 611
    const/4 v5, 0x7

    if-ne v3, v5, :cond_8

    .line 612
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 614
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    const/16 v6, 0x3e

    invoke-virtual {v5, v6, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 615
    const/4 v0, 0x1

    .line 622
    :cond_7
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 619
    :cond_8
    invoke-direct {p0, v2, p1, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPredictionInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    goto :goto_2

    .line 624
    :cond_9
    if-eqz p2, :cond_a

    .line 625
    invoke-direct {p0, v2, p1, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPredictionInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 627
    :cond_a
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 629
    :cond_b
    if-lez v2, :cond_0

    .line 630
    if-eqz p2, :cond_c

    .line 631
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 632
    .local v4, result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 634
    .end local v4           #result:Ljava/lang/String;
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 539
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

.method protected processStateQwertyIdle(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 8
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v7, 0x0

    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v4

    .line 647
    .local v4, keyCode:I
    const/4 v3, 0x0

    .line 648
    .local v3, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 653
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    sparse-switch v4, :sswitch_data_0

    .line 739
    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->keycodeTransToKeyChar(I)I

    move-result v3

    .line 741
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeAlpha(I)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCtrlPressed()Z

    move-result v6

    if-nez v6, :cond_8

    .line 742
    if-eqz p2, :cond_0

    .line 743
    int-to-char v6, v3

    const/4 v7, 0x1

    invoke-direct {p0, v6, p1, v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPredictionInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 745
    :cond_0
    const/4 v0, 0x1

    .line 771
    :cond_1
    :goto_0
    return v0

    .line 655
    :sswitch_0
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 660
    :cond_2
    if-eqz p2, :cond_3

    .line 661
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 662
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 666
    :cond_3
    const/4 v0, 0x1

    .line 669
    goto :goto_0

    .line 678
    :sswitch_1
    const/16 v3, 0x20

    .line 679
    if-lez v3, :cond_4

    .line 680
    if-eqz p2, :cond_4

    .line 681
    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 682
    .local v5, result:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 683
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 684
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->autoPeriod()V

    .line 691
    .end local v5           #result:Ljava/lang/String;
    :cond_4
    const/4 v0, 0x1

    .line 693
    goto :goto_0

    .line 695
    :sswitch_2
    if-eqz p2, :cond_5

    .line 696
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processEnterKey()V

    .line 698
    :cond_5
    const/4 v0, 0x1

    .line 700
    goto :goto_0

    .line 702
    :sswitch_3
    if-eqz p2, :cond_6

    .line 704
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_7

    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v6, :cond_7

    .line 705
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->deleteFast(I)V

    .line 712
    :goto_1
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 714
    :cond_6
    const/4 v0, 0x1

    .line 716
    goto :goto_0

    .line 707
    :cond_7
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->simulateKeyEventDownUp(I)V

    goto :goto_1

    .line 724
    :sswitch_4
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 727
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    invoke-virtual {v6, v4, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 728
    const/4 v0, 0x1

    goto :goto_0

    .line 746
    :cond_8
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isAltPressed()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 748
    invoke-static {v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKeyMapping;->getChineseLabel(I)C

    move-result v1

    .line 749
    .local v1, fullwidth_char:C
    if-eqz v1, :cond_a

    .line 750
    if-eqz p2, :cond_9

    .line 751
    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 752
    .restart local v5       #result:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 754
    .end local v5           #result:Ljava/lang/String;
    :cond_9
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 756
    :cond_a
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeAlpha(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 757
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 760
    .end local v1           #fullwidth_char:C
    :cond_b
    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isCtrlPressed()Z

    move-result v6

    if-nez v6, :cond_1

    .line 761
    if-eqz p2, :cond_c

    .line 762
    int-to-char v6, v3

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 763
    .restart local v5       #result:Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 765
    .end local v5           #result:Ljava/lang/String;
    :cond_c
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 653
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
    .locals 9
    .parameter "event"
    .parameter "bRealAction"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1470
    const/4 v0, 0x0

    .line 1471
    .local v0, bProcessed:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 1472
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 1473
    .local v2, keyChar:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 1478
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    invoke-direct {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->keycodeTransToKeyChar(I)I

    move-result v2

    .line 1480
    sparse-switch v3, :sswitch_data_0

    .line 1558
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeAlpha(I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1559
    if-eqz p2, :cond_0

    .line 1560
    invoke-direct {p0, v2, p1, v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPredictionInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 1562
    :cond_0
    const/4 v0, 0x1

    .line 1598
    :cond_1
    :goto_0
    return v0

    .line 1482
    :sswitch_0
    if-eqz p2, :cond_2

    .line 1483
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1484
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 1486
    :cond_2
    const/4 v0, 0x1

    .line 1488
    goto :goto_0

    .line 1499
    :sswitch_1
    if-eqz p2, :cond_3

    .line 1500
    invoke-direct {p0, v2, p1, v7}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPredictionInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 1502
    :cond_3
    const/4 v0, 0x1

    .line 1504
    goto :goto_0

    .line 1506
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1507
    if-eqz p2, :cond_4

    .line 1508
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1509
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1510
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1517
    :cond_4
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1512
    :cond_5
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1513
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processEnterKey()V

    .line 1514
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v8}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_1

    .line 1522
    :sswitch_3
    if-eqz p2, :cond_6

    .line 1523
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1524
    .local v4, result:Ljava/lang/String;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1525
    invoke-interface {v1, v4, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1526
    invoke-direct {p0, v2, p1, v8}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->processPredictionInput(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 1528
    .end local v4           #result:Ljava/lang/String;
    :cond_6
    const/4 v0, 0x1

    .line 1530
    goto :goto_0

    .line 1537
    :sswitch_4
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1539
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1540
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1548
    :sswitch_5
    if-eqz p2, :cond_7

    .line 1549
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1550
    .restart local v4       #result:Ljava/lang/String;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1551
    invoke-interface {v1, v4, v8}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1552
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1554
    .end local v4           #result:Ljava/lang/String;
    :cond_7
    const/4 v0, 0x1

    .line 1556
    goto/16 :goto_0

    .line 1563
    :cond_8
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v5

    if-nez v5, :cond_c

    .line 1565
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_9

    .line 1566
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v5

    invoke-virtual {v5, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1570
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1573
    :cond_9
    if-eqz p2, :cond_b

    .line 1575
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1576
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getEnglishDec()Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecEnglishAbstract;->getComposingStrForDisplay()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1578
    :cond_a
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1579
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1580
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1582
    .end local v4           #result:Ljava/lang/String;
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1586
    :cond_c
    if-lez v2, :cond_1

    .line 1587
    if-eqz p2, :cond_d

    .line 1588
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 1589
    .restart local v4       #result:Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1591
    .end local v4           #result:Ljava/lang/String;
    :cond_d
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 1480
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

.method public reset()V
    .locals 0

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcKorean;->clearFlags()V

    .line 189
    return-void
.end method
