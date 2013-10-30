.class Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;
.super Landroid/os/Handler;
.source "SimeTabBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/inputmethod/tabmode/SimeTabBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;


# direct methods
.method constructor <init>(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)V
    .locals 0
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 718
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 719
    .local v0, dragView:Landroid/view/View;
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 720
    .local v6, start:I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 721
    .local v1, end:I
    iget v5, p1, Landroid/os/Message;->what:I

    .line 725
    .local v5, newPosIndex:I
    move v2, v6

    .local v2, i:I
    :goto_0
    if-gt v2, v1, :cond_0

    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 726
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v9, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 730
    .local v8, tabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-virtual {v8}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getLeft()I

    move-result v3

    .line 731
    .local v3, moveViewLeft:I
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mChangeBaseOffsets:I
    invoke-static {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$300(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x11

    add-int/2addr v9, v3

    invoke-virtual {v8}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTop()I

    move-result v10

    iget-object v11, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mChangeBaseOffsets:I
    invoke-static {v11}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$300(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)I

    move-result v11

    mul-int/lit8 v11, v11, 0x11

    add-int/2addr v11, v3

    iget-object v12, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabWidth:I
    invoke-static {v12}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$400(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v8}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTop()I

    move-result v12

    add-int/lit8 v12, v12, 0x38

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->layout(IIII)V

    .line 735
    invoke-virtual {v8}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->postInvalidate()V

    .line 725
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 737
    .end local v3           #moveViewLeft:I
    .end local v8           #tabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    :cond_0
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-static {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$508(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)I

    .line 738
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabTitleMovePosCount:I
    invoke-static {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$500(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)I

    move-result v9

    const/4 v10, 0x6

    if-lt v9, v10, :cond_3

    .line 739
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    const/4 v10, 0x0

    #setter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mTabTitleMovePosCount:I
    invoke-static {v9, v10}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$502(Lcom/samsung/inputmethod/tabmode/SimeTabBar;I)I

    .line 740
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mRefreshPosTimer:Ljava/util/Timer;
    invoke-static {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$600(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Ljava/util/Timer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Timer;->cancel()V

    .line 741
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    iget-object v10, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mdragTabIndex:I
    invoke-static {v10}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$700(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->removeViewAt(I)V

    .line 743
    const/4 v9, -0x1

    if-eq v5, v9, :cond_1

    .line 744
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-static {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$800(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->setVisibility(I)V

    .line 745
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    iget-object v10, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mDragedTabPage:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    invoke-static {v10}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$800(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    move-result-object v10

    invoke-virtual {v9, v10, v5}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->addView(Landroid/view/View;I)V

    .line 750
    :goto_1
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->invalidate()V

    .line 751
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->requestLayout()V

    .line 755
    const/4 v9, -0x1

    if-eq v5, v9, :cond_3

    .line 756
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mModeList:Ljava/util/Vector;
    invoke-static {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$1000(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    .line 758
    const/4 v2, 0x0

    :goto_2
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 759
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    invoke-virtual {v9, v2}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/samsung/inputmethod/tabmode/SimeTabPage;

    .line 760
    .local v7, tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mModeList:Ljava/util/Vector;
    invoke-static {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$1000(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Ljava/util/Vector;

    move-result-object v9

    invoke-virtual {v7}, Lcom/samsung/inputmethod/tabmode/SimeTabPage;->getTabID()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 758
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 747
    .end local v7           #tab:Lcom/samsung/inputmethod/tabmode/SimeTabPage;
    :cond_1
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mIme:Lcom/samsung/inputmethod/SamsungIME;
    invoke-static {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$900(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Lcom/samsung/inputmethod/SamsungIME;

    move-result-object v9

    invoke-virtual {v9}, Lcom/samsung/inputmethod/SamsungIME;->getTabContainer()Lcom/samsung/inputmethod/tabmode/SimeTabContainer;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/samsung/inputmethod/tabmode/SimeTabContainer;->dimissArrow(Z)V

    goto :goto_1

    .line 763
    :cond_2
    iget-object v9, p0, Lcom/samsung/inputmethod/tabmode/SimeTabBar$2;->this$0:Lcom/samsung/inputmethod/tabmode/SimeTabBar;

    #getter for: Lcom/samsung/inputmethod/tabmode/SimeTabBar;->mModeList:Ljava/util/Vector;
    invoke-static {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabBar;->access$1000(Lcom/samsung/inputmethod/tabmode/SimeTabBar;)Ljava/util/Vector;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->encodeTabBarOrder(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v4

    .line 765
    .local v4, newOrder:Ljava/lang/String;
    invoke-static {v4}, Lcom/samsung/inputmethod/setting/SimeSetting;->setTabBarOrder(Ljava/lang/String;)V

    .line 768
    .end local v4           #newOrder:Ljava/lang/String;
    :cond_3
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 769
    return-void
.end method
