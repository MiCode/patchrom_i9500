.class public Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;
.super Ljava/lang/Object;
.source "SimeSkbManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$1;,
        Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeSkbManager"

.field private static mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;


# instance fields
.field MAX_X:I

.field MAX_Y:I

.field MIN_X:I

.field MIN_Y:I

.field private mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

.field private mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

.field private mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

.field private mDefaultCandidatesContainer:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

.field private mDummyCandView:Lcom/samsung/inputmethod/floating/SimeDummyCandView;

.field private mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

.field private mFloatingAnchor:Landroid/graphics/Point;

.field private mFloatingInputPanel:Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;

.field private mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

.field private mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

.field private mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;)V
    .locals 2
    .parameter "service"

    .prologue
    const/4 v1, -0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    check-cast p1, Lcom/samsung/inputmethod/SamsungIME;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 110
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    sput-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    .line 111
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    .line 112
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->initFloaitnAnchorLoaction()V

    .line 113
    return-void
.end method

.method public static getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    return-object v0
.end method

.method private initFloaitnAnchorLoaction()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 359
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 361
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->MAX_X:I

    .line 362
    iput v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->MIN_X:I

    .line 364
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getMoveHandlerHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->MAX_Y:I

    .line 365
    iput v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->MIN_Y:I

    .line 368
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 369
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->getFloatingKeyboardXPosition(Z)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 370
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    invoke-static {v3}, Lcom/samsung/inputmethod/setting/SimeSetting;->getFloatingKeyboardYPosition(Z)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 377
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-nez v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 382
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 389
    :cond_0
    return-void

    .line 372
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->getFloatingKeyboardXPosition(Z)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 373
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->getFloatingKeyboardYPosition(Z)I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method private onKeyboardTypeChange()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 149
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->dismissFloatingInputPanel()V

    .line 152
    :cond_0
    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$SimeSkbManager$KeyboardType:[I

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 199
    :cond_1
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 200
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 201
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfigureState()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isTabSym()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 204
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->updateToolBarPage(Z)V

    .line 210
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 212
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 213
    .local v1, isLandscape:Z
    :goto_2
    if-eqz v1, :cond_3

    .line 214
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->updateFullscreenMode()V

    .line 217
    :cond_3
    return-void

    .line 154
    .end local v0           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    .end local v1           #isLandscape:Z
    :pswitch_0
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 155
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->setInputView(Landroid/view/View;)V

    .line 156
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesView(Landroid/view/View;)V

    .line 157
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setMoveHandlerShown(Z)V

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 164
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->initFloaitnAnchorLoaction()V

    .line 167
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->setInputView(Landroid/view/View;)V

    .line 168
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyCandView:Lcom/samsung/inputmethod/floating/SimeDummyCandView;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesView(Landroid/view/View;)V

    .line 170
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputPanel:Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->setInputView(Landroid/view/View;)V

    .line 171
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputPanel:Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->setCandidateView(Landroid/view/View;)V

    .line 174
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->setInputView(Landroid/view/View;)V

    .line 175
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyCandView:Lcom/samsung/inputmethod/floating/SimeDummyCandView;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesView(Landroid/view/View;)V

    .line 177
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 178
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setMoveHandlerShown(Z)V

    goto/16 :goto_0

    .line 191
    :pswitch_2
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 192
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->setInputView(Landroid/view/View;)V

    .line 193
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/SamsungIME;->setCandidatesView(Landroid/view/View;)V

    .line 194
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->setMoveHandlerShown(Z)V

    goto/16 :goto_0

    .line 205
    .restart local v0       #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfigureState()Z

    move-result v3

    if-nez v3, :cond_2

    .line 207
    invoke-virtual {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->updateToolBarPage(Z)V

    goto/16 :goto_1

    :cond_5
    move v1, v2

    .line 212
    goto/16 :goto_2

    .line 152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private resetCandidatesView()Z
    .locals 4

    .prologue
    .line 133
    const/4 v1, 0x0

    .line 134
    .local v1, reset:Z
    invoke-static {}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentCandView()Landroid/view/View;

    move-result-object v0

    .line 139
    .local v0, canView:Landroid/view/View;
    instance-of v2, v0, Lcom/samsung/inputmethod/candidate/SimeCandManager;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const/4 v1, 0x1

    .line 143
    :cond_0
    return v1
.end method


# virtual methods
.method public createCandidateView()Landroid/view/View;
    .locals 6

    .prologue
    .line 283
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 285
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f030004

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    .line 289
    new-instance v2, Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    .line 291
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/comm/SimeBalloonHint;->setBalloonBackground(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->initialize(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/comm/SimeBalloonHint;)V

    .line 296
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getCommonCandsContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDefaultCandidatesContainer:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    .line 299
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->cancelShowing()V

    .line 303
    :cond_0
    new-instance v2, Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-direct {v2, v3, v4}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    .line 306
    new-instance v2, Lcom/samsung/inputmethod/floating/SimeDummyCandView;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v2, v3}, Lcom/samsung/inputmethod/floating/SimeDummyCandView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyCandView:Lcom/samsung/inputmethod/floating/SimeDummyCandView;

    .line 308
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyCandView:Lcom/samsung/inputmethod/floating/SimeDummyCandView;

    invoke-virtual {v2, p0}, Lcom/samsung/inputmethod/floating/SimeDummyCandView;->setSkbmanager(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;)V

    .line 311
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$SimeSkbManager$KeyboardType:[I

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 322
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    .line 325
    .local v0, candView:Landroid/view/View;
    :goto_0
    return-object v0

    .line 314
    .end local v0           #candView:Landroid/view/View;
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    .line 315
    .restart local v0       #candView:Landroid/view/View;
    goto :goto_0

    .line 317
    .end local v0           #candView:Landroid/view/View;
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyCandView:Lcom/samsung/inputmethod/floating/SimeDummyCandView;

    .line 318
    .restart local v0       #candView:Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputPanel:Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->setCandidateView(Landroid/view/View;)V

    goto :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createInputView()Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 238
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 243
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f03001a

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    .line 244
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->initialize(Landroid/inputmethodservice/InputMethodService;Lcom/samsung/inputmethod/SimeInputModeSwitcher;)V

    .line 247
    new-instance v2, Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v2, v3}, Lcom/samsung/inputmethod/floating/SimeDummyInputView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    .line 248
    new-instance v2, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    invoke-direct {v2, v3, v4}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;-><init>(Landroid/inputmethodservice/InputMethodService;Landroid/view/View;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputPanel:Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;

    .line 251
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    invoke-virtual {v2, p0}, Lcom/samsung/inputmethod/floating/SimeDummyInputView;->setSkbmanager(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;)V

    .line 254
    const v2, 0x7f030011

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    .line 256
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->initialize(Landroid/inputmethodservice/InputMethodService;)V

    .line 259
    new-instance v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-direct {v2, v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;-><init>(Lcom/samsung/inputmethod/SamsungIME;)V

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    .line 260
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-static {v2}, Lcom/samsung/inputmethod/handwriting/SimeHWManager;->getInstance(Lcom/samsung/inputmethod/SamsungIME;)Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    .line 263
    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$1;->$SwitchMap$com$samsung$inputmethod$softkeyboard$SimeSkbManager$KeyboardType:[I

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 276
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    .line 279
    .local v1, inputView:Landroid/view/View;
    :goto_0
    return-object v1

    .line 265
    .end local v1           #inputView:Landroid/view/View;
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    .line 266
    .restart local v1       #inputView:Landroid/view/View;
    goto :goto_0

    .line 268
    .end local v1           #inputView:Landroid/view/View;
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    .line 269
    .restart local v1       #inputView:Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputPanel:Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;

    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->setInputView(Landroid/view/View;)V

    goto :goto_0

    .line 273
    .end local v1           #inputView:Landroid/view/View;
    :pswitch_2
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    .line 274
    .restart local v1       #inputView:Landroid/view/View;
    goto :goto_0

    .line 263
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public dismissFloatingInputPanel()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->dismiss()V

    .line 439
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputPanel:Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->dismiss()V

    .line 441
    return-void
.end method

.method public getCandBalloon()Lcom/samsung/inputmethod/comm/SimeBalloonHint;
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCandidatesBalloon:Lcom/samsung/inputmethod/comm/SimeBalloonHint;

    return-object v0
.end method

.method public getCandManager()Lcom/samsung/inputmethod/candidate/SimeCandManager;
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    return-object v0
.end method

.method public getComposingWindow()Lcom/samsung/inputmethod/composing/SimeComposingWindow;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    return-object v0
.end method

.method public getDefaultCandContainer()Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDefaultCandidatesContainer:Lcom/samsung/inputmethod/candidate/SimeCandHorContainer;

    return-object v0
.end method

.method public getDummyInputView()Lcom/samsung/inputmethod/floating/SimeDummyInputView;
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    return-object v0
.end method

.method public getFloatingAnchorLocation()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    return-object v0
.end method

.method public getFloatingInputPanel()Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;
    .locals 1

    .prologue
    .line 610
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputPanel:Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;

    return-object v0
.end method

.method public getHWManager()Lcom/samsung/inputmethod/handwriting/SimeHWManager;
    .locals 1

    .prologue
    .line 579
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mHWManager:Lcom/samsung/inputmethod/handwriting/SimeHWManager;

    return-object v0
.end method

.method public getMiniPopupWidnow()Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    return-object v0
.end method

.method public getNormalInputView()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    return-object v0
.end method

.method public getOneHandInputView()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    return-object v0
.end method

.method public getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getToolBarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v0

    .line 590
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValidWindowToken()Landroid/os/IBinder;
    .locals 2

    .prologue
    .line 614
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_0

    .line 615
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mDummyInputView:Lcom/samsung/inputmethod/floating/SimeDummyInputView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/floating/SimeDummyInputView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    .line 617
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public initAndShowFloatingInputPanel()V
    .locals 0

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->initFloaitnAnchorLoaction()V

    .line 431
    return-void
.end method

.method public saveFloatingKeyboardPosition()V
    .locals 3

    .prologue
    .line 393
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 394
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->saveFloatingKeyboardPosition(IIZ)V

    .line 398
    :goto_0
    return-void

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/inputmethod/setting/SimeSetting;->saveFloatingKeyboardPosition(IIZ)V

    goto :goto_0
.end method

.method public setFloatingCandidateViewShown(Z)V
    .locals 1
    .parameter "shown"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputPanel:Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->setCandidateViewShown(Z)V

    .line 445
    return-void
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 2
    .parameter "inputView"

    .prologue
    .line 231
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 232
    .local v0, vp:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 233
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #vp:Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 235
    :cond_0
    return-void
.end method

.method public setKeyboardType(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;)V
    .locals 2
    .parameter "newType"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->resetCandidatesView()Z

    move-result v0

    .line 117
    .local v0, resetCandView:Z
    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v1, p1}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    sput-object p1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    .line 125
    invoke-direct {p0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->onKeyboardTypeChange()V

    goto :goto_0
.end method

.method public showFloatingInputPanel()V
    .locals 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getIMEState()Lcom/samsung/inputmethod/SamsungIME$ImeState;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/SamsungIME$ImeState;->STATE_IDLE:Lcom/samsung/inputmethod/SamsungIME$ImeState;

    if-ne v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputPanel:Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;

    iget-object v1, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->show(II)V

    .line 425
    :cond_0
    return-void
.end method

.method public switchOneHandOrNormal()V
    .locals 2

    .prologue
    .line 333
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCurrentSkbType:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v0, v1, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isOneHandModeEnable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSkbInOneHandMode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_ONE_HAND:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->setKeyboardType(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;)V

    .line 341
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getRecentOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->RightHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v0, v1, :cond_2

    .line 345
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->changeRightHandMode()V

    goto :goto_0

    .line 346
    :cond_2
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getRecentOneHandMode()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    move-result-object v0

    sget-object v1, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;->LeftHandMode:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer$OneHandMode;

    if-ne v0, v1, :cond_0

    .line 350
    iget-object v0, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mOneHandContainer:Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->changeLeftHandMode()V

    goto :goto_0

    .line 353
    :cond_3
    sget-object v0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->setKeyboardType(Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;)V

    goto :goto_0
.end method

.method public updateFloatingPanel(II)V
    .locals 6
    .parameter "moveX"
    .parameter "moveY"

    .prologue
    const/4 v5, 0x0

    .line 509
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 515
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 516
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, p2

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 519
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-gez v3, :cond_0

    .line 520
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iput v5, v3, Landroid/graphics/Point;->x:I

    .line 522
    :cond_0
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-gez v3, :cond_1

    .line 523
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iput v5, v3, Landroid/graphics/Point;->y:I

    .line 525
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v4

    if-le v3, v4, :cond_2

    .line 526
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->x:I

    .line 528
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->isCandidatesViewShown()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 530
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteKeyboard()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 532
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getNotificationBarHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_3

    .line 533
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getNotificationBarHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    .line 544
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v1, v3, Landroid/graphics/Point;->x:I

    .line 545
    .local v1, locationX:I
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v2, v3, Landroid/graphics/Point;->y:I

    .line 547
    .local v2, locationY:I
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingInputPanel:Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->show(II)V

    .line 549
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 555
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getHeightRealCandidatesShowing()I

    move-result v3

    add-int/2addr v2, v3

    .line 556
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 557
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCompsingWindow:Lcom/samsung/inputmethod/composing/SimeComposingWindow;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/inputmethod/composing/SimeComposingWindow;->showCompsingWindow(II)V

    .line 560
    :cond_4
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->show(II)V

    .line 561
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mCombinedCandsContainer:Lcom/samsung/inputmethod/candidate/SimeCandManager;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->showExpand(II)V

    .line 562
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mMiniPopWindow:Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;

    invoke-virtual {v3, v1, v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbMiniPopWindow;->showSymbolTable(II)V

    .line 563
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mSkbContainer:Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    iget-object v4, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updatePopupSymbolsLocation(II)V

    .line 564
    return-void

    .line 536
    .end local v1           #locationX:I
    .end local v2           #locationY:I
    :cond_5
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getMoveHandlerHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getNotificationBarHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_3

    .line 537
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getMoveHandlerHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getNotificationBarHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 540
    :cond_6
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getMoveHandlerHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getNotificationBarHeight()I

    move-result v5

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_3

    .line 541
    iget-object v3, p0, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->mFloatingAnchor:Landroid/graphics/Point;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenHeight()I

    move-result v4

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getMoveHandlerHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getNotificationBarHeight()I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Point;->y:I

    goto/16 :goto_0
.end method
