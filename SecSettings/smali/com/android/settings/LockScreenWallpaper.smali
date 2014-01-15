.class public Lcom/android/settings_ex/LockScreenWallpaper;
.super Lcom/android/internal/app/AlertActivity;
.source "LockScreenWallpaper.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/LockScreenWallpaper$AlphaComparator;,
        Lcom/android/settings_ex/LockScreenWallpaper$ItemLongClickListener;,
        Lcom/android/settings_ex/LockScreenWallpaper$ViewHolder;,
        Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;
    }
.end annotation


# static fields
.field private static final GALLERY:Ljava/lang/String; = "com.sec.android.gallery3d"

.field private static final LIVE_WALLPAPERS:Ljava/lang/String; = "com.android.wallpaper.livepicker"

.field static final MODE_BOTH_WALLPAPER:I = 0x2

.field static final MODE_LOCKSCREEN_WALLPAPER:I = 0x1

.field private static final TRAVEL_WALLPAPER:Ljava/lang/String; = "com.samsung.android.service.travel"

.field private static final WALLPAPER_GALLERY:Ljava/lang/String; = "com.sec.android.app.wallpaperchooser"

.field static final WALLPAPER_MODE:Ljava/lang/String; = "SET_WALLPAPER_MODE"


# instance fields
.field private ItemName:[Ljava/lang/String;

.field private isTypeBoth:Z

.field private mAdapter:Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;

.field private mDirectWallpaper:Z

.field private mGrid:Landroid/widget/GridView;

.field private mIconSize:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPm:Landroid/content/pm/PackageManager;

.field private rList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private rListLock:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ex/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    .line 64
    iput-boolean v1, p0, Lcom/android/settings_ex/LockScreenWallpaper;->isTypeBoth:Z

    .line 70
    iput-boolean v1, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mDirectWallpaper:Z

    .line 308
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/LockScreenWallpaper;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/LockScreenWallpaper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings_ex/LockScreenWallpaper;->isTypeBoth:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/LockScreenWallpaper;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/LockScreenWallpaper;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mIconSize:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/LockScreenWallpaper;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/LockScreenWallpaper;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings_ex/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 75
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    const-string v5, "layout_inflater"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    iput-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "direct_wallpaper"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mDirectWallpaper:Z

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "both"

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v8, :cond_0

    iget-boolean v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mDirectWallpaper:Z

    if-eqz v5, :cond_1

    .line 85
    :cond_0
    iput-boolean v8, p0, Lcom/android/settings_ex/LockScreenWallpaper;->isTypeBoth:Z

    .line 87
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    .line 89
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v4, pickWallpaper:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v4, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;

    .line 92
    iget-boolean v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->isTypeBoth:Z

    if-nez v5, :cond_3

    .line 93
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.android.service.travel"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 94
    .local v0, LockpickWallpaper:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v0, v9}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->rListLock:Ljava/util/List;

    .line 96
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v8, :cond_2

    .line 97
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;

    iget-object v6, p0, Lcom/android/settings_ex/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_2
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rListLock"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings_ex/LockScreenWallpaper;->rListLock:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    .end local v0           #LockpickWallpaper:Landroid/content/Intent;
    :cond_3
    new-instance v3, Lcom/android/settings_ex/LockScreenWallpaper$AlphaComparator;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/LockScreenWallpaper$AlphaComparator;-><init>(Lcom/android/settings_ex/LockScreenWallpaper;)V

    .line 105
    .local v3, mAlphaComparator:Lcom/android/settings_ex/LockScreenWallpaper$AlphaComparator;
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 107
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 108
    .local v1, am:Landroid/app/ActivityManager;
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v5

    iput v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mIconSize:I

    .line 110
    iget-object v2, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 112
    .local v2, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0909cf

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x1090134

    invoke-virtual {v5, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 114
    iget-object v5, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v6, 0x10203f6

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/GridView;

    iput-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    .line 115
    new-instance v5, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;

    invoke-direct {v5, p0, p0}, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;-><init>(Lcom/android/settings_ex/LockScreenWallpaper;Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mAdapter:Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;

    .line 116
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    iget-object v6, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mAdapter:Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v5, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 118
    iget-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    new-instance v6, Lcom/android/settings_ex/LockScreenWallpaper$ItemLongClickListener;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/LockScreenWallpaper$ItemLongClickListener;-><init>(Lcom/android/settings_ex/LockScreenWallpaper;)V

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ex/LockScreenWallpaper;->resizeGrid()V

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 122
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v6, 0x1

    .line 126
    const-string v4, "com.sec.android.gallery3d"

    iget-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, intent:Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/android/settings_ex/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v4, :cond_0

    .line 129
    const-string v4, "com.sec.android.gallery3d"

    const-string v5, "com.sec.android.gallery3d.app.BothScreen"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 160
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 161
    return-void

    .line 131
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_0
    const-string v4, "com.sec.android.gallery3d"

    const-string v5, "com.sec.android.gallery3d.app.LockScreen"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 133
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const-string v4, "com.android.wallpaper.livepicker"

    iget-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 135
    .local v2, intentLiveWallpaperChooser:Landroid/content/Intent;
    const-string v4, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.android.wallpaper.livepicker"

    const-string v6, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 141
    .end local v2           #intentLiveWallpaperChooser:Landroid/content/Intent;
    :cond_2
    const-string v4, "com.samsung.android.service.travel"

    iget-object v5, p0, Lcom/android/settings_ex/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v5, v5, p3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 142
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v3, intentTravelWallpaper:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.samsung.android.service.travel"

    const-string v6, "com.samsung.android.travel.TravelWallActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 151
    .end local v3           #intentTravelWallpaper:Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 152
    .local v1, intentCallWallpaperChooser:Landroid/content/Intent;
    iget-boolean v4, p0, Lcom/android/settings_ex/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v4, :cond_4

    .line 153
    const-string v4, "SET_WALLPAPER_MODE"

    const/4 v5, 0x2

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    :goto_2
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.wallpaperchooser"

    const-string v6, "com.sec.android.app.wallpaperchooser.WallpaperChooser"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 155
    :cond_4
    const-string v4, "SET_WALLPAPER_MODE"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method resizeGrid()V
    .locals 4

    .prologue
    .line 281
    iget-object v2, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mAdapter:Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;

    invoke-virtual {v2}, Lcom/android/settings_ex/LockScreenWallpaper$WallpaperAdapter;->getCount()I

    move-result v0

    .line 282
    .local v0, itemCount:I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 283
    .local v1, maxColumns:I
    iget-object v2, p0, Lcom/android/settings_ex/LockScreenWallpaper;->mGrid:Landroid/widget/GridView;

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 284
    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .parameter "ri"

    .prologue
    .line 298
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 300
    .local v0, in:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 302
    return-void
.end method
