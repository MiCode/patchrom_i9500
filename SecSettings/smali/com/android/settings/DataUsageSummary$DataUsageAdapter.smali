.class public Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataUsageAdapter"
.end annotation


# instance fields
.field private final mInsetSide:I

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/DataUsageSummary$AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLargest:J

.field private final mProvider:Lcom/android/settings_ex/net/UidDetailProvider;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/net/UidDetailProvider;I)V
    .locals 1
    .parameter "provider"
    .parameter "insetSide"

    .prologue
    .line 1865
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1862
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    .line 1866
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/net/UidDetailProvider;

    iput-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    .line 1867
    iput p2, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    .line 1868
    return-void
.end method


# virtual methods
.method public bindStats(Landroid/net/NetworkStats;[I)V
    .locals 19
    .parameter "stats"
    .parameter "restrictedUids"

    .prologue
    .line 1874
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1876
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    .line 1877
    .local v4, currentUserId:I
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1879
    .local v9, knownItems:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/settings_ex/DataUsageSummary$AppItem;>;"
    const/4 v5, 0x0

    .line 1880
    .local v5, entry:Landroid/net/NetworkStats$Entry;
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkStats;->size()I

    move-result v11

    .line 1881
    .local v11, size:I
    :goto_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v11, :cond_6

    .line 1882
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v5}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v5

    .line 1885
    iget v12, v5, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1887
    .local v12, uid:I
    invoke-static {v12}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1888
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    if-ne v13, v4, :cond_2

    .line 1889
    move v3, v12

    .line 1899
    .local v3, collapseKey:I
    :goto_2
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 1900
    .local v8, item:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    if-nez v8, :cond_0

    .line 1901
    new-instance v8, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .end local v8           #item:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    invoke-direct {v8, v3}, Lcom/android/settings_ex/DataUsageSummary$AppItem;-><init>(I)V

    .line 1902
    .restart local v8       #item:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1903
    iget v13, v8, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    invoke-virtual {v9, v13, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1905
    :cond_0
    invoke-virtual {v8, v12}, Lcom/android/settings_ex/DataUsageSummary$AppItem;->addUid(I)V

    .line 1906
    iget-wide v13, v8, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    iget-wide v15, v5, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v0, v5, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    add-long/2addr v13, v15

    iput-wide v13, v8, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    .line 1881
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1880
    .end local v3           #collapseKey:I
    .end local v6           #i:I
    .end local v8           #item:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    .end local v11           #size:I
    .end local v12           #uid:I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 1891
    .restart local v6       #i:I
    .restart local v11       #size:I
    .restart local v12       #uid:I
    :cond_2
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    invoke-static {v13}, Lcom/android/settings_ex/net/UidDetailProvider;->buildKeyForUser(I)I

    move-result v3

    .restart local v3       #collapseKey:I
    goto :goto_2

    .line 1893
    .end local v3           #collapseKey:I
    :cond_3
    const/4 v13, -0x4

    if-eq v12, v13, :cond_4

    const/4 v13, -0x5

    if-ne v12, v13, :cond_5

    .line 1894
    :cond_4
    move v3, v12

    .restart local v3       #collapseKey:I
    goto :goto_2

    .line 1896
    .end local v3           #collapseKey:I
    :cond_5
    const/16 v3, 0x3e8

    .restart local v3       #collapseKey:I
    goto :goto_2

    .line 1909
    .end local v3           #collapseKey:I
    .end local v12           #uid:I
    :cond_6
    move-object/from16 v2, p2

    .local v2, arr$:[I
    array-length v10, v2

    .local v10, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_3
    if-ge v7, v10, :cond_9

    aget v12, v2, v7

    .line 1911
    .restart local v12       #uid:I
    invoke-static {v12}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v13

    if-eq v13, v4, :cond_7

    .line 1909
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1913
    :cond_7
    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 1914
    .restart local v8       #item:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    if-nez v8, :cond_8

    .line 1915
    new-instance v8, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .end local v8           #item:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    invoke-direct {v8, v12}, Lcom/android/settings_ex/DataUsageSummary$AppItem;-><init>(I)V

    .line 1916
    .restart local v8       #item:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    const-wide/16 v13, -0x1

    iput-wide v13, v8, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    .line 1917
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1918
    iget v13, v8, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    invoke-virtual {v9, v13, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1920
    :cond_8
    const/4 v13, 0x1

    iput-boolean v13, v8, Lcom/android/settings_ex/DataUsageSummary$AppItem;->restricted:Z

    goto :goto_4

    .line 1923
    .end local v8           #item:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    .end local v12           #uid:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1924
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    iget-wide v13, v13, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    :goto_5
    move-object/from16 v0, p0

    iput-wide v13, v0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mLargest:J

    .line 1925
    invoke-virtual/range {p0 .. p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1926
    return-void

    .line 1924
    :cond_a
    const-wide/16 v13, 0x0

    goto :goto_5
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1930
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 1940
    iget-object v0, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    iget v0, v0, Lcom/android/settings_ex/DataUsageSummary$AppItem;->key:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const-wide/16 v7, 0x0

    const/4 v2, 0x0

    .line 1945
    if-nez p2, :cond_0

    .line 1946
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f040052

    invoke-virtual {v5, v6, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1949
    iget v5, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    if-lez v5, :cond_0

    .line 1950
    iget v5, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    iget v6, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mInsetSide:I

    invoke-virtual {p2, v5, v2, v6, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1954
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1956
    .local v0, context:Landroid/content/Context;
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1957
    .local v4, text1:Landroid/widget/TextView;
    const v5, 0x102000d

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    .line 1961
    .local v3, progress:Landroid/widget/ProgressBar;
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/DataUsageSummary$AppItem;

    .line 1962
    .local v1, item:Lcom/android/settings_ex/DataUsageSummary$AppItem;
    iget-object v5, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mProvider:Lcom/android/settings_ex/net/UidDetailProvider;

    invoke-static {v5, v1, p2}, Lcom/android/settings_ex/DataUsageSummary$UidDetailTask;->bindView(Lcom/android/settings_ex/net/UidDetailProvider;Lcom/android/settings_ex/DataUsageSummary$AppItem;Landroid/view/View;)V

    .line 1964
    iget-boolean v5, v1, Lcom/android/settings_ex/DataUsageSummary$AppItem;->restricted:Z

    if-eqz v5, :cond_2

    iget-wide v5, v1, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    cmp-long v5, v5, v7

    if-gtz v5, :cond_2

    .line 1965
    const v5, 0x7f090901

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1966
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1972
    :goto_0
    iget-wide v5, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mLargest:J

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    iget-wide v5, v1, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    iget-wide v7, p0, Lcom/android/settings_ex/DataUsageSummary$DataUsageAdapter;->mLargest:J

    div-long/2addr v5, v7

    long-to-int v2, v5

    .line 1973
    .local v2, percentTotal:I
    :cond_1
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1975
    return-object p2

    .line 1968
    .end local v2           #percentTotal:I
    :cond_2
    iget-wide v5, v1, Lcom/android/settings_ex/DataUsageSummary$AppItem;->total:J

    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1969
    invoke-virtual {v3, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
