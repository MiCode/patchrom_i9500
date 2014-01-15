.class public Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/LockScreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings_ex/LockScreenWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/settings_ex/LockScreenWallpaper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    .line 167
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->mContext:Landroid/content/Context;

    .line 169
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 176
    iget-object v2, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->isTypeBoth:Z
    invoke-static {v2}, Lcom/android/settings_ex/LockScreenWallpaper;->access$100(Lcom/android/settings_ex/LockScreenWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 177
    const-string v3, "com.sec.android.gallery3d"

    iget-object v2, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "com.sec.android.app.wallpaperchooser"

    iget-object v2, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v3, "com.android.wallpaper.livepicker"

    iget-object v2, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 180
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 175
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_2
    const-string v3, "com.sec.android.gallery3d"

    iget-object v2, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v3, "com.sec.android.app.wallpaperchooser"

    iget-object v2, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v3, "com.samsung.android.service.travel"

    iget-object v2, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 187
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    :cond_4
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 198
    const/4 v0, 0x0

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
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v7, 0x8

    .line 215
    if-nez p2, :cond_3

    .line 216
    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$200(Lcom/android/settings_ex/LockScreenWallpaper;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x1090133

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 220
    new-instance v1, Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;

    invoke-direct {v1}, Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;-><init>()V

    .line 221
    .local v1, holder:Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;
    const v4, 0x1020014

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    .line 222
    const v4, 0x1020015

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v1, Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    .line 223
    const v4, 0x1020006

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 224
    iget-object v4, v1, Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 225
    .local v3, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->mIconSize:I
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$300(Lcom/android/settings_ex/LockScreenWallpaper;)I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 227
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    .end local v3           #lp:Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    move v0, p1

    .line 236
    .local v0, count:I
    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->isTypeBoth:Z
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$100(Lcom/android/settings_ex/LockScreenWallpaper;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 237
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 238
    const-string v5, "com.sec.android.gallery3d"

    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v5, "com.sec.android.app.wallpaperchooser"

    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v5, "com.android.wallpaper.livepicker"

    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 241
    :cond_0
    if-nez v0, :cond_1

    .line 242
    iget-object v5, v1, Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings_ex/LockScreenWallpaper;->access$400(Lcom/android/settings_ex/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    iget-object v4, v1, Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v5, v1, Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings_ex/LockScreenWallpaper;->access$400(Lcom/android/settings_ex/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$500(Lcom/android/settings_ex/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v4, v5, p1

    .line 247
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 237
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 231
    .end local v0           #count:I
    .end local v1           #holder:Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;
    .end local v2           #i:I
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;

    .restart local v1       #holder:Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;
    goto/16 :goto_0

    .line 251
    .restart local v0       #count:I
    :cond_4
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 253
    const-string v5, "com.sec.android.gallery3d"

    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v5, "com.sec.android.app.wallpaperchooser"

    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v5, "com.samsung.android.service.travel"

    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 257
    :cond_5
    if-nez v0, :cond_6

    .line 258
    iget-object v5, v1, Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings_ex/LockScreenWallpaper;->access$400(Lcom/android/settings_ex/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v4, v1, Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 260
    iget-object v5, v1, Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v6, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v6}, Lcom/android/settings_ex/LockScreenWallpaper;->access$400(Lcom/android/settings_ex/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$500(Lcom/android/settings_ex/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v5

    iget-object v4, p0, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings_ex/LockScreenWallpaper;

    #getter for: Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v4}, Lcom/android/settings_ex/LockScreenWallpaper;->access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v4, v5, p1

    .line 263
    :cond_6
    add-int/lit8 v0, v0, -0x1

    .line 251
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 268
    :cond_8
    return-object p2
.end method
