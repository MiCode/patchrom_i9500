.class public Lcom/android/settings_ex/nearby/DownloadListPreference$DownloadListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DownloadListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/nearby/DownloadListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadListAdapter"
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field public mEntries:[Ljava/lang/String;

.field public mEntriesValues:[Ljava/lang/String;

.field mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings_ex/nearby/DownloadListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/nearby/DownloadListPreference;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 152
    iput-object p1, p0, Lcom/android/settings_ex/nearby/DownloadListPreference$DownloadListAdapter;->this$0:Lcom/android/settings_ex/nearby/DownloadListPreference;

    .line 153
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 144
    iput-object v1, p0, Lcom/android/settings_ex/nearby/DownloadListPreference$DownloadListAdapter;->context:Landroid/content/Context;

    .line 146
    iput-object v1, p0, Lcom/android/settings_ex/nearby/DownloadListPreference$DownloadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 148
    iput-object v1, p0, Lcom/android/settings_ex/nearby/DownloadListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    .line 150
    iput-object v1, p0, Lcom/android/settings_ex/nearby/DownloadListPreference$DownloadListAdapter;->mEntriesValues:[Ljava/lang/String;

    .line 155
    iput-object p2, p0, Lcom/android/settings_ex/nearby/DownloadListPreference$DownloadListAdapter;->context:Landroid/content/Context;

    .line 157
    const-string v1, "layout_inflater"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings_ex/nearby/DownloadListPreference$DownloadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 159
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 160
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nearby/DownloadListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    .line 161
    const v1, 0x7f0a006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/nearby/DownloadListPreference$DownloadListAdapter;->mEntriesValues:[Ljava/lang/String;

    .line 162
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings_ex/nearby/DownloadListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings_ex/nearby/DownloadListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 176
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    .line 183
    iget-object v1, p0, Lcom/android/settings_ex/nearby/DownloadListPreference$DownloadListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x109013a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 189
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 190
    .local v0, v:Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings_ex/nearby/DownloadListPreference$DownloadListAdapter;->mEntries:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 193
    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 195
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 196
    invoke-virtual {v0, v4}, Landroid/view/View;->setClickable(Z)V

    .line 199
    :cond_0
    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 204
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 205
    const/4 v0, 0x0

    .line 207
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method
