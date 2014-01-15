.class Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;
.super Landroid/widget/BaseAdapter;
.source "DeviceAdminSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/DeviceAdminSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PolicyListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/settings_ex/DeviceAdminSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/DeviceAdminSettings;)V
    .locals 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 186
    invoke-virtual {p1}, Lcom/android/settings_ex/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 188
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    .line 237
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    invoke-virtual {v3}, Lcom/android/settings_ex/DeviceAdminSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 238
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;

    .line 239
    .local v2, vh:Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;
    iget-object v3, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v3, v3, Lcom/android/settings_ex/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DeviceAdminInfo;

    .line 240
    .local v1, item:Landroid/app/admin/DeviceAdminInfo;
    iget-object v3, v2, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/DeviceAdminInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 241
    iget-object v3, v2, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/DeviceAdminInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object v3, v2, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v4, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v4, v4, Lcom/android/settings_ex/DeviceAdminSettings;->mActiveAdmins:Ljava/util/HashSet;

    invoke-virtual {v1}, Landroid/app/admin/DeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 258
    :try_start_0
    iget-object v3, v2, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/app/admin/DeviceAdminInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 259
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->this$0:Lcom/android/settings_ex/DeviceAdminSettings;

    iget-object v0, v0, Lcom/android/settings_ex/DeviceAdminSettings;->mAvailableAdmins:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 203
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 216
    if-nez p2, :cond_0

    .line 217
    invoke-virtual {p0, p3}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 221
    .local v0, v:Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->bindView(Landroid/view/View;I)V

    .line 222
    return-object v0

    .line 219
    .end local v0           #v:Landroid/view/View;
    :cond_0
    move-object v0, p2

    .restart local v0       #v:Landroid/view/View;
    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 211
    const/4 v0, 0x1

    return v0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "parent"

    .prologue
    .line 226
    iget-object v2, p0, Lcom/android/settings_ex/DeviceAdminSettings$PolicyListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040058

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, v:Landroid/view/View;
    new-instance v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;

    invoke-direct {v0}, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;-><init>()V

    .line 228
    .local v0, h:Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;
    const v2, 0x7f0b005c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 229
    const v2, 0x7f0b0105

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->name:Landroid/widget/TextView;

    .line 230
    const v2, 0x7f0b0106

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->checkbox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 231
    const v2, 0x7f0b00c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/android/settings_ex/DeviceAdminSettings$ViewHolder;->description:Landroid/widget/TextView;

    .line 232
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    return-object v1
.end method
