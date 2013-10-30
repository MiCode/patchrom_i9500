.class public Lcom/samsung/inputmethod/candidate/SimeToolBarView;
.super Landroid/widget/LinearLayout;
.source "SimeToolBarView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeToolBarView"

.field private static final TOOL_BAR_DEFAULT_ITEMS:I = 0x6

.field private static mToolbarPageDown:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;


# instance fields
.field private mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mToolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

.field private mToolbarSymbolActive:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarSymbolActive:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    .line 38
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mInflater:Landroid/view/LayoutInflater;

    .line 41
    return-void
.end method

.method private changeFocusWhenMoving(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;)V
    .locals 2
    .parameter "newItemId"

    .prologue
    .line 377
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarPageDown:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->getToolbarItemId()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->setImageResource(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;Z)V

    .line 378
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->setImageResource(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;Z)V

    .line 379
    return-void
.end method

.method private getDefActiveItem()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    .locals 2

    .prologue
    .line 99
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_COMMON:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    .line 100
    .local v0, activeItem:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    iget-object v1, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isLatestSym()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    .line 103
    :cond_0
    return-object v0
.end method

.method private needSwitchFocusForSymbols(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;)Z
    .locals 4
    .parameter "newItemId"

    .prologue
    .line 382
    const/4 v1, 0x0

    .line 383
    .local v1, switchFocus:Z
    sget-object v2, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarPageDown:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->getToolbarItemId()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    move-result-object v0

    .line 384
    .local v0, oldItemId:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    iget-object v2, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    sget-object v3, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->TOOLBAR_SYMBOLS:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 386
    :goto_0
    return v1

    .line 384
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setImageResUnPressed()V
    .locals 4

    .prologue
    .line 322
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 338
    :cond_0
    return-void

    .line 325
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getToolBarItemsNum()I

    move-result v1

    .line 328
    .local v1, itemNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 329
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    .line 331
    .local v2, toolbarPage:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;
    const v3, 0x7f0202d3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->setToolbarBgResource(I)V

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private setImageResource(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;Z)V
    .locals 4
    .parameter "itemId"
    .parameter "pressed"

    .prologue
    .line 341
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->getChildCount()I

    move-result v3

    if-gtz v3, :cond_1

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v3}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getToolBarItemsNum()I

    move-result v1

    .line 347
    .local v1, itemNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 348
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    .line 349
    .local v2, toolbarPage:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;
    invoke-virtual {v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->getToolbarItemId()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 350
    if-eqz p2, :cond_2

    .line 352
    const v3, 0x7f0202d7

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->setToolbarBgResource(I)V

    goto :goto_0

    .line 360
    :cond_2
    const v3, 0x7f0202d3

    invoke-virtual {v2, v3}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->setToolbarBgResource(I)V

    goto :goto_0

    .line 347
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public createToolBarViews(Z)V
    .locals 9
    .parameter "toolPage"

    .prologue
    const/4 v8, 0x0

    .line 107
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getToolBarItemsNum()I

    move-result v2

    .line 110
    .local v2, itemNums:I
    const/4 v3, 0x6

    .line 113
    .local v3, maxItems:I
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHKTWModelByCSC()Z

    move-result v6

    if-nez v6, :cond_0

    .line 114
    const/4 v3, 0x5

    .line 116
    :cond_0
    if-le v2, v3, :cond_1

    .line 117
    move v2, v3

    .line 119
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getToolbarStatus()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    move-result-object v4

    .line 120
    .local v4, status:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->removeAllViews()V

    .line 122
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_6

    .line 124
    if-eqz p1, :cond_4

    .line 125
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030021

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    .line 131
    .local v5, toolbarPage:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;
    :goto_1
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getToolBarVecValue(I)Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    move-result-object v1

    .line 133
    .local v1, itemId:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    invoke-virtual {v5, v1}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->initialize(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;)V

    .line 134
    if-eqz p1, :cond_5

    .line 135
    invoke-virtual {v5, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->setToolbarIcon(I)V

    .line 141
    :goto_2
    const v6, 0x7f0202d3

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->setToolbarBgResource(I)V

    .line 148
    add-int/lit8 v6, v3, -0x1

    if-eq v0, v6, :cond_2

    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->TOOLBAR_SYMBOLS:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    invoke-virtual {v4, v6}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    add-int/lit8 v6, v2, -0x1

    if-ne v0, v6, :cond_3

    .line 150
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->setToolbarSeparatorVisible(Z)V

    .line 152
    :cond_3
    invoke-virtual {v5, p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->setClickable(Z)V

    .line 154
    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->addView(Landroid/view/View;)V

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 128
    .end local v1           #itemId:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    .end local v5           #toolbarPage:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;
    :cond_4
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030022

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    .restart local v5       #toolbarPage:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;
    goto :goto_1

    .line 137
    .restart local v1       #itemId:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    :cond_5
    invoke-virtual {v5, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->setToolbarTitles(I)V

    goto :goto_2

    .line 156
    .end local v1           #itemId:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    .end local v5           #toolbarPage:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;
    :cond_6
    return-void
.end method

.method public initialize(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 1
    .parameter "imeService"

    .prologue
    .line 44
    iput-object p1, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 45
    sget-object v0, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->createToolBarViews(Z)V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarSymbolActive:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    .line 51
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 162
    const/4 v4, 0x0

    .line 163
    .local v4, processed:Z
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 168
    .local v0, action:I
    instance-of v8, p1, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    if-nez v8, :cond_0

    .line 318
    :goto_0
    return v7

    :cond_0
    move-object v6, p1

    .line 170
    check-cast v6, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    .line 171
    .local v6, touchItem:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;
    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->getToolbarItemId()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    move-result-object v2

    .line 173
    .local v2, itemId:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v7, v4

    .line 318
    goto :goto_0

    .line 177
    :pswitch_0
    const/4 v5, 0x0

    .line 178
    .local v5, switchFocus:Z
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarPageDown:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    if-eqz v8, :cond_2

    .line 179
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->needSwitchFocusForSymbols(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;)Z

    move-result v5

    .line 181
    :cond_2
    if-eqz v5, :cond_3

    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarPageDown:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    if-eqz v8, :cond_3

    .line 183
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarPageDown:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->getToolbarItemId()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    move-result-object v8

    invoke-direct {p0, v8, v7}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->setImageResource(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;Z)V

    .line 185
    :cond_3
    sput-object v6, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarPageDown:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    .line 186
    invoke-direct {p0, v2, v9}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->setImageResource(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;Z)V

    .line 187
    const/4 v4, 0x1

    .line 188
    goto :goto_1

    .line 193
    .end local v5           #switchFocus:Z
    :pswitch_1
    sget-object v7, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarPageDown:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->getToolbarItemId()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    move-result-object v7

    if-eq v2, v7, :cond_4

    .line 194
    invoke-direct {p0, v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->changeFocusWhenMoving(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;)V

    .line 195
    sput-object v6, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarPageDown:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    .line 197
    :cond_4
    const/4 v4, 0x1

    .line 198
    goto :goto_1

    .line 201
    :pswitch_2
    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->isSymbolToolPage(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;)Z

    move-result v1

    .line 203
    .local v1, isSymbol:Z
    if-nez v1, :cond_5

    .line 204
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->setImageResUnPressed()V

    .line 206
    :cond_5
    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->getSkbManager()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getToolbarContainer()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getEnableState(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;)I

    move-result v3

    .line 208
    .local v3, pageEnableState:I
    if-ltz v3, :cond_1

    .line 213
    invoke-virtual {p0, v7}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->playSoundEffect(I)V

    .line 215
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_VOICE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 217
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->startVoiceListening()V

    .line 218
    const/4 v4, 0x1

    goto :goto_1

    .line 220
    :cond_6
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_CLIPBOARD:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 222
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->handleClipboardKey()V

    .line 225
    const/4 v4, 0x1

    goto :goto_1

    .line 227
    :cond_7
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_OCR:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 229
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getOCRProcessor()Lcom/samsung/inputmethod/SimeOCR;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SimeOCR;->handleOcrKey()V

    .line 230
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 232
    :cond_8
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_KEYBOARD_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 234
    sget-object v7, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->INSTANCE:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 235
    sget-object v7, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->INSTANCE:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->dismiss()V

    .line 239
    :goto_2
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 237
    :cond_9
    sget-object v7, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->INSTANCE:Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;

    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v8, p1}, Lcom/samsung/inputmethod/softkeyboard/type/SimeKeyboardSetPopupWindow;->show(Lcom/samsung/inputmethod/SamsungIME;Landroid/view/View;)V

    goto :goto_2

    .line 241
    :cond_a
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_IME_SETTING:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 243
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 244
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getDialogMgr()Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->ClearAllPopupMenu()V

    .line 245
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->showIMESettingMenu()V

    .line 246
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 248
    :cond_b
    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_FLOATING_WINDOW:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 249
    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->isFloatingKeyboardForMultiWindow()Z

    move-result v8

    if-nez v8, :cond_d

    .line 252
    invoke-static {v9}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetFloatingKeyboard(Z)V

    .line 255
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 256
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7, v9}, Lcom/samsung/inputmethod/SamsungIME;->SetFloatingKeyboardForMultiWindow(Z)V

    .line 266
    :cond_c
    :goto_3
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 268
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 257
    :cond_d
    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->isFloatingKeyboardForMultiWindow()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 260
    invoke-static {v7}, Lcom/samsung/inputmethod/setting/SimeSetting;->SetFloatingKeyboard(Z)V

    .line 263
    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v8

    if-eqz v8, :cond_c

    .line 264
    iget-object v8, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v8, v7}, Lcom/samsung/inputmethod/SamsungIME;->SetFloatingKeyboardForMultiWindow(Z)V

    goto :goto_3

    .line 270
    :cond_e
    sget-object v7, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_COMMON:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2, v7}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 272
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v7

    const v8, 0x65501000

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToTabSymMode(I)Z

    move-result v7

    if-eqz v7, :cond_f

    .line 274
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 277
    :cond_f
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 278
    :cond_10
    sget-object v7, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_ANGLE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2, v7}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 280
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v7

    const v8, 0x65601000

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToTabSymMode(I)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 282
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 285
    :cond_11
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 286
    :cond_12
    sget-object v7, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_HALF_ANGLE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2, v7}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 288
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v7

    const v8, 0x65701000

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToTabSymMode(I)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 290
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 293
    :cond_13
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 294
    :cond_14
    sget-object v7, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->TOOLBAR_SYMBOLS_EMOTION:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v2, v7}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 296
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v7

    const v8, 0x65801000

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->ChangeToTabSymMode(I)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 300
    :cond_15
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 301
    const/4 v4, 0x1

    goto/16 :goto_1

    .line 310
    .end local v1           #isSymbol:Z
    .end local v3           #pageEnableState:I
    :pswitch_3
    iget-object v7, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    sget-object v8, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    invoke-virtual {v7, v8}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 311
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->setImageResUnPressed()V

    goto/16 :goto_1

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public updateToolBarView(Z)V
    .locals 8
    .parameter "toolbarPage"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->createToolBarViews(Z)V

    .line 58
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->setImageResUnPressed()V

    .line 59
    invoke-static {}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer;->getToolbarStatus()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    .line 63
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v3

    .line 64
    .local v3, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v3}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfigureState()Z

    move-result v2

    .line 65
    .local v2, configurationChanged:Z
    if-nez v2, :cond_0

    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarSymbolActive:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    if-nez v6, :cond_5

    :cond_0
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    sget-object v7, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->TOOLBAR_SYMBOLS:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 71
    if-eqz v2, :cond_3

    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarPageDown:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    if-eqz v6, :cond_3

    .line 75
    sget-object v6, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarPageDown:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->getToolbarItemId()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarSymbolActive:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    .line 79
    :goto_0
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarSymbolActive:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->setImageResource(Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;Z)V

    .line 80
    invoke-virtual {p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->getChildCount()I

    move-result v1

    .line 82
    .local v1, childNum:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v1, :cond_2

    .line 83
    const/4 v5, 0x0

    .line 84
    .local v5, itemPage:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    if-eqz v6, :cond_1

    .line 85
    invoke-virtual {p0, v4}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #itemPage:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;
    check-cast v5, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    .line 87
    .restart local v5       #itemPage:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;
    :cond_1
    invoke-virtual {v5}, Lcom/samsung/inputmethod/candidate/SimeToolBarPage;->getToolbarItemId()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    move-result-object v0

    .line 88
    .local v0, childItemId:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarSymbolActive:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    invoke-virtual {v0, v6}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 89
    sput-object v5, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarPageDown:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;

    .line 96
    .end local v0           #childItemId:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    .end local v1           #childNum:I
    .end local v4           #i:I
    .end local v5           #itemPage:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;
    :cond_2
    :goto_2
    return-void

    .line 77
    :cond_3
    invoke-direct {p0}, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->getDefActiveItem()Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarSymbolActive:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    goto :goto_0

    .line 82
    .restart local v0       #childItemId:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    .restart local v1       #childNum:I
    .restart local v4       #i:I
    .restart local v5       #itemPage:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 93
    .end local v0           #childItemId:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;
    .end local v1           #childNum:I
    .end local v4           #i:I
    .end local v5           #itemPage:Lcom/samsung/inputmethod/candidate/SimeToolBarPage;
    :cond_5
    iget-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarStatus:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    sget-object v7, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->TOOLBAR_PAGE:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;

    invoke-virtual {v6, v7}, Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarStatus;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 94
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/inputmethod/candidate/SimeToolBarView;->mToolbarSymbolActive:Lcom/samsung/inputmethod/candidate/SimeToolBarContainer$ToolBarItems;

    goto :goto_2
.end method
