.class public Lcom/samsung/inputmethod/SamsungIME;
.super Landroid/inputmethodservice/InputMethodService;
.source "SamsungIME.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/SamsungIME$ImeState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final FOLDER_STATE_ACTION:Ljava/lang/String; = "KeyEvent.FolderOpenState"

.field private static final IMM_PRIV_COMMAND_DOUBLETAP:Ljava/lang/String; = "com.swype.android.inputmethod/cmd_doubletap"

.field private static final IMM_PRIV_COMMAND_TAP:Ljava/lang/String; = "com.swype.android.inputmethod/cmd_tap"

.field private static final MSG_DELAY_COMMIT_COMPOSING:I = 0x0

.field private static NOTIFICATION_HEIGHT:I = 0x0

.field private static final PRIV_COMMAND_HIDE_CURSORCONTROL:Ljava/lang/String; = "com.samsung.inputmethod/cmd_hide_cursorcontrol"

.field private static final PRIV_COMMAND_HIDE_IM_PICKER:Ljava/lang/String; = "com.samsung.inputmethod/hide_im_picker"

.field private static final PRIV_COMMAND_SHOW_CURSORCONTROL:Ljava/lang/String; = "com.samsung.inputmethod/cmd_show_cursorcontrol"

.field private static final PRIV_COMMAND_SHOW_IM_PICKER:Ljava/lang/String; = "com.samsung.inputmethod/show_im_picker"

.field private static final SAMSUNGIME_PRIV_COMMAND_DOUBLETAP:Ljava/lang/String; = "com.samsung.inputmethod/cmd_doubletap"

.field private static final SAMSUNGIME_PRIV_COMMAND_TAP:Ljava/lang/String; = "com.samsung.inputmethod/cmd_tap"

.field public static final SHOW_TUTORIAL_DIALOG:I = 0x0

.field private static final SPAN_UNDERLINE:Landroid/text/style/CharacterStyle; = null

.field private static final TAG:Ljava/lang/String; = "SamsungIME"

.field private static final bCharacterUseDefaultStyle:Z

.field public static isFolderOpen:Z

.field private static mCandidatesView:Landroid/view/View;

.field private static mInstance:Lcom/samsung/inputmethod/SamsungIME;


# instance fields
.field private bKeyChangedStateToToolbar:Z

.field private composingStringInEdit:Landroid/text/SpannableStringBuilder;

.field private isConfigureChange:Z

.field private isLongKey:Z

.field private mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

.field private mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

.field private mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

.field private mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

.field private mDefaultCandidatesContainer:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

.field private mDialogMgr:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

.field private mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mEventNotifierList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/inputmethod/SimeEventNotifier;",
            ">;"
        }
    .end annotation
.end field

.field private mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

.field private mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mInputView:Landroid/view/View;

.field private mIntentProcessor:Lcom/samsung/inputmethod/SimIntentProcessor;

.field private mIsFloatingKeyboardForMultiWindow:Z

.field private mKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

.field private mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

.field private mLongPressed:Z

.field private mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

.field private mMultiModalManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

.field private mOCR:Lcom/samsung/inputmethod/SimeOCR;

.field private mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

.field private mProcessedDownKeySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShowTutorial:Z

.field private mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

.field private mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

.field private mSkbFloatingTutorial:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

.field private mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

.field private mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

.field private myToast:Lcom/samsung/inputmethod/comm/SimeToast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/SamsungIME;->SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

    .line 254
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/inputmethod/SamsungIME;->isFolderOpen:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Landroid/inputmethodservice/InputMethodService;-><init>()V

    .line 104
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->composingStringInEdit:Landroid/text/SpannableStringBuilder;

    .line 110
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->isConfigureChange:Z

    .line 117
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mShowTutorial:Z

    .line 119
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->bKeyChangedStateToToolbar:Z

    .line 121
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->isLongKey:Z

    .line 123
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mLongPressed:Z

    .line 126
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mProcessedDownKeySet:Ljava/util/HashSet;

    .line 147
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mEventNotifierList:Ljava/util/ArrayList;

    .line 228
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 230
    iput-boolean v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsFloatingKeyboardForMultiWindow:Z

    .line 236
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    return-void
.end method

.method private bNeedShowTutorial()Z
    .locals 1

    .prologue
    .line 2464
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mShowTutorial:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getShowToturial()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSingleKeypadType()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeToToolBarMode()Z
    .locals 2

    .prologue
    .line 2920
    const/4 v0, 0x0

    .line 2922
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2923
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 2925
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->changeToToolBarSKB()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 2926
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2928
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->requestShowSelf()V

    .line 2936
    :goto_0
    const/4 v0, 0x1

    .line 2940
    :cond_0
    return v0

    .line 2932
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_0
.end method

.method private dismissCandidateWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1894
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    if-nez v0, :cond_1

    .line 1925
    :cond_0
    :goto_0
    return-void

    .line 1897
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->resetAll()V

    .line 1899
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1900
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->dismissRealCandidates()V

    .line 1901
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    .line 1914
    :goto_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v0, :cond_2

    .line 1915
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 1918
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    if-eqz v0, :cond_3

    .line 1919
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->delayedDismiss(J)V

    .line 1922
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1923
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleCandidateMode(Z)V

    goto :goto_0

    .line 1904
    :cond_4
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isKeyGuardScreen()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1906
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->dismissRealCandidates()V

    .line 1907
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyToolBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto :goto_1

    .line 1911
    :cond_5
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesViewShown(Z)V

    goto :goto_1
.end method

.method public static getCurrentCandView()Landroid/view/View;
    .locals 1

    .prologue
    .line 2910
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME;->mCandidatesView:Landroid/view/View;

    return-object v0
.end method

.method public static getInstance()Lcom/samsung/inputmethod/SamsungIME;
    .locals 1

    .prologue
    .line 336
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME;->mInstance:Lcom/samsung/inputmethod/SamsungIME;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v0}, Lcom/samsung/inputmethod/SamsungIME;-><init>()V

    sput-object v0, Lcom/samsung/inputmethod/SamsungIME;->mInstance:Lcom/samsung/inputmethod/SamsungIME;

    .line 339
    :cond_0
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME;->mInstance:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method public static hasHardKeyboard()Z
    .locals 1

    .prologue
    .line 2700
    const/4 v0, 0x0

    .line 2708
    .local v0, hasHardKeyboard:Z
    return v0
.end method

.method private isActionKeyCode(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/16 v5, 0x36

    const/16 v4, 0x1d

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2986
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2987
    .local v0, keyCode:I
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyZhuyin()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2988
    if-lt v0, v4, :cond_0

    if-le v0, v5, :cond_2

    :cond_0
    const/4 v3, 0x7

    if-lt v0, v3, :cond_1

    const/16 v3, 0x10

    if-le v0, v3, :cond_2

    :cond_1
    const/16 v3, 0x45

    if-eq v0, v3, :cond_2

    const/16 v3, 0x4a

    if-eq v0, v3, :cond_2

    const/16 v3, 0x37

    if-eq v0, v3, :cond_2

    const/16 v3, 0x38

    if-eq v0, v3, :cond_2

    const/16 v3, 0x4c

    if-ne v0, v3, :cond_3

    .line 2995
    :cond_2
    :goto_0
    return v1

    :cond_3
    move v1, v2

    .line 2988
    goto :goto_0

    .line 2995
    :cond_4
    if-lt v0, v4, :cond_5

    if-le v0, v5, :cond_2

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method private isDigitStr(Ljava/lang/String;)Z
    .locals 2
    .parameter "inputStr"

    .prologue
    .line 1283
    const/4 v0, 0x0

    .line 1284
    .local v0, bRet:Z
    const-string v1, "1"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "4"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "5"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "6"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "7"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "8"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "9"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1294
    :cond_0
    const/4 v0, 0x1

    .line 1296
    :cond_1
    return v0
.end method

.method private isEditorTypeNull()Z
    .locals 1

    .prologue
    .line 1000
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHardKey(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 1012
    const/4 v0, 0x0

    .line 1013
    .local v0, bRet:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1015
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    const/16 v2, 0x10

    if-le v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x11

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12

    if-ne v1, v2, :cond_2

    .line 1019
    :cond_1
    const/4 v0, 0x1

    .line 1020
    :cond_2
    return v0
.end method

.method private isNumHardKey(Landroid/view/KeyEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    .line 1024
    const/4 v0, 0x0

    .line 1025
    .local v0, bRet:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1027
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    const/16 v2, 0x10

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1030
    :goto_0
    return v0

    .line 1027
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSystemKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1036
    const/4 v0, 0x0

    .line 1037
    .local v0, bRet:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 1039
    .local v1, keyCode:I
    const/16 v2, 0x52

    if-eq v2, v1, :cond_0

    const/4 v2, 0x3

    if-eq v2, v1, :cond_0

    const/16 v2, 0x18

    if-eq v2, v1, :cond_0

    const/16 v2, 0x19

    if-ne v2, v1, :cond_1

    .line 1043
    :cond_0
    const/4 v0, 0x1

    .line 1045
    :cond_1
    return v0
.end method

.method private notifyEvent(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .parameter "event"
    .parameter "param1"
    .parameter "param2"

    .prologue
    .line 1943
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mEventNotifierList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1944
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mEventNotifierList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/SimeEventNotifier;

    .line 1945
    .local v1, notifier:Lcom/samsung/inputmethod/SimeEventNotifier;
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/inputmethod/SimeEventNotifier;->handleEvent(ILjava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    .line 1947
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #notifier:Lcom/samsung/inputmethod/SimeEventNotifier;
    :cond_0
    return-void
.end method

.method private printDownKey()V
    .locals 0

    .prologue
    .line 604
    return-void
.end method

.method private processKey(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"
    .parameter "isDown"

    .prologue
    const/4 v5, 0x0

    .line 818
    const/4 v0, 0x0

    .line 819
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    .line 820
    .local v2, ei:Landroid/view/inputmethod/EditorInfo;
    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->getRepeatCount()I

    move-result v1

    .line 822
    .local v1, count:I
    const/16 v3, 0x70

    if-ne v3, p1, :cond_1

    .line 996
    :cond_0
    :goto_0
    return v0

    .line 826
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isSystemKey(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 830
    invoke-virtual {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_2

    iget v3, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-nez v3, :cond_3

    :cond_2
    const/16 v3, 0xe5

    if-eq p1, v3, :cond_3

    const/16 v3, 0xe3

    if-eq p1, v3, :cond_3

    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x3e

    if-ne p1, v3, :cond_0

    .line 841
    :cond_3
    if-eqz p3, :cond_c

    .line 843
    if-nez v1, :cond_8

    .line 845
    iput-boolean v5, p0, Lcom/samsung/inputmethod/SamsungIME;->isLongKey:Z

    .line 846
    iput-boolean v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mLongPressed:Z

    .line 850
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isHardKey(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 854
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v3, :cond_4

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v3, :cond_4

    .line 856
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/SamsungIME;->toolBarModePreCheck(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 862
    :cond_4
    invoke-virtual {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isSoftKey(Landroid/view/KeyEvent;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isActionKeyCode(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 865
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 866
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->changeInputModeByKeyboard()V

    .line 867
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 868
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v3, :cond_6

    .line 869
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 876
    :cond_6
    if-nez v0, :cond_7

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processKeyDown(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 879
    const/4 v0, 0x1

    .line 921
    :cond_7
    :goto_1
    if-eqz v0, :cond_0

    .line 925
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mProcessedDownKeySet:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 926
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->printDownKey()V

    goto/16 :goto_0

    .line 883
    :cond_8
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/samsung/inputmethod/SamsungIME;->isLongKey:Z

    .line 886
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v3, :cond_b

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v3, :cond_b

    .line 891
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/SamsungIME;->toolBarModePreCheck(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 892
    if-nez v0, :cond_7

    .line 895
    iget-boolean v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mLongPressed:Z

    if-nez v3, :cond_9

    .line 896
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/SamsungIME;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mLongPressed:Z

    .line 898
    :cond_9
    iget-boolean v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mLongPressed:Z

    if-eqz v3, :cond_a

    .line 902
    iput-boolean v5, p0, Lcom/samsung/inputmethod/SamsungIME;->bKeyChangedStateToToolbar:Z

    .line 903
    const/4 v0, 0x1

    goto :goto_1

    .line 906
    :cond_a
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processKeyDown(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 908
    const/4 v0, 0x1

    goto :goto_1

    .line 914
    :cond_b
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processKeyDown(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 915
    const/4 v0, 0x1

    goto :goto_1

    .line 933
    :cond_c
    iget-boolean v3, p0, Lcom/samsung/inputmethod/SamsungIME;->isLongKey:Z

    if-eqz v3, :cond_f

    iget-boolean v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mLongPressed:Z

    if-eqz v3, :cond_f

    .line 936
    const/4 v0, 0x1

    .line 967
    :cond_d
    :goto_2
    if-eqz v0, :cond_0

    .line 973
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbol()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 974
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbolLock()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 977
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v3, v4, :cond_e

    .line 978
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 988
    :cond_e
    :goto_3
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mProcessedDownKeySet:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 989
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->printDownKey()V

    goto/16 :goto_0

    .line 938
    :cond_f
    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_10

    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_11

    .line 939
    :cond_10
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processKeyUp(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 940
    const/4 v0, 0x1

    goto :goto_2

    .line 946
    :cond_11
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mProcessedDownKeySet:Ljava/util/HashSet;

    invoke-virtual {p2}, Lcom/samsung/inputmethod/SimeKeyEvent;->getKeyCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 950
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processKeyUp(Lcom/samsung/inputmethod/SimeKeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 951
    const/4 v0, 0x1

    .line 954
    :cond_12
    if-nez v0, :cond_d

    .line 957
    const/4 v0, 0x1

    goto :goto_2

    .line 980
    :cond_13
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 982
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 983
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_3
.end method

.method private requestToShowToolBar()Z
    .locals 2

    .prologue
    .line 2272
    const/4 v0, 0x0

    .line 2273
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->isEditorTypeNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2276
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->requestShowSelf()V

    .line 2277
    const/4 v0, 0x1

    .line 2281
    :cond_0
    return v0
.end method

.method private toolBarModePreCheck(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 609
    const/4 v0, 0x0

    .line 611
    .local v0, bRet:Z
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 614
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isHardKey(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 616
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 617
    const/4 v0, 0x1

    .line 629
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 631
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->changeToToolBarMode()Z

    move-result v2

    .line 635
    .local v2, isChangedToToolbar:Z
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isNumHardKey(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 637
    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->isEditorTypeNull()Z

    move-result v3

    if-nez v3, :cond_1

    .line 641
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->requestToShowToolBar()Z

    .line 671
    .end local v2           #isChangedToToolbar:Z
    :cond_1
    :goto_1
    return v0

    .line 620
    :cond_2
    const-string v3, "clipboardEx"

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    .line 621
    .local v1, clipboard:Landroid/sec/clipboard/ClipboardExManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    const/4 v0, 0x1

    goto :goto_0

    .line 645
    .end local v1           #clipboard:Landroid/sec/clipboard/ClipboardExManager;
    .restart local v2       #isChangedToToolbar:Z
    :cond_3
    if-eqz v2, :cond_4

    .line 648
    iput-boolean v5, p0, Lcom/samsung/inputmethod/SamsungIME;->bKeyChangedStateToToolbar:Z

    .line 651
    const/4 v0, 0x1

    goto :goto_1

    .line 652
    :cond_4
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->requestToShowToolBar()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 655
    iput-boolean v5, p0, Lcom/samsung/inputmethod/SamsungIME;->bKeyChangedStateToToolbar:Z

    .line 658
    const/4 v0, 0x1

    goto :goto_1

    .line 667
    .end local v2           #isChangedToToolbar:Z
    :cond_5
    iget-boolean v3, p0, Lcom/samsung/inputmethod/SamsungIME;->bKeyChangedStateToToolbar:Z

    if-eqz v3, :cond_1

    .line 668
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private updateStatusBarHeight()V
    .locals 3

    .prologue
    .line 2396
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2397
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 2398
    .local v1, rootView:Landroid/view/View;
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2399
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 2400
    iget v2, v0, Landroid/graphics/Rect;->top:I

    sput v2, Lcom/samsung/inputmethod/SamsungIME;->NOTIFICATION_HEIGHT:I

    .line 2402
    .end local v0           #r:Landroid/graphics/Rect;
    .end local v1           #rootView:Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public SetAutoCaptialization(Z)V
    .locals 6
    .parameter "bEnable"

    .prologue
    const v5, 0x12110001

    const/high16 v4, 0x1211

    const/high16 v3, 0x1111

    .line 2751
    const/4 v0, -0x1

    .line 2752
    .local v0, USERDEF_KEYCODE_SHIFT_1:I
    const/4 v1, 0x0

    .line 2753
    .local v1, bUpdateInputMode:Z
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextAbsUpperCaseWithSkb()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2796
    :cond_0
    :goto_0
    return-void

    .line 2759
    :cond_1
    if-eqz p1, :cond_3

    .line 2760
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isNeedAutoCapitalization()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextTempUpperCaseWithSkb()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2761
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 2762
    const/4 v1, 0x1

    .line 2789
    :cond_2
    :goto_1
    if-eqz v1, :cond_0

    .line 2790
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v2, :cond_0

    .line 2791
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_0

    .line 2765
    :cond_3
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfigureState()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2766
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34English()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2767
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    invoke-static {v2}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2768
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    if-eq v2, v5, :cond_2

    .line 2769
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 2770
    const/4 v1, 0x1

    goto :goto_1

    .line 2773
    :cond_4
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    if-eq v2, v4, :cond_2

    .line 2774
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 2775
    const/4 v1, 0x1

    goto :goto_1

    .line 2780
    :cond_5
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyEnglish()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2781
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 2782
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 2783
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public SetFloatingKeyboardForMultiWindow(Z)V
    .locals 2
    .parameter "isFloatingKeyboardForMultiWindow"

    .prologue
    .line 285
    iput-boolean p1, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsFloatingKeyboardForMultiWindow:Z

    .line 289
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    if-eqz v0, :cond_0

    .line 290
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsFloatingKeyboardForMultiWindow:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-eqz v0, :cond_2

    .line 291
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->setKeyboardType(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;)V

    .line 292
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 301
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->DecideHandwriteMode()V

    .line 308
    :cond_1
    return-void

    .line 294
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->setKeyboardType(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;)V

    .line 296
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 297
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_0
.end method

.method public UpdateSkbContainer()V
    .locals 1

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode2()V

    .line 1050
    return-void
.end method

.method public addEventNotifier(Lcom/samsung/inputmethod/SimeEventNotifier;)V
    .locals 1
    .parameter "notifier"

    .prologue
    .line 1938
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mEventNotifierList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1939
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mEventNotifierList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1941
    :cond_0
    return-void
.end method

.method public autoCapitalization()V
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2799
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2800
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-nez v1, :cond_1

    .line 2840
    :cond_0
    :goto_0
    return-void

    .line 2802
    :cond_1
    const/4 v2, 0x0

    .line 2803
    .local v2, isEnglish34OneKey:Z
    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34English()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getSimeKProcEnglish()Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    move-result-object v6

    if-ne v5, v6, :cond_2

    .line 2805
    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getSimeKProcEnglish()Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->getCommitHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2806
    const/4 v2, 0x1

    .line 2809
    :cond_2
    if-nez v2, :cond_0

    .line 2813
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getAutoCapitalization()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34English()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyEnglish()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2814
    :cond_3
    invoke-interface {v1, v9, v7}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2815
    .local v4, text:Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    .line 2817
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2819
    .local v3, preEdit:Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v9, :cond_5

    const-string v5, ". "

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "? "

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "! "

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_5

    .line 2821
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->SetAutoCaptialization(Z)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2834
    :catch_0
    move-exception v0

    .line 2835
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v5, "SamsungIME"

    const-string v6, "IndexOutOfBounds"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2822
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v5, v8, :cond_6

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v10, :cond_6

    .line 2823
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->SetAutoCaptialization(Z)V

    goto/16 :goto_0

    .line 2824
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_7

    .line 2825
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->SetAutoCaptialization(Z)V

    goto/16 :goto_0

    .line 2826
    :cond_7
    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextTempUpperCaseWithSkb()Z

    move-result v5

    if-eqz v5, :cond_8

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_0

    .line 2831
    :cond_8
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->SetAutoCaptialization(Z)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public changeInputModeByKeyboard()V
    .locals 2

    .prologue
    .line 2971
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2972
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1111

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 2982
    :cond_0
    :goto_0
    return-void

    .line 2973
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2974
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1102

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_0

    .line 2975
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2976
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x2104

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_0

    .line 2977
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2978
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, -0x6efb

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_0

    .line 2979
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2980
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/high16 v1, 0x1113

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    goto :goto_0
.end method

.method public changeToStateCommitSelection(Z)V
    .locals 2
    .parameter "updateUi"

    .prologue
    .line 1054
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 1056
    if-nez p1, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1058
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleCandidateMode(Z)V

    goto :goto_0
.end method

.method public changeToStateInput(Z)V
    .locals 2
    .parameter "updateUi"

    .prologue
    .line 1066
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 1068
    if-nez p1, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getActiveDec()Lcom/samsung/inputmethod/decoder/SimeDecAbstract;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecAbstract;->getComposingStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 1076
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleCandidateMode(Z)V

    goto :goto_0

    .line 1078
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleCandidateMode(Z)V

    goto :goto_0
.end method

.method public changeToStatePredict(Z)V
    .locals 2
    .parameter "updateUi"

    .prologue
    .line 1084
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 1085
    if-nez p1, :cond_1

    .line 1091
    :cond_0
    :goto_0
    return-void

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleCandidateMode(Z)V

    goto :goto_0
.end method

.method public commitResultText(Ljava/lang/String;)V
    .locals 3
    .parameter "resultText"

    .prologue
    .line 1099
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1100
    :cond_0
    const-string p1, ""

    .line 1102
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1103
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_6

    .line 1105
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 1107
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1108
    const-string v1, "SamsungIME"

    const-string v2, "commitResultText commitText getCurrentInputConnection()=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v1, :cond_4

    .line 1121
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 1122
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1124
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->reset34SplCandidates()V

    .line 1127
    :cond_4
    return-void

    .line 1112
    :cond_5
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1113
    const-string v1, "SamsungIME"

    const-string v2, "commitResultText finishComposingText getCurrentInputConnection()=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1118
    :cond_6
    const-string v1, "SamsungIME"

    const-string v2, "commitResultText getCurrentInputConnection()=null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public commitResultText(Ljava/lang/String;I)V
    .locals 2
    .parameter "resultText"
    .parameter "newCursorPosition"

    .prologue
    .line 1146
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1147
    :cond_0
    const-string p1, ""

    .line 1149
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1150
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    .line 1151
    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1152
    const-string v1, ""

    invoke-interface {v0, v1, p2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1155
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v1, :cond_4

    .line 1156
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 1157
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1159
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->reset34SplCandidates()V

    .line 1162
    :cond_4
    return-void
.end method

.method public commitResultText(Ljava/lang/String;Z)V
    .locals 2
    .parameter "resultText"
    .parameter "isDirectInput"

    .prologue
    .line 1131
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1132
    :cond_0
    const-string p1, ""

    .line 1134
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1135
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1136
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    .line 1137
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 1138
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isZhuyinMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1140
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->reset34SplCandidates()V

    .line 1143
    :cond_4
    return-void
.end method

.method public dispatchExtractViewEvent(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 2425
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->updateStatusBarHeight()V

    .line 2426
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2427
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isFullscreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2428
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v3, Lcom/samsung/inputmethod/SamsungIME;->NOTIFICATION_HEIGHT:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2429
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 2430
    .local v0, me:Landroid/view/MotionEvent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2431
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2432
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2433
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2436
    .end local v0           #me:Landroid/view/MotionEvent;
    :cond_0
    return-void
.end method

.method public dispatchTouchEventFromPalette(Landroid/view/MotionEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 2405
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->updateStatusBarHeight()V

    .line 2406
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2408
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isFullscreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2409
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 2410
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sget v3, Lcom/samsung/inputmethod/SamsungIME;->NOTIFICATION_HEIGHT:I

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 2411
    .local v1, ht:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2414
    .end local v0           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .end local v1           #ht:F
    :cond_0
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isShown()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2415
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2421
    :cond_1
    :goto_0
    return-void

    .line 2417
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2418
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    return-object v0
.end method

.method public getCurrentWindowHeight()I
    .locals 2

    .prologue
    .line 2368
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2369
    const/4 v0, 0x0

    .line 2370
    .local v0, nCandidateViewHeight:I
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeightCandidatesShowing()I

    move-result v0

    .line 2371
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v1

    add-int/2addr v1, v0

    .line 2373
    .end local v0           #nCandidateViewHeight:I
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentmSkbContainerHeight()I
    .locals 1

    .prologue
    .line 2519
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2520
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v0

    .line 2522
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    return-object v0
.end method

.method public getDefaultCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDefaultCandidatesContainer:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    return-object v0
.end method

.method public getDialogMgr()Lcom/samsung/inputmethod/dialog/SimeDialogManager;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDialogMgr:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    return-object v0
.end method

.method public getEnvironment()Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .locals 1

    .prologue
    .line 3031
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    return-object v0
.end method

.method public getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;
    .locals 1

    .prologue
    .line 2646
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    return-object v0
.end method

.method public getInputConnection()Landroid/view/inputmethod/InputConnection;
    .locals 1

    .prologue
    .line 2731
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    return-object v0
.end method

.method public getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    return-object v0
.end method

.method public getMiniPopupWindow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;
    .locals 1

    .prologue
    .line 2650
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    return-object v0
.end method

.method public getMultiModalManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMultiModalManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

    return-object v0
.end method

.method public getOCRProcessor()Lcom/samsung/inputmethod/SimeOCR;
    .locals 1

    .prologue
    .line 2847
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mOCR:Lcom/samsung/inputmethod/SimeOCR;

    return-object v0
.end method

.method public getOneHandContainer()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    if-nez v0, :cond_0

    .line 322
    const-string v0, "SamsungIME"

    const-string v1, "getOneHandContainer==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    return-object v0
.end method

.method public getRealWindowHeight()I
    .locals 2

    .prologue
    .line 2384
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2385
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2386
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 2391
    :goto_0
    return v0

    .line 2388
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v0

    goto :goto_0

    .line 2391
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-nez v0, :cond_0

    .line 314
    const-string v0, "SamsungIME"

    const-string v1, "getSkbContainer==null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    return-object v0
.end method

.method public getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;
    .locals 1

    .prologue
    .line 2843
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    return-object v0
.end method

.method public getTabContainer()Lcom/samsung/inputmethod/tabmode/SimeTabContainer;
    .locals 1

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    if-eqz v0, :cond_0

    .line 1273
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getTabModeContainer()Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    move-result-object v0

    .line 1275
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getToast()Lcom/samsung/inputmethod/comm/SimeToast;
    .locals 1

    .prologue
    .line 2964
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->myToast:Lcom/samsung/inputmethod/comm/SimeToast;

    return-object v0
.end method

.method public getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getToolBarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v0

    return-object v0
.end method

.method public handleClipboardKey()V
    .locals 13

    .prologue
    const/4 v5, 0x0

    .line 1619
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v12

    .line 1620
    .local v12, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v12, :cond_0

    .line 1621
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1622
    .local v1, eventTime:J
    new-instance v0, Landroid/view/KeyEvent;

    const/16 v6, 0xdd

    const/4 v11, 0x2

    move-wide v3, v1

    move v7, v5

    move v8, v5

    move v9, v5

    move v10, v5

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    invoke-interface {v12, v0}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 1626
    .end local v1           #eventTime:J
    :cond_0
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1627
    return-void
.end method

.method public hideSoftKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2718
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2719
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 2721
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v1, :cond_0

    .line 2722
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 2723
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v1, :cond_1

    .line 2724
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 2728
    :cond_0
    :goto_0
    return-void

    .line 2726
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->updateConfigDecoder()V

    goto :goto_0
.end method

.method public initModulesWithService(Landroid/inputmethodservice/InputMethodService;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 1610
    new-instance v0, Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-direct {v0, p1}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    .line 1611
    return-void
.end method

.method public inputCommaPeriod(Ljava/lang/String;IZLcom/samsung/inputmethod/SamsungIME$ImeState;)V
    .locals 2
    .parameter "preEdit"
    .parameter "keyChar"
    .parameter "dismissCandWindow"
    .parameter "nextState"

    .prologue
    .line 1200
    const/16 v0, 0x2c

    if-ne p2, v0, :cond_2

    .line 1201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xff0c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1206
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1208
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1210
    if-eqz p3, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->dismissCandidateWindow()V

    .line 1212
    :cond_0
    iput-object p4, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 1214
    :cond_1
    return-void

    .line 1202
    :cond_2
    const/16 v0, 0x2e

    if-ne p2, v0, :cond_1

    .line 1203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public inputCommaPeriod(Ljava/lang/String;IZZLcom/samsung/inputmethod/SamsungIME$ImeState;)V
    .locals 3
    .parameter "preEdit"
    .parameter "keyChar"
    .parameter "trans"
    .parameter "dismissCandWindow"
    .parameter "nextState"

    .prologue
    const/16 v2, 0x2e

    const/16 v1, 0x2c

    .line 1170
    if-eqz p3, :cond_3

    .line 1172
    if-ne p2, v1, :cond_2

    .line 1173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0xff0c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1186
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    .line 1188
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1189
    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->dismissCandidateWindow()V

    .line 1191
    :cond_0
    iput-object p5, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 1193
    :cond_1
    return-void

    .line 1174
    :cond_2
    if-ne p2, v2, :cond_1

    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3002

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1179
    :cond_3
    if-ne p2, v1, :cond_4

    .line 1180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1181
    :cond_4
    if-ne p2, v2, :cond_1

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public isCandidatesViewShown()Z
    .locals 1

    .prologue
    .line 2351
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComposingViewShown()Z
    .locals 1

    .prologue
    .line 2355
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isConfigureChange()Z
    .locals 1

    .prologue
    .line 2359
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->isConfigureChange:Z

    return v0
.end method

.method public isFloatingKeyboardForMultiWindow()Z
    .locals 1

    .prologue
    .line 276
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-nez v0, :cond_0

    .line 277
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mIsFloatingKeyboardForMultiWindow:Z

    goto :goto_0
.end method

.method public isKeyGuardScreen()Z
    .locals 2

    .prologue
    .line 3002
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 3003
    .local v0, keyguardManager:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3004
    const/4 v1, 0x1

    .line 3006
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMagnificationGestureOn()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3038
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 3041
    .local v0, retValue:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 3044
    :goto_1
    return v1

    .end local v0           #retValue:Z
    :cond_0
    move v0, v2

    .line 3038
    goto :goto_0

    .restart local v0       #retValue:Z
    :cond_1
    move v1, v2

    .line 3044
    goto :goto_1
.end method

.method public isNeedAutoCapitalization()Z
    .locals 2

    .prologue
    .line 2737
    const/4 v0, 0x1

    .line 2740
    .local v0, result:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEmailEditor()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPassWordEditor()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isWebEditor()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSearchEditor()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isMMSRecipient()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2745
    :cond_0
    const/4 v0, 0x0

    .line 2747
    :cond_1
    return v0
.end method

.method public isPairSymbol(Ljava/lang/String;)Z
    .locals 2
    .parameter "keyLabel"

    .prologue
    const/4 v0, 0x0

    .line 3011
    if-nez p1, :cond_1

    .line 3027
    :cond_0
    :goto_0
    return v0

    .line 3016
    :cond_1
    const-string v1, "\u201c\u201d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\uff08\uff09"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u300a\u300b"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\uff5b\uff5d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u3010\u3011"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\uff1c\uff1e"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u300c\u300d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "\u2018\u2019"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3024
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSearchActionEdit()Z
    .locals 4

    .prologue
    .line 2681
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 2682
    .local v1, editorInfo:Landroid/view/inputmethod/EditorInfo;
    iget v2, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v3, 0x400000ff

    and-int v0, v2, v3

    .line 2684
    .local v0, editorAction:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 2685
    const/4 v2, 0x1

    .line 2688
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isSoftKey(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1004
    const/4 v0, 0x0

    .line 1005
    .local v0, bRet:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1006
    const/4 v0, 0x1

    .line 1007
    :cond_0
    return v0
.end method

.method public isVoiceInputEnabled()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2662
    const/4 v2, 0x0

    .line 2663
    .local v2, isMarketPackageAndSearchEditor:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 2664
    .local v1, editorInfo:Landroid/view/inputmethod/EditorInfo;
    if-eqz v1, :cond_4

    .line 2665
    iget v5, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const v6, 0x400000ff

    and-int v0, v5, v6

    .line 2667
    .local v0, editorAction:I
    iget-object v5, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 2668
    const-string v5, "com.android.vending"

    iget-object v6, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.google.android.apps.maps"

    iget-object v6, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.google.android.youtube"

    iget-object v6, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "com.google.android.googlequicksearchbox"

    iget-object v6, v1, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v5, 0x3

    if-ne v0, v5, :cond_2

    move v2, v4

    .line 2675
    :cond_1
    :goto_0
    if-nez v2, :cond_3

    .line 2677
    .end local v0           #editorAction:I
    :goto_1
    return v4

    .restart local v0       #editorAction:I
    :cond_2
    move v2, v3

    .line 2668
    goto :goto_0

    :cond_3
    move v4, v3

    .line 2675
    goto :goto_1

    .end local v0           #editorAction:I
    :cond_4
    move v4, v3

    .line 2677
    goto :goto_1
.end method

.method public launchSettings()V
    .locals 2

    .prologue
    .line 2328
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2329
    .local v0, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2330
    const-class v1, Lcom/samsung/inputmethod/setting/SimeSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2334
    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2335
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->startActivity(Landroid/content/Intent;)V

    .line 2336
    return-void

    .line 2332
    :cond_0
    const-class v1, Lcom/samsung/inputmethod/setting/SimeTabtabSettingActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public needHideSoftKeyboard(Lcom/samsung/inputmethod/SimeKeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2713
    const/4 v0, 0x0

    return v0
.end method

.method public onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "action"
    .parameter "data"

    .prologue
    const/4 v2, 0x0

    .line 525
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onAppPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 527
    if-nez p1, :cond_1

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 529
    :cond_1
    const-string v1, "com.samsung.inputmethod/show_im_picker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.samsung.inputmethod/cmd_show_cursorcontrol"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 531
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 532
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 533
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWView(Z)V

    goto :goto_0

    .line 537
    :cond_3
    const-string v1, "com.samsung.inputmethod/hide_im_picker"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.samsung.inputmethod/cmd_hide_cursorcontrol"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 539
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 542
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_0

    .line 545
    :cond_5
    const-string v1, "com.swype.android.inputmethod/cmd_tap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.swype.android.inputmethod/cmd_doubletap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.samsung.inputmethod/cmd_tap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "com.samsung.inputmethod/cmd_doubletap"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 551
    :cond_6
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v0

    .line 560
    .local v0, ei:Landroid/view/inputmethod/EditorInfo;
    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->isEditorTypeNull()Z

    move-result v1

    if-nez v1, :cond_0

    .line 566
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 567
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->changeToolBarSKBToNoraml()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 568
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto/16 :goto_0
.end method

.method public onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V
    .locals 3
    .parameter "outInsets"

    .prologue
    .line 363
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onComputeInsets(Landroid/inputmethodservice/InputMethodService$Insets;)V

    .line 365
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isFullscreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 372
    .local v0, location:[I
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->isShowOneItem()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 373
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getActivCCItem()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 374
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getActivCCItem()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getLocationInWindow([I)V

    .line 375
    iget v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    const/4 v2, 0x1

    aget v2, v0, v2

    add-int/2addr v1, v2

    iput v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    .line 379
    :cond_2
    iget v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->visibleTopInsets:I

    iput v1, p1, Landroid/inputmethodservice/InputMethodService$Insets;->contentTopInsets:I

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 465
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 471
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0, p1, p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 472
    invoke-virtual {v0, v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->setConfigureState(Z)V

    .line 473
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->resetVariables()V

    .line 475
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v1, :cond_0

    .line 476
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopups()V

    .line 478
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    if-eqz v1, :cond_1

    .line 479
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->dismiss()V

    .line 482
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v1, :cond_2

    .line 487
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 488
    iput-boolean v2, p0, Lcom/samsung/inputmethod/SamsungIME;->isConfigureChange:Z

    .line 493
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mDialogMgr:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    if-eqz v1, :cond_3

    .line 494
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mDialogMgr:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->onConfigurationChanged()V

    .line 497
    :cond_3
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->dismissTutorialDialog()V

    .line 498
    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 500
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 501
    sget-boolean v1, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 504
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->changeToolBarSKBToNoraml()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 506
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 507
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 515
    :cond_4
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v1, v2, :cond_5

    .line 516
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->initAndShowFloatingInputPanel()V

    .line 518
    :cond_5
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 519
    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->setConfigureState(Z)V

    .line 520
    return-void

    .line 509
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->updateConfigDecoder()V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 386
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onCreate()V

    .line 387
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 389
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFilesDir()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 390
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->setFilesDir(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->setLibraryDir(Ljava/lang/String;)V

    .line 394
    :cond_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->LoadJNILibrary()V

    .line 396
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->onConfigurationChanged(Landroid/content/res/Configuration;Landroid/content/Context;)V

    .line 398
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/inputmethod/setting/SimeSetting;->getInstance(Landroid/content/SharedPreferences;)Lcom/samsung/inputmethod/setting/SimeSetting;

    .line 401
    invoke-virtual {p0, p0}, Lcom/samsung/inputmethod/SamsungIME;->initModulesWithService(Landroid/inputmethodservice/InputMethodService;)V

    .line 402
    new-instance v0, Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    .line 403
    new-instance v0, Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 404
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMultiModalManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

    .line 405
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMultiModalManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 406
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSimeSkbKeyboardPointing:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardPointing;

    .line 407
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setInputModeSwitcher(Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 408
    new-instance v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;-><init>(Landroid/inputmethodservice/InputMethodService;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    .line 410
    new-instance v0, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    .line 411
    new-instance v0, Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDialogMgr:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    .line 413
    new-instance v0, Lcom/samsung/inputmethod/SimIntentProcessor;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/SimIntentProcessor;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mIntentProcessor:Lcom/samsung/inputmethod/SimIntentProcessor;

    .line 414
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mIntentProcessor:Lcom/samsung/inputmethod/SimIntentProcessor;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimIntentProcessor;->registerIntent()V

    .line 416
    new-instance v0, Lcom/samsung/inputmethod/SimeOCR;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/SimeOCR;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mOCR:Lcom/samsung/inputmethod/SimeOCR;

    .line 418
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSdkVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 419
    const/4 v0, 0x0

    sput v0, Lcom/samsung/inputmethod/SamsungIME;->NOTIFICATION_HEIGHT:I

    .line 425
    :goto_0
    new-instance v0, Lcom/samsung/inputmethod/comm/SimeToast;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/comm/SimeToast;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->myToast:Lcom/samsung/inputmethod/comm/SimeToast;

    .line 426
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SHOW_TUTORIAL_FEATURE:Z

    if-eqz v0, :cond_1

    .line 427
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbFloatingTutorial:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    .line 428
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbFloatingTutorial:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v0, p0, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->setParams(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/SimeInputModeSwitcher;Lcom/samsung/inputmethod/comm/SimeEnvironment;)V

    .line 430
    :cond_1
    return-void

    .line 421
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/samsung/inputmethod/SamsungIME;->NOTIFICATION_HEIGHT:I

    goto :goto_0
.end method

.method public onCreateCandidatesView()Landroid/view/View;
    .locals 3

    .prologue
    .line 1259
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 1264
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->createCandidateView()Landroid/view/View;

    move-result-object v0

    .line 1265
    .local v0, candview:Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    .line 1266
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getDefaultCandContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mDefaultCandidatesContainer:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    .line 1267
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getComposingWindow()Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    .line 1268
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getCandBalloon()Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 1269
    return-object v0
.end method

.method public onCreateInputView()Landroid/view/View;
    .locals 2

    .prologue
    .line 1951
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->createInputView()Landroid/view/View;

    move-result-object v0

    .line 1953
    .local v0, inputView:Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getNormalInputView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    .line 1954
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getOneHandInputView()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    .line 1955
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getMiniPopupWidnow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    .line 1956
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getHWManager()Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    .line 1958
    invoke-static {}, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->getInstance()Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    .line 1959
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    invoke-virtual {v1, p0}, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->initialize(Landroid/inputmethodservice/InputMethodService;)V

    .line 1960
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 435
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    .line 437
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->releaseInstance()V

    .line 439
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mIntentProcessor:Lcom/samsung/inputmethod/SimIntentProcessor;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimIntentProcessor;->unregisterIntent()V

    .line 441
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->releaseInstance()V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v0, :cond_1

    .line 447
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 449
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopups()V

    .line 453
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    if-eqz v0, :cond_3

    .line 454
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->saveSymbolHistoryToPreference()V

    .line 457
    :cond_3
    const/4 v0, 0x5

    invoke-direct {p0, v0, v1, v1}, Lcom/samsung/inputmethod/SamsungIME;->notifyEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 460
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onDestroy()V

    .line 461
    return-void
.end method

.method public onDisplayCompletions([Landroid/view/inputmethod/CompletionInfo;)V
    .locals 5
    .parameter "completions"

    .prologue
    .line 2189
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isFullscreenMode()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2266
    :cond_0
    :goto_0
    return-void

    .line 2192
    :cond_1
    if-eqz p1, :cond_2

    array-length v3, p1

    if-gtz v3, :cond_3

    .line 2193
    :cond_2
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2197
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    goto :goto_0

    .line 2202
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2218
    const/4 v2, 0x1

    .line 2220
    .local v2, isAllCompletionsEmpty:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_5

    .line 2221
    aget-object v0, p1, v1

    .line 2222
    .local v0, ci:Landroid/view/inputmethod/CompletionInfo;
    if-eqz v0, :cond_4

    .line 2223
    invoke-virtual {v0}, Landroid/view/inputmethod/CompletionInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 2226
    const/4 v2, 0x0

    .line 2220
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2234
    .end local v0           #ci:Landroid/view/inputmethod/CompletionInfo;
    :cond_5
    if-eqz v2, :cond_6

    .line 2235
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2239
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    goto :goto_0

    .line 2246
    :cond_6
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2247
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v3, v4, :cond_7

    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v3, v4, :cond_7

    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v4, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_0

    .line 2255
    :cond_7
    sget-boolean v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->miniSymbolScreenon:Z

    if-nez v3, :cond_0

    .line 2259
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iput-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 2260
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->prepareAppCompletions([Landroid/view/inputmethod/CompletionInfo;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2261
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    goto :goto_0

    .line 2263
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    goto :goto_0
.end method

.method public onEvaluateFullscreenMode()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2441
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    .line 2442
    .local v1, info:Landroid/view/inputmethod/EditorInfo;
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 2444
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPSeriesModel()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2452
    :cond_0
    :goto_0
    return v2

    .line 2448
    :cond_1
    if-eqz v1, :cond_0

    iget v3, v1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-eq v3, v4, :cond_0

    .line 2450
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateFullscreenMode()Z

    move-result v2

    goto :goto_0
.end method

.method public onEvaluateInputViewShown()Z
    .locals 1

    .prologue
    .line 582
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onEvaluateInputViewShown()Z

    move-result v0

    return v0
.end method

.method public onExtractedTextClicked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2585
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    .line 2587
    sget-boolean v0, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_TOOLBARMODE_SUPPORTED:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2589
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 2590
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->changeToolBarSKBToNoraml()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 2591
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 2593
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2594
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 2596
    :cond_1
    return-void
.end method

.method public onFinishCandidatesView(Z)V
    .locals 0
    .parameter "finishingInput"

    .prologue
    .line 2181
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishCandidatesView(Z)V

    .line 2182
    return-void
.end method

.method public onFinishInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 2160
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 2162
    iget-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->isConfigureChange:Z

    if-eqz v0, :cond_0

    .line 2163
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetConfigureChange()V

    .line 2167
    :cond_0
    invoke-static {v1}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardLedState(Z)V

    .line 2170
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mProcessedDownKeySet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2172
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2, v2}, Lcom/samsung/inputmethod/SamsungIME;->notifyEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2173
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onFinishInput()V

    .line 2174
    return-void
.end method

.method public onFinishInputView(Z)V
    .locals 3
    .parameter "finishingInput"

    .prologue
    .line 2106
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->writeBack()V

    .line 2108
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getMajorView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2109
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getMajorView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardView;->dismissBalloonHint()V

    .line 2112
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    if-eqz v0, :cond_1

    .line 2113
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 2115
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 2120
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_2

    .line 2121
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopups()V

    .line 2123
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v0, :cond_3

    .line 2124
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->resetFlags()V

    .line 2133
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDialogMgr:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    if-eqz v0, :cond_4

    .line 2134
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDialogMgr:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->onConfigurationChanged()V

    .line 2145
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isDynamicCharacterRecognitionEnable()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2146
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyDetector:Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/touchmodal/TProximityKeyDetector;->dumpCurrentGrid()V

    .line 2151
    :cond_5
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardLedState(Z)V

    .line 2153
    const/4 v0, 0x3

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->notifyEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2154
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->onFinishInputView(Z)V

    .line 2155
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 780
    const/4 v0, 0x0

    .line 781
    .local v0, bRet:Z
    new-instance v1, Lcom/samsung/inputmethod/SimeKeyEvent;

    invoke-direct {v1, p2}, Lcom/samsung/inputmethod/SimeKeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 785
    .local v1, imeKeyEvent:Lcom/samsung/inputmethod/SimeKeyEvent;
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->processKey(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 788
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 794
    :goto_0
    return v0

    .line 791
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 727
    sget-boolean v2, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_HARDKEYPAD_SUPPORTED:Z

    if-eqz v2, :cond_5

    .line 728
    const/4 v0, 0x0

    .line 732
    .local v0, bRet:Z
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->isEditorTypeNull()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 773
    .end local v0           #bRet:Z
    :cond_0
    :goto_0
    return v0

    .line 743
    .restart local v0       #bRet:Z
    :cond_1
    invoke-direct {p0, p2}, Lcom/samsung/inputmethod/SamsungIME;->isHardKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 744
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    move v0, v1

    .line 748
    goto :goto_0

    .line 754
    :cond_2
    const/16 v1, 0x12

    if-ne p1, v1, :cond_3

    .line 755
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->processToolBarLongPress()Z

    move-result v0

    goto :goto_0

    .line 758
    :cond_3
    const/16 v1, 0x11

    if-ne p1, v1, :cond_4

    .line 759
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->launchSettings()V

    .line 760
    const/4 v0, 0x1

    goto :goto_0

    .line 764
    :cond_4
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->processLongPressKey(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 765
    const/4 v0, 0x1

    goto :goto_0

    .line 773
    .end local v0           #bRet:Z
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 799
    const/4 v0, 0x0

    .line 800
    .local v0, bRet:Z
    new-instance v1, Lcom/samsung/inputmethod/SimeKeyEvent;

    invoke-direct {v1, p2}, Lcom/samsung/inputmethod/SimeKeyEvent;-><init>(Landroid/view/KeyEvent;)V

    .line 804
    .local v1, imeKeyEvent:Lcom/samsung/inputmethod/SimeKeyEvent;
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->processKey(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 807
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 813
    :goto_0
    return v0

    .line 810
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onStartInput(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 5
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    const/4 v4, 0x0

    .line 1965
    const/4 v0, 0x0

    .line 1966
    .local v0, isMainModeChanged:Z
    const-string v1, "SamsungIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartInput  ccontentType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Restarting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1971
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeBySettings()Z

    move-result v0

    .line 1976
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->requestInputWithHkb(Landroid/view/inputmethod/EditorInfo;Z)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1977
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->updateUIIFLocaleChanged()V

    .line 1981
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    .line 1985
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mProcessedDownKeySet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1988
    invoke-static {v4}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardLedState(Z)V

    .line 1993
    invoke-static {}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->getHWKeyboardConnection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1994
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->autoCapitalization()V

    .line 1999
    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v4, p1, v1}, Lcom/samsung/inputmethod/SamsungIME;->notifyEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2001
    return-void
.end method

.method public onStartInputView(Landroid/view/inputmethod/EditorInfo;Z)V
    .locals 7
    .parameter "editorInfo"
    .parameter "restarting"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2005
    const/4 v2, 0x0

    .line 2013
    .local v2, isMainModeChanged:Z
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {v3}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->onStartInputView()V

    .line 2016
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FLOATING_BY_CMKEY:Z

    if-nez v3, :cond_5

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-nez v3, :cond_5

    .line 2017
    if-nez p2, :cond_0

    .line 2018
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDialogMgr:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    if-eqz v3, :cond_0

    .line 2019
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDialogMgr:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->ClearAllPopupMenu()V

    .line 2023
    :cond_0
    sget-boolean v3, Lcom/samsung/inputmethod/SamsungIME;->mFloatingForMultiWindow:Z

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->SetFloatingKeyboardForMultiWindow(Z)V

    .line 2038
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeBySettings()Z

    move-result v2

    .line 2041
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, p1, v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->requestInputWithSkb(Landroid/view/inputmethod/EditorInfo;Z)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 2043
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    .line 2045
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2049
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->DecideHandwriteMode()V

    .line 2053
    :cond_2
    invoke-static {v5}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->setHWKeyboardLedState(Z)V

    .line 2055
    invoke-static {}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->getHWKeyboardConnection()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2056
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->changeInputModeByKeyboard()V

    .line 2058
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->switchOneHandOrNormal()V

    .line 2060
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->autoCapitalization()V

    .line 2061
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 2063
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    .line 2064
    .local v1, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->enableToolbarOrTab()Z

    move-result v3

    if-nez v3, :cond_a

    .line 2065
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesViewShown(Z)V

    .line 2096
    :goto_1
    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v3, p1, v4}, Lcom/samsung/inputmethod/SamsungIME;->notifyEvent(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 2097
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SHOW_TUTORIAL_FEATURE:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbFloatingTutorial:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    if-eqz v3, :cond_4

    .line 2098
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbFloatingTutorial:Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->checkTutorial()V

    .line 2100
    :cond_4
    return-void

    .line 2024
    .end local v1           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    :cond_5
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_MULTI_FLOAT:Z

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_FLOATING_BY_CMKEY:Z

    if-nez v3, :cond_6

    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-eqz v3, :cond_1

    .line 2025
    :cond_6
    if-nez p2, :cond_7

    .line 2026
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDialogMgr:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->ClearAllPopupMenu()V

    .line 2030
    :cond_7
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getFloatingKeyboard()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2031
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isKeyGuardScreen()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isMagnificationGestureOn()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2032
    :cond_8
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->SetFloatingKeyboardForMultiWindow(Z)V

    goto/16 :goto_0

    .line 2034
    :cond_9
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->SetFloatingKeyboardForMultiWindow(Z)V

    goto/16 :goto_0

    .line 2067
    .restart local v1       #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    :cond_a
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesViewShown(Z)V

    .line 2068
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 2069
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpecialInputMode()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2070
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesViewShown(Z)V

    goto :goto_1

    .line 2073
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getTabContainer()Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->updateTabContainer()V

    .line 2074
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto :goto_1

    .line 2079
    :cond_c
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v4, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->OnlyToolBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    .line 2082
    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfigureState()Z

    move-result v0

    .line 2085
    .local v0, configurationChanged:Z
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setToolbarLayout()V

    .line 2086
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isTabSym()Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v0, :cond_d

    .line 2089
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->updateToolBarPage(Z)V

    goto/16 :goto_1

    .line 2091
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->updateToolBarPage(Z)V

    goto/16 :goto_1
.end method

.method public onUpdateSelection(IIIIII)V
    .locals 4
    .parameter "oldSelStart"
    .parameter "oldSelEnd"
    .parameter "newSelStart"
    .parameter "newSelEnd"
    .parameter "candidatesStart"
    .parameter "candidatesEnd"

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 2530
    if-eq p5, v3, :cond_6

    if-eq p6, v3, :cond_6

    if-ne p3, p4, :cond_0

    if-eq p6, p4, :cond_6

    .line 2536
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2539
    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 2563
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isURLEditor()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2564
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 2565
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v1, :cond_3

    .line 2566
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode1()V

    .line 2570
    :cond_3
    const/4 v0, 0x1

    .line 2572
    .local v0, bSetautoCapitalizationState:Z
    if-ne p1, p2, :cond_4

    if-ne p3, p4, :cond_4

    if-ne p2, p3, :cond_4

    if-ne p6, v3, :cond_4

    if-ne p5, v3, :cond_4

    .line 2573
    const/4 v0, 0x0

    .line 2575
    :cond_4
    if-eqz v0, :cond_5

    .line 2576
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->autoCapitalization()V

    .line 2579
    :cond_5
    invoke-super/range {p0 .. p6}, Landroid/inputmethodservice/InputMethodService;->onUpdateSelection(IIIIII)V

    .line 2580
    return-void

    .line 2543
    .end local v0           #bSetautoCapitalizationState:Z
    :cond_6
    if-ne p6, v3, :cond_8

    if-nez p4, :cond_8

    .line 2544
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2547
    :cond_7
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0

    .line 2550
    :cond_8
    if-ne p1, p2, :cond_2

    if-eq p4, p6, :cond_2

    if-ne p1, p3, :cond_9

    if-ne p2, p4, :cond_9

    if-eq p4, p6, :cond_2

    :cond_9
    if-eq v3, p6, :cond_2

    if-eq v3, p5, :cond_2

    .line 2557
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKorean()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Korean()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2559
    :cond_a
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0
.end method

.method public onWindowHidden()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2473
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbFloatingTutorial;->resetVariables()V

    .line 2474
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 2475
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    if-eqz v0, :cond_0

    .line 2477
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->showHWView(Z)V

    .line 2479
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->dismissCandidateWindow()V

    .line 2480
    invoke-super {p0}, Landroid/inputmethodservice/InputMethodService;->onWindowHidden()V

    .line 2481
    return-void
.end method

.method public processHWGestureKey(I)V
    .locals 13
    .parameter "keyCode"

    .prologue
    .line 2484
    new-instance v0, Lcom/samsung/inputmethod/SimeKeyEvent;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Lcom/samsung/inputmethod/SimeKeyEvent;-><init>(JJIIIIIII)V

    .line 2486
    .local v0, eDown:Lcom/samsung/inputmethod/SimeKeyEvent;
    new-instance v1, Lcom/samsung/inputmethod/SimeKeyEvent;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    move v7, p1

    invoke-direct/range {v1 .. v12}, Lcom/samsung/inputmethod/SimeKeyEvent;-><init>(JJIIIIIII)V

    .line 2489
    .local v1, eUp:Lcom/samsung/inputmethod/SimeKeyEvent;
    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, Lcom/samsung/inputmethod/SamsungIME;->processKey(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 2490
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/inputmethod/SamsungIME;->processKey(ILcom/samsung/inputmethod/SimeKeyEvent;Z)Z

    .line 2491
    return-void
.end method

.method public processLongPressKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 9
    .parameter "sKey"

    .prologue
    const/16 v8, 0x3e

    const/16 v7, 0x10

    const/4 v4, 0x7

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1631
    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v1

    .line 1632
    .local v1, keyCode:I
    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v2

    .line 1635
    .local v2, keyLongLabel:Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1639
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1640
    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;I)V

    .line 1642
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbolLock()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1643
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1768
    :cond_0
    :goto_0
    return-void

    .line 1645
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1647
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1648
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_0

    .line 1654
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTextWithSkb()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 1655
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isUserDefKey()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez v2, :cond_4

    .line 1656
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1657
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKeyLongPressed(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1659
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1660
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto :goto_0

    .line 1664
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1665
    const/16 v3, 0x1d

    if-lt v1, v3, :cond_5

    const/16 v3, 0x36

    if-le v1, v3, :cond_7

    :cond_5
    if-lt v1, v4, :cond_6

    if-le v1, v7, :cond_7

    :cond_6
    const/16 v3, 0x45

    if-ne v1, v3, :cond_0

    .line 1668
    :cond_7
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9QwertyEnglish()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1669
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1672
    :cond_8
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_9

    .line 1673
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3, v8, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    .line 1675
    :cond_9
    invoke-virtual {p0, v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    .line 1676
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto :goto_0

    .line 1679
    :cond_a
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1681
    if-ne v1, v8, :cond_f

    .line 1682
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT934English()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1683
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1685
    :cond_b
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_c

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v3

    if-nez v3, :cond_d

    :cond_c
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Stroke()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1688
    :cond_d
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3, v8, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    .line 1691
    :cond_e
    invoke-virtual {p0, v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    .line 1692
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_0

    .line 1695
    :cond_f
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPinyinMode()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1696
    if-lt v1, v4, :cond_10

    if-le v1, v7, :cond_11

    :cond_10
    const/16 v3, 0x4b

    if-ne v1, v3, :cond_0

    .line 1698
    :cond_11
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_12

    .line 1699
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3, v8, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    .line 1701
    :cond_12
    invoke-virtual {p0, v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    .line 1702
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_0

    .line 1705
    :cond_13
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1706
    if-lt v1, v4, :cond_14

    if-le v1, v7, :cond_15

    :cond_14
    const/16 v3, -0xa

    if-ne v1, v3, :cond_0

    .line 1707
    :cond_15
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionOn()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1708
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1710
    :cond_16
    invoke-virtual {p0, v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1714
    :cond_17
    if-lt v1, v4, :cond_18

    if-le v1, v7, :cond_19

    :cond_18
    const/16 v3, 0x1d

    if-eq v1, v3, :cond_19

    const/16 v3, 0x4b

    if-eq v1, v3, :cond_19

    const/16 v3, 0x37

    if-ne v1, v3, :cond_0

    .line 1716
    :cond_19
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_1a

    .line 1717
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3, v8, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    .line 1719
    :cond_1a
    invoke-virtual {p0, v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    .line 1720
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_0

    .line 1725
    :cond_1b
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1726
    invoke-virtual {p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isUserDefKey()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1727
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1728
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKeyLongPressed(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1730
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1731
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto/16 :goto_0

    .line 1735
    :cond_1c
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isQwertyKeyboard()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1736
    const/16 v3, 0x1d

    if-lt v1, v3, :cond_0

    const/16 v3, 0x36

    if-gt v1, v3, :cond_0

    .line 1738
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1740
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v0, :cond_1d

    .line 1742
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1747
    :cond_1d
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 1748
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getKorDec()Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecKoreanAbstract;->reset()V

    .line 1751
    :cond_1e
    invoke-virtual {p0, v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1754
    .end local v0           #ic:Landroid/view/inputmethod/InputConnection;
    :cond_1f
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1755
    if-lt v1, v4, :cond_0

    if-gt v1, v7, :cond_0

    .line 1756
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1757
    invoke-virtual {p0, v6}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1758
    invoke-virtual {p0, v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 1762
    :cond_20
    iget-object v3, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPhone()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1763
    if-ne v1, v4, :cond_0

    .line 1764
    invoke-virtual {p0, v2, v5}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public processSwitchToNextSymbolPage()Z
    .locals 1

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToNextPageSymbol()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 2950
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 2951
    const/4 v0, 0x1

    return v0
.end method

.method public processSwitchToPreviousSymbolPage()Z
    .locals 1

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToPreviousPageSymbol()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 2958
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 2959
    const/4 v0, 0x1

    return v0
.end method

.method public processSwitchToSymbolToolbarMode()Z
    .locals 2

    .prologue
    .line 680
    const/4 v0, 0x0

    .line 682
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 683
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->requestShowSelf()V

    .line 684
    const/4 v0, 0x1

    .line 694
    :goto_0
    return v0

    .line 688
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToSymbolInputToolbarMode()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 689
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 690
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public processToolBarLongPress()Z
    .locals 2

    .prologue
    .line 714
    const/4 v0, 0x0

    .line 715
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForShortcutKeyLongPressed()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 717
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 718
    const/4 v0, 0x1

    .line 722
    :cond_0
    return v0
.end method

.method public processToolBarShortCut()Z
    .locals 2

    .prologue
    .line 700
    const/4 v0, 0x0

    .line 701
    .local v0, bRet:Z
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 702
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 703
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForShortcutKey()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 704
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 705
    const/4 v0, 0x1

    .line 709
    :cond_0
    return v0
.end method

.method public requestHideSelf(I)V
    .locals 1
    .parameter "flags"

    .prologue
    .line 2296
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 2297
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->dismissCandidateWindow()V

    .line 2298
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2299
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->dismissPopups()V

    .line 2301
    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 2302
    return-void
.end method

.method public requestShowSelf()V
    .locals 3

    .prologue
    .line 2290
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/SamsungIME;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 2291
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getWindow()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v1, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputFromInputMethod(Landroid/os/IBinder;I)V

    .line 2292
    return-void
.end method

.method public resetConfigureChange()V
    .locals 1

    .prologue
    .line 2363
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/SamsungIME;->isConfigureChange:Z

    .line 2365
    return-void
.end method

.method public resetToIdleState()V
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    if-eqz v0, :cond_0

    .line 1218
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->reset()V

    .line 1221
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v0, :cond_1

    .line 1223
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 1226
    :cond_1
    invoke-direct {p0}, Lcom/samsung/inputmethod/SamsungIME;->dismissCandidateWindow()V

    .line 1228
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->isShowingMiniPopupWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1229
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->cancelMiniPopupWindow()V

    .line 1232
    :cond_2
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->INSTANCE:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->dismiss()V

    .line 1234
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iput-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 1235
    return-void
.end method

.method public resetToIdleState(Z)V
    .locals 3
    .parameter "resetInlineText"

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 1241
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz p1, :cond_1

    .line 1242
    if-eqz v0, :cond_0

    .line 1243
    const-string v1, ""

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/inputmethod/InputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 1251
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState()V

    .line 1254
    return-void

    .line 1247
    :cond_1
    if-eqz v0, :cond_0

    .line 1248
    invoke-interface {v0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto :goto_0
.end method

.method public responseSoftKeyEvent(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V
    .locals 25
    .parameter "sKey"

    .prologue
    .line 1300
    if-nez p1, :cond_1

    .line 1606
    :cond_0
    :goto_0
    return-void

    .line 1305
    :cond_1
    const/16 v24, 0x0

    .line 1307
    .local v24, refreshKeyboardOnly:Z
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v22

    .line 1308
    .local v22, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v22, :cond_0

    .line 1312
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1316
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v8

    .line 1317
    .local v8, keyCode:I
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isLongPressed()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1318
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/inputmethod/SamsungIME;->processLongPressKey(Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;)V

    goto :goto_0

    .line 1324
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChinese34Keyboard()Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1325
    const-string v3, "1"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "2"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "3"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "4"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "5"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "6"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "7"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "8"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "9"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1334
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLongLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->addNumData(Ljava/lang/String;)V

    .line 1342
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v3

    if-nez v3, :cond_a

    const/16 v3, 0x4b

    if-ne v8, v3, :cond_a

    .line 1343
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getNumData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 1345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setNumInputMode(Z)V

    .line 1346
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setNumInputCannotToggle(Z)V

    .line 1348
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->updateToggleStates()V

    .line 1352
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 1353
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 1354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode2()V

    .line 1384
    :cond_5
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isUserDefKey()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1387
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->IsSettingKey(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1388
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1389
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDialogMgr:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    if-eqz v3, :cond_6

    .line 1390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDialogMgr:Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->onConfigurationChanged()V

    .line 1392
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->showIMESettingMenu()V

    .line 1477
    :cond_7
    :goto_3
    if-nez v24, :cond_0

    .line 1478
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto/16 :goto_0

    .line 1335
    :cond_8
    const-string v3, "0"

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1336
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->addNumData(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1356
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1358
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 1359
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 1360
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode2()V

    goto :goto_2

    .line 1363
    :cond_a
    const/4 v3, 0x7

    if-ne v8, v3, :cond_5

    .line 1364
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getNumData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-lt v3, v4, :cond_b

    .line 1366
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setNumInputMode(Z)V

    .line 1367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setNumInputCannotToggle(Z)V

    .line 1369
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->changeToStateInput(Z)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->updateToggleStates()V

    .line 1373
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 1374
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 1375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode2()V

    goto/16 :goto_2

    .line 1376
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 1379
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 1380
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode2()V

    goto/16 :goto_2

    .line 1393
    :cond_c
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->IsURLPrefixKey(I)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1394
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 1395
    const-string v3, "www."

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;I)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1397
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v3, v4, :cond_7

    .line 1398
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_3

    .line 1399
    :cond_d
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->IsURLSuffixKey(I)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1401
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v3, v4, :cond_e

    .line 1402
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1403
    :cond_e
    const-string v3, ".com"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 1405
    :cond_f
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->isSymbolLockAndUnlockKey(I)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1406
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1407
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_3

    .line 1409
    :cond_10
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->IsShilftKey(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1410
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isT9QwertyEnglish()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1411
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1413
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_3

    .line 1414
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    goto/16 :goto_3

    .line 1417
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getSimeKProcEnglish()Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 1418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getSimeKProcEnglish()Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcEnglish;->reset()V

    .line 1420
    :cond_13
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1421
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_3

    .line 1423
    :cond_14
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->IsVoiceKey(I)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1424
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->startVoiceListening()V

    goto/16 :goto_3

    .line 1425
    :cond_15
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->isClearAllSpellKey(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 1426
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->resetMultiTabNumberInfo()V

    .line 1430
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->updateToggleStates()V

    .line 1431
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->UpdateSkbContainer()V

    goto/16 :goto_3

    .line 1432
    :cond_16
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->isMultiModalKey(I)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mMultiModalManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMultiModalManager;->handleMultiModalKey(I)V

    goto/16 :goto_3

    .line 1434
    :cond_17
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->isLanguageKey(I)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1435
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1436
    invoke-static {}, Lcom/samsung/inputmethod/SimeHardKeyboardMgr;->getHWKeyboardConnection()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1437
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->changeInputModeByKeyboard()V

    .line 1439
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->autoCapitalization()V

    .line 1440
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_3

    .line 1441
    :cond_19
    invoke-static {v8}, Lcom/samsung/inputmethod/SimeSelfKeyDef;->is34NumKey(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1442
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputMode()Z

    move-result v3

    if-nez v3, :cond_1a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getNumData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1b

    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputMode()Z

    move-result v3

    if-eqz v3, :cond_1c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputCannotToggle()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 1445
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setNumInputMode(Z)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1447
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->autoCapitalization()V

    .line 1448
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_3

    .line 1449
    :cond_1c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getNumData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 1450
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputMode()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1452
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setNumInputMode(Z)V

    .line 1453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->updateToggleStates()V

    .line 1454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 1455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->processBackspace()V

    .line 1456
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 1458
    const/16 v24, 0x1

    .line 1459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode2()V

    goto/16 :goto_3

    .line 1462
    :cond_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->setNumInputMode(Z)V

    .line 1463
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->updateToggleStates()V

    .line 1464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->decoding()I

    .line 1465
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->showCandidateWindow(Z)V

    .line 1467
    const/16 v24, 0x1

    .line 1468
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode2()V

    goto/16 :goto_3

    .line 1472
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1473
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->autoCapitalization()V

    .line 1474
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_3

    .line 1483
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isKeyCodeKey()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1489
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getRepeatCount()I

    move-result v9

    .line 1490
    .local v9, repeat:I
    new-instance v2, Landroid/view/KeyEvent;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-direct/range {v2 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 1492
    .local v2, eDown:Landroid/view/KeyEvent;
    new-instance v10, Landroid/view/KeyEvent;

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x2

    move/from16 v16, v8

    move/from16 v17, v9

    invoke-direct/range {v10 .. v21}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 1495
    .local v10, eUp:Landroid/view/KeyEvent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v2}, Lcom/samsung/inputmethod/SamsungIME;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 1496
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10}, Lcom/samsung/inputmethod/SamsungIME;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 1578
    .end local v2           #eDown:Landroid/view/KeyEvent;
    .end local v9           #repeat:I
    .end local v10           #eUp:Landroid/view/KeyEvent;
    :cond_20
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 1579
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1580
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_21

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->isFixedSymbolInPopWin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_22

    :cond_21
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_23

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1584
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->saveSymbolsToHistory(Ljava/lang/String;)V

    .line 1586
    :cond_23
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_TAB_SYMBOL:Z

    if-eqz v3, :cond_24

    .line 1587
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_24

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->isDigitStr(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    .line 1592
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->saveToSymbHistory(Ljava/lang/String;)V

    .line 1600
    :cond_24
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isCurrentSkbSticky()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->requestBackToPreviousSkb(Z)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1602
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto/16 :goto_0

    .line 1497
    :cond_25
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->isUniStrKey()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1500
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v23

    .line 1504
    .local v23, keyLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isPredictionEnglish()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1505
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_26

    .line 1506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mKeyProcessMgr:Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcManager;->getActiveKeyProcessor()Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;

    move-result-object v3

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v3, v0, v1}, Lcom/samsung/inputmethod/keyprocessor/SimeKProcAbstract;->autoDelSpaceBeforeCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V

    .line 1515
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v3, v4, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v3

    if-nez v3, :cond_2c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseLanguage()Z

    move-result v3

    if-nez v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseTwLanguage()Z

    move-result v3

    if-nez v3, :cond_27

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseHkLanguage()Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 1520
    :cond_27
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    const/16 v4, 0x3e

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->processKey(IZ)Z

    .line 1526
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->isPairSymbol(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 1527
    const/4 v3, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v3}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;I)V

    .line 1533
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbol()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 1534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSymbolLock()Z

    move-result v3

    if-nez v3, :cond_20

    .line 1538
    const-string v3, ""

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1544
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is123Symbol()Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1545
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2a

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    .line 1546
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_28

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->isFixedSymbolInPopWin(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    :cond_28
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-ne v3, v4, :cond_2a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnterNoramlState()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 1551
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->saveSymbolsToHistory(Ljava/lang/String;)V

    .line 1553
    :cond_2a
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_USE_TAB_SYMBOL:Z

    if-eqz v3, :cond_2b

    .line 1554
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyCode()I

    move-result v3

    const/16 v4, 0x42

    if-eq v3, v4, :cond_2b

    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->isDigitStr(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 1559
    invoke-virtual/range {p1 .. p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbSoftKey;->getKeyLabel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->saveToSymbHistory(Ljava/lang/String;)V

    .line 1564
    :cond_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    const/4 v4, -0x3

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchModeForUserKey(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->updateIcon(I)V

    .line 1566
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    goto/16 :goto_4

    .line 1522
    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    goto/16 :goto_5

    .line 1529
    :cond_2d
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->commitResultText(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1570
    :cond_2e
    sget-object v3, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v3, v4, :cond_20

    .line 1571
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_4
.end method

.method public setCandidatesView(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 2896
    if-eqz p1, :cond_1

    .line 2897
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2898
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2899
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #parent:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2901
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 2907
    :cond_1
    :goto_0
    return-void

    .line 2904
    :cond_2
    sput-object p1, Lcom/samsung/inputmethod/SamsungIME;->mCandidatesView:Landroid/view/View;

    .line 2905
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setCandidatesViewShown(Z)V
    .locals 2
    .parameter "shown"

    .prologue
    .line 2601
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setCandidatesViewShown(Z)V

    .line 2602
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_0

    .line 2603
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbManager:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->setFloatingCandidateViewShown(Z)V

    .line 2605
    :cond_0
    return-void
.end method

.method public setComposingText(Ljava/lang/String;I)Z
    .locals 7
    .parameter "text"
    .parameter "cursorPos"

    .prologue
    .line 2625
    const/4 v0, 0x0

    .line 2627
    .local v0, bRet:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    .line 2629
    .local v1, ic:Landroid/view/inputmethod/InputConnection;
    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 2635
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->composingStringInEdit:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 2636
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->composingStringInEdit:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 2637
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->composingStringInEdit:Landroid/text/SpannableStringBuilder;

    sget-object v3, Lcom/samsung/inputmethod/SamsungIME;->SPAN_UNDERLINE:Landroid/text/style/CharacterStyle;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/inputmethod/SamsungIME;->composingStringInEdit:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 2638
    iget-object v2, p0, Lcom/samsung/inputmethod/SamsungIME;->composingStringInEdit:Landroid/text/SpannableStringBuilder;

    invoke-interface {v1, v2, p2}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    .line 2640
    const/4 v0, 0x1

    .line 2642
    :cond_0
    return v0
.end method

.method public setIMEState(Lcom/samsung/inputmethod/SamsungIME$ImeState;)V
    .locals 2
    .parameter "st"

    .prologue
    .line 2608
    iput-object p1, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    .line 2610
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, v1, :cond_0

    .line 2611
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2612
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->toggleCandidateMode(Z)V

    .line 2617
    :cond_0
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 2
    .parameter "inputView"

    .prologue
    .line 2882
    if-eqz p1, :cond_1

    .line 2883
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2884
    .local v0, p:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 2885
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2886
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #p:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2890
    :cond_0
    invoke-super {p0, p1}, Landroid/inputmethodservice/InputMethodService;->setInputView(Landroid/view/View;)V

    .line 2892
    :cond_1
    return-void
.end method

.method public setNormalInputView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2866
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputView:Landroid/view/View;

    instance-of v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    if-eqz v1, :cond_0

    .line 2878
    :goto_0
    return-void

    .line 2869
    :cond_0
    if-eqz p1, :cond_2

    .line 2870
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2871
    .local v0, vp:Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2872
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #vp:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2874
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->setInputView(Landroid/view/View;)V

    .line 2875
    iput-object p1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputView:Landroid/view/View;

    .line 2877
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->updateInputViewShown()V

    goto :goto_0
.end method

.method public setOneHandInputView(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 2851
    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputView:Landroid/view/View;

    instance-of v1, v1, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    if-eqz v1, :cond_0

    .line 2863
    :goto_0
    return-void

    .line 2854
    :cond_0
    if-eqz p1, :cond_2

    .line 2855
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2856
    .local v0, vp:Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 2857
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #vp:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 2859
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/SamsungIME;->setInputView(Landroid/view/View;)V

    .line 2860
    iput-object p1, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputView:Landroid/view/View;

    .line 2862
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->updateInputViewShown()V

    goto :goto_0
.end method

.method public showCandidateWindow(Z)V
    .locals 3
    .parameter "showComposingView"

    .prologue
    const/4 v2, 0x0

    .line 1775
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesViewShown(Z)V

    .line 1778
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    if-nez v0, :cond_1

    .line 1780
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 1888
    :cond_0
    :goto_0
    return-void

    .line 1785
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->isNumInputMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1787
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v0, :cond_2

    .line 1788
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 1791
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto :goto_0

    .line 1796
    :cond_3
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1798
    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_COMPOSING:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, v1, :cond_5

    .line 1802
    :cond_4
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->showCompsingWindow()V

    .line 1805
    :cond_5
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal_NoTabBar:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto :goto_0

    .line 1810
    :cond_6
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1813
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesView(Landroid/view/View;)V

    .line 1814
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->requestLayout()V

    .line 1817
    :cond_7
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Pinyin()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->is34Zhuyin()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1818
    :cond_8
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_COMPOSING:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, v1, :cond_a

    .line 1822
    :cond_9
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->showCompsingWindow()V

    .line 1824
    :cond_a
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v0, v1, :cond_b

    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_APP_COMPLETION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, v1, :cond_e

    .line 1826
    :cond_b
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1827
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 1830
    :cond_c
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1831
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 1834
    :cond_d
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 1839
    :cond_e
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTabletModel()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1840
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 1843
    :cond_f
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1844
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinBothNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 1847
    :cond_10
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->PinYinLeftAndCommon:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 1852
    :cond_11
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1853
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isChineseText()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isKoreanTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1854
    :cond_12
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, v1, :cond_14

    .line 1855
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1856
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 1859
    :cond_13
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 1863
    :cond_14
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWBoth:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 1865
    :cond_15
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isEnglishTextWithSkb()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1866
    sget-object v0, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_PREDICT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    iget-object v1, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, v1, :cond_16

    .line 1867
    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    goto/16 :goto_0

    .line 1869
    :cond_16
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->HWTopHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 1874
    :cond_17
    if-eqz p1, :cond_19

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_COMPOSING:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INPUT:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mImeState:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_INSERT_SELECTION:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, v1, :cond_19

    .line 1878
    :cond_18
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->showCompsingWindow()V

    .line 1880
    :cond_19
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/inputmethod/SimeInputModeDef;->isToolBARSkb(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1881
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZNormal:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0

    .line 1884
    :cond_1a
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    sget-object v1, Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;->CommonHZExpand:Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showCandidates(Lcom/samsung/inputmethod/candidate/SimeCandManager$CCShowType;Z)V

    goto/16 :goto_0
.end method

.method public showIMESettingMenu()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2318
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 2319
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/SamsungIME;->requestHideSelf(I)V

    .line 2321
    invoke-virtual {p0}, Lcom/samsung/inputmethod/SamsungIME;->launchSettings()V

    .line 2323
    return-void
.end method

.method public showInputMethodSelectingMenu()V
    .locals 1

    .prologue
    .line 2306
    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/content/Context;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    .line 2308
    return-void
.end method

.method public startVoiceListening()V
    .locals 1

    .prologue
    .line 1613
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {v0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->isInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mVoiceRecognitionTrigger:Lcom/google/android/voiceime/VoiceRecognitionTrigger;

    invoke-virtual {v0}, Lcom/google/android/voiceime/VoiceRecognitionTrigger;->startVoiceRecognition()V

    .line 1616
    :cond_0
    return-void
.end method

.method public updateComposingViewDisplay()V
    .locals 1

    .prologue
    .line 2692
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v0, :cond_0

    .line 2693
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->updateComposingViewDisplay()V

    .line 2695
    :cond_0
    return-void
.end method

.method public updateConfigDecoder()V
    .locals 1

    .prologue
    .line 2379
    iget-object v0, p0, Lcom/samsung/inputmethod/SamsungIME;->mDecInfoMgr:Lcom/samsung/inputmethod/decoder/SimeDecManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->configDecorder()V

    .line 2380
    return-void
.end method

.method public updateIcon(I)V
    .locals 0
    .parameter "iconId"

    .prologue
    .line 1934
    return-void
.end method

.method public updateUIIFLocaleChanged()V
    .locals 1

    .prologue
    .line 2495
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isLocaleChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2496
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->getInstance()Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbPool;->resetCachedSkb()V

    .line 2498
    :cond_0
    return-void
.end method
