.class public Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;
.super Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;
.source "SimeDecHandwriting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;
    }
.end annotation


# static fields
.field private static final CAND_TYPE_CHAR:I = 0x0

.field private static final CAND_TYPE_STRING:I = 0x1

.field private static final CAND_TYPE_TEXT:I = 0x2

.field private static DEBUG:Z = false

.field private static final HW_ENGINE_END_SIGN:I = 0xffff

.field private static final HW_ENGINE_ONE_CHAR_MAX_LENGTH:I = 0x21

.field private static final HW_GESTURE_BACKSPACE_CODE:C = '\u0008'

.field private static final HW_GESTURE_CASESWITCH_CODE:C = '\u0002'

.field private static final HW_GESTURE_DELETE_CODE:C = '\u001e'

.field private static final HW_GESTURE_ENTER_CODE:C = '\r'

.field private static final HW_GESTURE_SPACE_CODE:C = ' '

.field private static final HW_GESTURE_TAB_CODE:C = '\t'

.field private static final HW_INVALID_CANDIDATE_CODE:C = '\uffff'

.field private static final TAG:Ljava/lang/String; = "HandwriteDecodingInfo"


# instance fields
.field private isCandFetchOver:Z

.field private mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V
    .locals 2
    .parameter "mIme"
    .parameter "decMgr"

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/decoder/SimeDecManager;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->isCandFetchOver:Z

    .line 90
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;-><init>(Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;I)V

    iput-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    .line 91
    return-void
.end method

.method private pickDefaultCandidate()V
    .locals 4

    .prologue
    .line 433
    sget-boolean v2, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 434
    const-string v2, "HandwriteDecodingInfo"

    const-string v3, "pickDefaultCandidate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    .line 436
    .local v1, imestate:Lcom/samsung/inputmethod/SamsungIME$ImeState;
    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v1, v2, :cond_2

    .line 437
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 438
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 439
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 442
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_2
    return-void
.end method

.method private preProcessResult()Z
    .locals 9

    .prologue
    const/4 v8, 0x6

    const v7, 0xffff

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 173
    const/4 v0, 0x0

    .line 174
    .local v0, bRet:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v1

    .line 176
    .local v1, candResult:[C
    const/16 v2, 0xd

    aget-char v3, v1, v4

    if-ne v2, v3, :cond_2

    aget-char v2, v1, v6

    if-ne v7, v2, :cond_2

    .line 178
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEventNotifier:Lcom/samsung/inputmethod/SimeEventNotifier;

    if-eqz v2, :cond_0

    .line 179
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEventNotifier:Lcom/samsung/inputmethod/SimeEventNotifier;

    const/16 v3, 0x42

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v8, v3, v5}, Lcom/samsung/inputmethod/SimeEventNotifier;->handleEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 182
    :cond_0
    const/4 v0, 0x1

    .line 205
    :cond_1
    :goto_0
    return v0

    .line 183
    :cond_2
    const/16 v2, 0x20

    aget-char v3, v1, v4

    if-eq v2, v3, :cond_3

    const/16 v2, 0x5e

    aget-char v3, v1, v4

    if-ne v2, v3, :cond_5

    aget-char v2, v1, v6

    if-ne v7, v2, :cond_5

    .line 185
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEventNotifier:Lcom/samsung/inputmethod/SimeEventNotifier;

    if-eqz v2, :cond_4

    .line 186
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEventNotifier:Lcom/samsung/inputmethod/SimeEventNotifier;

    const/16 v3, 0x3e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v8, v3, v5}, Lcom/samsung/inputmethod/SimeEventNotifier;->handleEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    .line 190
    :cond_5
    const/16 v2, 0x8

    aget-char v3, v1, v4

    if-eq v2, v3, :cond_6

    const/16 v2, 0x1e

    aget-char v3, v1, v4

    if-ne v2, v3, :cond_8

    :cond_6
    aget-char v2, v1, v6

    if-ne v7, v2, :cond_8

    .line 192
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEventNotifier:Lcom/samsung/inputmethod/SimeEventNotifier;

    if-eqz v2, :cond_7

    .line 193
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEventNotifier:Lcom/samsung/inputmethod/SimeEventNotifier;

    const/16 v3, 0x43

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v8, v3, v5}, Lcom/samsung/inputmethod/SimeEventNotifier;->handleEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    .line 197
    :cond_8
    const/4 v2, 0x2

    aget-char v3, v1, v4

    if-eq v2, v3, :cond_9

    const/16 v2, 0x9

    aget-char v3, v1, v4

    if-ne v2, v3, :cond_1

    :cond_9
    aget-char v2, v1, v6

    if-ne v7, v2, :cond_1

    .line 199
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEventNotifier:Lcom/samsung/inputmethod/SimeEventNotifier;

    if-eqz v2, :cond_a

    .line 200
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEventNotifier:Lcom/samsung/inputmethod/SimeEventNotifier;

    const/4 v3, 0x7

    invoke-interface {v2, v3, v5, v5}, Lcom/samsung/inputmethod/SimeEventNotifier;->handleEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    :cond_a
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startRecognize()I
    .locals 8

    .prologue
    const/16 v7, 0xa

    .line 94
    const/4 v2, 0x1

    .line 95
    .local v2, retStatus:I
    const/4 v0, 0x0

    .line 97
    .local v0, bRet:Z
    sget-boolean v3, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 98
    const-string v3, "HandwriteDecodingInfo"

    const-string v4, "startRecognize"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->getData()[I

    move-result-object v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->getDataNum()S

    move-result v3

    if-lez v3, :cond_9

    .line 104
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->reset()V

    .line 105
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->getRegType()I

    move-result v1

    .line 107
    .local v1, recgType:I
    packed-switch v1, :pswitch_data_0

    .line 146
    :goto_0
    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v3

    const/4 v4, 0x0

    aget-char v3, v3, v4

    if-nez v3, :cond_6

    .line 147
    sget-boolean v3, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 148
    const-string v3, "HandwriteDecodingInfo"

    const-string v4, "-----starttorecoginize---result is empty-------"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_1
    const/4 v2, 0x4

    .line 165
    .end local v1           #recgType:I
    :cond_2
    :goto_1
    sget-boolean v3, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v3, :cond_3

    .line 166
    const-string v3, "HandwriteDecodingInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "-----startrecoginize---ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_3
    return v2

    .line 109
    .restart local v1       #recgType:I
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->getData()[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->getDataNum()S

    move-result v4

    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->getCandType()[I

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v6

    invoke-static {v3, v4, v7, v5, v6}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwRecogChar([III[I[C)I

    .line 112
    const/4 v0, 0x1

    .line 113
    goto :goto_0

    .line 115
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->getData()[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->getDataNum()S

    move-result v4

    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->getCandType()[I

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v6

    invoke-static {v3, v4, v7, v5, v6}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwRecogString([III[I[C)I

    .line 118
    const/4 v0, 0x1

    .line 119
    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHK()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isTW()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 123
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->getData()[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->getDataNum()S

    move-result v4

    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->getCandType()[I

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v6

    invoke-static {v3, v4, v7, v5, v6}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwRecogChar([III[I[C)I

    .line 133
    :goto_2
    const/4 v0, 0x1

    .line 134
    goto/16 :goto_0

    .line 128
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->getData()[I

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHwInputData:Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecHwInputData;->getDataNum()S

    move-result v4

    iget-object v5, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->getCandType()[I

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v6

    invoke-static {v3, v4, v7, v5, v6}, Lcom/samsung/inputmethod/service/handwriting/SimeHWService;->hwRecogText([III[I[C)I

    goto :goto_2

    .line 151
    :cond_6
    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->preProcessResult()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 153
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->reset()V

    .line 154
    const/4 v2, 0x2

    .line 155
    sget-boolean v3, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 156
    const-string v3, "HandwriteDecodingInfo"

    const-string v4, "------ the result has been preprocessed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 157
    :cond_7
    if-eqz v0, :cond_2

    .line 158
    sget-boolean v3, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v3, :cond_8

    .line 159
    const-string v3, "HandwriteDecodingInfo"

    const-string v4, "---- -- the result has been formed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 163
    .end local v1           #recgType:I
    :cond_9
    const/4 v2, 0x3

    goto/16 :goto_1

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private updateHWCandidates()I
    .locals 8

    .prologue
    const/16 v7, 0xd

    .line 211
    const/4 v2, 0x0

    .line 212
    .local v2, candCnt:I
    const-string v1, ""

    .line 213
    .local v1, Str:Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->getCandResult()[C

    move-result-object v0

    .line 215
    .local v0, CandidateResult:[C
    sget-boolean v4, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 216
    const-string v4, "HandwriteDecodingInfo"

    const-string v5, "updateHWCandidates"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->resetHwRegCandList()V

    .line 220
    if-eqz v0, :cond_7

    const/4 v4, 0x0

    aget-char v4, v0, v4

    if-eqz v4, :cond_7

    .line 222
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_6

    .line 223
    sget-boolean v4, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 224
    const-string v4, "HandwriteDecodingInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHWCandidates i="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1
    sget-boolean v4, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 226
    const-string v4, "HandwriteDecodingInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateHWCandidates CandidateResult[i]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-char v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_2
    aget-char v4, v0, v3

    const/16 v5, 0x1e

    if-eq v4, v5, :cond_3

    aget-char v4, v0, v3

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    aget-char v4, v0, v3

    if-eq v4, v7, :cond_3

    aget-char v4, v0, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 232
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 222
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 235
    :cond_4
    const v4, 0xffff

    aget-char v5, v0, v3

    if-ne v4, v5, :cond_5

    .line 236
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    new-instance v5, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;

    invoke-direct {v5, v1, v7}, Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->add(Lcom/samsung/inputmethod/candidate/SimeCandDetailInfo;)V

    .line 238
    const-string v1, ""

    .line 239
    goto :goto_1

    .line 240
    :cond_5
    aget-char v4, v0, v3

    if-nez v4, :cond_9

    .line 246
    :cond_6
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setCandFetchOver(Z)V

    .line 247
    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    .line 249
    .end local v3           #i:I
    :cond_7
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->pickDefaultCandidate()V

    .line 250
    sget-boolean v4, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v4, :cond_8

    .line 251
    const-string v4, "HandwriteDecodingInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--updateHWCandidates-----candCnt = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_8
    return v2

    .line 244
    .restart local v3       #i:I
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-char v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->getHWCandidateResult(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public chooseCandidate(I)I
    .locals 5
    .parameter "candId"

    .prologue
    .line 342
    const/4 v1, 0x1

    .line 343
    .local v1, retStatus:I
    sget-boolean v2, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 344
    const-string v2, "HandwriteDecodingInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chooseCandidate imestate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    :cond_0
    if-ltz p1, :cond_4

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-ge p1, v2, :cond_4

    .line 349
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mComposingStr:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 350
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, resultCand:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->resetHwRegCandList()V

    .line 356
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 357
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mInputLanguage:Ljava/lang/String;

    const-string v3, "ko"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 358
    const-string v0, " "

    .line 359
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 361
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHFSEnglish()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 362
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 366
    :goto_1
    const/4 v1, 0x0

    .line 370
    .end local v0           #resultCand:Ljava/lang/String;
    :goto_2
    const-string v2, "HandwriteDecodingInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----chooseCandidate --- ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return v1

    .line 354
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getCommonCandidatesList()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #resultCand:Ljava/lang/String;
    goto :goto_0

    .line 364
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    goto :goto_1

    .line 368
    .end local v0           #resultCand:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x3

    goto :goto_2
.end method

.method public chooseHwRegCand(I)Z
    .locals 5
    .parameter "activeHwCandId"

    .prologue
    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, bRet:Z
    sget-boolean v2, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 269
    const-string v2, "HandwriteDecodingInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---chooseHwRegCand---activeHwCandId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    .local v1, choice:Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 273
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->resetHwRegCandList()V

    .line 275
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->isCandFetchOver:Z

    .line 276
    const/4 v0, 0x1

    .line 278
    .end local v1           #choice:Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public decoding()I
    .locals 5

    .prologue
    .line 310
    const/4 v1, 0x0

    .line 311
    .local v1, retStatus:I
    sget-boolean v2, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 312
    const-string v2, "HandwriteDecodingInfo"

    const-string v3, "-----it is hw --- decoding--------"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->startRecognize()I

    move-result v0

    .line 315
    .local v0, ret:I
    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->updateHWCandidates()I

    move-result v2

    if-lez v2, :cond_4

    .line 316
    sget-boolean v2, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 317
    const-string v2, "HandwriteDecodingInfo"

    const-string v3, "-----recognize result----cand > 0----"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->setComposingStr(Ljava/lang/String;)V

    .line 320
    sget-boolean v2, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 321
    const-string v2, "HandwriteDecodingInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----it is hw --- decoding-------- mComposingStr="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mComposingStr:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->preparePredicts(Ljava/lang/CharSequence;)V

    .line 323
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->isCandFetchOver:Z

    .line 329
    :goto_0
    sget-boolean v2, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 330
    const-string v2, "HandwriteDecodingInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-----decoding ---- ret ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_3
    return v1

    .line 324
    :cond_4
    if-nez v0, :cond_5

    .line 325
    const/4 v1, 0x4

    goto :goto_0

    .line 327
    :cond_5
    move v1, v0

    goto :goto_0
.end method

.method public focusHwRegCand(I)Z
    .locals 5
    .parameter "activeHwCandId"

    .prologue
    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, bRet:Z
    sget-boolean v2, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 285
    const-string v2, "HandwriteDecodingInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---focusHwRegCand---activeHwCandId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_0
    if-ltz p1, :cond_1

    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 287
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setDefaultActiveIndex(I)V

    .line 288
    iget-object v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mHWRegCandInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v2, p1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, choice:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->setComposingStr(Ljava/lang/String;)V

    .line 291
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->isCandFetchOver:Z

    .line 292
    const/4 v0, 0x1

    .line 294
    .end local v1           #choice:Ljava/lang/String;
    :cond_1
    return v0
.end method

.method public getActiveCandIdx()I
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    return v0
.end method

.method public getAllCandidates()I
    .locals 3

    .prologue
    .line 376
    const/4 v0, 0x0

    .line 378
    .local v0, candCnt:I
    sget-boolean v1, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 379
    const-string v1, "HandwriteDecodingInfo"

    const-string v2, "getAllCandidates"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mComposingStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 382
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mComposingStr:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->preparePredicts(Ljava/lang/CharSequence;)V

    .line 386
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->isCandFetchOver:Z

    .line 387
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mCandList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 388
    return v0

    .line 384
    :cond_1
    const/16 v1, 0x96

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->getContextString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->preparePredicts(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public getPartCandidates(IZ)I
    .locals 4
    .parameter "candNum"
    .parameter "bResetCand"

    .prologue
    .line 393
    sget-boolean v1, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 394
    const-string v1, "HandwriteDecodingInfo"

    const-string v2, "----getPartCandidates----"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_0
    const/4 v0, 0x0

    .line 397
    .local v0, retCnt:I
    if-lez p1, :cond_4

    .line 398
    if-eqz p2, :cond_3

    .line 399
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->resetCandList()V

    .line 400
    invoke-virtual {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->getAllCandidates()I

    move-result v0

    .line 410
    :cond_1
    :goto_0
    sget-boolean v1, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 411
    const-string v1, "HandwriteDecodingInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPartCandidates end --(HW)-- retCnt = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_2
    :goto_1
    return v0

    .line 401
    :cond_3
    if-nez p2, :cond_1

    iget-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->isCandFetchOver:Z

    if-nez v1, :cond_1

    .line 404
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->isCandFetchOver:Z

    .line 405
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mGetCandNotifier:Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mCandList:Ljava/util/List;

    invoke-interface {v1, v2, v3, p0}, Lcom/samsung/inputmethod/decoder/SimeDecCandNotifierInterface;->onCandUpdate(ILjava/lang/Object;Lcom/samsung/inputmethod/decoder/SimeDecAbstract;)I

    goto :goto_0

    .line 414
    :cond_4
    sget-boolean v1, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 415
    const-string v1, "HandwriteDecodingInfo"

    const-string v2, "getPartCandidates (HW)----fail,as the candNum <= 0"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public init()Z
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public processBackspace()I
    .locals 1

    .prologue
    .line 337
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->reset()V

    .line 257
    iget-object v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->mEngineCandResultInfo:Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting$hwEngineCandInfo;->reset()V

    .line 258
    return-void
.end method

.method public resetCandList()V
    .locals 1

    .prologue
    .line 261
    invoke-super {p0}, Lcom/samsung/inputmethod/decoder/SimeDecHandwritingAbstract;->resetCandList()V

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/decoder/SimeDecHandwriting;->isCandFetchOver:Z

    .line 263
    return-void
.end method

.method public setDecoderService(Ljava/lang/Object;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 306
    return-void
.end method

.method public stopGetCandidates()I
    .locals 1

    .prologue
    .line 429
    const/4 v0, 0x0

    return v0
.end method
