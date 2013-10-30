.class public Lcom/samsung/inputmethod/setting/SimeCustListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SimeCustListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_HEIGHT_PAINTCOLOR:I = 0x42

.field private static final TAG:Ljava/lang/String; = "SimeCustListAdapter"

.field private static final secondary_text_dark:I = 0x1060005


# instance fields
.field private csl:I

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

.field private mLineThicknessColor:[I

.field private mPaintColors:[I

.field private mWidth:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mCheckedIndex:I

    .line 60
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mContext:Landroid/content/Context;

    .line 61
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 62
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->initValues()V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Z)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "colorDisF"
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
            ">;>;Z)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, data:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mCheckedIndex:I

    .line 66
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mContext:Landroid/content/Context;

    .line 67
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 68
    iput-object p2, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mData:Ljava/util/List;

    .line 69
    iput-boolean p3, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mColorDisplayFlag:Z

    .line 70
    invoke-direct {p0}, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->initValues()V

    .line 71
    return-void
.end method

.method private initValues()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 74
    invoke-static {}, Lcom/samsung/inputmethod/comm/SimeEnvironment;->getInstance()Lcom/samsung/inputmethod/comm/SimeEnvironment;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->env:Lcom/samsung/inputmethod/comm/SimeEnvironment;

    .line 75
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mLineThicknessColor:[I

    .line 82
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mPaintColors:[I

    .line 90
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mWidth:[I

    .line 94
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->csl:I

    .line 95
    return-void

    .line 75
    nop

    :array_0
    .array-data 0x4
        0xd1t 0x1t 0x2t 0x7ft
        0xd2t 0x1t 0x2t 0x7ft
        0xd3t 0x1t 0x2t 0x7ft
        0xd4t 0x1t 0x2t 0x7ft
        0xd5t 0x1t 0x2t 0x7ft
    .end array-data

    .line 82
    :array_1
    .array-data 0x4
        0xdat 0x1t 0x2t 0x7ft
        0xd7t 0x1t 0x2t 0x7ft
        0xd9t 0x1t 0x2t 0x7ft
        0xd8t 0x1t 0x2t 0x7ft
    .end array-data

    .line 90
    :array_2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mData:Ljava/util/List;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    .line 110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 120
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    .local v0, holder:Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;
    if-nez p2, :cond_1

    .line 127
    new-instance v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;

    .end local v0           #holder:Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;
    invoke-direct {v0, p0}, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;-><init>(Lcom/samsung/inputmethod/setting/SimeCustListAdapter;)V

    .line 128
    .restart local v0       #holder:Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040002

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 131
    const v1, 0x7f0c0088

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 132
    const v1, 0x7f0c008b

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    .line 133
    const v1, 0x7f0c008a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    .line 135
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 140
    :goto_0
    iget-object v1, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    .line 170
    :cond_0
    :goto_1
    return-object p2

    .line 138
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #holder:Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;
    check-cast v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;

    .restart local v0       #holder:Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;
    goto :goto_0

    .line 144
    :cond_2
    if-eqz v0, :cond_0

    .line 147
    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    .line 149
    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    :cond_3
    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    .line 154
    iget-boolean v1, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mColorDisplayFlag:Z

    if-eqz v1, :cond_5

    .line 155
    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mPaintColors:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 159
    :goto_2
    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    const/16 v2, 0x42

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setMaxHeight(I)V

    .line 162
    :cond_4
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 163
    iget v1, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mCheckedIndex:I

    if-ne v1, p1, :cond_6

    .line 164
    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 157
    :cond_5
    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;->img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mLineThicknessColor:[I

    aget v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_2

    .line 166
    :cond_6
    iget-object v1, v0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter$ViewHolder;->radio:Landroid/widget/RadioButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1
.end method

.method public final setmCheckedIndex(I)V
    .locals 0
    .parameter "mCheckedIndex"

    .prologue
    .line 99
    iput p1, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mCheckedIndex:I

    .line 100
    return-void
.end method

.method public final setmEntryValues([Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "mEntryValues"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/samsung/inputmethod/setting/SimeCustListAdapter;->mEntryValues:[Ljava/lang/CharSequence;

    .line 104
    return-void
.end method
