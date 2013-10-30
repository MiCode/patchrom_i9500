.class public Lcom/samsung/inputmethod/SimeToggleStatesMgr;
.super Ljava/lang/Object;
.source "SimeToggleStatesMgr.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeToggleStatesMgr"


# instance fields
.field private mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mToggle123:I

.field private mToggle123SymbolOneLine:I

.field private mToggle123modeoff:I

.field private mToggle123modeon:I

.field private mToggleHandwriteABCmode:I

.field private mToggleHandwriteCHNmode:I

.field private mToggleHandwriteHKmode:I

.field private mToggleHandwriteKORmode:I

.field private mToggleHandwriteTWmode:I

.field private mToggleHwrBoxPointingOff:I

.field private mToggleHwrBoxPointingOn:I

.field private mToggleInputLanguageBOTH:I

.field private mToggleInputLanguageCHN:I

.field private mToggleInputLanguageENGONLY:I

.field private mToggleInputLanguageKOR:I

.field private mToggleInputNUMOnly:I

.field private mToggleInputNumSymOnly:I

.field private mToggleKeyboard:I

.field private mToggleLowerCase:I

.field private mTogglePinyin34:I

.field private mToggleRowCn:I

.field private mToggleRowCn_CN_NoVoice:I

.field private mToggleRowCn_EN_NoVoice:I

.field private mToggleRowCn_HK_NoVoice:I

.field private mToggleRowCn_Hk:I

.field private mToggleRowCn_KO_NoVoice:I

.field private mToggleRowCn_TW_NoVoice:I

.field private mToggleRowCn_Tw:I

.field private mToggleRowEmailAddress:I

.field private mToggleRowEn:I

.field private mToggleRowKo:I

.field private mToggleRowUri:I

.field private mToggleStateCangjie_34:I

.field private mToggleStateCangjie_stroke_34:I

.field private mToggleStateCnCand:I

.field private mToggleStateCnHkLanguage:I

.field private mToggleStateCnHkQuickLanguage:I

.field private mToggleStateCnLanguage:I

.field private mToggleStateCnTwLanguage:I

.field private mToggleStateDone:I

.field private mToggleStateEnLanguage:I

.field private mToggleStateGo:I

.field private mToggleStateKoLanguage:I

.field private mToggleStateMultiModal_Clipboard:I

.field private mToggleStateMultiModal_Clipboard_voice:I

.field private mToggleStateMultiModal_Comma:I

.field private mToggleStateMultiModal_Comma_voice:I

.field private mToggleStateMultiModal_Exclamation:I

.field private mToggleStateMultiModal_Exclamation_voice:I

.field private mToggleStateMultiModal_Floating:I

.field private mToggleStateMultiModal_Floating_voice:I

.field private mToggleStateMultiModal_Handwriting:I

.field private mToggleStateMultiModal_Handwriting_voice:I

.field private mToggleStateMultiModal_Ocr:I

.field private mToggleStateMultiModal_Ocr_voice:I

.field private mToggleStateMultiModal_Question:I

.field private mToggleStateMultiModal_Question_voice:I

.field private mToggleStateMultiModal_Quotation:I

.field private mToggleStateMultiModal_Quotation_voice:I

.field private mToggleStateMultiModal_Settings:I

.field private mToggleStateMultiModal_Settings_voice:I

.field private mToggleStateMultiModal_Voice:I

.field private mToggleStateNext:I

.field private mToggleStatePhoneSym:I

.field private mToggleStateSearch:I

.field private mToggleStateSend:I

.field private mToggleStateZhuyin_34:I

.field private mToggleStateZhuyin_stroke_34:I

.field private mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

.field private mToggleStroke34:I

.field private mToggleSymCangjie:I

.field private mToggleSymEnglish:I

.field private mToggleSymKorean:I

.field private mToggleSymPinyin:I

.field private mToggleSymStroke:I

.field private mToggleSymZhuyin:I

.field private mToggleSymbolLock:I

.field private mToggleSymbolUnlock:I

.field private mToggleT9:I

.field private mToggleTempLowerCase:I

.field private mToggleTempUpperCase:I

.field private mToggleToolBar123HighLight:I

.field private mToggleToolBar123Normal:I

.field private mToggleToolBarABCLowerHighLight:I

.field private mToggleToolBarABCLowerNormal:I

.field private mToggleToolBarABCTempUpperHighLight:I

.field private mToggleToolBarABCTempUpperNormal:I

.field private mToggleToolBarABCUpperHighLight:I

.field private mToggleToolBarABCUpperNormal:I

.field private mToggleToolBarENGLowerHighLight:I

.field private mToggleToolBarENGLowerNormal:I

.field private mToggleToolBarENGTempUpperHighLight:I

.field private mToggleToolBarENGTempUpperNormal:I

.field private mToggleToolBarENGUpperHighLight:I

.field private mToggleToolBarENGUpperNormal:I

.field private mToggleToolBarKORHighLight:I

.field private mToggleToolBarPYHighLight:I

.field private mToggleToolBarPYNormal:I

.field private mToggleToolBarSTRHighLight:I

.field private mToggleToolBarSTRNormal:I

.field private mToggleToolBarSYMHighLight:I

.field private mToggleToolBarSYMNormal:I

.field private mToggleUrlPrefix:I

.field private mToggleUrlSuffix:I

.field private mtoggleEmailSymbol:I

.field private mtoggleTone:I

.field private mtoggleUrlSymbol:I


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V
    .locals 2
    .parameter "imeService"
    .parameter "imeInputModeSwitcher"

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    new-instance v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    invoke-direct {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    .line 281
    iput-object p1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 282
    iput-object p2, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 283
    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 284
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0b019b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnCand:I

    .line 286
    const v1, 0x7f0b01a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleLowerCase:I

    .line 288
    const v1, 0x7f0b01df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleTempLowerCase:I

    .line 290
    const v1, 0x7f0b01fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleTempUpperCase:I

    .line 292
    const v1, 0x7f0b01bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStatePhoneSym:I

    .line 294
    const v1, 0x7f0b019e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateGo:I

    .line 296
    const v1, 0x7f0b01a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateSearch:I

    .line 298
    const v1, 0x7f0b01a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateSend:I

    .line 300
    const v1, 0x7f0b019f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateNext:I

    .line 302
    const v1, 0x7f0b019d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateDone:I

    .line 305
    const v1, 0x7f0b01be

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn:I

    .line 306
    const v1, 0x7f0b01c5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowEn:I

    .line 307
    const v1, 0x7f0b01c7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowKo:I

    .line 309
    const v1, 0x7f0b01c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowUri:I

    .line 310
    const v1, 0x7f0b01c4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowEmailAddress:I

    .line 312
    const v1, 0x7f0b01de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleT9:I

    .line 314
    const v1, 0x7f0b01da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymPinyin:I

    .line 315
    const v1, 0x7f0b01db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymStroke:I

    .line 316
    const v1, 0x7f0b01d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymEnglish:I

    .line 317
    const v1, 0x7f0b01d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymKorean:I

    .line 319
    const v1, 0x7f0b01a2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnLanguage:I

    .line 320
    const v1, 0x7f0b01a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateEnLanguage:I

    .line 321
    const v1, 0x7f0b01a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateKoLanguage:I

    .line 323
    const v1, 0x7f0b01bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mTogglePinyin34:I

    .line 324
    const v1, 0x7f0b01d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStroke34:I

    .line 326
    const v1, 0x7f0b01fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleUrlPrefix:I

    .line 327
    const v1, 0x7f0b01fe

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleUrlSuffix:I

    .line 329
    const v1, 0x7f0b020b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggle123:I

    .line 330
    const v1, 0x7f0b020c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleKeyboard:I

    .line 333
    const v1, 0x7f0b01e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mtoggleTone:I

    .line 334
    const v1, 0x7f0b01ff

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mtoggleUrlSymbol:I

    .line 335
    const v1, 0x7f0b019c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mtoggleEmailSymbol:I

    .line 338
    const v1, 0x7f0b0192

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggle123modeon:I

    .line 339
    const v1, 0x7f0b0191

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggle123modeoff:I

    .line 342
    const v1, 0x7f0b0206

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteABCmode:I

    .line 343
    const v1, 0x7f0b0207

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteKORmode:I

    .line 344
    const v1, 0x7f0b0208

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteCHNmode:I

    .line 345
    const v1, 0x7f0b0209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteHKmode:I

    .line 346
    const v1, 0x7f0b020a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteTWmode:I

    .line 348
    const v1, 0x7f0b020d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHwrBoxPointingOn:I

    .line 349
    const v1, 0x7f0b020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHwrBoxPointingOff:I

    .line 352
    const v1, 0x7f0b01d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymbolLock:I

    .line 353
    const v1, 0x7f0b01dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymbolUnlock:I

    .line 358
    const v1, 0x7f0b01a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnTwLanguage:I

    .line 359
    const v1, 0x7f0b01a3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnHkLanguage:I

    .line 360
    const v1, 0x7f0b01a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnHkQuickLanguage:I

    .line 363
    const v1, 0x7f0b01c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_Tw:I

    .line 364
    const v1, 0x7f0b01bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_Hk:I

    .line 367
    const v1, 0x7f0b01c0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_HK_NoVoice:I

    .line 368
    const v1, 0x7f0b01c3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_TW_NoVoice:I

    .line 371
    const v1, 0x7f0b01c1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_CN_NoVoice:I

    .line 372
    const v1, 0x7f0b01c6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_EN_NoVoice:I

    .line 373
    const v1, 0x7f0b01c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_KO_NoVoice:I

    .line 376
    const v1, 0x7f0b01d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymCangjie:I

    .line 377
    const v1, 0x7f0b01dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymZhuyin:I

    .line 381
    const v1, 0x7f0b0193

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCangjie_34:I

    .line 382
    const v1, 0x7f0b0199

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCangjie_stroke_34:I

    .line 384
    const v1, 0x7f0b0201

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateZhuyin_34:I

    .line 385
    const v1, 0x7f0b0203

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateZhuyin_stroke_34:I

    .line 387
    const v1, 0x7f0b01ac

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Settings:I

    .line 388
    const v1, 0x7f0b01a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Clipboard:I

    .line 389
    const v1, 0x7f0b01aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Handwriting:I

    .line 390
    const v1, 0x7f0b01ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Voice:I

    .line 391
    const v1, 0x7f0b01ab

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Ocr:I

    .line 393
    const v1, 0x7f0b01ae

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Comma:I

    .line 394
    const v1, 0x7f0b01af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Question:I

    .line 395
    const v1, 0x7f0b01b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Exclamation:I

    .line 396
    const v1, 0x7f0b01b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Quotation:I

    .line 398
    const v1, 0x7f0b01b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Settings_voice:I

    .line 399
    const v1, 0x7f0b01b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Clipboard_voice:I

    .line 400
    const v1, 0x7f0b01b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Handwriting_voice:I

    .line 401
    const v1, 0x7f0b01b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Ocr_voice:I

    .line 403
    const v1, 0x7f0b01b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Comma_voice:I

    .line 404
    const v1, 0x7f0b01b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Question_voice:I

    .line 405
    const v1, 0x7f0b01b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Exclamation_voice:I

    .line 406
    const v1, 0x7f0b01b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Quotation_voice:I

    .line 408
    const v1, 0x7f0b01ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Floating:I

    .line 410
    const v1, 0x7f0b01bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Floating_voice:I

    .line 435
    const v1, 0x7f0b0190

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggle123SymbolOneLine:I

    .line 438
    const v1, 0x7f0b01f3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageCHN:I

    .line 440
    const v1, 0x7f0b01f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageKOR:I

    .line 442
    const v1, 0x7f0b01f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageBOTH:I

    .line 445
    const v1, 0x7f0b01f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageENGONLY:I

    .line 448
    const v1, 0x7f0b01f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputNUMOnly:I

    .line 450
    const v1, 0x7f0b01f6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputNumSymOnly:I

    .line 454
    const v1, 0x7f0b01e7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarPYHighLight:I

    .line 456
    const v1, 0x7f0b01e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarPYNormal:I

    .line 459
    const v1, 0x7f0b01e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSTRHighLight:I

    .line 461
    const v1, 0x7f0b01ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSTRNormal:I

    .line 464
    const v1, 0x7f0b01e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCLowerHighLight:I

    .line 466
    const v1, 0x7f0b01e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCLowerNormal:I

    .line 468
    const v1, 0x7f0b01e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCTempUpperHighLight:I

    .line 470
    const v1, 0x7f0b01e4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCTempUpperNormal:I

    .line 472
    const v1, 0x7f0b01e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCUpperHighLight:I

    .line 474
    const v1, 0x7f0b01e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCUpperNormal:I

    .line 477
    const v1, 0x7f0b01eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGLowerHighLight:I

    .line 479
    const v1, 0x7f0b01ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGLowerNormal:I

    .line 481
    const v1, 0x7f0b01ed

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGTempUpperHighLight:I

    .line 483
    const v1, 0x7f0b01ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGTempUpperNormal:I

    .line 485
    const v1, 0x7f0b01ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGUpperHighLight:I

    .line 487
    const v1, 0x7f0b01f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGUpperNormal:I

    .line 490
    const v1, 0x7f0b01f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarKORHighLight:I

    .line 492
    const v1, 0x7f0b01f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBar123HighLight:I

    .line 493
    const v1, 0x7f0b01f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBar123Normal:I

    .line 495
    const v1, 0x7f0b01fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSYMHighLight:I

    .line 496
    const v1, 0x7f0b01fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSYMNormal:I

    .line 498
    return-void
.end method


# virtual methods
.method public getToggleStateForEnter(Landroid/view/inputmethod/EditorInfo;)I
    .locals 5
    .parameter "mEditorInfo"

    .prologue
    .line 511
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v4, 0x400000ff

    and-int v0, v3, v4

    .line 514
    .local v0, action:I
    const/4 v2, 0x0

    .line 516
    .local v2, toggleState:I
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 517
    iget v2, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateGo:I

    .line 533
    :cond_0
    :goto_0
    return v2

    .line 518
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 519
    iget v2, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateSearch:I

    goto :goto_0

    .line 520
    :cond_2
    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 521
    iget v2, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateSend:I

    goto :goto_0

    .line 522
    :cond_3
    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 523
    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const v4, 0xfff000

    and-int v1, v3, v4

    .line 524
    .local v1, f:I
    const/high16 v3, 0x2

    if-eq v1, v3, :cond_0

    const/high16 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 527
    iget v2, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateNext:I

    goto :goto_0

    .line 529
    .end local v1           #f:I
    :cond_4
    const/4 v3, 0x6

    if-ne v0, v3, :cond_0

    .line 530
    iget v2, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateDone:I

    goto :goto_0
.end method

.method public getToggleStateForZhuyinTone()I
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mtoggleTone:I

    return v0
.end method

.method public getToggleStates()Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    return-object v0
.end method

.method public getTooggleStateForCnCand()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnCand:I

    return v0
.end method

.method public prepareToggleStates(ZIILandroid/view/inputmethod/EditorInfo;)V
    .locals 18
    .parameter "needSkb"
    .parameter "mInputMode"
    .parameter "mRecentLauageInputMode"
    .parameter "mEditorInfo"

    .prologue
    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    .line 543
    if-nez p1, :cond_0

    .line 1148
    :goto_0
    return-void

    .line 544
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwerty:Z

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mKeyStatesNum:I

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mKeyStates:[I

    .line 548
    .local v10, states:[I
    const/4 v11, 0x0

    .line 550
    .local v11, statesNum:I
    const/high16 v16, 0xf

    and-int v8, p2, v16

    .line 551
    .local v8, language:I
    const/high16 v16, 0xf00

    and-int v9, p2, v16

    .line 552
    .local v9, layout:I
    const/high16 v16, 0xf0

    and-int v2, p2, v16

    .line 553
    .local v2, charcase:I
    move-object/from16 v0, p4

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v15, v0, 0xff0

    .line 554
    .local v15, variation:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    const/4 v6, 0x1

    .line 556
    .local v6, isLandscape:Z
    :goto_1
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v4

    .line 557
    .local v4, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isVoiceInstalled()Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getVoiceInput()Z

    move-result v16

    if-eqz v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SamsungIME;->isVoiceInputEnabled()Z

    move-result v16

    if-eqz v16, :cond_11

    const/4 v7, 0x1

    .line 559
    .local v7, isVoiceValid:Z
    :goto_2
    invoke-virtual {v4}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getDims()I

    move-result v3

    .line 561
    .local v3, dim:I
    const/high16 v16, 0x5000

    const/high16 v17, -0x1000

    and-int v17, v17, p2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_39

    .line 564
    const/high16 v16, 0x2

    move/from16 v0, v16

    if-ne v0, v8, :cond_15

    .line 565
    if-eqz v7, :cond_12

    const/16 v16, 0xa0

    move/from16 v0, v16

    if-eq v3, v0, :cond_12

    const/16 v16, 0x140

    move/from16 v0, v16

    if-eq v3, v0, :cond_12

    const/16 v16, 0xf0

    move/from16 v0, v16

    if-eq v3, v0, :cond_12

    const/16 v16, 0x1e0

    move/from16 v0, v16

    if-eq v3, v0, :cond_12

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 571
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnLanguage:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 572
    add-int/lit8 v11, v11, 0x1

    .line 575
    const/high16 v16, 0x100

    move/from16 v0, v16

    if-ne v0, v9, :cond_13

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwerty:Z

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    .line 707
    :cond_1
    :goto_4
    const/16 v16, 0x20

    move/from16 v0, v16

    if-ne v15, v0, :cond_29

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowEmailAddress:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setUrlSuffixShown(Z)V

    .line 726
    :cond_2
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isUrlSuffixShown()Z

    move-result v16

    if-eqz v16, :cond_2b

    .line 727
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleUrlSuffix:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 731
    :goto_6
    add-int/lit8 v11, v11, 0x1

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputMode()Z

    move-result v16

    if-eqz v16, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputCannotToggle()Z

    move-result v16

    if-nez v16, :cond_2c

    .line 734
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleKeyboard:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 738
    :goto_7
    add-int/lit8 v11, v11, 0x1

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbolLock()Z

    move-result v16

    if-nez v16, :cond_2d

    .line 742
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymbolUnlock:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 747
    :goto_8
    add-int/lit8 v11, v11, 0x1

    .line 750
    const/high16 v16, 0x100

    move/from16 v0, v16

    if-eq v0, v9, :cond_3

    const/high16 v16, 0x300

    move/from16 v0, v16

    if-eq v0, v9, :cond_3

    const/high16 v16, 0x400

    move/from16 v0, v16

    if-ne v0, v9, :cond_4

    .line 751
    :cond_3
    if-eqz v6, :cond_4

    .line 752
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggle123SymbolOneLine:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 753
    add-int/lit8 v11, v11, 0x1

    .line 757
    :cond_4
    invoke-static/range {p2 .. p2}, Lcom/samsung/inputmethod/SimeInputModeDef;->getHW123ModeState(I)Z

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2e

    .line 759
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggle123modeon:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 760
    add-int/lit8 v11, v11, 0x1

    .line 786
    :cond_5
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPointingOn()Z

    move-result v16

    if-nez v16, :cond_33

    .line 787
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHwrBoxPointingOn:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 791
    :goto_a
    add-int/lit8 v11, v11, 0x1

    .line 794
    const/high16 v16, 0x6000

    const/high16 v17, -0x1000

    and-int v17, v17, p2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_6

    const/high16 v16, 0x7000

    const/high16 v17, -0x1000

    and-int v17, v17, p2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 796
    :cond_6
    const/high16 v16, 0x3202

    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_34

    .line 797
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymStroke:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 814
    :goto_b
    add-int/lit8 v11, v11, 0x1

    .line 825
    :cond_7
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SamsungIME;->getMultiModalManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->updateMultiModalState()V

    .line 827
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getMultiModalStatus()I

    move-result v13

    .line 829
    .local v13, toggleState:I
    packed-switch v13, :pswitch_data_0

    .line 970
    :goto_d
    :pswitch_0
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->getToggleStateForEnter(Landroid/view/inputmethod/EditorInfo;)I

    move-result v13

    .line 971
    if-eqz v13, :cond_8

    .line 973
    aput v13, v10, v11

    .line 974
    add-int/lit8 v11, v11, 0x1

    .line 975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setEngterKeyNormalState(Z)V

    .line 981
    :cond_8
    invoke-static/range {p4 .. p4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLMode(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v16

    if-eqz v16, :cond_3a

    .line 982
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mtoggleUrlSymbol:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 983
    add-int/lit8 v11, v11, 0x1

    .line 992
    :cond_9
    :goto_e
    sget-boolean v16, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v16, :cond_f

    invoke-static/range {p2 .. p2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v16

    if-eqz v16, :cond_3b

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputNumSymOnly:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 1025
    :cond_a
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getToolbarModeMgr()Lcom/samsung/inputmethod/SimeToolBarModeMgr;

    move-result-object v14

    .line 1027
    .local v14, toolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;
    const/high16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_41

    .line 1028
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarPYNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1029
    add-int/lit8 v11, v11, 0x1

    .line 1036
    :cond_b
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v16

    if-eqz v16, :cond_44

    .line 1037
    const/16 v16, 0x100

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_42

    .line 1038
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGLowerNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1039
    add-int/lit8 v11, v11, 0x1

    .line 1064
    :cond_c
    :goto_11
    const/16 v16, 0x1000

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_d

    .line 1068
    :cond_d
    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_47

    .line 1070
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBar123Normal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1071
    add-int/lit8 v11, v11, 0x1

    .line 1078
    :cond_e
    :goto_12
    const/high16 v16, -0x1000

    and-int v16, v16, p2

    sparse-switch v16, :sswitch_data_0

    .line 1147
    .end local v14           #toolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;
    :cond_f
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput v11, v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mKeyStatesNum:I

    goto/16 :goto_0

    .line 554
    .end local v3           #dim:I
    .end local v4           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .end local v6           #isLandscape:Z
    .end local v7           #isVoiceValid:Z
    .end local v13           #toggleState:I
    :cond_10
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 557
    .restart local v4       #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .restart local v6       #isLandscape:Z
    :cond_11
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 569
    .restart local v3       #dim:I
    .restart local v7       #isVoiceValid:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_CN_NoVoice:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto/16 :goto_3

    .line 578
    :cond_13
    const/high16 v16, 0x200

    move/from16 v0, v16

    if-ne v0, v9, :cond_1

    .line 579
    const/high16 v16, 0x3202

    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_14

    .line 580
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mTogglePinyin34:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 581
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 582
    :cond_14
    const/high16 v16, 0x1202

    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 583
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStroke34:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 584
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 587
    :cond_15
    const/high16 v16, 0x4

    move/from16 v0, v16

    if-ne v0, v8, :cond_19

    .line 590
    if-eqz v7, :cond_16

    const/16 v16, 0xa0

    move/from16 v0, v16

    if-eq v3, v0, :cond_16

    const/16 v16, 0x140

    move/from16 v0, v16

    if-eq v3, v0, :cond_16

    const/16 v16, 0xf0

    move/from16 v0, v16

    if-eq v3, v0, :cond_16

    const/16 v16, 0x1e0

    move/from16 v0, v16

    if-eq v3, v0, :cond_16

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_Tw:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 595
    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnTwLanguage:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 596
    add-int/lit8 v11, v11, 0x1

    .line 599
    const/high16 v16, 0x100

    move/from16 v0, v16

    if-ne v0, v9, :cond_17

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwerty:Z

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    goto/16 :goto_4

    .line 594
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_TW_NoVoice:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto :goto_14

    .line 603
    :cond_17
    const/high16 v16, 0x200

    move/from16 v0, v16

    if-ne v0, v9, :cond_1

    .line 604
    const/high16 v16, 0x3204

    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_18

    .line 606
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateZhuyin_34:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 607
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 608
    :cond_18
    const/high16 v16, 0x2204

    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    .line 609
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateZhuyin_stroke_34:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 610
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 614
    :cond_19
    const/high16 v16, 0x5

    move/from16 v0, v16

    if-ne v0, v8, :cond_20

    .line 616
    if-eqz v7, :cond_1b

    const/16 v16, 0xa0

    move/from16 v0, v16

    if-eq v3, v0, :cond_1b

    const/16 v16, 0x140

    move/from16 v0, v16

    if-eq v3, v0, :cond_1b

    const/16 v16, 0xf0

    move/from16 v0, v16

    if-eq v3, v0, :cond_1b

    const/16 v16, 0x1e0

    move/from16 v0, v16

    if-eq v3, v0, :cond_1b

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_Hk:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 622
    :goto_15
    const/high16 v16, -0x6000

    const/high16 v17, -0x1000

    and-int v17, v17, p2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1c

    .line 623
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnHkQuickLanguage:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 624
    add-int/lit8 v11, v11, 0x1

    .line 636
    :cond_1a
    :goto_16
    const/high16 v16, 0x100

    move/from16 v0, v16

    if-ne v0, v9, :cond_1e

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwerty:Z

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    goto/16 :goto_4

    .line 620
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_HK_NoVoice:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto :goto_15

    .line 625
    :cond_1c
    const/high16 v16, -0x7000

    const/high16 v17, -0x1000

    and-int v17, v17, p2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1d

    .line 626
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnHkLanguage:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 627
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 628
    :cond_1d
    const/high16 v16, 0x3000

    const/high16 v17, -0x1000

    and-int v17, v17, p2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1a

    .line 629
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCnHkLanguage:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 630
    add-int/lit8 v11, v11, 0x1

    goto :goto_16

    .line 643
    :cond_1e
    const/high16 v16, 0x200

    move/from16 v0, v16

    if-ne v0, v9, :cond_1

    .line 644
    const/high16 v16, 0x3205

    move/from16 v0, v16

    move/from16 v1, p2

    if-ne v0, v1, :cond_1f

    .line 645
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCangjie_34:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 646
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 648
    :cond_1f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateCangjie_stroke_34:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 649
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 655
    :cond_20
    const/high16 v16, 0x1

    move/from16 v0, v16

    if-ne v0, v8, :cond_25

    .line 656
    if-eqz v7, :cond_21

    const/16 v16, 0xa0

    move/from16 v0, v16

    if-eq v3, v0, :cond_21

    const/16 v16, 0x140

    move/from16 v0, v16

    if-eq v3, v0, :cond_21

    const/16 v16, 0xf0

    move/from16 v0, v16

    if-eq v3, v0, :cond_21

    const/16 v16, 0x1e0

    move/from16 v0, v16

    if-eq v3, v0, :cond_21

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowEn:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 662
    :goto_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateEnLanguage:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 663
    add-int/lit8 v11, v11, 0x1

    .line 665
    const/high16 v16, 0x20

    move/from16 v0, v16

    if-ne v0, v2, :cond_22

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    .line 667
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleTempUpperCase:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 676
    :goto_18
    add-int/lit8 v11, v11, 0x1

    .line 678
    const/high16 v16, 0x100

    move/from16 v0, v16

    if-ne v0, v9, :cond_24

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwerty:Z

    goto/16 :goto_4

    .line 660
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_EN_NoVoice:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto :goto_17

    .line 668
    :cond_22
    const/high16 v16, 0x30

    move/from16 v0, v16

    if-ne v0, v2, :cond_23

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    .line 670
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleTempLowerCase:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto :goto_18

    .line 672
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    .line 673
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleLowerCase:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto :goto_18

    .line 680
    :cond_24
    const/high16 v16, 0x200

    move/from16 v0, v16

    if-ne v0, v9, :cond_1

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 683
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleT9:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 684
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 687
    :cond_25
    const/high16 v16, 0x3

    move/from16 v0, v16

    if-ne v0, v8, :cond_1

    .line 688
    if-eqz v7, :cond_27

    const/16 v16, 0xa0

    move/from16 v0, v16

    if-eq v3, v0, :cond_27

    const/16 v16, 0x140

    move/from16 v0, v16

    if-eq v3, v0, :cond_27

    const/16 v16, 0xf0

    move/from16 v0, v16

    if-eq v3, v0, :cond_27

    const/16 v16, 0x1e0

    move/from16 v0, v16

    if-eq v3, v0, :cond_27

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowKo:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 693
    :goto_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateKoLanguage:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 694
    add-int/lit8 v11, v11, 0x1

    .line 696
    const/high16 v16, 0x30

    move/from16 v0, v16

    if-eq v0, v2, :cond_26

    const/high16 v16, 0x20

    move/from16 v0, v16

    if-ne v0, v2, :cond_28

    .line 697
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    .line 698
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleTempLowerCase:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 704
    :goto_1a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4

    .line 692
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowCn_KO_NoVoice:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto :goto_19

    .line 700
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mQwertyUpperCase:Z

    .line 701
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleLowerCase:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto :goto_1a

    .line 710
    :cond_29
    const/16 v16, 0x10

    move/from16 v0, v16

    if-ne v15, v0, :cond_2

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleRowUri:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v5

    .line 714
    .local v5, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v5, :cond_2

    .line 715
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-interface {v5, v0, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v12

    .line 716
    .local v12, text:Ljava/lang/CharSequence;
    if-eqz v12, :cond_2a

    invoke-interface {v12}, Ljava/lang/CharSequence;->length()I

    move-result v16

    if-eqz v16, :cond_2a

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setUrlSuffixShown(Z)V

    goto/16 :goto_5

    .line 719
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->setUrlSuffixShown(Z)V

    goto/16 :goto_5

    .line 729
    .end local v5           #ic:Landroid/view/inputmethod/InputConnection;
    .end local v12           #text:Ljava/lang/CharSequence;
    :cond_2b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleUrlPrefix:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_6

    .line 736
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggle123:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_7

    .line 745
    :cond_2d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymbolLock:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_8

    .line 767
    :cond_2e
    const/high16 v16, 0x1

    move/from16 v0, v16

    if-ne v0, v8, :cond_2f

    .line 768
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteABCmode:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 769
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    .line 770
    :cond_2f
    const/high16 v16, 0x3

    move/from16 v0, v16

    if-ne v0, v8, :cond_30

    .line 771
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteKORmode:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 772
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    .line 773
    :cond_30
    const/high16 v16, 0x2

    move/from16 v0, v16

    if-ne v0, v8, :cond_31

    .line 774
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteCHNmode:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 775
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    .line 776
    :cond_31
    const/high16 v16, 0x4

    move/from16 v0, v16

    if-ne v0, v8, :cond_32

    .line 777
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteTWmode:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 778
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    .line 779
    :cond_32
    const/high16 v16, 0x5

    move/from16 v0, v16

    if-ne v0, v8, :cond_5

    .line 780
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHandwriteHKmode:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 781
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    .line 789
    :cond_33
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleHwrBoxPointingOff:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_a

    .line 798
    :cond_34
    const/high16 v16, 0x1202

    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_35

    .line 799
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymPinyin:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_b

    .line 800
    :cond_35
    const/high16 v16, 0x1203

    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_36

    .line 801
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymKorean:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_b

    .line 805
    :cond_36
    const/high16 v16, 0x3204

    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_37

    .line 806
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymZhuyin:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_b

    .line 807
    :cond_37
    const/high16 v16, 0x3205

    move/from16 v0, v16

    move/from16 v1, p3

    if-ne v0, v1, :cond_38

    .line 808
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymCangjie:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_b

    .line 812
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleSymEnglish:I

    move/from16 v16, v0

    aput v16, v10, v11

    goto/16 :goto_b

    .line 817
    :cond_39
    const/high16 v16, 0x20

    move/from16 v0, v16

    if-ne v0, v2, :cond_7

    .line 818
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStatePhoneSym:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 819
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_c

    .line 832
    .restart local v13       #toggleState:I
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Settings:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 833
    add-int/lit8 v11, v11, 0x1

    .line 834
    goto/16 :goto_d

    .line 837
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Clipboard:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 838
    add-int/lit8 v11, v11, 0x1

    .line 839
    goto/16 :goto_d

    .line 842
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Handwriting:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 843
    add-int/lit8 v11, v11, 0x1

    .line 844
    goto/16 :goto_d

    .line 849
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 850
    add-int/lit8 v11, v11, 0x1

    .line 859
    goto/16 :goto_d

    .line 861
    :pswitch_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Ocr:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 862
    add-int/lit8 v11, v11, 0x1

    .line 863
    goto/16 :goto_d

    .line 866
    :pswitch_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Comma:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 867
    add-int/lit8 v11, v11, 0x1

    .line 868
    goto/16 :goto_d

    .line 871
    :pswitch_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Question:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 872
    add-int/lit8 v11, v11, 0x1

    .line 873
    goto/16 :goto_d

    .line 876
    :pswitch_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Exclamation:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 877
    add-int/lit8 v11, v11, 0x1

    .line 878
    goto/16 :goto_d

    .line 881
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Quotation:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 882
    add-int/lit8 v11, v11, 0x1

    .line 883
    goto/16 :goto_d

    .line 886
    :pswitch_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Settings_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 887
    add-int/lit8 v11, v11, 0x1

    .line 888
    goto/16 :goto_d

    .line 891
    :pswitch_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Clipboard_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 892
    add-int/lit8 v11, v11, 0x1

    .line 893
    goto/16 :goto_d

    .line 896
    :pswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Handwriting_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 897
    add-int/lit8 v11, v11, 0x1

    .line 898
    goto/16 :goto_d

    .line 901
    :pswitch_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Ocr_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 902
    add-int/lit8 v11, v11, 0x1

    .line 903
    goto/16 :goto_d

    .line 906
    :pswitch_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Comma_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 907
    add-int/lit8 v11, v11, 0x1

    .line 908
    goto/16 :goto_d

    .line 911
    :pswitch_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Question_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 912
    add-int/lit8 v11, v11, 0x1

    .line 913
    goto/16 :goto_d

    .line 916
    :pswitch_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Exclamation_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 917
    add-int/lit8 v11, v11, 0x1

    .line 918
    goto/16 :goto_d

    .line 921
    :pswitch_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Quotation_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 922
    add-int/lit8 v11, v11, 0x1

    .line 923
    goto/16 :goto_d

    .line 927
    :pswitch_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Floating:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 929
    add-int/lit8 v11, v11, 0x1

    .line 931
    goto/16 :goto_d

    .line 937
    :pswitch_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStateMultiModal_Floating_voice:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 939
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_d

    .line 985
    :cond_3a
    invoke-static/range {p4 .. p4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor(Landroid/view/inputmethod/EditorInfo;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 986
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mtoggleEmailSymbol:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 987
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_e

    .line 999
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isNumOnly()Z

    move-result v16

    if-eqz v16, :cond_3c

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputNUMOnly:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto/16 :goto_f

    .line 1003
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEngNumSymModeOnly()Z

    move-result v16

    if-eqz v16, :cond_3d

    .line 1006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageENGONLY:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto/16 :goto_f

    .line 1007
    :cond_3d
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v16

    if-eqz v16, :cond_3e

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v16

    if-eqz v16, :cond_3e

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageBOTH:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto/16 :goto_f

    .line 1011
    :cond_3e
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v16

    if-eqz v16, :cond_3f

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageKOR:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto/16 :goto_f

    .line 1015
    :cond_3f
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v16

    if-eqz v16, :cond_40

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageCHN:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto/16 :goto_f

    .line 1020
    :cond_40
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageKorean()Z

    move-result v16

    if-nez v16, :cond_a

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getLanguageChinese()Z

    move-result v16

    if-nez v16, :cond_a

    .line 1022
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleStates:Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleInputLanguageENGONLY:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbToggleStates;->mRowIdToEnable:I

    goto/16 :goto_f

    .line 1030
    .restart local v14       #toolbarModeMgr:Lcom/samsung/inputmethod/SimeToolBarModeMgr;
    :cond_41
    const/high16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1031
    const-string v16, "SimeToggleStatesMgr"

    const-string v17, "---------AAAAAAAAAAAAAaaaaa"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSTRNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1033
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_10

    .line 1041
    :cond_42
    const/16 v16, 0x200

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_43

    .line 1042
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGTempUpperNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1043
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1045
    :cond_43
    const/16 v16, 0x300

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 1046
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGUpperNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1047
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1051
    :cond_44
    const/16 v16, 0x100

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_45

    .line 1052
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCLowerNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1053
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1054
    :cond_45
    const/16 v16, 0x200

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_46

    .line 1055
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCTempUpperNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1056
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1058
    :cond_46
    const/16 v16, 0x300

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 1059
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCUpperNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1060
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_11

    .line 1073
    :cond_47
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/samsung/inputmethod/SimeToolBarModeMgr;->isToolBarDisplay(I)Z

    move-result v16

    if-eqz v16, :cond_e

    .line 1074
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSYMNormal:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1075
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_12

    .line 1080
    :sswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSTRHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1081
    add-int/lit8 v11, v11, 0x1

    .line 1082
    goto/16 :goto_13

    .line 1084
    :sswitch_1
    const/high16 v16, 0x2

    move/from16 v0, v16

    if-eq v8, v0, :cond_48

    const/high16 v16, 0x4

    move/from16 v0, v16

    if-ne v8, v0, :cond_49

    .line 1086
    :cond_48
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarPYHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1087
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    .line 1088
    :cond_49
    const/high16 v16, 0x3

    move/from16 v0, v16

    if-ne v8, v0, :cond_4a

    .line 1089
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarKORHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1090
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    .line 1091
    :cond_4a
    const/high16 v16, 0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_f

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v16

    if-eqz v16, :cond_4d

    .line 1093
    const/high16 v16, 0x20

    move/from16 v0, v16

    if-ne v0, v2, :cond_4b

    .line 1094
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGUpperHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1095
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    .line 1096
    :cond_4b
    const/high16 v16, 0x30

    move/from16 v0, v16

    if-ne v0, v2, :cond_4c

    .line 1097
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGTempUpperHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1098
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    .line 1099
    :cond_4c
    const/high16 v16, 0x10

    move/from16 v0, v16

    if-ne v0, v2, :cond_f

    .line 1100
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarENGLowerHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1101
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    .line 1104
    :cond_4d
    const/high16 v16, 0x20

    move/from16 v0, v16

    if-ne v0, v2, :cond_4e

    .line 1105
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCUpperHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1106
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    .line 1107
    :cond_4e
    const/high16 v16, 0x30

    move/from16 v0, v16

    if-ne v0, v2, :cond_4f

    .line 1108
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCTempUpperHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1109
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    .line 1110
    :cond_4f
    const/high16 v16, 0x10

    move/from16 v0, v16

    if-ne v0, v2, :cond_f

    .line 1111
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarABCLowerHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1112
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    .line 1118
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSYMHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1119
    add-int/lit8 v11, v11, 0x1

    .line 1120
    goto/16 :goto_13

    .line 1122
    :sswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBar123HighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1123
    add-int/lit8 v11, v11, 0x1

    .line 1124
    goto/16 :goto_13

    .line 1128
    :sswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBar123HighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1129
    add-int/lit8 v11, v11, 0x1

    .line 1130
    goto/16 :goto_13

    .line 1133
    :sswitch_5
    const/high16 v16, 0xf0

    and-int v16, v16, p2

    const/high16 v17, 0x20

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_50

    .line 1134
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBarSYMHighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1135
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_13

    .line 1137
    :cond_50
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/inputmethod/SimeToggleStatesMgr;->mToggleToolBar123HighLight:I

    move/from16 v16, v0

    aput v16, v10, v11

    .line 1138
    add-int/lit8 v11, v11, 0x1

    .line 1140
    goto/16 :goto_13

    .line 829
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_12
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_13
    .end packed-switch

    .line 1078
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_4
        0x10000000 -> :sswitch_1
        0x30000000 -> :sswitch_0
        0x50000000 -> :sswitch_5
        0x60000000 -> :sswitch_2
        0x70000000 -> :sswitch_3
    .end sparse-switch
.end method
