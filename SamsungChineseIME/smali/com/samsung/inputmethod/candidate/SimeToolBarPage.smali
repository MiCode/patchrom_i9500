.class public Lcom/samsung/inputmethod/candidate/SimeToolBarPage;
.super Landroid/widget/LinearLayout;
.source "SimeToolBarPage.java"


# static fields
.field private static final TOOL_BAR_DEFAULT_ITEMS_CHN:I = 0x5

.field private static final TOOL_BAR_DEFAULT_ITEMS_HKTW:I = 0x6

.field private static mAdjustResIndex:Z

.field private static mResItemAdjustStart:I


# instance fields
.field private mDefaultItems:I

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mToolbarIcon:Landroid/widget/ImageButton;

.field private mToolbarItemId:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

.field private mToolbarMain:Landroid/widget/LinearLayout;

.field private mToolbarSeparator:Landroid/view/View;

.field private mToolbarTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHKTWModelByCSC()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    iput v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mDefaultItems:I

    .line 62
    check-cast p1, Lcom/samsung/inputmethod/SamsungIME;

    .end local p1
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 63
    return-void

    .line 41
    .restart local p1
    :cond_0
    const/4 v0, 0x5

    goto :goto_0
.end method

.method private getVisibleResIndex(I)I
    .locals 8
    .parameter "originalIndex"

    .prologue
    .line 113
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getToolBarIconsResArray()[[I

    move-result-object v2

    .line 115
    .local v2, resArray:[[I
    add-int/lit8 v4, p1, 0x1

    .line 116
    .local v4, start:I
    iget v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mDefaultItems:I

    add-int/lit8 v0, v6, -0x1

    .line 117
    .local v0, end:I
    add-int/lit8 v5, p1, 0x1

    .line 119
    .local v5, visibleIndex:I
    move v1, v4

    .local v1, i:I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 120
    aget-object v6, v2, v1

    const/4 v7, 0x3

    aget v3, v6, v7

    .line 121
    .local v3, resVisibleState:I
    if-lez v3, :cond_1

    .line 127
    .end local v3           #resVisibleState:I
    :cond_0
    return v5

    .line 124
    .restart local v3       #resVisibleState:I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 119
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getToolbarItemId()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarItemId:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    return-object v0
.end method

.method public initialize(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;)V
    .locals 1
    .parameter "itemId"

    .prologue
    .line 66
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarItemId:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    .line 67
    const v0, 0x7f0c007f

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarMain:Landroid/widget/LinearLayout;

    .line 68
    const v0, 0x7f0c0080

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarIcon:Landroid/widget/ImageButton;

    .line 69
    const v0, 0x7f0c0081

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarTitle:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f0c0082

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarSeparator:Landroid/view/View;

    .line 71
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v10, 0x4000

    .line 155
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 157
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    iget v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mDefaultItems:I

    .line 158
    .local v2, itemNums:I
    invoke-static {}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getToolbarStatus()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    move-result-object v7

    .line 159
    .local v7, status:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;
    const/4 v1, 0x0

    .line 160
    .local v1, islandScape:Z
    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 161
    const/4 v1, 0x1

    .line 163
    :cond_0
    const/4 v5, 0x0

    .line 164
    .local v5, measuredWidth:I
    const/4 v4, 0x0

    .line 165
    .local v4, measuredHeight:I
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v8

    sget-object v9, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_NORMAL:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    invoke-virtual {v8, v9}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 166
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 167
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v8

    div-int v5, v8, v2

    .line 177
    :goto_0
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForToolBar()I

    move-result v8

    add-int/2addr v4, v8

    .line 187
    :goto_1
    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0079

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    .line 189
    .local v6, separatorWidth:I
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    sub-int v8, v5, v6

    const/4 v9, -0x1

    invoke-direct {v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 193
    .local v3, lp:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarMain:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-static {v5, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 196
    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 199
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 200
    return-void

    .line 169
    .end local v3           #lp:Landroid/widget/LinearLayout$LayoutParams;
    .end local v6           #separatorWidth:I
    :cond_1
    if-nez v1, :cond_2

    .line 170
    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0077

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    goto :goto_0

    .line 173
    :cond_2
    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0078

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    goto :goto_0

    .line 179
    :cond_3
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 180
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingWindowWidth()I

    move-result v8

    div-int v5, v8, v2

    .line 185
    :goto_2
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getFloatingCandHeight()I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_1

    .line 182
    :cond_4
    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0076

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    goto :goto_2
.end method

.method public setToolbarBgResource(I)V
    .locals 1
    .parameter "resid"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarMain:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 204
    return-void
.end method

.method public setToolbarIcon(I)V
    .locals 10
    .parameter "iconResIndex"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x6

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 74
    if-nez p1, :cond_0

    .line 75
    sput v6, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mResItemAdjustStart:I

    .line 76
    sput-boolean v6, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mAdjustResIndex:Z

    .line 78
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getToolBarIconsResArray()[[I

    move-result-object v1

    .line 80
    .local v1, resArray:[[I
    const/4 v2, 0x0

    .line 81
    .local v2, resId:I
    if-ltz p1, :cond_1

    if-ge p1, v8, :cond_1

    .line 82
    aget-object v4, v1, p1

    aget v2, v4, v7

    .line 86
    :cond_1
    aget-object v4, v1, p1

    const/4 v5, 0x3

    aget v3, v4, v5

    .line 88
    .local v3, resShowingState:I
    if-ltz v3, :cond_2

    sget-boolean v4, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mAdjustResIndex:Z

    if-eqz v4, :cond_3

    .line 91
    :cond_2
    sget-boolean v4, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mAdjustResIndex:Z

    if-nez v4, :cond_4

    .line 92
    sput-boolean v7, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mAdjustResIndex:Z

    .line 93
    invoke-direct {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->getVisibleResIndex(I)I

    move-result v0

    .line 98
    .local v0, newIndex:I
    :goto_0
    if-ltz v0, :cond_3

    if-ge v0, v8, :cond_3

    .line 99
    aget-object v4, v1, v0

    aget v2, v4, v7

    .line 100
    sput v0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mResItemAdjustStart:I

    .line 103
    .end local v0           #newIndex:I
    :cond_3
    if-lez v2, :cond_5

    .line 104
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarIcon:Landroid/widget/ImageButton;

    invoke-virtual {v4, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 105
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarIcon:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 106
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    :goto_1
    return-void

    .line 96
    :cond_4
    sget v4, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mResItemAdjustStart:I

    invoke-direct {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->getVisibleResIndex(I)I

    move-result v0

    .restart local v0       #newIndex:I
    goto :goto_0

    .line 108
    .end local v0           #newIndex:I
    :cond_5
    iget-object v4, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarIcon:Landroid/widget/ImageButton;

    invoke-virtual {v4, v9}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1
.end method

.method public setToolbarSeparatorVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 207
    if-nez p1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarSeparator:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarSeparator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setToolbarTitles(I)V
    .locals 5
    .parameter "titleResIndex"

    .prologue
    const/16 v4, 0x8

    .line 131
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getToolBarIconsResArray()[[I

    move-result-object v0

    .line 133
    .local v0, resArray:[[I
    add-int/lit8 p1, p1, 0x6

    .line 135
    array-length v2, v0

    if-lt p1, v2, :cond_0

    .line 136
    array-length v2, v0

    add-int/lit8 p1, v2, -0x1

    .line 138
    :cond_0
    aget-object v2, v0, p1

    const/4 v3, 0x1

    aget v1, v2, v3

    .line 139
    .local v1, resId:I
    if-lez v1, :cond_1

    .line 140
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 142
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarTitle:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarIcon:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 147
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->mToolbarTitle:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
