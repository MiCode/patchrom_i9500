.class public Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;
.super Landroid/widget/LinearLayout;
.source "SimeCandExpdPYContainer.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ExpdPYContainer"


# instance fields
.field private mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mExpdContainer:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

.field private mExpdLayout:Landroid/widget/LinearLayout;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mSpellScrollView:Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mExpdLayout:Landroid/widget/LinearLayout;

    .line 51
    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mSpellScrollView:Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;

    .line 57
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 61
    return-void
.end method


# virtual methods
.method public initialize(Lcom/samsung/inputmethod/SamsungIME;Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V
    .locals 3
    .parameter "ime"
    .parameter "expandContainer"
    .parameter "cvListener"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 65
    iput-object p2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mExpdContainer:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    .line 66
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0c002a

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mExpdLayout:Landroid/widget/LinearLayout;

    .line 69
    const v1, 0x7f0c002b

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;

    iput-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mSpellScrollView:Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;

    .line 70
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mSpellScrollView:Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;

    invoke-virtual {p1}, Lcom/samsung/inputmethod/SamsungIME;->getDecInfoMgr()Lcom/samsung/inputmethod/decoder/SimeDecManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecManager;->getChineseDec()Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/decoder/SimeDecChineseAbstract;->get34SplCandidates()Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    move-result-object v2

    invoke-virtual {v1, v2, p3}, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->initialize(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->invalidate()V

    .line 73
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->requestLayout()V

    .line 75
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v6, 0x4000

    .line 81
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->isInputViewShown()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 82
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_1

    .line 83
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    .line 84
    .local v2, measuredWidth:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->getHeight()I

    move-result v4

    add-int v1, v3, v4

    .line 85
    .local v1, measuredHeight:I
    sget-boolean v3, Lcom/samsung/inputmethod/comm/SimeFeature;->SIME_SUPPORT_TOOLBAR:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isHandwriteFSMode()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getToolBarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getCandidatesContainer()Lcom/samsung/inputmethod/candidate/SimeCandManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeCandManager;->getToolBarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 89
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 90
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForToolBar()I

    move-result v3

    add-int/2addr v1, v3

    .line 105
    .end local v0           #env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    :cond_0
    :goto_0
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 106
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 108
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 110
    return-void

    .line 92
    .end local v1           #measuredHeight:I
    .end local v2           #measuredWidth:I
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_2

    .line 93
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v2

    .line 94
    .restart local v2       #measuredWidth:I
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowHeight()I

    move-result v1

    .restart local v1       #measuredHeight:I
    goto :goto_0

    .line 96
    .end local v1           #measuredHeight:I
    .end local v2           #measuredWidth:I
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    sub-int v2, v3, v4

    .line 97
    .restart local v2       #measuredWidth:I
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getOneHandContainer()Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeOneHandContainer;->getHeight()I

    move-result v1

    .restart local v1       #measuredHeight:I
    goto :goto_0

    .line 101
    .end local v1           #measuredHeight:I
    .end local v2           #measuredWidth:I
    :cond_3
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    .line 102
    .restart local v2       #measuredWidth:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getSkbRowNumber()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSkbCoreHeight(I)I

    move-result v4

    add-int v1, v3, v4

    .restart local v1       #measuredHeight:I
    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->removeAllViewsInLayout()V

    .line 135
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mExpdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 136
    return-void
.end method

.method public showExpandContents()V
    .locals 4

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->reset()V

    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, height:I
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v2

    sget-object v3, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v2, v3, :cond_1

    .line 116
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCandHeight()I

    move-result v0

    .line 120
    :goto_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 123
    .local v1, pinyinListParams:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mExpdLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mExpdContainer:Lcom/samsung/inputmethod/candidate/SimeCandExpdContainer;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mExpdLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->addView(Landroid/view/View;)V

    .line 125
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mSpellScrollView:Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->createSpellView()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mSpellScrollView:Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    :cond_0
    return-void

    .line 118
    .end local v1           #pinyinListParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForCandidates()I

    move-result v0

    goto :goto_0
.end method

.method public updateSpellContents()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeCandExpdPYContainer;->mSpellScrollView:Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->createSpellView()Z

    .line 131
    return-void
.end method
