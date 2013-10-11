.class public Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;
.super Landroid/widget/LinearLayout;
.source "KeyguardWidgetNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$1;,
        Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;
    }
.end annotation


# instance fields
.field private mCurrentPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

.field private mLinearLayout:Landroid/widget/LinearLayout;

.field private mLockpatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field mMainQueue:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mMainQueue:Landroid/os/Handler;

    .line 54
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mLockpatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 55
    return-void
.end method

.method private getNavigationImage(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;)I
    .locals 3
    .parameter "page"

    .prologue
    const v0, 0x1080497

    .line 147
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$1;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$KeyguardWidgetNavigation$PageType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 161
    :goto_0
    :pswitch_0
    return v0

    .line 149
    :pswitch_1
    const v0, 0x1080493

    goto :goto_0

    .line 151
    :pswitch_2
    const v0, 0x1080492

    goto :goto_0

    .line 153
    :pswitch_3
    const v0, 0x1080496

    goto :goto_0

    .line 155
    :pswitch_4
    const v0, 0x1080495

    goto :goto_0

    .line 157
    :pswitch_5
    const v0, 0x1080494

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private getPagesList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-nez v4, :cond_1

    .line 167
    const/4 v3, 0x0

    .line 194
    :cond_0
    return-object v3

    .line 168
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getPageCount()I

    move-result v2

    .line 169
    .local v2, pageCount:I
    add-int/lit8 v0, v2, -0x1

    .line 170
    .local v0, homeIconIndex:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    add-int/lit8 v0, v0, -0x1

    .line 173
    :cond_2
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mLockpatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->getContextualWidgets()[I

    move-result-object v4

    array-length v4, v4

    sub-int/2addr v0, v4

    .line 174
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v3, pageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 176
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isAddPage(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 177
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v4

    if-ne v1, v4, :cond_3

    .line 178
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->current_add:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 180
    :cond_3
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->add:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 181
    :cond_4
    if-ne v1, v0, :cond_6

    .line 182
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v4

    if-ne v1, v4, :cond_5

    .line 183
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->current_home:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 185
    :cond_5
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->home:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 187
    :cond_6
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/PagedView;->getCurrentPage()I

    move-result v4

    if-ne v1, v4, :cond_7

    .line 188
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->current_normal:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 190
    :cond_7
    sget-object v4, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;->normal:Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private initWidgetNavigationLayout(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;>;"
    const/4 v11, -0x2

    const/4 v10, 0x0

    .line 92
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-nez v8, :cond_0

    .line 144
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 95
    new-instance v8, Landroid/widget/LinearLayout;

    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    .line 96
    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1050091

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    .line 98
    .local v6, iconPadding:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_1

    .line 99
    sget-object v9, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$1;->$SwitchMap$com$android$internal$policy$impl$keyguard$sec$KeyguardWidgetNavigation$PageType:[I

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v9, v8

    packed-switch v8, :pswitch_data_0

    .line 98
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 101
    :pswitch_0
    new-instance v1, Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v1, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 102
    .local v1, currentAddPageImageView:Landroid/widget/ImageView;
    const v8, 0x1080493

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    invoke-virtual {v1, v6, v10, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 105
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 108
    .end local v1           #currentAddPageImageView:Landroid/widget/ImageView;
    :pswitch_1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, addPageImageView:Landroid/widget/ImageView;
    const v8, 0x1080492

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    invoke-virtual {v0, v6, v10, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 111
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 114
    .end local v0           #addPageImageView:Landroid/widget/ImageView;
    :pswitch_2
    new-instance v2, Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 115
    .local v2, currentHomeImageView:Landroid/widget/ImageView;
    const v8, 0x1080496

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    invoke-virtual {v2, v6, v10, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 118
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 121
    .end local v2           #currentHomeImageView:Landroid/widget/ImageView;
    :pswitch_3
    new-instance v4, Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 122
    .local v4, homeImageView:Landroid/widget/ImageView;
    const v8, 0x1080495

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    invoke-virtual {v4, v6, v10, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 124
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 127
    .end local v4           #homeImageView:Landroid/widget/ImageView;
    :pswitch_4
    new-instance v3, Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 128
    .local v3, currentPageImageView:Landroid/widget/ImageView;
    const v8, 0x1080494

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 129
    invoke-virtual {v3, v6, v10, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 130
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 133
    .end local v3           #currentPageImageView:Landroid/widget/ImageView;
    :pswitch_5
    new-instance v7, Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 134
    .local v7, pageImageView:Landroid/widget/ImageView;
    const v8, 0x1080497

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    invoke-virtual {v7, v6, v10, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 136
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 142
    .end local v7           #pageImageView:Landroid/widget/ImageView;
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v8, v11, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 143
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private updateWidgetNavigationLayout(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;>;"
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mCurrentPages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 81
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->initWidgetNavigationLayout(Ljava/util/ArrayList;)V

    .line 89
    :cond_0
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mCurrentPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 86
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mLinearLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;

    invoke-direct {p0, v2}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->getNavigationImage(Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public setPagedView(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V
    .locals 0
    .parameter "pagedView"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .line 59
    return-void
.end method

.method public updateWidgetNavigation()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->getPagesList()Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    .local v0, newPages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation$PageType;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mCurrentPages:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 68
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->initWidgetNavigationLayout(Ljava/util/ArrayList;)V

    .line 69
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mCurrentPages:Ljava/util/ArrayList;

    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mCurrentPages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 75
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->updateWidgetNavigationLayout(Ljava/util/ArrayList;)V

    .line 76
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/sec/KeyguardWidgetNavigation;->mCurrentPages:Ljava/util/ArrayList;

    goto :goto_0
.end method
