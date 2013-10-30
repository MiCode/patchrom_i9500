.class public Lcom/samsung/inputmethod/tabmode/SimeTabBar;
.super Landroid/widget/LinearLayout;
.source "SimeTabBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/tabmode/SimeTabBar$TabPageLongClickListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_INPUT_MODE_TAB:I = 0x11110000

.field private static final TABPAGE_MOVE_BASEOFFSETS:I = 0x11

.field private static final TABPAGE_MOVE_FREQ:I = 0x3c

.field private static final TABPAGE_MOVE_MAXCOUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "SimeTabBar"


# instance fields
.field private mActiveTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

.field private mChangeBaseOffsets:I

.field private mDefaultTitleTextSize:F

.field private mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

.field private mEmotionActiveIcon:I

.field private mEmotionIcon:I

.field private mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mIme:Lcom/samsung/inputmethod/SamsungIME;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mInsertPosition:I

.field private mModeList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOnePageSize:I

.field private mRefreshPos:[I

.field private mRefreshPosTimer:Ljava/util/Timer;

.field private mTab34ActiveIcon:I

.field private mTab34Icon:I

.field private mTabActiveCenterBg:I

.field private mTabActiveEndBg:I

.field private mTabActiveFristBg:I

.field private mTabActiveTextColor:I

.field private mTabActiveTextShadowColor:I

.field private mTabClipActiveIcon:I

.field private mTabClipIcon:I

.field private mTabFullHandActiveIcon:I

.field private mTabFullHandIcon:I

.field private mTabNormalBg:I

.field private mTabQActiveIcon:I

.field private mTabQIcon:I

.field private mTabTextColor:I

.field private mTabTextShadowColor:I

.field private mTabTitleMovePosCount:I

.field private mTabWidth:I

.field private mdragTabIndex:I

.field private mmRefreshPosHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 129
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mRefreshPos:[I

    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabTitleMovePosCount:I

    .line 124
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mChangeBaseOffsets:I

    .line 125
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mRefreshPosTimer:Ljava/util/Timer;

    .line 714
    new-instance v0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;

    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;-><init>(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)V

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mmRefreshPosHandler:Landroid/os/Handler;

    .line 130
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mInflater:Landroid/view/LayoutInflater;

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mRefreshPos:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mInsertPosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Ljava/util/Vector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mModeList:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mmRefreshPosHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mChangeBaseOffsets:I

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabTitleMovePosCount:I

    return v0
.end method

.method static synthetic access$502(Lcom/samsung/inputmethod/tabmode/SimeTabBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabTitleMovePosCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabTitleMovePosCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabTitleMovePosCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mRefreshPosTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mdragTabIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/inputmethod/tabmode/SimeTabBar;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mdragTabIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    return-object v0
.end method

.method static synthetic access$802(Lcom/samsung/inputmethod/tabmode/SimeTabBar;Lcom/samsung/inputmethod/tabmode/SimeTabPage;)Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    return-object p1
.end method

.method static synthetic access$900(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Lcom/samsung/inputmethod/SamsungIME;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    return-object v0
.end method

.method private creatTabPage(I)Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    .locals 4
    .parameter "id"

    .prologue
    .line 475
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03001f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 476
    .local v0, tabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->initialize(I)V

    .line 479
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setTabPageTitle(Lcom/samsung/inputmethod/tabmode/SimeTabPage;)V

    .line 481
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabNormalBg:I

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabBgResource(I)V

    .line 483
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setTabPageResource(Lcom/samsung/inputmethod/tabmode/SimeTabPage;Z)V

    .line 485
    new-instance v1, Lcom/samsung/inputmethod/tabmode/SimeTabBar$TabPageLongClickListener;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar$TabPageLongClickListener;-><init>(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)V

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 487
    invoke-virtual {v0, p0}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 488
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setClickable(Z)V

    .line 489
    return-object v0
.end method

.method private getShadowLeftTab(I)I
    .locals 4
    .parameter "shadowTabLeft"

    .prologue
    .line 596
    const/4 v2, 0x0

    .line 597
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 598
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 599
    .local v0, child:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getRight()I

    move-result v3

    if-le v3, p1, :cond_1

    .line 600
    move v2, v1

    .line 604
    .end local v0           #child:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    :cond_0
    return v2

    .line 597
    .restart local v0       #child:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private printInfo()V
    .locals 3

    .prologue
    .line 782
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 788
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 789
    .local v1, lastView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    .line 782
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 795
    .end local v1           #lastView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private refresh()V
    .locals 5

    .prologue
    .line 443
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v2

    .line 444
    .local v2, totalNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 445
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 446
    .local v1, tabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setTabPageResource(Lcom/samsung/inputmethod/tabmode/SimeTabPage;Z)V

    .line 447
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mActiveTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    if-ne v1, v3, :cond_2

    .line 448
    iget v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabActiveTextColor:I

    iget v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabActiveTextShadowColor:I

    invoke-virtual {v1, v3, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTitleColor(II)V

    .line 449
    const/4 v3, 0x1

    invoke-direct {p0, v1, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setTabPageResource(Lcom/samsung/inputmethod/tabmode/SimeTabPage;Z)V

    .line 450
    if-nez v0, :cond_0

    .line 451
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mActiveTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    iget v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabActiveFristBg:I

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabBgResource(I)V

    .line 444
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 452
    :cond_0
    add-int/lit8 v3, v2, -0x1

    if-ne v0, v3, :cond_1

    .line 453
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mActiveTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    iget v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabActiveEndBg:I

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabBgResource(I)V

    goto :goto_1

    .line 455
    :cond_1
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mActiveTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    iget v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabActiveCenterBg:I

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabBgResource(I)V

    goto :goto_1

    .line 458
    :cond_2
    iget v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabNormalBg:I

    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabBgResource(I)V

    goto :goto_1

    .line 462
    .end local v1           #tabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    :cond_3
    return-void
.end method

.method private resetTabBar()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 465
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->removeAllViews()V

    .line 466
    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mActiveTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 467
    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 468
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mModeList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 470
    return-void
.end method

.method private setActiveTabPageByMode(I)V
    .locals 6
    .parameter "currentMode"

    .prologue
    const/4 v5, 0x0

    .line 334
    sparse-switch p1, :sswitch_data_0

    .line 391
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 392
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 393
    .local v2, v:Landroid/view/View;
    instance-of v3, v2, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    if-eqz v3, :cond_4

    move-object v1, v2

    .line 394
    check-cast v1, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 395
    .local v1, tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v3

    if-ne p1, v3, :cond_4

    .line 396
    invoke-virtual {p0, v1, v5}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setActiveTabPage(Lcom/samsung/inputmethod/tabmode/SimeTabPage;Z)V

    .line 406
    .end local v1           #tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    .end local v2           #v:Landroid/view/View;
    :cond_0
    return-void

    .line 338
    .end local v0           #i:I
    :sswitch_0
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 339
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 340
    .restart local v2       #v:Landroid/view/View;
    instance-of v3, v2, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 341
    check-cast v1, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 342
    .restart local v1       #tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v3

    const/high16 v4, 0x1111

    if-ne v3, v4, :cond_1

    .line 343
    invoke-virtual {p0, v1, v5}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setActiveTabPage(Lcom/samsung/inputmethod/tabmode/SimeTabPage;Z)V

    .line 338
    .end local v1           #tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 350
    .end local v0           #i:I
    .end local v2           #v:Landroid/view/View;
    :sswitch_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 351
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 352
    .restart local v2       #v:Landroid/view/View;
    instance-of v3, v2, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    if-eqz v3, :cond_2

    move-object v1, v2

    .line 353
    check-cast v1, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 354
    .restart local v1       #tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v3

    const/high16 v4, 0x1113

    if-ne v3, v4, :cond_2

    .line 355
    invoke-virtual {p0, v1, v5}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setActiveTabPage(Lcom/samsung/inputmethod/tabmode/SimeTabPage;Z)V

    .line 350
    .end local v1           #tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 368
    .end local v0           #i:I
    .end local v2           #v:Landroid/view/View;
    :sswitch_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 369
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 370
    .restart local v2       #v:Landroid/view/View;
    instance-of v3, v2, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    if-eqz v3, :cond_3

    move-object v1, v2

    .line 371
    check-cast v1, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 372
    .restart local v1       #tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v3

    const v4, 0x61011000

    if-ne v3, v4, :cond_3

    .line 373
    invoke-virtual {p0, v1, v5}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setActiveTabPage(Lcom/samsung/inputmethod/tabmode/SimeTabPage;Z)V

    .line 368
    .end local v1           #tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 391
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    :sswitch_data_0
    .sparse-switch
        0x11110000 -> :sswitch_0
        0x11130000 -> :sswitch_1
        0x11210000 -> :sswitch_0
        0x11310000 -> :sswitch_0
        0x11330000 -> :sswitch_1
        0x61011000 -> :sswitch_2
        0x61012000 -> :sswitch_2
        0x61013000 -> :sswitch_2
        0x61014000 -> :sswitch_2
        0x61021000 -> :sswitch_2
        0x61022000 -> :sswitch_2
        0x61023000 -> :sswitch_2
        0x61024000 -> :sswitch_2
    .end sparse-switch
.end method

.method private setTabPageResource(Lcom/samsung/inputmethod/tabmode/SimeTabPage;Z)V
    .locals 3
    .parameter "tabPage"
    .parameter "isActive"

    .prologue
    .line 516
    if-nez p1, :cond_0

    .line 582
    :goto_0
    return-void

    .line 518
    :cond_0
    if-eqz p2, :cond_1

    .line 519
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabActiveTextColor:I

    iget v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabActiveTextShadowColor:I

    invoke-virtual {p1, v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTitleColor(II)V

    .line 523
    :goto_1
    invoke-virtual {p1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v0

    .line 524
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 578
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabIcon(I)V

    goto :goto_0

    .line 521
    .end local v0           #id:I
    :cond_1
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabTextColor:I

    iget v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabTextShadowColor:I

    invoke-virtual {p1, v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTitleColor(II)V

    goto :goto_1

    .line 527
    .restart local v0       #id:I
    :sswitch_0
    if-eqz p2, :cond_2

    .line 528
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabQActiveIcon:I

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabIcon(I)V

    goto :goto_0

    .line 530
    :cond_2
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabQIcon:I

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabIcon(I)V

    goto :goto_0

    .line 535
    :sswitch_1
    if-eqz p2, :cond_3

    .line 536
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTab34ActiveIcon:I

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabIcon(I)V

    goto :goto_0

    .line 538
    :cond_3
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTab34Icon:I

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabIcon(I)V

    goto :goto_0

    .line 542
    :sswitch_2
    if-eqz p2, :cond_4

    .line 543
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabClipActiveIcon:I

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabIcon(I)V

    goto :goto_0

    .line 545
    :cond_4
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabClipIcon:I

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabIcon(I)V

    goto :goto_0

    .line 549
    :sswitch_3
    if-eqz p2, :cond_5

    .line 550
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mEmotionActiveIcon:I

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabIcon(I)V

    goto :goto_0

    .line 552
    :cond_5
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mEmotionIcon:I

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabIcon(I)V

    goto :goto_0

    .line 560
    :sswitch_4
    if-eqz p2, :cond_6

    .line 561
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabFullHandActiveIcon:I

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabIcon(I)V

    goto :goto_0

    .line 563
    :cond_6
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabFullHandIcon:I

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabIcon(I)V

    goto :goto_0

    .line 571
    :sswitch_5
    if-eqz p2, :cond_7

    .line 572
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabFullHandActiveIcon:I

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabIcon(I)V

    goto :goto_0

    .line 574
    :cond_7
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabFullHandIcon:I

    invoke-virtual {p1, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTabIcon(I)V

    goto :goto_0

    .line 524
    :sswitch_data_0
    .sparse-switch
        -0x3efe0000 -> :sswitch_2
        0x11020000 -> :sswitch_0
        0x12020000 -> :sswitch_1
        0x21040000 -> :sswitch_0
        0x22040000 -> :sswitch_1
        0x33010100 -> :sswitch_5
        0x33020100 -> :sswitch_5
        0x33030100 -> :sswitch_5
        0x33040100 -> :sswitch_5
        0x33050100 -> :sswitch_5
        0x34010100 -> :sswitch_4
        0x34020100 -> :sswitch_4
        0x34030100 -> :sswitch_4
        0x34040100 -> :sswitch_4
        0x34050100 -> :sswitch_4
        0x61008000 -> :sswitch_3
    .end sparse-switch
.end method

.method private setTabPageTitle(Lcom/samsung/inputmethod/tabmode/SimeTabPage;)V
    .locals 5
    .parameter "tabPage"

    .prologue
    .line 494
    if-nez p1, :cond_0

    .line 513
    :goto_0
    return-void

    .line 496
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v0

    .line 497
    .local v0, id:I
    invoke-static {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getTabTitleByMode(I)I

    move-result v2

    .line 498
    .local v2, title:I
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDefaultTitleTextSize:F

    .line 503
    .local v1, textSize:F
    sparse-switch v0, :sswitch_data_0

    .line 509
    iget v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDefaultTitleTextSize:F

    .line 512
    :goto_1
    invoke-virtual {p1, v2, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setTitle(IF)V

    goto :goto_0

    .line 506
    :sswitch_0
    iget v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDefaultTitleTextSize:F

    const v4, 0x3f59999a

    mul-float v1, v3, v4

    .line 507
    goto :goto_1

    .line 503
    :sswitch_data_0
    .sparse-switch
        0x32040000 -> :sswitch_0
        0x32050000 -> :sswitch_0
    .end sparse-switch
.end method

.method private updatePageSize()V
    .locals 8

    .prologue
    const/16 v7, 0x66

    const/4 v6, 0x6

    const/16 v5, 0xb

    const/4 v4, 0x7

    const/4 v3, 0x5

    .line 176
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 178
    .local v0, isLandscape:Z
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 179
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isTVDensity()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 180
    iput v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabWidth:I

    .line 181
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v1, v2, :cond_1

    .line 182
    iput v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mOnePageSize:I

    .line 228
    :goto_1
    return-void

    .line 176
    .end local v0           #isLandscape:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 184
    .restart local v0       #isLandscape:Z
    :cond_1
    if-eqz v0, :cond_2

    .line 185
    iput v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mOnePageSize:I

    goto :goto_1

    .line 187
    :cond_2
    iput v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mOnePageSize:I

    goto :goto_1

    .line 190
    :cond_3
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isHIGHDensity()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 191
    const/16 v1, 0x96

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabWidth:I

    .line 192
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v1, v2, :cond_4

    .line 193
    iput v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mOnePageSize:I

    goto :goto_1

    .line 195
    :cond_4
    if-eqz v0, :cond_5

    .line 196
    iput v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mOnePageSize:I

    goto :goto_1

    .line 198
    :cond_5
    iput v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mOnePageSize:I

    goto :goto_1

    .line 202
    :cond_6
    const/16 v1, 0x58

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabWidth:I

    .line 203
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v1, v2, :cond_7

    .line 204
    iput v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mOnePageSize:I

    goto :goto_1

    .line 206
    :cond_7
    if-eqz v0, :cond_8

    .line 207
    const/16 v1, 0xa

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mOnePageSize:I

    goto :goto_1

    .line 209
    :cond_8
    iput v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mOnePageSize:I

    goto :goto_1

    .line 213
    :cond_9
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->isXLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 214
    iput v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabWidth:I

    .line 215
    invoke-static {}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager;->getKeyboardType()Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    move-result-object v1

    sget-object v2, Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;->TYPE_FLOATING:Lcom/samsung/inputmethod/softkeyboard/SimeSkbManager$KeyboardType;

    if-ne v1, v2, :cond_a

    .line 216
    iput v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mOnePageSize:I

    goto :goto_1

    .line 218
    :cond_a
    if-eqz v0, :cond_b

    .line 219
    iput v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mOnePageSize:I

    goto :goto_1

    .line 221
    :cond_b
    iput v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mOnePageSize:I

    goto :goto_1

    .line 225
    :cond_c
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3e4ccccd

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabWidth:I

    .line 226
    const/4 v1, 0x4

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mOnePageSize:I

    goto :goto_1
.end method


# virtual methods
.method public addTabPage(Lcom/samsung/inputmethod/tabmode/SimeTabPage;I)V
    .locals 0
    .parameter "tab"
    .parameter "index"

    .prologue
    .line 301
    invoke-virtual {p0, p1, p2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->addView(Landroid/view/View;I)V

    .line 302
    return-void
.end method

.method public getActiveTab()Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mActiveTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    return-object v0
.end method

.method public getDragedTabPage()Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    return-object v0
.end method

.method public getLocation(II)I
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 799
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v3

    .line 800
    .local v3, totalPage:I
    const/4 v2, 0x0

    .line 805
    .local v2, locationIndex:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 806
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getX()F

    move-result v4

    float-to-int v1, v4

    .line 807
    .local v1, leftX:I
    const-string v4, "SimeTabBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "i=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "leftX ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    sub-int v4, p1, v1

    if-ltz v4, :cond_1

    sub-int v4, p1, v1

    iget v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabWidth:I

    if-gt v4, v5, :cond_1

    .line 809
    move v2, v0

    .line 819
    .end local v1           #leftX:I
    :cond_0
    return v2

    .line 812
    .restart local v1       #leftX:I
    :cond_1
    add-int/lit8 v4, v3, -0x1

    if-ne v0, v4, :cond_2

    sub-int v4, p1, v1

    if-lez v4, :cond_2

    .line 813
    add-int/lit8 v2, v3, -0x1

    .line 805
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getOnePageMaxSize()I
    .locals 1

    .prologue
    .line 778
    iget v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mOnePageSize:I

    return v0
.end method

.method public getTabBarSize()I
    .locals 3

    .prologue
    .line 587
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getTabBarOrder()Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, order:Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->decodeTabBarOrder(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v0

    .line 589
    .local v0, inputModeList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    return v2
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getTabIndex(Lcom/samsung/inputmethod/tabmode/SimeTabPage;)I
    .locals 4
    .parameter "tab"

    .prologue
    .line 284
    const/4 v2, 0x0

    .line 286
    .local v2, index:I
    if-nez p1, :cond_0

    .line 287
    const/4 v3, -0x1

    .line 296
    :goto_0
    return v3

    .line 289
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 290
    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 291
    .local v0, child:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    if-ne v0, p1, :cond_2

    .line 292
    move v2, v1

    .end local v0           #child:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    :cond_1
    move v3, v2

    .line 296
    goto :goto_0

    .line 289
    .restart local v0       #child:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getTabWidth()I
    .locals 1

    .prologue
    .line 774
    iget v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabWidth:I

    return v0
.end method

.method public init(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 3
    .parameter "ime"

    .prologue
    .line 134
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mEnv:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 135
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    .line 136
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 138
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 140
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f080023

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabTextColor:I

    .line 141
    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabActiveTextColor:I

    .line 142
    const v1, 0x7f080024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabTextShadowColor:I

    .line 143
    const v1, 0x7f080025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabActiveTextShadowColor:I

    .line 146
    const v1, 0x7f02028c

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabQIcon:I

    .line 147
    const v1, 0x7f02028d

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabQActiveIcon:I

    .line 148
    const v1, 0x7f020283

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTab34Icon:I

    .line 149
    const v1, 0x7f020284

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTab34ActiveIcon:I

    .line 151
    const v1, 0x7f020286

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabClipIcon:I

    .line 152
    const v1, 0x7f020287

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabClipActiveIcon:I

    .line 154
    const v1, 0x7f020288

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mEmotionIcon:I

    .line 155
    const v1, 0x7f020289

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mEmotionActiveIcon:I

    .line 159
    const v1, 0x7f02028a

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabFullHandIcon:I

    .line 160
    const v1, 0x7f02028b

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabFullHandActiveIcon:I

    .line 163
    const v1, 0x7f02027e

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabActiveFristBg:I

    .line 164
    const v1, 0x7f02027f

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabActiveEndBg:I

    .line 165
    const v1, 0x7f02027d

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabActiveCenterBg:I

    .line 166
    const v1, 0x7f020280

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabNormalBg:I

    .line 168
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDefaultTitleTextSize:F

    .line 170
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mModeList:Ljava/util/Vector;

    .line 172
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->updatePageSize()V

    .line 173
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v3, 0x0

    .line 307
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 309
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 327
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return v3

    .line 313
    .restart local p1
    :pswitch_1
    instance-of v2, p1, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    if-eqz v2, :cond_0

    .line 314
    iget-object v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v1

    .line 315
    .local v1, soundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 316
    invoke-virtual {v1, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    .line 321
    check-cast p1, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .end local p1
    check-cast p1, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setActiveTabPage(Lcom/samsung/inputmethod/tabmode/SimeTabPage;Z)V

    .line 322
    iget-object v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/SamsungIME;->autoCapitalization()V

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public processDrop(II)V
    .locals 10
    .parameter "x"
    .parameter "y"

    .prologue
    .line 611
    iget-object v8, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    if-nez v8, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    const/4 v4, 0x0

    .line 615
    .local v4, newPosIndex:I
    const/4 v1, 0x0

    .line 616
    .local v1, leftTabIndex:I
    const/4 v5, 0x0

    .line 618
    .local v5, rightTabIndex:I
    iget v8, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabWidth:I

    div-int/lit8 v8, v8, 0x2

    sub-int v6, p1, v8

    .line 619
    .local v6, shadowTabLeft:I
    if-gtz v6, :cond_5

    .line 620
    const/4 v1, 0x0

    .line 621
    const/4 v5, 0x0

    .line 633
    :cond_2
    :goto_1
    iget-object v8, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    invoke-virtual {p0, v8}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getTabIndex(Lcom/samsung/inputmethod/tabmode/SimeTabPage;)I

    move-result v0

    .line 635
    .local v0, dragTabIndex:I
    iput v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mdragTabIndex:I

    .line 637
    const/4 v3, 0x0

    .line 638
    .local v3, moveStart:I
    const/4 v2, 0x0

    .line 639
    .local v2, moveEnd:I
    if-ge v0, v1, :cond_7

    .line 640
    move v4, v1

    .line 641
    const/4 v8, -0x1

    iput v8, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mChangeBaseOffsets:I

    .line 642
    add-int/lit8 v3, v0, 0x1

    .line 643
    move v2, v4

    .line 652
    :goto_2
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getTabBarSize()I

    move-result v7

    .line 653
    .local v7, tabBarSize:I
    if-lt v3, v7, :cond_3

    .line 654
    add-int/lit8 v3, v7, -0x1

    .line 656
    :cond_3
    if-lt v2, v7, :cond_4

    .line 657
    add-int/lit8 v2, v7, -0x1

    .line 659
    :cond_4
    iget-object v8, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setVisibility(I)V

    .line 660
    invoke-virtual {p0, v3, v2, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->refreshOthersPosition(III)V

    goto :goto_0

    .line 623
    .end local v0           #dragTabIndex:I
    .end local v2           #moveEnd:I
    .end local v3           #moveStart:I
    .end local v7           #tabBarSize:I
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getWidth()I

    move-result v8

    if-lt v6, v8, :cond_6

    .line 624
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v8

    add-int/lit8 v1, v8, -0x1

    .line 625
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    goto :goto_1

    .line 627
    :cond_6
    invoke-direct {p0, v6}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getShadowLeftTab(I)I

    move-result v1

    .line 628
    add-int/lit8 v5, v1, 0x1

    .line 629
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v8

    if-lt v5, v8, :cond_2

    .line 630
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v8

    add-int/lit8 v5, v8, -0x1

    goto :goto_1

    .line 644
    .restart local v0       #dragTabIndex:I
    .restart local v2       #moveEnd:I
    .restart local v3       #moveStart:I
    :cond_7
    if-le v0, v1, :cond_0

    .line 645
    move v4, v5

    .line 646
    const/4 v8, 0x1

    iput v8, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mChangeBaseOffsets:I

    .line 647
    move v3, v4

    .line 648
    add-int/lit8 v2, v0, -0x1

    goto :goto_2
.end method

.method public refreshOthersPosition(III)V
    .locals 6
    .parameter "start"
    .parameter "end"
    .parameter "newPosIndex"

    .prologue
    const/4 v2, -0x1

    .line 681
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p2, v0, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mRefreshPos:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 685
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mRefreshPos:[I

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 686
    iput p3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mInsertPosition:I

    .line 688
    if-ne p3, v2, :cond_2

    .line 689
    iput v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mChangeBaseOffsets:I

    .line 692
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mRefreshPosTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 693
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mRefreshPosTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 695
    :cond_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mRefreshPosTimer:Ljava/util/Timer;

    .line 696
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mRefreshPosTimer:Ljava/util/Timer;

    new-instance v1, Lcom/samsung/inputmethod/tabmode/SimeTabBar$1;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar$1;-><init>(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x3c

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public removeViewFromBar()V
    .locals 2

    .prologue
    .line 669
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getTabIndex(Lcom/samsung/inputmethod/tabmode/SimeTabPage;)I

    move-result v0

    .line 670
    .local v0, dragTabIndex:I
    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->removeViewAt(I)V

    .line 671
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->invalidate()V

    .line 672
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->requestLayout()V

    .line 673
    return-void
.end method

.method public setActiveTabPage(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 432
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 436
    .local v0, tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setActiveTabPage(Lcom/samsung/inputmethod/tabmode/SimeTabPage;Z)V

    goto :goto_0
.end method

.method public setActiveTabPage(Lcom/samsung/inputmethod/tabmode/SimeTabPage;Z)V
    .locals 2
    .parameter "activeTab"
    .parameter "update"

    .prologue
    .line 409
    if-nez p1, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 412
    :cond_1
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mActiveTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 413
    if-eqz p2, :cond_2

    .line 414
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {p1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SamsungIME;->getSkbContainer()Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/softkeyboard/SimeSkbKeyboardContainer;->updateInputMode()V

    .line 423
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mIme:Lcom/samsung/inputmethod/SamsungIME;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/inputmethod/SamsungIME;->resetToIdleState(Z)V

    .line 424
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->refresh()V

    goto :goto_0
.end method

.method public updateTabBar()V
    .locals 12

    .prologue
    const/high16 v11, 0x1111

    .line 231
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getTabBarOrder()Ljava/lang/String;

    move-result-object v4

    .line 232
    .local v4, order:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->decodeTabBarOrder(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 234
    .local v2, inputModeList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .line 237
    .local v6, tabId:I
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->resetTabBar()V

    .line 238
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->updatePageSize()V

    .line 240
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v8, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabWidth:I

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 247
    .local v7, tabParams:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v8

    if-ge v1, v8, :cond_0

    .line 248
    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 252
    invoke-direct {p0, v6}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->creatTabPage(I)Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v5

    .line 253
    .local v5, tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-virtual {p0, v5, v7}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    .end local v5           #tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    :cond_0
    iget-object v8, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v8}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->getInputMode()I

    move-result v0

    .line 258
    .local v0, currentMode:I
    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->isModeChecked(I)Z

    move-result v3

    .line 262
    .local v3, isChecked:Z
    if-eqz v3, :cond_1

    .line 263
    invoke-direct {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setActiveTabPageByMode(I)V

    .line 269
    :goto_1
    return-void

    .line 266
    :cond_1
    iget-object v8, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v8, v11}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->switchToMode(I)I

    .line 267
    invoke-direct {p0, v11}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setActiveTabPageByMode(I)V

    goto :goto_1
.end method
