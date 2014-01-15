.class public Lcom/android/settings_ex/LocationSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "LocationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_ASSISTED_GPS:Ljava/lang/String; = "assisted_gps"

.field private static final KEY_LOCATION_GPS:Ljava/lang/String; = "location_gps"

.field private static final KEY_LOCATION_HISTORY:Ljava/lang/String; = "location_history"

.field private static final KEY_LOCATION_NETWORK:Ljava/lang/String; = "location_network"

.field private static final KEY_LOCATION_TOGGLE:Ljava/lang/String; = "location_toggle"

.field private static final KEY_LOCATION_VZW:Ljava/lang/String; = "location_vzw"

.field private static final KEY_LOCATION_VZW_GPS:Ljava/lang/String; = "location_vzw_gps"

.field private static final KEY_LOCATION_VZW_NETWORK:Ljava/lang/String; = "location_vzw_network"

.field private static final KEY_LOCATION_e911:Ljava/lang/String; = "location_e911"

.field private static final PREF_GPS_CONSENT_NOTI:Ljava/lang/String; = "pref_gps_consent_noti"

.field private static final PREF_VZW_CONSENT_NOTI:Ljava/lang/String; = "pref_vzw_consent_noti"

.field private static final TAG:Ljava/lang/String; = "LocationSettings"


# instance fields
.field private final DIALOG_COMMON_ID:I

.field private final DIALOG_GPS_ID:I

.field private final DIALOG_VZW_ID:I

.field private LBS_ENABLED:Ljava/lang/String;

.field private LBS_ENABLED_CHANGE_ACTION:Ljava/lang/String;

.field private VZW_PROVIDER:Ljava/lang/String;

.field private am:Landroid/app/ActivityManager;

.field private e911:Landroid/preference/Preference;

.field private enabledGps:Z

.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mConsentDialog:Landroid/app/Dialog;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mLocationAccess:Landroid/preference/SwitchPreference;

.field private mMyPlace:Landroid/preference/PreferenceScreen;

.field private mMyPlaceHeading:Landroid/preference/PreferenceCategory;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mSettingsObserver:Ljava/util/Observer;

.field private mSp:Landroid/preference/SwitchPreferenceScreen;

.field private mVZW:Landroid/preference/CheckBoxPreference;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 71
    iput-boolean v0, p0, Lcom/android/settings_ex/LocationSettings;->enabledGps:Z

    .line 100
    iput v0, p0, Lcom/android/settings_ex/LocationSettings;->DIALOG_COMMON_ID:I

    .line 101
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/LocationSettings;->DIALOG_VZW_ID:I

    .line 102
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/LocationSettings;->DIALOG_GPS_ID:I

    .line 111
    const-string v0, "com.android.internal.location.intent.action.LBS_ENABLED_CHANGE"

    iput-object v0, p0, Lcom/android/settings_ex/LocationSettings;->LBS_ENABLED_CHANGE_ACTION:Ljava/lang/String;

    .line 114
    const-string v0, "lbsEnabled"

    iput-object v0, p0, Lcom/android/settings_ex/LocationSettings;->LBS_ENABLED:Ljava/lang/String;

    .line 115
    const-string v0, "vzw_lbs"

    iput-object v0, p0, Lcom/android/settings_ex/LocationSettings;->VZW_PROVIDER:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/LocationSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings_ex/LocationSettings;->updateLocationToggles()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/LocationSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 4

    .prologue
    .line 138
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 139
    .local v0, root:Landroid/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 142
    :cond_0
    const-string v2, "activity"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/settings_ex/LocationSettings;->am:Landroid/app/ActivityManager;

    .line 144
    const v2, 0x7f070044

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 146
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 150
    const-string v2, "location_e911"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/LocationSettings;->e911:Landroid/preference/Preference;

    .line 151
    const-string v2, "location_vzw"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mVZW:Landroid/preference/CheckBoxPreference;

    .line 152
    const-string v2, "location_vzw_gps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 153
    const-string v2, "location_vzw_network"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 154
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->e911:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mVZW:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 156
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 157
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 160
    const-string v2, "location_toggle"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    .line 165
    const-string v2, "location_network"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    .line 166
    const-string v2, "location_gps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    .line 182
    const-string v2, "location_history"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreferenceScreen;

    iput-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    .line 183
    iget-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_1

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 195
    :cond_1
    const-string v2, "assisted_gps"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    .line 197
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, sales_code:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CTC"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 199
    iget-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_2

    .line 200
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 204
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 208
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 209
    iget-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0905fe

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 213
    :cond_3
    const-string v2, "key_my_place"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mMyPlace:Landroid/preference/PreferenceScreen;

    .line 214
    const-string v2, "place"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mMyPlaceHeading:Landroid/preference/PreferenceCategory;

    .line 227
    iget-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mMyPlaceHeading:Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_4

    .line 228
    iget-object v2, p0, Lcom/android/settings_ex/LocationSettings;->mMyPlaceHeading:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 234
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/LocationSettings;->pm:Landroid/content/pm/PackageManager;

    .line 235
    iget-object v2, p0, Lcom/android/settings_ex/LocationSettings;->pm:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.location.gps"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 236
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 239
    :cond_5
    return-object v0
.end method

.method private getTopActivityFromStack()Ljava/lang/String;
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->am:Landroid/app/ActivityManager;

    if-nez v0, :cond_0

    .line 602
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings_ex/LocationSettings;->am:Landroid/app/ActivityManager;

    .line 604
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->am:Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isDialogShowing(Landroid/app/Dialog;)Z
    .locals 1
    .parameter "dialog"

    .prologue
    .line 608
    if-eqz p1, :cond_0

    .line 609
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    .line 611
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onToggleLocationAccess(Z)V
    .locals 5
    .parameter "checked"

    .prologue
    .line 537
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 549
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "enterprise_policy"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 550
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v2

    .line 551
    .local v2, lp:Landroid/app/enterprise/LocationPolicy;
    const-string v3, "gps"

    invoke-virtual {v2, v3}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 552
    const-string v3, "LocationSettings"

    const-string v4, "onToggleLocationAccess lp.isLocationProviderBlocked(LocationManager.GPS_PROVIDER) == false"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v3, "gps"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 555
    :cond_0
    const-string v3, "network"

    invoke-virtual {v2, v3}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 556
    const-string v3, "LocationSettings"

    const-string v4, "onToggleLocationAccess lp.isLocationProviderBlocked(LocationManager.NETWORK_PROVIDER) == false"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const-string v3, "network"

    invoke-static {v0, v3, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 563
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/LocationSettings;->updateLocationToggles()V

    .line 564
    return-void
.end method

.method private sendLBSStatus(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 524
    return-void
.end method

.method private showLocationConsentDialog(Landroid/preference/Preference;III)V
    .locals 2
    .parameter "preference"
    .parameter "dialogTitle"
    .parameter "dialogText"
    .parameter "dialogType"

    .prologue
    .line 404
    const-string v0, "LocationSettings"

    const-string v1, "This method is only for VZW models"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    return-void
.end method

.method private updateLocationToggles()V
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 439
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 441
    .local v4, res:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v9, "enterprise_policy"

    invoke-virtual {v6, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 443
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getLocationPolicy()Landroid/app/enterprise/LocationPolicy;

    move-result-object v2

    .line 445
    .local v2, lp:Landroid/app/enterprise/LocationPolicy;
    if-eqz v2, :cond_1

    .line 446
    iget-object v6, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_0

    .line 447
    iget-object v9, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v6, "network"

    invoke-virtual {v2, v6}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_6

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 449
    :cond_0
    iget-object v9, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    const-string v6, "gps"

    invoke-virtual {v2, v6}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 450
    const-string v6, "gps"

    invoke-virtual {v2, v6}, Landroid/app/enterprise/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v7, :cond_8

    const-string v6, "gps"

    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    if-ne v6, v7, :cond_8

    .line 452
    iget-object v6, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    const-string v9, ""

    invoke-virtual {v6, v9}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 453
    iget-object v6, p0, Lcom/android/settings_ex/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 454
    iget-object v6, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 462
    :cond_1
    :goto_2
    const/4 v5, 0x0

    .line 469
    .local v5, vzwEnabled:Z
    const-string v6, "gps"

    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 471
    .local v1, gpsEnabled:Z
    const-string v6, "network"

    invoke-static {v4, v6}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 473
    .local v3, networkEnabled:Z
    iget-object v6, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 474
    iget-object v6, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 475
    iget-object v6, p0, Lcom/android/settings_ex/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    if-eqz v6, :cond_4

    .line 476
    const-string v9, "LocationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Any of provider enabled "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v5, :cond_2

    if-nez v1, :cond_2

    if-eqz v3, :cond_9

    :cond_2
    move v6, v7

    :goto_3
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    iget-object v9, p0, Lcom/android/settings_ex/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    if-nez v5, :cond_3

    if-nez v1, :cond_3

    if-eqz v3, :cond_a

    :cond_3
    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 479
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_5

    .line 480
    iget-object v6, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    const-string v9, "assisted_gps_enabled"

    const/4 v10, 0x2

    invoke-static {v4, v9, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v7, :cond_b

    :goto_5
    invoke-virtual {v6, v7}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 482
    iget-object v6, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 515
    :cond_5
    return-void

    .end local v1           #gpsEnabled:Z
    .end local v3           #networkEnabled:Z
    .end local v5           #vzwEnabled:Z
    :cond_6
    move v6, v8

    .line 447
    goto/16 :goto_0

    :cond_7
    move v6, v8

    .line 449
    goto/16 :goto_1

    .line 457
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ex/LocationSettings;->mLocationAccess:Landroid/preference/SwitchPreference;

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .restart local v1       #gpsEnabled:Z
    .restart local v3       #networkEnabled:Z
    .restart local v5       #vzwEnabled:Z
    :cond_9
    move v6, v8

    .line 476
    goto :goto_3

    :cond_a
    move v6, v8

    .line 477
    goto :goto_4

    :cond_b
    move v7, v8

    .line 480
    goto :goto_5
.end method

.method private updateProviders(ILandroid/preference/Preference;Z)V
    .locals 2
    .parameter "dialogType"
    .parameter "preference"
    .parameter "enable"

    .prologue
    .line 431
    const-string v0, "LocationSettings"

    const-string v1, "This method is only for VZW models"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .prologue
    .line 597
    const v0, 0x7f090a1f

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 531
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 532
    invoke-direct {p0}, Lcom/android/settings_ex/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 533
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .parameter "pref"
    .parameter "newValue"

    .prologue
    .line 568
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "location_toggle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 580
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/LocationSettings;->onToggleLocationAccess(Z)V

    .line 592
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 584
    .restart local p2
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mSp:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 279
    .local v1, cr:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_1

    .line 280
    const-string v3, "network"

    iget-object v5, p0, Lcom/android/settings_ex/LocationSettings;->mNetwork:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    invoke-static {v1, v3, v5}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 371
    :cond_0
    :goto_0
    return v4

    .line 282
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_3

    .line 283
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    .line 331
    .local v2, enabled:Z
    const-string v3, "USC"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v5, Lcom/android/settings_ex/LocationAlert;

    invoke-direct {v0, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    .local v0, authIntent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 339
    .end local v0           #authIntent:Landroid/content/Intent;
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 340
    iget-object v3, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 335
    :cond_2
    const-string v3, "gps"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto :goto_1

    .line 342
    .end local v2           #enabled:Z
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_7

    .line 344
    invoke-static {}, Lcom/android/settings_ex/Utils;->isDomesticModel()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 345
    iget-object v5, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 346
    iget-object v5, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 347
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090603

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f090602

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x108009b

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings_ex/LocationSettings$4;

    invoke-direct {v6, p0, v1}, Lcom/android/settings_ex/LocationSettings$4;-><init>(Lcom/android/settings_ex/LocationSettings;Landroid/content/ContentResolver;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v5, 0x104

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 360
    :cond_4
    const-string v5, "assisted_gps_enabled"

    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 363
    :cond_5
    const-string v5, "assisted_gps_enabled"

    iget-object v6, p0, Lcom/android/settings_ex/LocationSettings;->mAssistedGps:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    move v3, v4

    :cond_6
    invoke-static {v1, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 368
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 248
    invoke-direct {p0}, Lcom/android/settings_ex/LocationSettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 250
    invoke-direct {p0}, Lcom/android/settings_ex/LocationSettings;->updateLocationToggles()V

    .line 253
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Lcom/android/settings_ex/LocationSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/LocationSettings$1;-><init>(Lcom/android/settings_ex/LocationSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 262
    return-void
.end method

.method public onStart()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 119
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v8, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v7, "location_providers_allowed"

    aput-object v7, v4, v5

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 125
    .local v6, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    invoke-direct {v0, v6, v1, v8, v2}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 126
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 130
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 132
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/LocationSettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    iget-object v1, p0, Lcom/android/settings_ex/LocationSettings;->mSettingsObserver:Ljava/util/Observer;

    invoke-virtual {v0, v1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 135
    :cond_0
    return-void
.end method
