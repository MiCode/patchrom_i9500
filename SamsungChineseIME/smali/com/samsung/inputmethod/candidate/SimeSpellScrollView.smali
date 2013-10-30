.class public Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;
.super Lcom/samsung/inputmethod/comm/SimeScrollView;
.source "SimeSpellScrollView.java"


# instance fields
.field private mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

.field private mRefreshFlag:Z

.field private mSpellInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Lcom/samsung/inputmethod/comm/SimeScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mSpellInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mRefreshFlag:Z

    .line 59
    return-void
.end method

.method private updateSelect()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mSpellInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->getSelectIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->setDefaultActiveIndex(I)V

    .line 120
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->getSelectIndex()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/samsung/inputmethod/candidate/SimeCandViewListener;->onClickChoice(I)Z

    .line 121
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->updateFocusView()V

    .line 123
    return-void
.end method


# virtual methods
.method public createSpellView()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mSpellInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->size()I

    move-result v2

    .line 73
    .local v2, totalNum:I
    if-gtz v2, :cond_0

    .line 93
    :goto_0
    return v3

    .line 76
    :cond_0
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mSpellInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->getDefaultActiveIndex()I

    move-result v0

    .line 78
    .local v0, activeIndex:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->reset()V

    .line 80
    if-gez v0, :cond_1

    .line 81
    iput-boolean v3, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mRefreshFlag:Z

    .line 85
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_3

    .line 86
    if-ne v0, v1, :cond_2

    .line 87
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mSpellInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4}, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->addText(Ljava/lang/String;Z)Z

    .line 85
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 83
    .end local v1           #i:I
    :cond_1
    iput-boolean v4, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mRefreshFlag:Z

    goto :goto_1

    .line 89
    .restart local v1       #i:I
    :cond_2
    iget-object v5, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mSpellInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/candidate/SimeCandInfo;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->addText(Ljava/lang/String;Z)Z

    goto :goto_3

    .line 91
    :cond_3
    invoke-virtual {p0, v3, v3}, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->scrollTo(II)V

    move v3, v4

    .line 93
    goto :goto_0
.end method

.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mRefreshFlag:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->updateFocusView()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mRefreshFlag:Z

    .line 131
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/inputmethod/comm/SimeScrollView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 132
    return-void
.end method

.method public initialize(Lcom/samsung/inputmethod/candidate/SimeCandInfo;Lcom/samsung/inputmethod/candidate/SimeCandViewListener;)V
    .locals 2
    .parameter "spellInfo"
    .parameter "cvListener"

    .prologue
    .line 64
    const v0, 0x7f0c002c

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-super {p0, v0, v1}, Lcom/samsung/inputmethod/comm/SimeScrollView;->initialize(Landroid/widget/LinearLayout;Z)V

    .line 65
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mSpellInfo:Lcom/samsung/inputmethod/candidate/SimeCandInfo;

    .line 66
    iput-object p2, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mCvListener:Lcom/samsung/inputmethod/candidate/SimeCandViewListener;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->mRefreshFlag:Z

    .line 68
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "me"

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Lcom/samsung/inputmethod/comm/SimeScrollView;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 98
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 99
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 107
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeSpellScrollView;->updateSelect()V

    goto :goto_0

    .line 99
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
