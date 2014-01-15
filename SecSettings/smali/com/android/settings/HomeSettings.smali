.class public Lcom/android/settings_ex/HomeSettings;
.super Landroid/app/ListFragment;
.source "HomeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/HomeSettings$HomeAdapter;
    }
.end annotation


# static fields
.field private static final BASIC_MODE:I = 0x1

.field private static final CUSTOMER_MODE:I = 0x0

.field private static final EASY_MODE:I = 0x2

.field private static final EASY_MODE_SWITCH:Ljava/lang/String; = "easy_mode_switch"

.field private static final MODE_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "HomeSettings"

.field private static final mCustomerLauncher:Ljava/lang/String; = "com.nttdocomo.android.paletteui"

.field private static final mGoogleSetupWizard:Ljava/lang/String; = "com.google.android.setupwizard"

.field private static final mSamsungEasyLauncher:Ljava/lang/String; = "com.sec.android.app.easylauncher"

.field private static final mSamsungKidsLauncher:Ljava/lang/String; = "com.sec.android.app.kidslauncher"

.field private static final mSamsungLauncher:Ljava/lang/String; = "com.sec.android.app.launcher"

.field private static final mSecSetupWizard:Ljava/lang/String; = "com.sec.android.app.SecSetupWizard"


# instance fields
.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentHome:I

.field private mCurrentMode:I

.field mHomeApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeIntent:Landroid/content/Intent;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSetupButton:Landroid/widget/TextView;

.field private mSetupMode:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/HomeSettings;->mSetupMode:Z

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/HomeSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings_ex/HomeSettings;->changeHome(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/HomeSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings_ex/HomeSettings;->startHome()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/HomeSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/HomeSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private changeHome(I)V
    .locals 6
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 246
    const-string v1, "HomeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeHome "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v1, p0, Lcom/android/settings_ex/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 248
    .local v0, info:Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/HomeSettings;->setPreferredHome(Landroid/content/pm/ResolveInfo;)V

    .line 249
    iput p1, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:I

    .line 251
    packed-switch p1, :pswitch_data_0

    .line 262
    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/HomeSettings;->setEasymode(ZZ)V

    .line 265
    :goto_0
    return-void

    .line 253
    :pswitch_0
    invoke-direct {p0, v4, v5}, Lcom/android/settings_ex/HomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    .line 256
    :pswitch_1
    invoke-direct {p0, v4, v4}, Lcom/android/settings_ex/HomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    .line 259
    :pswitch_2
    invoke-direct {p0, v5, v4}, Lcom/android/settings_ex/HomeSettings;->setEasymode(ZZ)V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;
    .locals 3
    .parameter "packageName"

    .prologue
    .line 360
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings;->mAppList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 362
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 363
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 364
    .local v0, info:Landroid/content/pm/ResolveInfo;
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 369
    .end local v0           #info:Landroid/content/pm/ResolveInfo;
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/ResolveInfo;>;"
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPreffered(Ljava/lang/String;)Z
    .locals 3
    .parameter "packageName"

    .prologue
    .line 352
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 353
    .local v1, intentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/IntentFilter;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v0, componentList:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v0, p1}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 356
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setEasymode(ZZ)V
    .locals 5
    .parameter "enabled"
    .parameter "isCustom"

    .prologue
    .line 300
    const-string v2, "HomeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setEasymode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 302
    .local v1, switchValue:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.EASY_MODE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 304
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "easymode"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 305
    const-string v2, "easymode_from"

    const-string v3, "settings"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    if-eqz p2, :cond_2

    .line 307
    const-string v2, "homemode_jpn"

    const-string v3, "docomo"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    :goto_1
    iget-boolean v2, p0, Lcom/android/settings_ex/HomeSettings;->mSetupMode:Z

    if-nez v2, :cond_0

    .line 313
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 315
    :cond_0
    return-void

    .line 301
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #switchValue:I
    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    .line 309
    .restart local v0       #intent:Landroid/content/Intent;
    .restart local v1       #switchValue:I
    :cond_2
    const-string v2, "homemode_jpn"

    const-string v3, "samsung"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method private startHome()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 318
    const-string v4, "HomeSettings"

    const-string v5, "startHome"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "easy_mode_switch"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 322
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 323
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_SCROLL_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 324
    .local v3, smart_scroll_changed:Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v3, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 325
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 327
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_pause"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 328
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.sec.SMART_PAUSE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v2, smart_pause_changed:Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v2, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 330
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 332
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "finger_air_view"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 334
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.gesture.FINGER_AIR_VIEW_SETTINGS_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    .local v0, finger_air_view_changed:Landroid/content/Intent;
    const-string v4, "isEnable"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 338
    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "multi_window_enabled"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 342
    .end local v0           #finger_air_view_changed:Landroid/content/Intent;
    .end local v2           #smart_pause_changed:Landroid/content/Intent;
    .end local v3           #smart_scroll_changed:Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v1, homeIntent:Landroid/content/Intent;
    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    const v4, 0x8000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    const/high16 v4, 0x80

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 347
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 348
    return-void
.end method


# virtual methods
.method public getCurrentHome()I
    .locals 1

    .prologue
    .line 373
    iget v0, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:I

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 196
    const-string v0, "HomeSettings"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 198
    new-instance v0, Lcom/android/settings_ex/HomeSettings$HomeAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f07003d

    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings_ex/HomeSettings$HomeAdapter;-><init>(Lcom/android/settings_ex/HomeSettings;Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 86
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const-string v3, "HomeSettings"

    const-string v4, "onCreate()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 90
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mResolver:Landroid/content/ContentResolver;

    .line 91
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:I

    .line 93
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "device_provisioned"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 96
    .local v2, isSettingWizard:Z
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mHomeIntent:Landroid/content/Intent;

    .line 97
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mHomeIntent:Landroid/content/Intent;

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mHomeIntent:Landroid/content/Intent;

    const v5, 0x10040

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mAppList:Ljava/util/List;

    .line 101
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mHomeApps:Ljava/util/List;

    .line 102
    const-string v3, "com.nttdocomo.android.paletteui"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/HomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 103
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mHomeApps:Ljava/util/List;

    const-string v4, "com.nttdocomo.android.paletteui"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/HomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    const-string v3, "HomeSettings"

    const-string v4, "CustomerLauncher add"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_1
    const-string v3, "com.sec.android.app.launcher"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/HomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 107
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mHomeApps:Ljava/util/List;

    const-string v4, "com.sec.android.app.launcher"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/HomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    const-string v3, "HomeSettings"

    const-string v4, "TWLauncher add"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_2
    const-string v3, "com.sec.android.app.easylauncher"

    invoke-direct {p0, v3}, Lcom/android/settings_ex/HomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 111
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mHomeApps:Ljava/util/List;

    const-string v4, "com.sec.android.app.easylauncher"

    invoke-direct {p0, v4}, Lcom/android/settings_ex/HomeSettings;->getResolveInfo(Ljava/lang/String;)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    const-string v3, "HomeSettings"

    const-string v4, "EasyLauncher add"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_3
    if-nez v2, :cond_5

    .line 117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 118
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 120
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.nttdocomo.android.paletteui"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sec.android.app.launcher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sec.android.app.easylauncher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sec.android.app.kidslauncher"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.setupwizard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 126
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v0           #i:I
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_5
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_7

    .line 133
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 134
    .restart local v1       #info:Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.sec.android.app.SecSetupWizard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 135
    const-string v3, "HomeSettings"

    const-string v4, "Remove secsetupwizard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 132
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 141
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_7
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_9

    .line 142
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 143
    .restart local v1       #info:Landroid/content/pm/ResolveInfo;
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const-string v4, "com.google.android.setupwizard"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 144
    const-string v3, "HomeSettings"

    const-string v4, "Remove googlesetupwizard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 141
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 148
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_9
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 152
    const-string v0, "HomeSettings"

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const v0, 0x7f040090

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 7
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    .line 203
    const-string v3, "HomeSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onListItemClick : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget v3, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:I

    if-ne v3, p3, :cond_0

    .line 243
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v3, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 212
    .local v1, info:Landroid/content/pm/ResolveInfo;
    iget-boolean v3, p0, Lcom/android/settings_ex/HomeSettings;->mSetupMode:Z

    if-eqz v3, :cond_1

    .line 213
    invoke-direct {p0, p3}, Lcom/android/settings_ex/HomeSettings;->changeHome(I)V

    .line 214
    iget-object v3, p0, Lcom/android/settings_ex/HomeSettings;->mSetupButton:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 215
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/HomeSettings$HomeAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, label:Ljava/lang/String;
    packed-switch p3, :pswitch_data_0

    .line 230
    :goto_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090f28

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings_ex/HomeSettings$1;

    invoke-direct {v5, p0, p3}, Lcom/android/settings_ex/HomeSettings$1;-><init>(Lcom/android/settings_ex/HomeSettings;I)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 241
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 220
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :pswitch_0
    const v3, 0x7f090f29

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 221
    goto :goto_1

    .line 223
    :pswitch_1
    const v3, 0x7f090f2b

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 224
    goto :goto_1

    .line 226
    :pswitch_2
    const v3, 0x7f090f2d

    invoke-virtual {p0, v3}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 157
    const-string v2, "HomeSettings"

    const-string v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings;->mHomeApps:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 161
    .local v1, info:Landroid/content/pm/ResolveInfo;
    if-eqz v1, :cond_4

    .line 162
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/HomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 163
    iput v0, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:I

    .line 169
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_0
    const-string v2, "com.sec.android.app.launcher"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/HomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 170
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentMode:I

    .line 171
    iget v2, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentMode:I

    if-nez v2, :cond_5

    .line 172
    iput v6, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:I

    .line 180
    :cond_1
    :goto_1
    iget v2, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:I

    if-eq v2, v5, :cond_7

    iget-boolean v2, p0, Lcom/android/settings_ex/HomeSettings;->mSetupMode:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings;->mSetupButton:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 181
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings;->mSetupButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 188
    :cond_2
    :goto_2
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 189
    const-string v2, "HomeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CurrentHome: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/HomeSettings$HomeAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 192
    :cond_3
    return-void

    .line 159
    .restart local v1       #info:Landroid/content/pm/ResolveInfo;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    .end local v1           #info:Landroid/content/pm/ResolveInfo;
    :cond_5
    iput v4, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:I

    goto :goto_1

    .line 176
    :cond_6
    const-string v2, "com.sec.android.app.easylauncher"

    invoke-direct {p0, v2}, Lcom/android/settings_ex/HomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    iput v6, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:I

    goto :goto_1

    .line 182
    :cond_7
    iget v2, p0, Lcom/android/settings_ex/HomeSettings;->mCurrentHome:I

    if-ne v2, v5, :cond_2

    iget-boolean v2, p0, Lcom/android/settings_ex/HomeSettings;->mSetupMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings;->mSetupButton:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 184
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settings_ex/HomeSettings;->changeHome(I)V

    .line 185
    iget-object v2, p0, Lcom/android/settings_ex/HomeSettings;->mSetupButton:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_2
.end method

.method public setButton(Landroid/widget/TextView;)V
    .locals 2
    .parameter "button"

    .prologue
    .line 268
    const-string v0, "HomeSettings"

    const-string v1, "setButton"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iput-object p1, p0, Lcom/android/settings_ex/HomeSettings;->mSetupButton:Landroid/widget/TextView;

    .line 270
    iget-object v0, p0, Lcom/android/settings_ex/HomeSettings;->mSetupButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/HomeSettings;->mSetupMode:Z

    .line 273
    return-void
.end method

.method public setPreferredHome(Landroid/content/pm/ResolveInfo;)V
    .locals 8
    .parameter "info"

    .prologue
    .line 276
    const-string v5, "HomeSettings"

    const-string v6, "setPreferredHome"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 278
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    const-string v5, "android.intent.category.HOME"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 280
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 282
    iget-object v5, p0, Lcom/android/settings_ex/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Landroid/content/ComponentName;

    .line 283
    .local v0, components:[Landroid/content/ComponentName;
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .local v4, target:Landroid/content/ComponentName;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v5, p0, Lcom/android/settings_ex/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 286
    iget-object v5, p0, Lcom/android/settings_ex/HomeSettings;->mAppList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 287
    .local v2, home:Landroid/content/pm/ResolveInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v7, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v0, v3

    .line 290
    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/settings_ex/HomeSettings;->isPreffered(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 291
    iget-object v5, p0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v6, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V

    .line 285
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 296
    .end local v2           #home:Landroid/content/pm/ResolveInfo;
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/HomeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget v6, p1, Landroid/content/pm/ResolveInfo;->match:I

    invoke-virtual {v5, v1, v6, v0, v4}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 297
    return-void
.end method
