.class public Lcom/android/settings_ex/autohaptic/AutoHapticSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AutoHapticSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IconResizer;,
        Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;,
        Lcom/android/settings_ex/autohaptic/AutoHapticSettings$ReverbBasicSettings;,
        Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;
    }
.end annotation


# static fields
.field public static final ERM_ACTUATOR:I = 0x0

.field private static final HAPTIC_FEEDBACK_THEME_AUTHORITY_PREFIX:Ljava/lang/String; = "com.immersion.android.haptictheme."

.field public static final KEY_REVERB_DENSITY:Ljava/lang/String; = "density"

.field public static final KEY_REVERB_DO_NOT_SHOW:Ljava/lang/String; = "DoNotShowDialog"

.field public static final KEY_REVERB_ENABLE:Ljava/lang/String; = "enable"

.field public static final KEY_REVERB_ENABLE_OLD:Ljava/lang/String; = "enable_old"

.field public static final KEY_REVERB_MEDIAPLAYER_ENABLE:Ljava/lang/String; = "mediaplayer"

.field public static final KEY_REVERB_SHARPNESS:Ljava/lang/String; = "sharpness"

.field public static final KEY_REVERB_STRENGTH:Ljava/lang/String; = "strength"

.field public static final LRA_ACTUATOR:I = 0x2

.field public static final PIEZO_ACTUATOR:I = 0x4

.field private static final REVERB_ACTUATOR_INDEX:I = 0x0

.field public static final REVERB_SHARED_PREFS:Ljava/lang/String; = "com.android.settings_ex_reverb"

.field public static final REVERB_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "AutoHapticSettings"

.field private static mActuator:I

.field private static mActuatorChecked:I


# instance fields
.field private appCount:I

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;",
            ">;"
        }
    .end annotation
.end field

.field private mAutoHapticDialog:Landroid/app/AlertDialog;

.field mIconResizer:Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IconResizer;

.field private mIncludedApps:Landroid/preference/PreferenceCategory;

.field private mIntentReceiver:Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;

.field mNoPopupOnExcute:Z

.field private mReverbSharedPrefs:Landroid/content/SharedPreferences;

.field mText:Landroid/widget/TextView;

.field mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    const-string v0, "content://com.android.settings.reverb.params"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->REVERB_URI:Landroid/net/Uri;

    .line 105
    sput v1, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mActuator:I

    .line 106
    sput v1, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mActuatorChecked:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 109
    iput-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mIntentReceiver:Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    .line 113
    iput-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 114
    iput v1, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->appCount:I

    .line 118
    iput-boolean v1, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mNoPopupOnExcute:Z

    .line 672
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->filterAdd(Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->initAppList()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->refreshAppListUI()V

    return-void
.end method

.method private filterAdd(Landroid/content/pm/PackageInfo;)V
    .locals 10
    .parameter "packageInfo"

    .prologue
    .line 404
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v7, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 408
    .local v7, ai:Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 411
    .local v8, pm:Landroid/content/pm/PackageManager;
    iget v0, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 414
    iget-object v3, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 415
    .local v3, pkgname:Ljava/lang/String;
    invoke-static {v8, v3}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->isHapticThemePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 418
    const-string v0, "android.permission.VIBRATE"

    invoke-virtual {v8, v0, v3}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v5, 0x1

    .line 421
    .local v5, hasVibPerm:Z
    :goto_1
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 422
    .local v2, name:Ljava/lang/String;
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 423
    .local v4, icon:Landroid/graphics/drawable/Drawable;
    iget-object v9, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;-><init>(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZLandroid/content/pm/PackageInfo;)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    iget v0, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->appCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->appCount:I

    goto :goto_0

    .line 418
    .end local v2           #name:Ljava/lang/String;
    .end local v4           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #hasVibPerm:Z
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public static getActuator()I
    .locals 6

    .prologue
    .line 430
    const/4 v3, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/immersion/Device;->newDevice(I)Lcom/immersion/Device;

    move-result-object v1

    .line 431
    .local v1, device:Lcom/immersion/Device;
    if-eqz v1, :cond_1

    .line 432
    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/immersion/Device;->getCapabilityInt32(I)I

    move-result v0

    .line 434
    .local v0, actuatorType:I
    invoke-virtual {v1}, Lcom/immersion/Device;->close()V

    .line 435
    const/4 v1, 0x0

    .line 436
    if-eqz v0, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 437
    :cond_0
    sput v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mActuator:I

    .line 438
    const/4 v3, 0x1

    sput v3, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mActuatorChecked:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 447
    .end local v0           #actuatorType:I
    :cond_1
    :goto_0
    sget v3, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mActuator:I

    :goto_1
    return v3

    .line 441
    .restart local v0       #actuatorType:I
    :cond_2
    :try_start_1
    const-string v3, "AutoHapticSettings"

    const-string v4, "Error: REVERB_ACTUATOR_INDEX does not point to an ERM, LRA or PIEZO actuator."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 444
    .end local v0           #actuatorType:I
    :catch_0
    move-exception v2

    .line 445
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_2
    const-string v3, "AutoHapticSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 447
    sget v3, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mActuator:I

    goto :goto_1

    .end local v2           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v3

    sget v3, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mActuator:I

    goto :goto_1
.end method

.method private getServicesWithProcessName(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10
    .parameter "processName"

    .prologue
    .line 763
    const/4 v4, 0x0

    .line 764
    .local v4, packageInfo:Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 765
    .local v5, packageManager:Landroid/content/pm/PackageManager;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 769
    .local v8, serviceNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;

    .line 770
    .local v0, app:Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;
    iget-object v9, v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 771
    iget-object v4, v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->mPackageInfo:Landroid/content/pm/PackageInfo;

    goto :goto_0

    .line 776
    .end local v0           #app:Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;
    :cond_1
    if-eqz v4, :cond_2

    iget-object v9, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-nez v9, :cond_3

    .line 784
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v6, v9, [Ljava/lang/String;

    .line 785
    .local v6, result:[Ljava/lang/String;
    invoke-interface {v8, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    return-object v9

    .line 780
    .end local v6           #result:[Ljava/lang/String;
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    .local v1, arr$:[Landroid/content/pm/ServiceInfo;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v7, v1, v2

    .line 781
    .local v7, s:Landroid/content/pm/ServiceInfo;
    iget-object v9, v7, Landroid/content/pm/ComponentInfo;->processName:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private initAppList()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 324
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 325
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 326
    .local v0, installedPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 329
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/pm/PackageInfo;>;"
    iget-object v3, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 332
    iput v4, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->appCount:I

    .line 333
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 334
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->filterAdd(Landroid/content/pm/PackageInfo;)V

    goto :goto_0

    .line 337
    :cond_0
    iget v3, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->appCount:I

    if-eqz v3, :cond_1

    .line 338
    iget-object v3, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :goto_1
    return-void

    .line 340
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public static isHapticThemePackage(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 7
    .parameter "pm"
    .parameter "pkgName"

    .prologue
    .line 511
    const/16 v4, 0x8

    :try_start_0
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 512
    .local v3, pi:Landroid/content/pm/PackageInfo;
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    if-eqz v4, :cond_1

    .line 513
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 514
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->providers:[Landroid/content/pm/ProviderInfo;

    aget-object v4, v4, v2

    iget-object v0, v4, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 515
    .local v0, authority:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v4, "com.immersion.android.haptictheme."

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_0

    .line 517
    const/4 v4, 0x1

    .line 525
    .end local v0           #authority:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :goto_1
    return v4

    .line 513
    .restart local v0       #authority:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    .end local v0           #authority:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 522
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "AutoHapticSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WARNING: Query "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "failed."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    .end local v1           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static isSystemApplication(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 5
    .parameter "pm"
    .parameter "pkgName"

    .prologue
    const/4 v1, 0x0

    .line 530
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 535
    :cond_0
    :goto_0
    return v1

    .line 532
    :catch_0
    move-exception v0

    .line 533
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "AutoHapticSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING: Query "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshAppListUI()V
    .locals 4

    .prologue
    .line 303
    iget-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$1;-><init>(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 309
    iget-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 312
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 313
    new-instance v1, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 314
    .local v1, item:Landroid/preference/CheckBoxPreference;
    iget-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;

    iget-object v2, v2, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 315
    iget-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;

    iget-object v2, v2, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v3, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mIconResizer:Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IconResizer;

    iget-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;

    iget-object v2, v2, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;

    iget-boolean v2, v2, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IncludedApps;->mHasVibPerm:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 318
    iget-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 320
    .end local v1           #item:Landroid/preference/CheckBoxPreference;
    :cond_1
    return-void
.end method

.method public static storeReverbSettings(Landroid/content/ContentResolver;III)V
    .locals 9
    .parameter "resolver"
    .parameter "enable"
    .parameter "intensity"
    .parameter "mediaPlayerEnable"

    .prologue
    const/4 v5, 0x0

    const/4 v8, -0x1

    const/4 v4, 0x1

    .line 456
    sget v3, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mActuatorChecked:I

    if-nez v3, :cond_0

    .line 457
    invoke-static {}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->getActuator()I

    .line 460
    :cond_0
    if-nez p0, :cond_1

    .line 461
    const-string v3, "AutoHapticSettings"

    const-string v4, "Invalid content resolver, will not update Reverb settings"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_0
    return-void

    .line 465
    :cond_1
    sget-object v3, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->REVERB_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2

    .line 466
    .local v2, provider:Landroid/content/ContentProviderClient;
    if-nez v2, :cond_2

    .line 467
    const-string v3, "AutoHapticSettings"

    const-string v4, "Failed to acquire content provider client, will not update Reverb settings"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 471
    :cond_2
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 473
    .local v0, data:Landroid/content/ContentValues;
    if-eq p2, v8, :cond_5

    .line 474
    const-string v3, "AutoHapticSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "storeReverbSettings(), intensity : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    if-ge p2, v4, :cond_3

    const/4 p2, 0x1

    .line 477
    :cond_3
    const/16 v3, 0x9

    if-le p2, v3, :cond_4

    const/16 p2, 0x9

    .line 483
    :cond_4
    const-string v3, "strength"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 484
    const-string v3, "density"

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 485
    const-string v3, "sharpness"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 488
    :cond_5
    if-eq p1, v8, :cond_6

    .line 489
    const-string v6, "enable"

    if-lez p1, :cond_8

    move v3, v4

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 492
    :cond_6
    if-eq p3, v8, :cond_7

    .line 493
    const-string v3, "mediaplayer"

    if-lez p3, :cond_9

    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 498
    :cond_7
    :try_start_0
    sget-object v3, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->REVERB_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentProviderClient;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    :goto_3
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->release()Z

    .line 505
    const/4 v2, 0x0

    .line 506
    goto :goto_0

    :cond_8
    move v3, v5

    .line 489
    goto :goto_1

    :cond_9
    move v4, v5

    .line 493
    goto :goto_2

    .line 499
    :catch_0
    move-exception v1

    .line 500
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 145
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 146
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 148
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_1

    move-object v2, v0

    .line 149
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 150
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    :cond_0
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 153
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 154
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 156
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 160
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    const v4, 0x7f090e93

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setTitle(I)V

    .line 164
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 165
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 166
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 16
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 170
    const-string v12, "AutoHapticSettings"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "onCheckChanged : desiredState : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    .line 173
    .local v5, enable:Z
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v5}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 174
    if-eqz v5, :cond_1

    .line 175
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->refreshAppListUI()V

    .line 177
    if-eqz v5, :cond_0

    .line 179
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    const-string v13, "com.android.settings_ex_reverb"

    const/4 v14, 0x1

    invoke-virtual {v12, v13, v14}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 180
    .local v1, ReverbSharedPrefs:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 181
    const-string v12, "DoNotShowDialog"

    const/4 v13, 0x0

    invoke-interface {v1, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 182
    .local v3, doNotShow:Z
    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mNoPopupOnExcute:Z

    if-nez v12, :cond_0

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->showGuideDialog()V

    .line 185
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 186
    .local v4, ed:Landroid/content/SharedPreferences$Editor;
    const-string v12, "com.ensight.android.radioalarm"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 187
    const-string v12, "com.google.android.apps.books"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    const-string v12, "com.samsung.SMT"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 189
    const-string v12, "com.google.android.tts"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 190
    const-string v12, "com.sec.android.app.dmb"

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 191
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 196
    .end local v1           #ReverbSharedPrefs:Landroid/content/SharedPreferences;
    .end local v3           #doNotShow:Z
    .end local v4           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    if-eqz v5, :cond_2

    const/4 v12, 0x1

    :goto_0
    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-static {v13, v12, v14, v15}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->storeReverbSettings(Landroid/content/ContentResolver;III)V

    .line 199
    :cond_1
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mNoPopupOnExcute:Z

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    if-eqz v5, :cond_3

    const/4 v12, 0x1

    :goto_1
    const/4 v14, 0x6

    const/4 v15, 0x0

    invoke-static {v13, v12, v14, v15}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->storeReverbSettings(Landroid/content/ContentResolver;III)V

    .line 209
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 210
    .restart local v4       #ed:Landroid/content/SharedPreferences$Editor;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v12

    if-ge v6, v12, :cond_6

    .line 211
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v12, v6}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 215
    .local v8, item:Landroid/preference/CheckBoxPreference;
    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->getServicesWithProcessName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 220
    .local v11, services:[Ljava/lang/String;
    invoke-virtual {v8}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 221
    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v4, v12}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    move-object v2, v11

    .local v2, arr$:[Ljava/lang/String;
    array-length v9, v2

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_3
    if-ge v7, v9, :cond_5

    aget-object v10, v2, v7

    .line 224
    .local v10, s:Ljava/lang/String;
    invoke-interface {v4, v10}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 223
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 196
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v6           #i:I
    .end local v7           #i$:I
    .end local v8           #item:Landroid/preference/CheckBoxPreference;
    .end local v9           #len$:I
    .end local v10           #s:Ljava/lang/String;
    .end local v11           #services:[Ljava/lang/String;
    :cond_2
    const/4 v12, 0x0

    goto :goto_0

    .line 206
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 228
    .restart local v4       #ed:Landroid/content/SharedPreferences$Editor;
    .restart local v6       #i:I
    .restart local v8       #item:Landroid/preference/CheckBoxPreference;
    .restart local v11       #services:[Ljava/lang/String;
    :cond_4
    invoke-virtual {v8}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "disabled"

    invoke-interface {v4, v12, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    move-object v2, v11

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v9, v2

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_4
    if-ge v7, v9, :cond_5

    aget-object v10, v2, v7

    .line 231
    .restart local v10       #s:Ljava/lang/String;
    const-string v12, "disabled"

    invoke-interface {v4, v10, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 230
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 210
    .end local v10           #s:Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 234
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #item:Landroid/preference/CheckBoxPreference;
    .end local v9           #len$:I
    .end local v11           #services:[Ljava/lang/String;
    :cond_6
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 235
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 123
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const v3, 0x7f070014

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 126
    const-string v3, "included_apps"

    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    .line 128
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings_ex_reverb"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    .line 129
    new-instance v3, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;-><init>(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mIntentReceiver:Lcom/android/settings_ex/autohaptic/AutoHapticSettings$PackageIntentReceiver;

    .line 131
    new-instance v3, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IconResizer;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IconResizer;-><init>(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;)V

    iput-object v3, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mIconResizer:Lcom/android/settings_ex/autohaptic/AutoHapticSettings$IconResizer;

    .line 133
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "com.android.settings_ex_reverb"

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 134
    .local v1, ReverbSharedPrefs:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 135
    const-string v3, "DoNotShowDialog"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 136
    .local v2, doNotShow:Z
    const-string v3, "enable"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 137
    .local v0, AutoHapticEnabled:Z
    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 138
    iput-boolean v5, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mNoPopupOnExcute:Z

    .line 141
    .end local v0           #AutoHapticEnabled:Z
    .end local v2           #doNotShow:Z
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/16 v4, 0x11

    const/4 v3, -0x1

    .line 347
    iput-object p2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mViewGroup:Landroid/view/ViewGroup;

    .line 348
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 350
    .local v0, layout:Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 354
    .local v1, rlp:Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 355
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 357
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    .line 359
    iget-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    const v3, 0x7f090693

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 360
    iget-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    const/high16 v3, 0x41c8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 361
    iget-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 362
    iget-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 367
    iget-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 368
    iget-object v2, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 369
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 371
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 379
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 381
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 296
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 299
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 240
    instance-of v7, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_4

    move-object v3, p2

    .line 241
    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 242
    .local v3, item:Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_0

    iget-object v7, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    if-nez v7, :cond_1

    .line 243
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    .line 273
    .end local v3           #item:Landroid/preference/CheckBoxPreference;
    :goto_0
    return v7

    .line 248
    .restart local v3       #item:Landroid/preference/CheckBoxPreference;
    :cond_1
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->getServicesWithProcessName(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 251
    .local v6, services:[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 255
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 256
    const-string v7, "AutoHapticSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceTreeClick, item.getKey()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_3

    aget-object v5, v0, v2

    .line 260
    .local v5, s:Ljava/lang/String;
    invoke-interface {v1, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 263
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #s:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "disabled"

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 265
    move-object v0, v6

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .restart local v2       #i$:I
    :goto_2
    if-ge v2, v4, :cond_3

    aget-object v5, v0, v2

    .line 266
    .restart local v5       #s:Ljava/lang/String;
    const-string v7, "disabled"

    invoke-interface {v1, v5, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 265
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 268
    .end local v5           #s:Ljava/lang/String;
    :cond_3
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    const-string v7, "AutoHapticSettings"

    const-string v8, "onPreferenceTreeClick(), Update Reverb settings"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v2           #i$:I
    .end local v3           #item:Landroid/preference/CheckBoxPreference;
    .end local v4           #len$:I
    .end local v6           #services:[Ljava/lang/String;
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 278
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 280
    iget-object v1, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mReverbSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "enable"

    iget-object v3, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 287
    .local v0, enable:Z
    iget-object v1, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 288
    iget-object v1, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mIncludedApps:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 289
    invoke-direct {p0}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->initAppList()V

    .line 290
    invoke-direct {p0}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->refreshAppListUI()V

    .line 292
    .end local v0           #enable:Z
    :cond_0
    return-void
.end method

.method public showGuideDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 790
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 791
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v4, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 792
    iget-object v4, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 793
    iput-object v6, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 796
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 797
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f04005c

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 798
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b004a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 800
    .local v3, message:Landroid/widget/TextView;
    const v4, 0x7f090e94

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 801
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 802
    const v4, 0x7f090e93

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 803
    const v4, 0x7f090699

    invoke-virtual {v0, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 804
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 805
    iget-object v4, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 806
    iget-object v4, p0, Lcom/android/settings_ex/autohaptic/AutoHapticSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$2;

    invoke-direct {v5, p0, v2}, Lcom/android/settings_ex/autohaptic/AutoHapticSettings$2;-><init>(Lcom/android/settings_ex/autohaptic/AutoHapticSettings;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 819
    return-void
.end method
