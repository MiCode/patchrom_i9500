.class public Lcom/samsung/inputmethod/tabmode/SimeTabContainer;
.super Landroid/widget/RelativeLayout;
.source "SimeTabContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;,
        Lcom/samsung/inputmethod/tabmode/SimeTabContainer$ScrollTouchListener;,
        Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DRAG_PAGE_MOVE_TIME1:I = 0x3e8

.field private static final DRAG_PAGE_MOVE_TIME2:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "SimeTabContainer"


# instance fields
.field private mDragedTabPageIndex:I

.field private mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mImeService:Lcom/samsung/inputmethod/SamsungIME;

.field private mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

.field private mLeftArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

.field private mRightArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

.field private mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

.field private mTabEditor:Landroid/widget/ImageButton;

.field private mTabScrollView:Landroid/widget/HorizontalScrollView;

.field private mTabTimer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method static synthetic access$100(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->updateArrowStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->scrollToNext()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->isScrollToEnd()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->scrollToPrevious()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->isScrollToStart()Z

    move-result v0

    return v0
.end method

.method private getFristVisibleTab()I
    .locals 8

    .prologue
    .line 552
    iget-object v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v0

    .line 553
    .local v0, count:I
    iget-object v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 554
    .local v6, visibleWidth:I
    iget-object v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    .line 555
    .local v3, scrollLeft:I
    add-int v4, v3, v6

    .line 557
    .local v4, scrollRight:I
    const/4 v5, 0x0

    .line 558
    .local v5, tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    const/4 v2, 0x0

    .line 559
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 560
    iget-object v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v7, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    check-cast v5, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 561
    .restart local v5       #tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-virtual {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getLeft()I

    move-result v7

    if-lt v7, v3, :cond_1

    .line 562
    move v2, v1

    .line 566
    :cond_0
    return v2

    .line 559
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getLastVisibleTab()I
    .locals 8

    .prologue
    .line 534
    iget-object v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v0

    .line 535
    .local v0, count:I
    iget-object v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 536
    .local v6, visibleWidth:I
    iget-object v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    .line 537
    .local v3, scrollLeft:I
    add-int v4, v3, v6

    .line 539
    .local v4, scrollRight:I
    const/4 v5, 0x0

    .line 540
    .local v5, tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    const/4 v2, 0x0

    .line 541
    .local v2, index:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 542
    iget-object v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v7, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .end local v5           #tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    check-cast v5, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 543
    .restart local v5       #tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-virtual {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getRight()I

    move-result v7

    if-lt v7, v4, :cond_1

    .line 544
    move v2, v1

    .line 548
    :cond_0
    return v2

    .line 541
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getNewCheckedValues()[Z
    .locals 5

    .prologue
    .line 487
    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getDragedTabPage()Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v0

    .line 488
    .local v0, dragMode:I
    const/4 v1, 0x0

    .line 489
    .local v1, dragTabPosition:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogModeList()[[I

    move-result-object v4

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 490
    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogListMode(I)I

    move-result v4

    if-ne v0, v4, :cond_0

    .line 491
    move v1, v2

    .line 489
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 494
    :cond_1
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getTabInputModeCheckedVaule()[Z

    move-result-object v3

    .line 495
    .local v3, settings:[Z
    aget-boolean v4, v3, v1

    if-nez v4, :cond_2

    const/4 v4, 0x1

    :goto_1
    aput-boolean v4, v3, v1

    .line 496
    return-object v3

    .line 495
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isActiveTabVisible()Z
    .locals 8

    .prologue
    .line 312
    const/4 v1, 0x0

    .line 313
    .local v1, result:Z
    iget-object v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getActiveTab()Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v0

    .line 314
    .local v0, activetab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    if-nez v0, :cond_0

    .line 315
    const/4 v7, 0x0

    .line 328
    :goto_0
    return v7

    .line 318
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getLeft()I

    move-result v4

    .line 319
    .local v4, tabLeft:I
    invoke-virtual {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getRight()I

    move-result v5

    .line 321
    .local v5, tabRight:I
    iget-object v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v6

    .line 322
    .local v6, visibleWidth:I
    iget-object v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    .line 323
    .local v2, scrollLeft:I
    add-int v3, v2, v6

    .line 325
    .local v3, scrollRight:I
    if-lt v4, v2, :cond_1

    if-gt v5, v3, :cond_1

    .line 326
    const/4 v1, 0x1

    :cond_1
    move v7, v1

    .line 328
    goto :goto_0
.end method

.method private isScrollToEnd()Z
    .locals 3

    .prologue
    .line 570
    const/4 v1, 0x0

    .line 571
    .local v1, result:Z
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->getLastVisibleTab()I

    move-result v0

    .line 573
    .local v0, index:I
    iget-object v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    .line 574
    const/4 v1, 0x1

    .line 576
    :cond_0
    return v1
.end method

.method private isScrollToStart()Z
    .locals 2

    .prologue
    .line 580
    const/4 v1, 0x0

    .line 581
    .local v1, result:Z
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->getFristVisibleTab()I

    move-result v0

    .line 583
    .local v0, index:I
    if-nez v0, :cond_0

    .line 584
    const/4 v1, 0x1

    .line 586
    :cond_0
    return v1
.end method

.method private processDelTabPage()V
    .locals 7

    .prologue
    .line 421
    const/4 v2, 0x0

    .line 422
    .local v2, moveStart:I
    const/4 v1, 0x0

    .line 423
    .local v1, moveEnd:I
    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getDragedTabPage()Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getTabIndex(Lcom/samsung/inputmethod/tabmode/SimeTabPage;)I

    move-result v0

    .line 424
    .local v0, dragIndex:I
    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getTabBarSize()I

    move-result v3

    .line 425
    .local v3, tabBarSize:I
    add-int/lit8 v2, v0, 0x1

    .line 426
    if-lt v2, v3, :cond_0

    .line 427
    add-int/lit8 v2, v3, -0x1

    .line 429
    :cond_0
    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .line 430
    if-lt v1, v3, :cond_1

    .line 431
    add-int/lit8 v1, v3, -0x1

    .line 433
    :cond_1
    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v4}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getDragedTabPage()Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setVisibility(I)V

    .line 434
    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    const/4 v5, -0x1

    invoke-virtual {v4, v2, v1, v5}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->refreshOthersPosition(III)V

    .line 436
    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->getNewCheckedValues()[Z

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->saveCheckedData(Z[Z)V

    .line 437
    return-void
.end method

.method private processDragLocation(II)V
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v7, 0x3e8

    .line 501
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v5, p1, p2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getLocation(II)I

    move-result v0

    .line 502
    .local v0, dragIndex:I
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->getLastVisibleTab()I

    move-result v2

    .line 503
    .local v2, lastVisibleIndex:I
    add-int/lit8 v3, v2, 0x1

    .line 504
    .local v3, nextIndex:I
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->getFristVisibleTab()I

    move-result v1

    .line 505
    .local v1, fristVisibleIndex:I
    add-int/lit8 v4, v1, -0x1

    .line 509
    .local v4, preIndex:I
    if-lt v0, v3, :cond_2

    .line 510
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabTimer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->isPending()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabTimer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;

    const/4 v6, 0x2

    invoke-virtual {v5, v7, v8, v6, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->startTimer(JII)V

    goto :goto_0

    .line 514
    :cond_2
    if-gt v0, v4, :cond_0

    .line 515
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabTimer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->isPending()Z

    move-result v5

    if-nez v5, :cond_0

    .line 518
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabTimer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;

    const/4 v6, 0x3

    invoke-virtual {v5, v7, v8, v6, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->startTimer(JII)V

    goto :goto_0
.end method

.method private processDrop(II)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 524
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabTimer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->removeTimer()Z

    .line 525
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->processDrop(II)V

    .line 526
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->isActiveTabVisible()Z

    move-result v0

    .line 527
    .local v0, visible:Z
    if-nez v0, :cond_0

    .line 528
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->getFristVisibleTab()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setActiveTabPage(I)V

    .line 531
    :cond_0
    return-void
.end method

.method private scrollToActive()V
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getActiveTab()Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->scrollToTab(Lcom/samsung/inputmethod/tabmode/SimeTabPage;)V

    .line 591
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->updateArrowStatus()V

    .line 592
    return-void
.end method

.method private scrollToNext()V
    .locals 4

    .prologue
    .line 217
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getTabWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 218
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->updateArrowStatus()V

    .line 219
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->isActiveTabVisible()Z

    move-result v0

    .line 220
    .local v0, visible:Z
    if-nez v0, :cond_0

    .line 221
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->getLastVisibleTab()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setActiveTabPage(I)V

    .line 223
    :cond_0
    return-void
.end method

.method private scrollToPrevious()V
    .locals 4

    .prologue
    .line 226
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getTabWidth()I

    move-result v2

    neg-int v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->scrollBy(II)V

    .line 227
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->updateArrowStatus()V

    .line 228
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->isActiveTabVisible()Z

    move-result v0

    .line 229
    .local v0, visible:Z
    if-nez v0, :cond_0

    .line 230
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->getFristVisibleTab()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setActiveTabPage(I)V

    .line 232
    :cond_0
    return-void
.end method

.method private switchToNextMode(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    .line 451
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getDragedTabPage()Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getActiveTab()Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v7

    if-eq v6, v7, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    const/4 v0, 0x0

    .line 455
    .local v0, dragIndex:I
    const/4 v3, 0x0

    .line 456
    .local v3, newModeId:I
    invoke-static {}, Lcom/samsung/inputmethod/setting/SimeSetting;->getTabBarOrder()Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, order:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->decodeTabBarOrder(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 458
    .local v2, inputModeList:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 459
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getDragedTabPage()Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v7

    invoke-virtual {v2, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v7, v6, :cond_2

    .line 460
    move v0, v1

    .line 458
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 463
    :cond_3
    if-ltz v0, :cond_5

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v0, v6, :cond_5

    .line 464
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {v2, v6}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 473
    :goto_2
    const/4 v1, 0x0

    :goto_3
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_6

    .line 474
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v6, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 475
    .local v5, tabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-virtual {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v6

    if-ne v3, v6, :cond_4

    .line 476
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->setActiveTabPage(Lcom/samsung/inputmethod/tabmode/SimeTabPage;Z)V

    .line 473
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 465
    .end local v5           #tabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    :cond_5
    if-ltz v0, :cond_0

    .line 466
    const/high16 v3, 0x1111

    goto :goto_2

    .line 483
    :cond_6
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->scrollToActive()V

    goto :goto_0
.end method

.method private updateArrowStatus()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 174
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move v2, v3

    .line 176
    .local v2, isLandScape:Z
    :goto_0
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mLeftArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->updateArrowLayout()V

    .line 177
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mRightArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->updateArrowLayout()V

    .line 179
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v5

    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getOnePageMaxSize()I

    move-result v6

    if-gt v5, v6, :cond_1

    .line 180
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mLeftArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v3, v7}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->setVisibility(I)V

    .line 181
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mRightArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v3, v7}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->setVisibility(I)V

    .line 214
    :goto_1
    return-void

    .end local v2           #isLandScape:Z
    :cond_0
    move v2, v4

    .line 174
    goto :goto_0

    .line 185
    .restart local v2       #isLandScape:Z
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mLeftArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->setVisibility(I)V

    .line 186
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mRightArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->setVisibility(I)V

    .line 188
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->pageForwardable()Z

    move-result v1

    .line 189
    .local v1, forwardEnabled:Z
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->pageBackwardable()Z

    move-result v0

    .line 196
    .local v0, backwardEnabled:Z
    if-eqz v0, :cond_2

    .line 197
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mLeftArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v5, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->enableArrow(Z)V

    .line 205
    :goto_2
    if-eqz v1, :cond_3

    .line 206
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mRightArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v5, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->enableArrow(Z)V

    .line 207
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mRightArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v3, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->setSeparatorLineHide(Z)V

    goto :goto_1

    .line 201
    :cond_2
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mLeftArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->enableArrow(Z)V

    goto :goto_2

    .line 210
    :cond_3
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mRightArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v5, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->enableArrow(Z)V

    .line 211
    iget-object v4, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mRightArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v4, v3}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->setSeparatorLineHide(Z)V

    goto :goto_1
.end method


# virtual methods
.method public dimTabContainer(Z)V
    .locals 3
    .parameter "hideTabBar"

    .prologue
    const/4 v2, 0x0

    .line 661
    const v1, 0x7f0c0074

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 662
    .local v0, dimBg:Landroid/widget/TextView;
    new-instance v1, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$1;

    invoke-direct {v1, p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$1;-><init>(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 669
    if-eqz p1, :cond_0

    .line 670
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 671
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 672
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 673
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 677
    :goto_0
    return-void

    .line 675
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public dimissArrow(Z)V
    .locals 3
    .parameter "hide"

    .prologue
    const/16 v2, 0x8

    .line 440
    if-eqz p1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getOnePageMaxSize()I

    move-result v0

    .line 442
    .local v0, maxTabNumWithoutArrow:I
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v1

    if-gt v1, v0, :cond_0

    .line 443
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mLeftArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->setVisibility(I)V

    .line 444
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mRightArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->setVisibility(I)V

    .line 447
    .end local v0           #maxTabNumWithoutArrow:I
    :cond_0
    return-void
.end method

.method public initialize(Lcom/samsung/inputmethod/SamsungIME;)V
    .locals 3
    .parameter "imeService"

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 79
    .local v0, r:Landroid/content/res/Resources;
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    .line 81
    new-instance v1, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;-><init>(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;Lcom/samsung/inputmethod/tabmode/SimeTabContainer$1;)V

    iput-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabTimer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;

    .line 83
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getInputModeSwitcher()Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    .line 84
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mEnvironment:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 86
    const v1, 0x7f0c006d

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    iput-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mLeftArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    .line 87
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mLeftArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;->Left:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->init(Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;)V

    .line 88
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mLeftArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->getButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 90
    const v1, 0x7f0c0071

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    iput-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mRightArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    .line 91
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mRightArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    sget-object v2, Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;->Right:Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->init(Lcom/samsung/inputmethod/tabmode/SimeTabArrow$ArrowType;)V

    .line 92
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mRightArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->getButton()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 94
    const v1, 0x7f0c0070

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabEditor:Landroid/widget/ImageButton;

    .line 95
    sget-object v1, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_IDLE:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setTabEditorState(Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;)V

    .line 96
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabEditor:Landroid/widget/ImageButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setClickable(Z)V

    .line 97
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabEditor:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    const v1, 0x7f0c0072

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    .line 100
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 101
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v2, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$ScrollTouchListener;

    invoke-direct {v2, p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$ScrollTouchListener;-><init>(Lcom/samsung/inputmethod/tabmode/SimeTabContainer;)V

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    invoke-virtual {p0, p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 104
    const v1, 0x7f0c0073

    invoke-virtual {p0, v1}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    iput-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    .line 105
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    iget-object v2, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->init(Lcom/samsung/inputmethod/SamsungIME;)V

    .line 108
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->requestLayout()V

    .line 110
    return-void
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 7
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 352
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 355
    .local v2, targetView:Landroid/view/View;
    instance-of v6, v2, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    if-nez v6, :cond_0

    .line 415
    :goto_0
    return v5

    .line 359
    :cond_0
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 360
    .local v0, action:I
    invoke-virtual {p2}, Landroid/view/DragEvent;->getX()F

    move-result v6

    float-to-int v3, v6

    .line 361
    .local v3, x:I
    invoke-virtual {p2}, Landroid/view/DragEvent;->getY()F

    move-result v6

    float-to-int v4, v6

    .line 364
    .local v4, y:I
    const/4 v6, 0x2

    new-array v1, v6, [I

    .line 365
    .local v1, editTextLocation:[I
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabEditor:Landroid/widget/ImageButton;

    invoke-virtual {v6, v1}, Landroid/widget/ImageButton;->getLocationInWindow([I)V

    .line 370
    packed-switch v0, :pswitch_data_0

    .line 415
    :goto_1
    :pswitch_0
    const/4 v5, 0x1

    goto :goto_0

    .line 376
    :pswitch_1
    aget v5, v1, v5

    if-ge v3, v5, :cond_1

    .line 377
    invoke-direct {p0, v3, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->processDragLocation(II)V

    goto :goto_1

    .line 379
    :cond_1
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabTimer:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabTimer;->removeTimer()Z

    goto :goto_1

    .line 396
    :pswitch_2
    aget v5, v1, v5

    if-lt v3, v5, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getDragedTabPage()Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v5

    const/high16 v6, 0x1111

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getDragedTabPage()Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v5

    const v6, 0x61011000

    if-eq v5, v6, :cond_2

    .line 398
    invoke-direct {p0, v3, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->switchToNextMode(II)V

    .line 399
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->processDelTabPage()V

    .line 403
    :goto_2
    sget-object v5, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_IDLE:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setTabEditorState(Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;)V

    goto :goto_1

    .line 401
    :cond_2
    iget-object v5, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v5}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-direct {p0, v5, v4}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->processDrop(II)V

    goto :goto_2

    .line 410
    :pswitch_3
    sget-object v5, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_IDLE:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    invoke-virtual {p0, v5}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setTabEditorState(Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;)V

    goto :goto_1

    .line 370
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .parameter "changed"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 136
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 139
    if-eqz p1, :cond_0

    .line 140
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->scrollToActive()V

    .line 142
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v4, 0x4000

    .line 265
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    .line 266
    .local v0, env:Lcom/samsung/inputmethod/comm/SimeEnvironment;
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getScreenWidth()I

    move-result v2

    .line 267
    .local v2, measuredWidth:I
    invoke-virtual {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->getPaddingTop()I

    move-result v1

    .line 268
    .local v1, measuredHeight:I
    invoke-virtual {v0}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getHeightForTabBar()I

    move-result v3

    add-int/2addr v1, v3

    .line 270
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 271
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 273
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 275
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 236
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->getInstance(Landroid/content/Context;)Lcom/samsung/inputmethod/comm/SimeSoundManager;

    move-result-object v0

    .line 237
    .local v0, soundManager:Lcom/samsung/inputmethod/comm/SimeSoundManager;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 238
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabEditor:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 239
    invoke-virtual {v0, v4}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 240
    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    .line 241
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mImeService:Lcom/samsung/inputmethod/SamsungIME;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/SamsungIME;->getDialogMgr()Lcom/samsung/inputmethod/dialog/SimeDialogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/inputmethod/dialog/SimeDialogManager;->showTabEditDialog()V

    .line 261
    :cond_0
    :goto_0
    return v3

    .line 250
    :cond_1
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mLeftArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->getButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 251
    invoke-virtual {v0, v4}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 252
    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    .line 253
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->scrollToPrevious()V

    goto :goto_0

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mRightArrow:Lcom/samsung/inputmethod/tabmode/SimeTabArrow;

    invoke-virtual {v1}, Lcom/samsung/inputmethod/tabmode/SimeTabArrow;->getButton()Landroid/widget/ImageButton;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 256
    invoke-virtual {v0, v4}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryPlayKeyDown(I)V

    .line 257
    invoke-virtual {v0, v3}, Lcom/samsung/inputmethod/comm/SimeSoundManager;->tryVibrate(I)V

    .line 258
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->scrollToNext()V

    goto :goto_0
.end method

.method public pageBackwardable()Z
    .locals 4

    .prologue
    .line 300
    const/4 v1, 0x0

    .line 301
    .local v1, result:Z
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v3}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v2

    .line 302
    .local v2, scrollLeft:I
    add-int/lit8 v0, v2, 0x0

    .line 303
    .local v0, distance:I
    if-lez v0, :cond_0

    .line 304
    const/4 v1, 0x1

    .line 306
    :cond_0
    return v1
.end method

.method public pageForwardable()Z
    .locals 8

    .prologue
    .line 278
    const/4 v2, 0x0

    .line 279
    .local v2, result:Z
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getRight()I

    move-result v1

    .line 281
    .local v1, endX:I
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    .line 282
    .local v5, visibleWidth:I
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v3

    .line 283
    .local v3, scrollLeft:I
    add-int v4, v3, v5

    .line 288
    .local v4, scrollRight:I
    sub-int v0, v1, v4

    .line 290
    .local v0, distance:I
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v7}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getOnePageMaxSize()I

    move-result v7

    if-le v6, v7, :cond_0

    if-nez v3, :cond_0

    .line 291
    const/4 v2, 0x1

    .line 293
    :cond_0
    if-lez v0, :cond_1

    .line 294
    const/4 v2, 0x1

    .line 296
    :cond_1
    return v2
.end method

.method public scrollToTab(Lcom/samsung/inputmethod/tabmode/SimeTabPage;)V
    .locals 8
    .parameter "targetTab"

    .prologue
    const/4 v7, 0x0

    .line 146
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v6}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getWidth()I

    move-result v4

    .line 147
    .local v4, totalWidth:I
    if-nez p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getLeft()I

    move-result v2

    .line 151
    .local v2, tabLeft:I
    invoke-virtual {p1}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getRight()I

    move-result v3

    .line 153
    .local v3, tabRight:I
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v5

    .line 154
    .local v5, visibleWidth:I
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 155
    .local v0, scrollLeft:I
    add-int v1, v0, v5

    .line 166
    .local v1, scrollRight:I
    if-ge v2, v0, :cond_2

    .line 167
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6, v2, v7}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 168
    :cond_2
    if-le v3, v1, :cond_0

    .line 169
    iget-object v6, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6, v2, v7}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method public setTabEditorState(Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 114
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_IDLE:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    if-ne p1, v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabEditor:Landroid/widget/ImageButton;

    const v1, 0x7f020285

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_DELET:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    if-ne p1, v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabEditor:Landroid/widget/ImageButton;

    const v1, 0x7f02028e

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0

    .line 118
    :cond_2
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_DELET_DISABLE:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    if-ne p1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabEditor:Landroid/widget/ImageButton;

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_0
.end method

.method public updateTabContainer()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mInputModeSwitcher:Lcom/samsung/inputmethod/SimeInputModeSwitcher;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/SimeInputModeSwitcher;->isSpecialInputMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->mTabBar:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->updateTabBar()V

    .line 128
    sget-object v0, Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;->STATE_IDLE:Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;

    invoke-virtual {p0, v0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->setTabEditorState(Lcom/samsung/inputmethod/tabmode/SimeTabContainer$TabEditorState;)V

    .line 129
    invoke-direct {p0}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->scrollToActive()V

    .line 131
    :cond_0
    return-void
.end method
