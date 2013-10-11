.class public Lcom/android/server/toolkit/TabWidget;
.super Landroid/widget/LinearLayout;
.source "TabWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/toolkit/TabWidget$1;,
        Lcom/android/server/toolkit/TabWidget$TabSpec;
    }
.end annotation


# instance fields
.field private mCurrentTabIndex:I

.field private mOrientation:I

.field private mParentWindow:Landroid/widget/PopupWindow;

.field private mTabSpecs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/toolkit/TabWidget$TabSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    .line 30
    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->init()V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    .line 35
    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    .line 111
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    .line 39
    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->init()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    .line 132
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    .line 133
    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->setOrientation()V

    .line 134
    return-void
.end method

.method private refreshTabMargin()V
    .locals 5

    .prologue
    .line 169
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    monitor-enter v4

    .line 170
    :try_start_0
    iget-object v3, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 171
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 172
    iget-object v3, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/toolkit/TabWidget$TabSpec;

    .line 173
    .local v2, tab:Lcom/android/server/toolkit/TabWidget$TabSpec;
    invoke-virtual {v2}, Lcom/android/server/toolkit/TabWidget$TabSpec;->getView()Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/toolkit/TabWidget;->setMargin(Landroid/view/View;)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v2           #tab:Lcom/android/server/toolkit/TabWidget$TabSpec;
    :cond_0
    monitor-exit v4

    .line 176
    return-void

    .line 175
    .end local v0           #N:I
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private setMargin(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    const/16 v2, -0x14

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 138
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v0, :cond_0

    .line 139
    iget v1, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    packed-switch v1, :pswitch_data_0

    .line 150
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 153
    :cond_0
    return-void

    .line 141
    :pswitch_0
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 142
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 146
    :pswitch_1
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 147
    iput v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setOrientation()V
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 165
    :goto_0
    return-void

    .line 158
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 162
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addTab(Lcom/android/server/toolkit/TabWidget$TabSpec;)V
    .locals 4
    .parameter "tabSpec"

    .prologue
    .line 47
    iget-object v2, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 49
    .local v0, curCount:I
    iget-object v2, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-virtual {p1}, Lcom/android/server/toolkit/TabWidget$TabSpec;->getView()Landroid/view/View;

    move-result-object v1

    .line 52
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 54
    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0, v1}, Lcom/android/server/toolkit/TabWidget;->setMargin(Landroid/view/View;)V

    .line 57
    :cond_0
    iget v2, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 58
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/toolkit/TabWidget;->setCurrentTab(I)V

    .line 60
    :cond_1
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 80
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    .line 82
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, result:I
    add-int/lit8 v1, p1, -0x1

    if-ne v1, p2, :cond_0

    .line 118
    iget v1, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    .line 126
    :goto_0
    return v1

    .line 121
    :cond_0
    sub-int v1, p1, p2

    add-int/lit8 v0, v1, -0x1

    .line 122
    iget v1, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    if-gt v0, v1, :cond_1

    .line 123
    add-int/lit8 v0, v0, -0x1

    :cond_1
    move v1, v0

    .line 126
    goto :goto_0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public newTabSpec(ILandroid/graphics/drawable/Drawable;Landroid/content/Intent;)Lcom/android/server/toolkit/TabWidget$TabSpec;
    .locals 6
    .parameter "index"
    .parameter "icon"
    .parameter "intent"

    .prologue
    .line 75
    new-instance v0, Lcom/android/server/toolkit/TabWidget$TabSpec;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/toolkit/TabWidget$TabSpec;-><init>(Lcom/android/server/toolkit/TabWidget;ILandroid/graphics/drawable/Drawable;Landroid/content/Intent;Lcom/android/server/toolkit/TabWidget$1;)V

    return-object v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 65
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 66
    iget v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 67
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    .line 68
    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->refreshTabMargin()V

    .line 69
    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->setOrientation()V

    .line 72
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 100
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 101
    .local v0, newOrientation:I
    iget v1, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    if-eq v1, v0, :cond_0

    .line 102
    iput v0, p0, Lcom/android/server/toolkit/TabWidget;->mOrientation:I

    .line 103
    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->refreshTabMargin()V

    .line 104
    invoke-direct {p0}, Lcom/android/server/toolkit/TabWidget;->setOrientation()V

    .line 106
    :cond_0
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 4
    .parameter "index"

    .prologue
    .line 89
    iget v2, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    .line 90
    .local v2, oldCurrentTabIndex:I
    if-ltz v2, :cond_0

    .line 91
    iget-object v3, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/toolkit/TabWidget$TabSpec;

    .line 92
    .local v1, oldCurrentTab:Lcom/android/server/toolkit/TabWidget$TabSpec;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/server/toolkit/TabWidget$TabSpec;->setFocus(Z)V

    .line 94
    .end local v1           #oldCurrentTab:Lcom/android/server/toolkit/TabWidget$TabSpec;
    :cond_0
    iget-object v3, p0, Lcom/android/server/toolkit/TabWidget;->mTabSpecs:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/toolkit/TabWidget$TabSpec;

    .line 95
    .local v0, CurrentTab:Lcom/android/server/toolkit/TabWidget$TabSpec;
    iput p1, p0, Lcom/android/server/toolkit/TabWidget;->mCurrentTabIndex:I

    .line 96
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/server/toolkit/TabWidget$TabSpec;->setFocus(Z)V

    .line 97
    return-void
.end method

.method public setWindow(Landroid/widget/PopupWindow;)V
    .locals 0
    .parameter "parentWindow"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/server/toolkit/TabWidget;->mParentWindow:Landroid/widget/PopupWindow;

    .line 44
    return-void
.end method
