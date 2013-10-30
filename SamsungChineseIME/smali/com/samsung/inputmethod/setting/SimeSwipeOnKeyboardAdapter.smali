.class public Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimeSwipeOnKeyboardAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SimeSwipeOnKeyboardAdapter"


# instance fields
.field private final RPAD:I

.field private mCheckedIndex:I

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
    .line 47
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    const v0, -0xffff01

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mSummaryColor:I

    .line 36
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->RPAD:I

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 49
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mContext:Landroid/content/Context;

    .line 50
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->initValues()V

    .line 51
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
    .line 53
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    const v0, -0xffff01

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mSummaryColor:I

    .line 36
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->RPAD:I

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 55
    iput-object p2, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mData:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->initValues()V

    .line 58
    return-void
.end method

.method private initValues()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mCheckedIndex:I

    .line 62
    const/high16 v0, -0x100

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mTextColor:I

    .line 63
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, holder:Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 100
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;

    .end local v0           #holder:Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;-><init>(Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;)V

    .line 102
    .restart local v0       #holder:Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400ab

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 103
    const v1, 0x7f0c0088

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 104
    const v1, 0x7f0c0089

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    .line 105
    const v1, 0x7f0c008a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 107
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 138
    :cond_0
    :goto_1
    return-object p2

    .line 110
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;
    check-cast v0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;
    goto :goto_0

    .line 117
    :cond_2
    if-eqz v0, :cond_0

    .line 120
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 121
    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 126
    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;->summary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mSummaryEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    :cond_4
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 131
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mCheckedIndex:I

    if-ne v1, p1, :cond_5

    .line 132
    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 134
    :cond_5
    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public final setmCheckedIndex(I)V
    .locals 0
    .parameter "mCheckedIndex"

    .prologue
    .line 69
    iput p1, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mCheckedIndex:I

    .line 70
    return-void
.end method

.method public final setmEntryValues([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "mEntryValues"
    .parameter "mSummaryEntryValues"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    .line 74
    iput-object p2, p0, Lcom/samsung/inputmethod/setting/SimeSwipeOnKeyboardAdapter;->mSummaryEntryValues:[Ljava/lang/CharSequence;

    .line 75
    return-void
.end method
