.class public Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;
.super Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
.source "SimeKProcHandwriting.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HandwriteInputProcessor"


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 0
    .parameter "ime"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 41
    return-void
.end method

.method private processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 1
    .parameter "event"
    .parameter "realAction"

    .prologue
    .line 144
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processFunctionKeys(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public pickDefaultCandidate()V
    .locals 3

    .prologue
    .line 360
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    .line 361
    .local v1, imestate:Lcom/samsung/inputmethod/SamsungIME$ImeState;
    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v1, v2, :cond_1

    .line 363
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 364
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1

    .line 365
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 368
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1
    return-void
.end method

.method public processFunctionKeys(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 9
    .parameter "event"
    .parameter "realAction"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 152
    const/4 v4, 0x0

    .line 153
    .local v4, result:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    .line 154
    .local v1, imeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 155
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 354
    :goto_0
    return v6

    .line 157
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    .line 158
    .local v3, keyCode:I
    const/4 v2, 0x0

    .line 159
    .local v2, keyChar:I
    const-string v5, ""

    .line 163
    .local v5, text:Ljava/lang/String;
    sparse-switch v3, :sswitch_data_0

    .line 350
    const/4 v4, 0x0

    :cond_1
    :goto_1
    move v6, v4

    .line 354
    goto :goto_0

    .line 165
    :sswitch_0
    if-eqz p2, :cond_2

    .line 166
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->handleClipboardKey()V

    .line 168
    :cond_2
    const/4 v4, 0x1

    .line 170
    goto :goto_1

    .line 172
    :sswitch_1
    if-eqz p2, :cond_3

    .line 175
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processLangKey()V

    .line 177
    :cond_3
    const/4 v4, 0x1

    .line 179
    goto :goto_1

    .line 181
    :sswitch_2
    if-nez p2, :cond_4

    move v6, v7

    .line 182
    goto :goto_0

    .line 183
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processBackKey()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 189
    :goto_2
    const/4 v4, 0x1

    .line 190
    goto :goto_1

    .line 186
    :cond_5
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 187
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    goto :goto_2

    .line 192
    :sswitch_3
    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 193
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processLangKey()V

    .line 194
    const/4 v4, 0x1

    goto :goto_1

    .line 195
    :cond_6
    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v8, v1, :cond_b

    .line 196
    if-nez p2, :cond_7

    move v6, v7

    .line 197
    goto :goto_0

    .line 200
    :cond_7
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpaceKeyInputAssociate()Z

    move-result v8

    if-nez v8, :cond_9

    .line 201
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->pickDefaultCandidate()V

    .line 202
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 216
    :cond_8
    :goto_3
    const/4 v4, 0x1

    goto :goto_1

    .line 204
    :cond_9
    iget-object v8, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 205
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->pickDefaultCandidate()V

    .line 206
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_3

    .line 208
    :cond_a
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 210
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    invoke-virtual {v6, v3, v7}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 211
    const/4 v4, 0x1

    goto :goto_3

    .line 217
    :cond_b
    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v8, v1, :cond_f

    .line 218
    if-nez p2, :cond_c

    move v6, v7

    .line 219
    goto/16 :goto_0

    .line 222
    :cond_c
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getSpaceKeyInputAssociate()Z

    move-result v8

    if-nez v8, :cond_e

    .line 223
    const/16 v2, 0x20

    .line 224
    int-to-char v7, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 225
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 226
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 235
    :cond_d
    :goto_4
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 228
    :cond_e
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    if-eqz v6, :cond_d

    .line 230
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    invoke-virtual {v6, v3, v7}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 231
    const/4 v4, 0x1

    goto :goto_4

    .line 236
    :cond_f
    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v6, v1, :cond_1

    .line 237
    if-nez p2, :cond_10

    move v6, v7

    .line 238
    goto/16 :goto_0

    .line 239
    :cond_10
    const/16 v2, 0x20

    .line 240
    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 241
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 242
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 246
    :sswitch_4
    if-nez p2, :cond_11

    move v6, v7

    .line 247
    goto/16 :goto_0

    .line 248
    :cond_11
    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v6, v1, :cond_12

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v6, v1, :cond_13

    .line 250
    :cond_12
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 251
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 257
    :cond_13
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v6

    if-lez v6, :cond_14

    sget-boolean v6, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FAST_DELETE_FEATURE:Z

    if-eqz v6, :cond_14

    .line 258
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->deleteFast(I)V

    .line 269
    :goto_5
    const/4 v4, 0x1

    .line 271
    goto/16 :goto_1

    .line 260
    :cond_14
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->simulateKeyEventDownUp(I)V

    goto :goto_5

    .line 273
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 274
    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v8, v1, :cond_17

    .line 275
    if-nez p2, :cond_15

    move v6, v7

    .line 276
    goto/16 :goto_0

    .line 277
    :cond_15
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->pickDefaultCandidate()V

    .line 278
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v7

    if-nez v7, :cond_16

    .line 279
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processEnterKey()V

    .line 281
    :cond_16
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 282
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 283
    :cond_17
    sget-object v8, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v8, v1, :cond_19

    .line 284
    if-nez p2, :cond_18

    move v6, v7

    .line 285
    goto/16 :goto_0

    .line 286
    :cond_18
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processEnterKey()V

    .line 287
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 288
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 289
    :cond_19
    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v6, v1, :cond_1

    .line 290
    if-nez p2, :cond_1a

    move v6, v7

    .line 291
    goto/16 :goto_0

    .line 292
    :cond_1a
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processEnterKey()V

    .line 293
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 297
    :cond_1b
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    const/16 v7, 0x17

    invoke-virtual {v6, v7, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 301
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 306
    :sswitch_6
    if-nez p2, :cond_1c

    move v6, v7

    .line 307
    goto/16 :goto_0

    .line 308
    :cond_1c
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 309
    const/16 v2, 0x2a

    .line 310
    int-to-char v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 311
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 312
    const/4 v4, 0x1

    .line 313
    goto/16 :goto_1

    .line 315
    :sswitch_7
    if-nez p2, :cond_1d

    move v6, v7

    .line 316
    goto/16 :goto_0

    .line 317
    :cond_1d
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v7

    if-eqz v7, :cond_1f

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v7

    if-nez v7, :cond_1f

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v7

    if-nez v7, :cond_1f

    .line 320
    const/16 v2, 0x3002

    .line 324
    :goto_6
    int-to-char v7, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    .line 325
    if-eqz v0, :cond_1e

    .line 326
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 327
    :cond_1e
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 328
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 329
    const/4 v4, 0x1

    .line 330
    goto/16 :goto_1

    .line 322
    :cond_1f
    const/16 v2, 0x2e

    goto :goto_6

    .line 337
    :sswitch_8
    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v6, v1, :cond_20

    sget-object v6, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v6, v1, :cond_1

    .line 340
    :cond_20
    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v6

    invoke-virtual {v6, v3, p2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 343
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_2
        0x11 -> :sswitch_6
        0x13 -> :sswitch_8
        0x14 -> :sswitch_8
        0x15 -> :sswitch_8
        0x16 -> :sswitch_8
        0x17 -> :sswitch_8
        0x38 -> :sswitch_7
        0x3e -> :sswitch_3
        0x42 -> :sswitch_5
        0x43 -> :sswitch_4
        0xdd -> :sswitch_0
        0xe3 -> :sswitch_1
    .end sparse-switch
.end method

.method public processKeyDown(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    const/4 v2, 0x0

    .line 47
    .local v2, isSoftKey:Z
    const/4 v0, 0x0

    .line 48
    .local v0, bRealAction:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v1

    .line 50
    .local v1, count:I
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    const/4 v2, 0x1

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 54
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-nez v5, :cond_2

    .line 86
    :cond_1
    :goto_0
    return v3

    .line 60
    :cond_2
    if-eqz v2, :cond_3

    .line 62
    const/4 v0, 0x0

    .line 83
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 84
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->isKeyProcessedWhenLong(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 71
    if-lez v1, :cond_4

    move v3, v4

    .line 72
    goto :goto_0

    .line 74
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 75
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->isHardKeyProcessedWhenUp(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 76
    const/4 v0, 0x0

    goto :goto_1

    .line 79
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

    .line 93
    const/4 v2, 0x0

    .line 94
    .local v2, isSoftKey:Z
    const/4 v0, 0x0

    .line 95
    .local v0, bRealAction:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v1

    .line 97
    .local v1, count:I
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 98
    const/4 v2, 0x1

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 101
    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v5

    if-nez v5, :cond_2

    .line 134
    :cond_1
    :goto_0
    return v3

    .line 107
    :cond_2
    if-eqz v2, :cond_3

    .line 109
    const/4 v0, 0x1

    .line 131
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->processKey(Lcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    move v3, v4

    .line 132
    goto :goto_0

    .line 114
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->isKeyProcessedWhenLong(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 118
    if-lez v1, :cond_4

    move v3, v4

    .line 119
    goto :goto_0

    .line 121
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 122
    :cond_5
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcHandwriting;->isHardKeyProcessedWhenUp(I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 123
    const/4 v0, 0x1

    goto :goto_1

    .line 126
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method
