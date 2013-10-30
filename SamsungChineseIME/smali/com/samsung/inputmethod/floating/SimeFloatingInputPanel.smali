.class public Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;
.super Landroid/widget/PopupWindow;
.source "SimeFloatingInputPanel.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeFloatingInputPanel"


# instance fields
.field mCandidatesFrame:Landroid/widget/FrameLayout;

.field mIme:Lcom/samsung/inputmethod/SamsungIME;

.field mInflater:Landroid/view/LayoutInflater;

.field mInputFrame:Landroid/widget/FrameLayout;

.field private mParentView:Landroid/view/View;

.field mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/InputMethodService;Landroid/view/View;)V
    .locals 2
    .parameter "service"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 57
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    move-object v0, p1

    .line 58
    check-cast v0, Lcom/samsung/inputmethod/SamsungIME;

    iput-object v0, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 59
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/inputmethodservice/InputMethodService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mInflater:Landroid/view/LayoutInflater;

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->setInputMethodMode(I)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->setSplitTouchEnabled(Z)V

    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->setClippingEnabled(Z)V

    .line 64
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->setLayoutInScreenEnabled(Z)V

    .line 65
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isPlatformKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/16 v0, 0x7dc

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->setWindowLayoutType(I)V

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->initViews()V

    .line 72
    iput-object p2, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mParentView:Landroid/view/View;

    .line 74
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 78
    iget-object v0, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f03000c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mRootView:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mRootView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->setContentView(Landroid/view/View;)V

    .line 80
    invoke-virtual {p0, v3, v3}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->setWindowLayoutMode(II)V

    .line 82
    iget-object v0, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mRootView:Landroid/view/View;

    const v1, 0x7f0c0030

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mCandidatesFrame:Landroid/widget/FrameLayout;

    .line 83
    iget-object v0, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mRootView:Landroid/view/View;

    const v1, 0x7f0c0031

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mInputFrame:Landroid/widget/FrameLayout;

    .line 85
    return-void
.end method


# virtual methods
.method public setCandidateView(Landroid/view/View;)V
    .locals 4
    .parameter "realCandView"

    .prologue
    const/4 v3, -0x2

    .line 88
    if-eqz p1, :cond_1

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 90
    .local v0, p:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 91
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #p:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 94
    iget-object v1, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mCandidatesFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    :cond_1
    return-void
.end method

.method public setCandidateViewShown(Z)V
    .locals 2
    .parameter "shown"

    .prologue
    .line 129
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 130
    .local v0, vis:I
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mCandidatesFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 132
    return-void

    .line 129
    .end local v0           #vis:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setInputView(Landroid/view/View;)V
    .locals 4
    .parameter "realInputView"

    .prologue
    const/4 v3, -0x2

    .line 100
    if-eqz p1, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 102
    .local v0, p:Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0           #p:Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mInputFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 106
    iget-object v1, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mInputFrame:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    :cond_1
    return-void
.end method

.method public show(II)V
    .locals 2
    .parameter "locationX"
    .parameter "locationY"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 121
    iget-object v0, p0, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->mParentView:Landroid/view/View;

    const/16 v1, 0x53

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->getHeight()I

    move-result v1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/samsung/inputmethod/floating/SimeFloatingInputPanel;->update(IIII)V

    goto :goto_0
.end method
