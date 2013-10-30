.class public Lcom/samsung/inputmethod/tabmode/SimeTabArrow;
.super Landroid/widget/LinearLayout;
.source "SimeTabArrow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;
    }
.end annotation


# instance fields
.field private mArrowType:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

.field private mButton:Landroid/widget/ImageButton;

.field private mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

.field private mLeftIndicator:Landroid/widget/LinearLayout;

.field private mLeftSep:Landroid/view/View;

.field private mRightIndicator:Landroid/widget/LinearLayout;

.field private mRightSep:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method private creatIndicator()Landroid/view/View;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, sepView:Landroid/view/View;
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    return-object v0
.end method


# virtual methods
.method public enableArrow(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 173
    return-void
.end method

.method public getButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public init(Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;)V
    .locals 8
    .parameter "type"

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 50
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 51
    .local v2, r:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mArrowType:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    .line 53
    const v3, 0x7f020290

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    .line 55
    const v3, 0x7f0c0066

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mLeftIndicator:Landroid/widget/LinearLayout;

    .line 56
    const v3, 0x7f0c006a

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mRightIndicator:Landroid/widget/LinearLayout;

    .line 58
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 59
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 62
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v3

    sget-object v4, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v3, v4, :cond_1

    .line 63
    const v3, 0x7f0a0070

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 67
    :goto_0
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mLeftIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mRightIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    const v3, 0x7f0c0067

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mLeftSep:Landroid/view/View;

    .line 71
    const v3, 0x7f0c0069

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mRightSep:Landroid/view/View;

    .line 73
    const v3, 0x7f0c0068

    invoke-virtual {p0, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mButton:Landroid/widget/ImageButton;

    .line 75
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mArrowType:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    sget-object v4, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;->Left:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    if-ne v3, v4, :cond_2

    .line 76
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mRightSep:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mLeftSep:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mLeftIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mRightIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mButton:Landroid/widget/ImageButton;

    const v4, 0x7f0202ae

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 94
    :cond_0
    :goto_1
    return-void

    .line 65
    :cond_1
    const v3, 0x7f0a006c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 84
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mArrowType:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    sget-object v4, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;->Right:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    if-ne v3, v4, :cond_0

    .line 85
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mRightSep:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mLeftSep:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 89
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mLeftIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 90
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mRightIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mButton:Landroid/widget/ImageButton;

    const v4, 0x7f0202af

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1
.end method

.method public resetIndicator()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mLeftIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 161
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mRightIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 162
    return-void
.end method

.method public setIndicators(I)V
    .locals 7
    .parameter "num"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->resetIndicator()V

    .line 125
    if-gtz p1, :cond_1

    .line 157
    :cond_0
    return-void

    .line 129
    :cond_1
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-direct {v1, v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 131
    .local v1, params1:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v4, 0xd

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 133
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mIndicatorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-direct {v2, v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 135
    .local v2, params2:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 137
    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mArrowType:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    sget-object v5, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;->Left:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    if-ne v4, v5, :cond_3

    .line 138
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->creatIndicator()Landroid/view/View;

    move-result-object v3

    .line 140
    .local v3, sepView:Landroid/view/View;
    add-int/lit8 v4, p1, -0x1

    if-ne v0, v4, :cond_2

    .line 141
    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mLeftIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_2
    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mLeftIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 146
    .end local v0           #i:I
    .end local v3           #sepView:Landroid/view/View;
    :cond_3
    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mArrowType:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    sget-object v5, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;->Right:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    if-ne v4, v5, :cond_0

    .line 147
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    if-ge v0, p1, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->creatIndicator()Landroid/view/View;

    move-result-object v3

    .line 149
    .restart local v3       #sepView:Landroid/view/View;
    add-int/lit8 v4, p1, -0x1

    if-ne v0, v4, :cond_4

    .line 150
    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mRightIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 152
    :cond_4
    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mRightIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3
.end method

.method public setSeparatorLineHide(Z)V
    .locals 2
    .parameter "hide"

    .prologue
    .line 116
    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mLeftSep:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 121
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mLeftSep:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateArrowLayout()V
    .locals 3

    .prologue
    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, width:I
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v1, v2, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    .line 107
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mLeftIndicator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mLeftIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mRightIndicator:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->mRightIndicator:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 113
    :cond_1
    return-void

    .line 105
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a006c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    goto :goto_0
.end method
