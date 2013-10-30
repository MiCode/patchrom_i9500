.class public abstract Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;
.super Ljava/lang/Object;
.source "SimeKProcAbstract.java"


# static fields
.field private static final DEBUG:Z = false

.field protected static final SIMULATE_KEY_DELETE:Z = true

.field private static final TAG:Ljava/lang/String; = "AbsKeyProcessor"


# instance fields
.field protected mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

.field protected mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field protected mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;


# direct methods
.method public constructor <init>(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 1
    .parameter "ime"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 54
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 55
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mDecMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    .line 57
    return-void
.end method


# virtual methods
.method public autoDelSpaceBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 0
    .parameter "ic"
    .parameter "keyLabel"

    .prologue
    .line 460
    return-void
.end method

.method protected autoPeriod()V
    .locals 13

    .prologue
    const/16 v12, 0x20

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 407
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getAutoFullStop()Z

    move-result v7

    if-nez v7, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v2

    .line 411
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v2, :cond_0

    .line 415
    invoke-interface {v2, v11, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v5

    .line 416
    .local v5, text:Ljava/lang/CharSequence;
    if-eqz v5, :cond_0

    .line 420
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 422
    .local v3, length:I
    if-lt v3, v11, :cond_0

    .line 426
    invoke-interface {v5, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 427
    .local v0, firstChar:C
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 428
    .local v4, secondChar:C
    invoke-interface {v5, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 429
    .local v6, thirdChar:C
    const-string v1, ". "

    .line 430
    .local v1, fullstop:Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 432
    :cond_2
    const/16 v7, 0x3002

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 435
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v7

    if-eqz v7, :cond_0

    if-ne v4, v12, :cond_0

    if-ne v6, v12, :cond_0

    .line 436
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->beginBatchEdit()Z

    .line 437
    invoke-interface {v2, v10, v8}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    .line 438
    invoke-interface {v2, v1, v9}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 439
    invoke-interface {v2}, Landroid/view/inputmethod/InputConnection;->endBatchEdit()Z

    goto :goto_0
.end method

.method protected commiteText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method protected deleteFast(I)V
    .locals 3
    .parameter "repeatCount"

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 125
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    invoke-interface {v0, v2}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 126
    const/16 v1, 0x43

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->simulateKeyEventDownUp(I)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-interface {v0, p1, v2}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method protected getIMEResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method protected getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v0

    return-object v0
.end method

.method protected getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    return-object v0
.end method

.method public isHardKeyProcessedWhenUp(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 364
    const/4 v0, 0x0

    .line 365
    .local v0, bRet:Z
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 366
    const/4 v0, 0x1

    .line 368
    :cond_0
    return v0
.end method

.method public isKeyCodeAlpha(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 75
    const/4 v0, 0x0

    .line 77
    .local v0, bRet:Z
    const/16 v1, 0x1d

    if-lt p1, v1, :cond_0

    const/16 v1, 0x36

    if-gt p1, v1, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 81
    :cond_0
    return v0
.end method

.method public isKeyCodeNum(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, bRet:Z
    const/4 v1, 0x7

    if-lt p1, v1, :cond_0

    const/16 v1, 0x10

    if-gt p1, v1, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 93
    :cond_0
    return v0
.end method

.method public isKeyCodeZero(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, bRet:Z
    const/4 v1, 0x7

    if-ne v1, p1, :cond_0

    .line 99
    const/4 v0, 0x1

    .line 101
    :cond_0
    return v0
.end method

.method public isKeyProcessedWhenLong(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 350
    const/4 v0, 0x0

    .line 352
    .local v0, bRet:Z
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->isKeyCodeNum(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    const/4 v0, 0x1

    .line 358
    :cond_0
    :goto_0
    return v0

    .line 354
    :cond_1
    const/16 v1, 0x12

    if-eq p1, v1, :cond_2

    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    .line 356
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected isSoftKey(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, bRet:Z
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SimeKeyEvent;->getFlags()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 68
    :cond_0
    return v0
.end method

.method protected processBackKey()Z
    .locals 3

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 166
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->handleBack(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 168
    const/4 v0, 0x1

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 172
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected processClipBoardKey()V
    .locals 0

    .prologue
    .line 224
    return-void
.end method

.method protected processDownPageKey()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->processSwitchToNextSymbolPage()Z

    .line 260
    return-void
.end method

.method protected processEnterKey()V
    .locals 5

    .prologue
    const/16 v4, 0x42

    .line 134
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 141
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    iget v2, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v3, 0xfff000

    and-int v1, v2, v3

    .line 143
    .local v1, inputType:I
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->sendKeyChar(C)V

    .line 157
    :goto_0
    return-void

    .line 148
    :cond_0
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.baidu.netdisk"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 149
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->sendDownUpKeyEvents(I)V

    goto :goto_0

    .line 151
    :cond_1
    const/high16 v2, 0x4

    if-eq v1, v2, :cond_2

    const/high16 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 153
    :cond_2
    const-string v2, "\n"

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->commiteText(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SamsungIME;->sendDownUpKeyEvents(I)V

    goto :goto_0
.end method

.method public abstract processKeyDown(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
.end method

.method public abstract processKeyUp(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
.end method

.method protected processLangKey()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 309
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v3, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/16 v4, -0xc

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 310
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 311
    invoke-static {}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->getHWKeyboardConnection()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->changeInputModeByKeyboard()V

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 314
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 317
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 318
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, language:Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getToast()Lcom/samsung/inputmethod/comm/SimeToast;

    move-result-object v1

    .line 330
    .local v1, languageToast:Lcom/samsung/inputmethod/comm/SimeToast;
    invoke-virtual {v1, v0}, Lcom/samsung/inputmethod/comm/SimeToast;->setText(Ljava/lang/String;)V

    .line 331
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeToast;->show()V

    .line 333
    invoke-static {v5}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardLedState(Z)V

    .line 334
    return-void

    .line 319
    .end local v0           #language:Ljava/lang/String;
    .end local v1           #languageToast:Lcom/samsung/inputmethod/comm/SimeToast;
    :cond_2
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 320
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #language:Ljava/lang/String;
    goto :goto_0

    .line 321
    .end local v0           #language:Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 322
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #language:Ljava/lang/String;
    goto :goto_0

    .line 323
    .end local v0           #language:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 324
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #language:Ljava/lang/String;
    goto :goto_0

    .line 326
    .end local v0           #language:Ljava/lang/String;
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #language:Ljava/lang/String;
    goto :goto_0
.end method

.method protected processLongPoundKey()V
    .locals 0

    .prologue
    .line 305
    return-void
.end method

.method public processLongPressKey(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 378
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_1

    .line 379
    const/4 v2, 0x0

    .line 380
    .local v2, keyChar:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    .line 384
    .local v3, keyCode:I
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->isKeyProcessedWhenLong(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 386
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->isKeyCodeNum(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 387
    add-int/lit8 v5, v3, -0x7

    add-int/lit8 v2, v5, 0x30

    .line 388
    const/4 v0, 0x1

    .line 391
    :cond_0
    if-eqz v2, :cond_1

    .line 392
    int-to-char v5, v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    .line 393
    .local v4, result:Ljava/lang/String;
    invoke-interface {v1}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 394
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-interface {v1, v4, v5}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 403
    .end local v2           #keyChar:I
    .end local v3           #keyCode:I
    .end local v4           #result:Ljava/lang/String;
    :cond_1
    return v0
.end method

.method protected processPoundKey(Lcom/samsung/inputmethod/SimeKeyEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 290
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 291
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 293
    .local v1, inputType:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/16 v3, 0x12

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->sendDownUpKeyEvents(I)V

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 297
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->processToolBarShortCut()Z

    goto :goto_0
.end method

.method protected processShift(Z)V
    .locals 2
    .parameter "realAction"

    .prologue
    .line 180
    if-nez p1, :cond_1

    .line 213
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextTempUpperCaseWithSkb()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 186
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 187
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const v1, 0x12110001

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 196
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode1()V

    goto :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1211

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_1

    .line 194
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1111

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_1

    .line 199
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextTempUpperCaseWithSkb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 201
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 203
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const v1, 0x12030001

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 209
    :goto_2
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto/16 :goto_0

    .line 205
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1203

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_2

    .line 207
    :cond_6
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1113

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_2
.end method

.method protected processStarKey()V
    .locals 4

    .prologue
    .line 275
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 276
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    iget v1, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 278
    .local v1, inputType:I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 280
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->sendDownUpKeyEvents(I)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 281
    :cond_1
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v2, :cond_0

    .line 282
    iget-object v2, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->processSwitchToSymbolToolbarMode()Z

    goto :goto_0
.end method

.method protected processTapKey()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method protected processUpPageKey()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->processSwitchToPreviousSymbolPage()Z

    .line 266
    return-void
.end method

.method public abstract reset()V
.end method

.method protected setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V
    .locals 1
    .parameter "imeState"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/SamsungIME;->setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V

    .line 113
    return-void
.end method

.method protected simulateKeyEventDownUp(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 338
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v0, :cond_0

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 341
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-interface {v0, v1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_0
.end method
