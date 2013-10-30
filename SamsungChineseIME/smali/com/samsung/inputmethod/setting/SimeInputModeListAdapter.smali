.class public Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimeInputModeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeInputModeListAdapter"


# instance fields
.field private final RPAD:I

.field private env:Lcom/samsung/inputmethod/comm/SimeEnvironment;

.field private mCheckedIndex:I

.field private mColorDisplayFlag:Z

.field private mContext:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mSummaryColor:I

.field private mSummaryEntryValues:[Ljava/lang/CharSequence;

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    const v0, -0xffff01

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mSummaryColor:I

    .line 36
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->RPAD:I

    .line 50
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 51
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->initValues()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    const v0, -0xffff01

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mSummaryColor:I

    .line 36
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->RPAD:I

    .line 56
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 57
    iput-object p2, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mData:Ljava/util/List;

    .line 58
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mContext:Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->initValues()V

    .line 60
    return-void
.end method

.method private initValues()V
    .locals 2

    .prologue
    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mCheckedIndex:I

    .line 65
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->env:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getSdkVersion()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mTextColor:I

    .line 71
    :goto_0
    return-void

    .line 69
    :cond_0
    const/high16 v0, -0x100

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mTextColor:I

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 90
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 113
    const/4 v0, 0x0

    .line 115
    .local v0, holder:Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 117
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;

    .end local v0           #holder:Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;-><init>(Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;)V

    .line 119
    .restart local v0       #holder:Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v7, 0x7f04

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 120
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const/high16 v7, 0x7f04

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 121
    .local v1, l:Landroid/widget/LinearLayout;
    const v6, 0x7f0c0088

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 122
    const v6, 0x7f0c0089

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 123
    const v6, 0x7f0c008a

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 125
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 126
    .local v5, v:Landroid/view/View;
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 127
    .local v3, pText:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 128
    .local v4, temp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 131
    .local v2, pSummary:Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x2

    if-ne p1, v6, :cond_1

    .line 132
    const/16 v6, 0x61

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 133
    const/4 v6, 0x1

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 140
    :goto_0
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 163
    .end local v1           #l:Landroid/widget/LinearLayout;
    .end local v4           #temp:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :goto_1
    iget-object v6, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v6, :cond_4

    .line 202
    :cond_0
    :goto_2
    return-object p2

    .line 136
    .restart local v1       #l:Landroid/widget/LinearLayout;
    .restart local v4       #temp:Landroid/view/ViewGroup$LayoutParams;
    .restart local v5       #v:Landroid/view/View;
    :cond_1
    const/16 v6, 0x35

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 137
    const/16 v6, 0x2d

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 147
    .end local v1           #l:Landroid/widget/LinearLayout;
    .end local v2           #pSummary:Landroid/view/ViewGroup$LayoutParams;
    .end local v3           #pText:Landroid/view/ViewGroup$LayoutParams;
    .end local v4           #temp:Landroid/view/ViewGroup$LayoutParams;
    .end local v5           #v:Landroid/view/View;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;
    check-cast v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;

    .line 148
    .restart local v0       #holder:Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 149
    .restart local v3       #pText:Landroid/view/ViewGroup$LayoutParams;
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 150
    .restart local v2       #pSummary:Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x2

    if-ne p1, v6, :cond_3

    .line 151
    const/16 v6, 0x61

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 152
    const/4 v6, 0x1

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 158
    :goto_3
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 155
    :cond_3
    const/16 v6, 0x35

    iput v6, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 156
    const/16 v6, 0x2d

    iput v6, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_3

    .line 167
    :cond_4
    if-eqz v0, :cond_0

    .line 170
    if-eqz v0, :cond_5

    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 172
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const/4 v6, 0x2

    if-ne p1, v6, :cond_7

    .line 174
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/high16 v7, 0x41c0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 179
    :goto_4
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget v7, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mTextColor:I

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    :cond_5
    if-eqz v0, :cond_6

    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v6, :cond_6

    .line 183
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mSummaryEntryValues:[Ljava/lang/CharSequence;

    aget-object v7, v7, p1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const/4 v6, 0x2

    if-ne p1, v6, :cond_8

    .line 185
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 191
    :goto_5
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const v7, -0xffff01

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    :cond_6
    if-eqz v0, :cond_0

    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    if-eqz v6, :cond_0

    .line 195
    iget v6, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mCheckedIndex:I

    if-ne v6, p1, :cond_9

    .line 196
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2

    .line 177
    :cond_7
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const/high16 v7, 0x41a0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_4

    .line 189
    :cond_8
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    const/high16 v7, 0x4140

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_5

    .line 198
    :cond_9
    iget-object v6, v0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_2
.end method

.method public final setmCheckedIndex(I)V
    .locals 0
    .parameter "mCheckedIndex"

    .prologue
    .line 78
    iput p1, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mCheckedIndex:I

    .line 79
    return-void
.end method

.method public final setmEntryValues([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "mEntryValues"
    .parameter "mSummaryEntryValues"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    .line 83
    iput-object p2, p0, Lcom/samsung/inputmethod/setting/SimeInputModeListAdapter;->mSummaryEntryValues:[Ljava/lang/CharSequence;

    .line 84
    return-void
.end method
