.class public Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimeTabListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$1;,
        Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field private mInflater:Landroid/view/LayoutInflater;

.field mListSep:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;->DEBUG:Z

    .line 35
    const-string v0, "SimeTabListAdapter"

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;->TAG:Ljava/lang/String;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 48
    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogListSep()Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;->mListSep:Ljava/util/Vector;

    .line 49
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 53
    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getEditListInitSize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 58
    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogListMode(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 63
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    .line 78
    new-instance v0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;

    invoke-direct {v0, p0, v5}, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;-><init>(Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$1;)V

    .line 81
    .local v0, holder:Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;->mListSep:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f030010

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    move-object v3, p2

    .line 83
    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 90
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getDialogListMode(I)I

    move-result v2

    .line 94
    .local v2, modeID:I
    invoke-static {v2}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getListItemTextByMode(I)I

    move-result v1

    .line 96
    .local v1, itemRes:I
    iget-object v3, v0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v3, v0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_1

    .line 100
    const/high16 v3, 0x1111

    if-eq v2, v3, :cond_0

    const v3, 0x61011000

    if-ne v2, v3, :cond_3

    .line 102
    :cond_0
    iget-object v3, v0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 107
    :goto_1
    iget-object v3, v0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-static {}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getInstance()Lcom/samsung/inputmethod/tabmode/SimeTabDataService;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/samsung/inputmethod/tabmode/SimeTabDataService;->getClickValuesByIndex(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 111
    :cond_1
    return-object p2

    .line 86
    .end local v1           #itemRes:I
    .end local v2           #modeID:I
    :cond_2
    iget-object v3, p0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03000f

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 87
    const v3, 0x7f0c003e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 88
    const v3, 0x7f0c003f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, v0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    goto :goto_0

    .line 104
    .restart local v1       #itemRes:I
    .restart local v2       #modeID:I
    :cond_3
    iget-object v3, v0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter$ViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_1
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;->mListSep:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Lcom/samsung/inputmethod/tabmode/SimeTabListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x0

    .line 71
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method
