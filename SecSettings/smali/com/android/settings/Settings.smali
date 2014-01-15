.class public Lcom/android/settings_ex/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings_ex/ButtonBarHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/Settings$NotificationPanelMenuActivity;,
        Lcom/android/settings_ex/Settings$ClockWidgetActivity;,
        Lcom/android/settings_ex/Settings$TorchlightSettingsActivity;,
        Lcom/android/settings_ex/Settings$SambaSettingsActivity;,
        Lcom/android/settings_ex/Settings$MouseHoveringSettingsActivity;,
        Lcom/android/settings_ex/Settings$FingerAirViewSettingActivity;,
        Lcom/android/settings_ex/Settings$AirMotionSettingActivity;,
        Lcom/android/settings_ex/Settings$SmartScrollAdvancedSettingsActivity;,
        Lcom/android/settings_ex/Settings$SmartScreenSettingsActivity;,
        Lcom/android/settings_ex/Settings$CloudSettingActivity;,
        Lcom/android/settings_ex/Settings$CloudVideoSyncSettingActivity;,
        Lcom/android/settings_ex/Settings$CloudPictureSyncSettingActivity;,
        Lcom/android/settings_ex/Settings$BackupAssistantPlusSettingsActivity;,
        Lcom/android/settings_ex/Settings$TetherSettingsActivity2;,
        Lcom/android/settings_ex/Settings$DrivingModeSettingsActivity;,
        Lcom/android/settings_ex/Settings$ContextualPageHelpActivity;,
        Lcom/android/settings_ex/Settings$CustomizableKeySettingsActivity;,
        Lcom/android/settings_ex/Settings$HomeSettingsActivity;,
        Lcom/android/settings_ex/Settings$TRoamingSettingsActivity;,
        Lcom/android/settings_ex/Settings$GlobalRoamingSettingsActivity;,
        Lcom/android/settings_ex/Settings$MyPlaceProfileSettingsActivity;,
        Lcom/android/settings_ex/Settings$MyPlaceSettingsActivity;,
        Lcom/android/settings_ex/Settings$NfcOsaifukeitaiSettingsActivity;,
        Lcom/android/settings_ex/Settings$NfcSettingsActivity;,
        Lcom/android/settings_ex/Settings$PowerSettingsActivity;,
        Lcom/android/settings_ex/Settings$DormantmodeSettingsActivity;,
        Lcom/android/settings_ex/Settings$EasyModeSettingsActivity;,
        Lcom/android/settings_ex/Settings$PenHelpFragmentActivity;,
        Lcom/android/settings_ex/Settings$PenSettingsMenuActivity;,
        Lcom/android/settings_ex/Settings$PenSettingsActivity;,
        Lcom/android/settings_ex/Settings$SoftwareUpdateSettingActivity;,
        Lcom/android/settings_ex/Settings$AllShareCastSettingsActivity;,
        Lcom/android/settings_ex/Settings$DualClockSettingActivity;,
        Lcom/android/settings_ex/Settings$SBeamSettingsActivity;,
        Lcom/android/settings_ex/Settings$NearbySettingsActivity;,
        Lcom/android/settings_ex/Settings$MotionSettingsActivity;,
        Lcom/android/settings_ex/Settings$DreamSettingsActivity;,
        Lcom/android/settings_ex/Settings$WifiDisplaySettingsActivity;,
        Lcom/android/settings_ex/Settings$AndroidBeamSettingsActivity;,
        Lcom/android/settings_ex/Settings$TextToSpeechSettingsActivity;,
        Lcom/android/settings_ex/Settings$AdvancedWifiSettingsActivity;,
        Lcom/android/settings_ex/Settings$DataUsageSummaryActivity;,
        Lcom/android/settings_ex/Settings$DeviceAdminSettingsActivity;,
        Lcom/android/settings_ex/Settings$CryptSDCardSettingsActivity;,
        Lcom/android/settings_ex/Settings$CryptKeeperSettingsActivity;,
        Lcom/android/settings_ex/Settings$AccountSyncSettingsInAddAccountActivity;,
        Lcom/android/settings_ex/Settings$AccountSyncSettingsActivity;,
        Lcom/android/settings_ex/Settings$PowerUsageSummaryActivity;,
        Lcom/android/settings_ex/Settings$ManageAccountsSettingsActivity;,
        Lcom/android/settings_ex/Settings$RunningServicesActivity;,
        Lcom/android/settings_ex/Settings$DockSettingsActivity;,
        Lcom/android/settings_ex/Settings$PrivacySettingsActivity;,
        Lcom/android/settings_ex/Settings$LocationSettingsActivity;,
        Lcom/android/settings_ex/Settings$SecuritySettingsActivity;,
        Lcom/android/settings_ex/Settings$AccessibilitySettingsActivity;,
        Lcom/android/settings_ex/Settings$DevelopmentSettingsActivity;,
        Lcom/android/settings_ex/Settings$StorageUseActivity;,
        Lcom/android/settings_ex/Settings$ManageApplicationsActivity;,
        Lcom/android/settings_ex/Settings$ApplicationSettingsActivity;,
        Lcom/android/settings_ex/Settings$DeviceInfoSettingsActivity;,
        Lcom/android/settings_ex/Settings$PowerSavingModeSettingsActivity;,
        Lcom/android/settings_ex/Settings$LockScreenSettingsActivity;,
        Lcom/android/settings_ex/Settings$LockscreenMenuActivity;,
        Lcom/android/settings_ex/Settings$DisplaySettingsActivity;,
        Lcom/android/settings_ex/Settings$SoundSettingsActivity;,
        Lcom/android/settings_ex/Settings$UserDictionarySettingsActivity;,
        Lcom/android/settings_ex/Settings$LocalePickerActivity;,
        Lcom/android/settings_ex/Settings$SpellCheckersSettingsActivity;,
        Lcom/android/settings_ex/Settings$InputMethodAndSubtypeEnablerActivity;,
        Lcom/android/settings_ex/Settings$KeyboardLayoutPickerActivity;,
        Lcom/android/settings_ex/Settings$InputMethodAndLanguageSettingsActivity;,
        Lcom/android/settings_ex/Settings$WifiP2pSettingsActivity;,
        Lcom/android/settings_ex/Settings$WifiApSettingsActivity;,
        Lcom/android/settings_ex/Settings$WifiSettingsActivity;,
        Lcom/android/settings_ex/Settings$StorageSettingsActivity;,
        Lcom/android/settings_ex/Settings$DateTimeSettingsActivity;,
        Lcom/android/settings_ex/Settings$VpnSettingsActivity;,
        Lcom/android/settings_ex/Settings$TetherSettingsActivity;,
        Lcom/android/settings_ex/Settings$WirelessSettingsActivity;,
        Lcom/android/settings_ex/Settings$BluetoothSettingsActivity;,
        Lcom/android/settings_ex/Settings$HeaderAdapter;
    }
.end annotation


# static fields
.field private static final EXTRA_CLEAR_UI_OPTIONS:Ljava/lang/String; = "settings:remove_ui_options"

.field private static final LOG_TAG:Ljava/lang/String; = "Settings"

.field private static final META_DATA_KEY_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings_ex.FRAGMENT_CLASS"

.field private static final META_DATA_KEY_HEADER_ID:Ljava/lang/String; = "com.android.settings_ex.TOP_LEVEL_HEADER_ID"

.field private static final META_DATA_KEY_PARENT_FRAGMENT_CLASS:Ljava/lang/String; = "com.android.settings_ex.PARENT_FRAGMENT_CLASS"

.field private static final META_DATA_KEY_PARENT_TITLE:Ljava/lang/String; = "com.android.settings_ex.PARENT_FRAGMENT_TITLE"

.field private static final SAVE_KEY_CURRENT_HEADER:Ljava/lang/String; = "com.android.settings_ex.CURRENT_HEADER"

.field private static final SAVE_KEY_PARENT_HEADER:Ljava/lang/String; = "com.android.settings_ex.PARENT_HEADER"

.field private static mWifiSummaryId:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private final MHS_REQUEST:I

.field private SETTINGS_FOR_RESTRICTED:[I

.field filter:Landroid/content/IntentFilter;

.field private mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

.field private mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

.field private mDevelopmentPreferences:Landroid/content/SharedPreferences;

.field private mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private mFirstHeader:Landroid/preference/PreferenceActivity$Header;

.field private mFragmentClass:Ljava/lang/String;

.field protected mHeaderIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mInLocalHeaderSwitch:Z

.field private mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

.field private mInternationalRoamingBlocked:Z

.field private mLastHeader:Landroid/preference/PreferenceActivity$Header;

.field private mListeningToAccountUpdates:Z

.field private mMSADialog:Landroid/app/AlertDialog$Builder;

.field private mParentHeader:Landroid/preference/PreferenceActivity$Header;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mTetheredData:I

.field private mTopLevelHeaderId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 152
    iput v1, p0, Lcom/android/settings_ex/Settings;->MHS_REQUEST:I

    .line 162
    iput-boolean v1, p0, Lcom/android/settings_ex/Settings;->mInternationalRoamingBlocked:Z

    .line 169
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings_ex/Settings;->SETTINGS_FOR_RESTRICTED:[I

    .line 196
    iput v1, p0, Lcom/android/settings_ex/Settings;->mTetheredData:I

    .line 200
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    .line 206
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/Settings;->filter:Landroid/content/IntentFilter;

    .line 1767
    new-instance v0, Lcom/android/settings_ex/Settings$5;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/Settings$5;-><init>(Lcom/android/settings_ex/Settings;)V

    iput-object v0, p0, Lcom/android/settings_ex/Settings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1902
    return-void

    .line 169
    nop

    :array_0
    .array-data 0x4
        0xdet 0x4t 0xbt 0x7ft
        0xdft 0x4t 0xbt 0x7ft
        0xe1t 0x4t 0xbt 0x7ft
        0xe3t 0x4t 0xbt 0x7ft
        0xe8t 0x4t 0xbt 0x7ft
        0x2at 0x5t 0xbt 0x7ft
        0xf5t 0x4t 0xbt 0x7ft
        0xf3t 0x4t 0xbt 0x7ft
        0x12t 0x5t 0xbt 0x7ft
        0xft 0x5t 0xbt 0x7ft
        0x10t 0x5t 0xbt 0x7ft
        0x2et 0x5t 0xbt 0x7ft
        0xct 0x5t 0xbt 0x7ft
        0xdt 0x5t 0xbt 0x7ft
        0x3t 0x5t 0xbt 0x7ft
        0x2ct 0x5t 0xbt 0x7ft
        0xd7t 0x4t 0xbt 0x7ft
        0xd9t 0x4t 0xbt 0x7ft
        0x33t 0x5t 0xbt 0x7ft
        0x13t 0x5t 0xbt 0x7ft
        0x17t 0x5t 0xbt 0x7ft
        0x0t 0x5t 0xbt 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings_ex/Settings;)Landroid/preference/PreferenceActivity$Header;
    .locals 1
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/Settings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    invoke-direct {p0, p1}, Lcom/android/settings_ex/Settings;->switchToParent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/android/settings_ex/Settings;->sSalesCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 133
    sget v0, Lcom/android/settings_ex/Settings;->mWifiSummaryId:I

    return v0
.end method

.method static synthetic access$402(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 133
    sput p0, Lcom/android/settings_ex/Settings;->mWifiSummaryId:I

    return p0
.end method

.method private getMetaData()V
    .locals 6

    .prologue
    .line 1047
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1049
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-nez v3, :cond_1

    .line 1066
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :cond_0
    :goto_0
    return-void

    .line 1050
    .restart local v0       #ai:Landroid/content/pm/ActivityInfo;
    :cond_1
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings_ex.TOP_LEVEL_HEADER_ID"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings_ex/Settings;->mTopLevelHeaderId:I

    .line 1051
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings_ex.FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/Settings;->mFragmentClass:Ljava/lang/String;

    .line 1054
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings_ex.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1055
    .local v2, parentHeaderTitleRes:I
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.android.settings_ex.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1056
    .local v1, parentFragmentClass:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1057
    new-instance v3, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v3}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v3, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 1058
    iget-object v3, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iput-object v1, v3, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1059
    if-eqz v2, :cond_0

    .line 1060
    iget-object v3, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1063
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    .end local v1           #parentFragmentClass:Ljava/lang/String;
    .end local v2           #parentHeaderTitleRes:I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private highlightHeader(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 468
    if-eqz p1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 470
    .local v0, index:Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 471
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 472
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->isMultiPane()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 477
    .end local v0           #index:Ljava/lang/Integer;
    :cond_0
    return-void
.end method

.method private insertAccountsHeaders(Ljava/util/List;I)I
    .locals 20
    .parameter
    .parameter "headerIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 960
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/Settings;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v8

    .line 961
    .local v8, accountTypes:[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    array-length v0, v8

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-direct {v6, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 962
    .local v6, accountHeaders:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    move-object v10, v8

    .local v10, arr$:[Ljava/lang/String;
    array-length v15, v10

    .local v15, len$:I
    const/4 v13, 0x0

    .local v13, i$:I
    :goto_0
    if-ge v13, v15, :cond_9

    aget-object v7, v10, v13

    .line 963
    .local v7, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/Settings;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v7}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    .line 966
    .local v14, label:Ljava/lang/CharSequence;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 967
    const-string v17, "com.android.tmo_myphonebook"

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 968
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 973
    :cond_0
    if-nez v14, :cond_2

    .line 962
    :cond_1
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 977
    :cond_2
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v9

    .line 978
    .local v9, accounts:[Landroid/accounts/Account;
    array-length v0, v9

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/Settings;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->hasAccountPreferences(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_7

    const/16 v16, 0x1

    .line 982
    .local v16, skipToAccount:Z
    :goto_2
    array-length v0, v9

    move/from16 v17, v0

    if-lez v17, :cond_4

    const-string v17, "com.facebook.auth.login"

    const/16 v18, 0x0

    aget-object v18, v9, v18

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 983
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v17

    const-string v18, "com.sec.android.app.sns3.facebook"

    invoke-virtual/range {v17 .. v18}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v4

    .line 984
    .local v4, ac:[Landroid/accounts/Account;
    if-eqz v4, :cond_3

    array-length v0, v4

    move/from16 v17, v0

    if-gtz v17, :cond_1

    .line 987
    :cond_3
    const/16 v16, 0x0

    .line 992
    .end local v4           #ac:[Landroid/accounts/Account;
    :cond_4
    new-instance v5, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v5}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 993
    .local v5, accHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 994
    iget-object v0, v5, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    .line 995
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    .line 997
    :cond_5
    if-eqz v16, :cond_8

    .line 998
    const v17, 0x7f09088c

    move/from16 v0, v17

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    .line 999
    const v17, 0x7f09088c

    move/from16 v0, v17

    iput v0, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    .line 1000
    const-class v17, Lcom/android/settings_ex/accounts/AccountSyncSettings;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1001
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1003
    iget-object v0, v5, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    iget-object v0, v5, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account"

    const/16 v19, 0x0

    aget-object v19, v9, v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1005
    iget-object v0, v5, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account"

    const/16 v19, 0x0

    aget-object v19, v9, v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1020
    :cond_6
    :goto_3
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 978
    .end local v5           #accHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v16           #skipToAccount:Z
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 1008
    .restart local v5       #accHeader:Landroid/preference/PreferenceActivity$Header;
    .restart local v16       #skipToAccount:Z
    :cond_8
    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbTitle:Ljava/lang/CharSequence;

    .line 1009
    iput-object v14, v5, Landroid/preference/PreferenceActivity$Header;->breadCrumbShortTitle:Ljava/lang/CharSequence;

    .line 1010
    const-class v17, Lcom/android/settings_ex/accounts/ManageAccountsSettings;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 1011
    new-instance v17, Landroid/os/Bundle;

    invoke-direct/range {v17 .. v17}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v17

    iput-object v0, v5, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 1012
    iget-object v0, v5, Landroid/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    iget-object v0, v5, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_type"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1015
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/Settings;->isMultiPane()Z

    move-result v17

    if-nez v17, :cond_6

    .line 1016
    iget-object v0, v5, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "account_label"

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1024
    .end local v5           #accHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v7           #accountType:Ljava/lang/String;
    .end local v9           #accounts:[Landroid/accounts/Account;
    .end local v14           #label:Ljava/lang/CharSequence;
    .end local v16           #skipToAccount:Z
    :cond_9
    new-instance v17, Lcom/android/settings_ex/Settings$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/Settings$3;-><init>(Lcom/android/settings_ex/Settings;)V

    move-object/from16 v0, v17

    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1031
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/PreferenceActivity$Header;

    .line 1032
    .local v11, header:Landroid/preference/PreferenceActivity$Header;
    add-int/lit8 v12, p2, 0x1

    .end local p2
    .local v12, headerIndex:I
    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v0, v1, v11}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move/from16 p2, v12

    .end local v12           #headerIndex:I
    .restart local p2
    goto :goto_4

    .line 1034
    .end local v11           #header:Landroid/preference/PreferenceActivity$Header;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/Settings;->mListeningToAccountUpdates:Z

    move/from16 v17, v0

    if-nez v17, :cond_b

    .line 1035
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 1036
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/Settings;->mListeningToAccountUpdates:Z

    .line 1038
    :cond_b
    return p2
.end method

.method private isDocomoSettingsDisabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1732
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1734
    .local v1, packMgr:Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_1

    .line 1735
    :try_start_0
    const-string v3, "com.nttdocomo.android.docomoset"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1737
    const-string v3, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const-string v3, "com.nttdocomo.android.docomoset"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1739
    :cond_0
    const-string v3, "Settings"

    const-string v4, "docomoset is Disabled!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1746
    :goto_0
    return v2

    .line 1743
    :catch_0
    move-exception v0

    .line 1744
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Settings"

    const-string v3, "docomoset is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1746
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isFactoryMode()Z
    .locals 6

    .prologue
    .line 1750
    const-string v1, "/efs/FactoryApp/factorymode"

    .line 1752
    .local v1, factoryModeFile:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1754
    .local v2, mode:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/FactoryApp/factorymode"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1760
    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1761
    const/4 v3, 0x0

    .line 1763
    :goto_1
    return v3

    .line 1755
    :catch_0
    move-exception v0

    .line 1756
    .local v0, e:Ljava/io/IOException;
    const-string v2, "OFF"

    .line 1757
    const-string v3, "Settings"

    const-string v4, "cannot open file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1763
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private isOrangeCustomer()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1721
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Setting_ReplaceLabel4DeveloperOptionAs"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1727
    :cond_0
    :goto_0
    return v0

    .line 1724
    :cond_1
    const-string v1, "ORANGE"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Setting_ReplaceLabel4DeveloperOptionAs"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1725
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private needsDockSettings()Z
    .locals 2

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f0c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V
    .locals 1
    .parameter "header"

    .prologue
    .line 364
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/Settings;->mInLocalHeaderSwitch:Z

    .line 365
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/Settings;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/Settings;->mInLocalHeaderSwitch:Z

    .line 367
    return-void
.end method

.method private switchToParent(Ljava/lang/String;)V
    .locals 10
    .parameter "className"

    .prologue
    .line 418
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 420
    .local v0, cn:Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 421
    .local v6, pm:Landroid/content/pm/PackageManager;
    const/16 v7, 0x80

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 423
    .local v5, parentInfo:Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v7, :cond_0

    .line 424
    iget-object v7, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.android.settings_ex.FRAGMENT_CLASS"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 425
    .local v1, fragmentClass:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 426
    .local v2, fragmentTitle:Ljava/lang/CharSequence;
    new-instance v4, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v4}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 427
    .local v4, parentHeader:Landroid/preference/PreferenceActivity$Header;
    iput-object v1, v4, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 428
    iput-object v2, v4, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 429
    iput-object v4, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 431
    invoke-direct {p0, v4}, Lcom/android/settings_ex/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 432
    iget v7, p0, Lcom/android/settings_ex/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v7}, Lcom/android/settings_ex/Settings;->highlightHeader(I)V

    .line 434
    new-instance v7, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v7}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    iput-object v7, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 435
    iget-object v7, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings_ex.PARENT_FRAGMENT_CLASS"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 437
    iget-object v7, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v8, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.android.settings_ex.PARENT_FRAGMENT_TITLE"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v1           #fragmentClass:Ljava/lang/String;
    .end local v2           #fragmentTitle:Ljava/lang/CharSequence;
    .end local v4           #parentHeader:Landroid/preference/PreferenceActivity$Header;
    .end local v5           #parentInfo:Landroid/content/pm/ActivityInfo;
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v3

    .line 440
    .local v3, nnfe:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v7, "Settings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not find parent activity : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateHeaderList(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, target:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v13, 0x1

    .line 614
    iget-object v9, p0, Lcom/android/settings_ex/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    const-string v10, "show"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v12, "eng"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 617
    .local v8, showDev:Z
    const/4 v3, 0x0

    .line 619
    .local v3, i:I
    iget-object v9, p0, Lcom/android/settings_ex/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 620
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_3b

    .line 621
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    .line 623
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iget-wide v9, v1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v4, v9

    .line 625
    .local v4, id:I
    const v9, 0x7f0b04f2

    if-ne v4, v9, :cond_4

    .line 940
    :cond_1
    :goto_1
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings_ex/Settings;->SETTINGS_FOR_RESTRICTED:[I

    invoke-static {v9, v4}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v9

    if-nez v9, :cond_2

    .line 943
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 947
    :cond_2
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v1, :cond_0

    .line 949
    iget-object v9, p0, Lcom/android/settings_ex/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v9, :cond_3

    invoke-static {v1}, Lcom/android/settings_ex/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v9

    if-eqz v9, :cond_3

    .line 951
    iput-object v1, p0, Lcom/android/settings_ex/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    .line 953
    :cond_3
    iget-object v9, p0, Lcom/android/settings_ex/Settings;->mHeaderIndexMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 627
    :cond_4
    const v9, 0x7f0b0525

    if-ne v4, v9, :cond_5

    .line 629
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 631
    :cond_5
    const v9, 0x7f0b04ff

    if-ne v4, v9, :cond_6

    .line 632
    invoke-direct {p0}, Lcom/android/settings_ex/Settings;->needsDockSettings()Z

    move-result v9

    if-nez v9, :cond_1

    .line 633
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 634
    :cond_6
    const v9, 0x7f0b0526

    if-eq v4, v9, :cond_7

    const v9, 0x7f0b052d

    if-ne v4, v9, :cond_8

    .line 635
    :cond_7
    invoke-static {p0, p1, v1}, Lcom/android/settings_ex/Utils;->updateHeaderToSpecificActivityFromMetaDataOrRemove(Landroid/content/Context;Ljava/util/List;Landroid/preference/PreferenceActivity$Header;)Z

    goto :goto_1

    .line 636
    :cond_8
    const v9, 0x7f0b04df

    if-ne v4, v9, :cond_9

    .line 638
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.wifi"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 639
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 649
    :cond_9
    const v9, 0x7f0b0524

    if-ne v4, v9, :cond_a

    .line 652
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 654
    :cond_a
    const v9, 0x7f0b04e0

    if-ne v4, v9, :cond_b

    .line 668
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 670
    :cond_b
    const v9, 0x7f0b04e5

    if-ne v4, v9, :cond_d

    .line 672
    const-string v9, "LGT"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {p0}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 674
    :cond_c
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 676
    :cond_d
    const v9, 0x7f0b04e7

    if-ne v4, v9, :cond_e

    .line 677
    iput-object v1, p0, Lcom/android/settings_ex/Settings;->mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

    .line 678
    const-string v9, "CTC"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 679
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 681
    :cond_e
    const v9, 0x7f0b04e1

    if-ne v4, v9, :cond_f

    .line 683
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "android.hardware.bluetooth"

    invoke-virtual {v9, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 684
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 686
    :cond_f
    const v9, 0x7f0b04fb

    if-ne v4, v9, :cond_10

    .line 687
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Setting_EnableMenuBlockCallMsg"

    invoke-virtual {v9, v10}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 689
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 691
    :cond_10
    const v9, 0x7f0b04e3

    if-ne v4, v9, :cond_11

    .line 693
    const-string v9, "network_management"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v6

    .line 696
    .local v6, netManager:Landroid/os/INetworkManagementService;
    :try_start_0
    invoke-interface {v6}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 697
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 699
    :catch_0
    move-exception v9

    goto/16 :goto_1

    .line 702
    .end local v6           #netManager:Landroid/os/INetworkManagementService;
    :cond_11
    const v9, 0x7f0b0534

    if-ne v4, v9, :cond_12

    .line 704
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 706
    :cond_12
    const v9, 0x7f0b0504

    if-eq v4, v9, :cond_1

    .line 710
    const v9, 0x7f0b0506

    if-eq v4, v9, :cond_1

    .line 714
    const v9, 0x7f0b0535

    if-ne v4, v9, :cond_13

    .line 716
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 718
    :cond_13
    const v9, 0x7f0b04f6

    if-eq v4, v9, :cond_1

    .line 722
    const v9, 0x7f0b04fe

    if-eq v4, v9, :cond_1

    .line 726
    const v9, 0x7f0b04d8

    if-ne v4, v9, :cond_14

    .line 733
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 753
    :cond_14
    const v9, 0x7f0b0511

    if-ne v4, v9, :cond_15

    .line 755
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 757
    :cond_15
    const v9, 0x7f0b04d7

    if-ne v4, v9, :cond_16

    .line 759
    add-int/lit8 v2, v3, 0x1

    .line 760
    .local v2, headerIndex:I
    invoke-direct {p0, p1, v2}, Lcom/android/settings_ex/Settings;->insertAccountsHeaders(Ljava/util/List;I)I

    move-result v3

    .line 761
    goto/16 :goto_1

    .line 762
    .end local v2           #headerIndex:I
    :cond_16
    const v9, 0x7f0b0537

    if-ne v4, v9, :cond_17

    .line 764
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 766
    :cond_17
    const v9, 0x7f0b0502

    if-ne v4, v9, :cond_18

    .line 768
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 770
    :cond_18
    const v9, 0x7f0b0536

    if-ne v4, v9, :cond_19

    .line 773
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 775
    :cond_19
    const v9, 0x7f0b04e4

    if-ne v4, v9, :cond_1a

    .line 778
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 780
    :cond_1a
    const v9, 0x7f0b052c

    if-ne v4, v9, :cond_1c

    .line 781
    invoke-static {}, Landroid/os/UserManager;->supportsMultipleUsers()Z

    move-result v9

    if-eqz v9, :cond_1b

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 784
    :cond_1b
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 786
    :cond_1c
    const v9, 0x7f0b04dc

    if-ne v4, v9, :cond_1e

    .line 787
    invoke-static {}, Lcom/android/settings_ex/Utils;->DisableCloud()Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 788
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 791
    :cond_1d
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.android.cloudagent"

    const/4 v11, 0x5

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 792
    :catch_1
    move-exception v0

    .line 793
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 796
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1e
    const v9, 0x7f0b0516

    if-ne v4, v9, :cond_1f

    .line 797
    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 799
    .local v7, salesCode:Ljava/lang/String;
    const-string v9, "SPR"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "BST"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 801
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 803
    .end local v7           #salesCode:Ljava/lang/String;
    :cond_1f
    const v9, 0x7f0b0515

    if-ne v4, v9, :cond_20

    .line 804
    const/4 v5, 0x1

    .line 806
    .local v5, isSprintDsa:Z
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sprint.dsa"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 812
    :goto_2
    if-nez v5, :cond_1

    .line 813
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 807
    :catch_2
    move-exception v0

    .line 808
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v5, 0x0

    goto :goto_2

    .line 815
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5           #isSprintDsa:Z
    :cond_20
    const v9, 0x7f0b052b

    if-ne v4, v9, :cond_21

    .line 817
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 819
    :cond_21
    const v9, 0x7f0b04f0

    if-ne v4, v9, :cond_24

    .line 820
    const-string v9, "DCM"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    invoke-direct {p0}, Lcom/android/settings_ex/Settings;->isDocomoSettingsDisabled()Z

    move-result v9

    if-eqz v9, :cond_23

    .line 821
    :cond_22
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 825
    :cond_23
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.nttdocomo.android.docomoset"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 826
    :catch_3
    move-exception v0

    .line 827
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 830
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_24
    const v9, 0x7f0b04db

    if-ne v4, v9, :cond_26

    .line 831
    const-string v9, "DCM"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_25

    .line 832
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 836
    :cond_25
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.nttdocomo.android.cloudset"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 837
    :catch_4
    move-exception v0

    .line 838
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 841
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_26
    const v9, 0x7f0b0514

    if-ne v4, v9, :cond_28

    .line 843
    if-eqz v8, :cond_27

    invoke-direct {p0}, Lcom/android/settings_ex/Settings;->isOrangeCustomer()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 844
    :cond_27
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 846
    :cond_28
    const v9, 0x7f0b053a

    if-ne v4, v9, :cond_29

    .line 848
    invoke-direct {p0}, Lcom/android/settings_ex/Settings;->isOrangeCustomer()Z

    move-result v9

    if-nez v9, :cond_1

    .line 849
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 851
    :cond_29
    const v9, 0x7f0b04fa

    if-ne v4, v9, :cond_2a

    .line 854
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 856
    :cond_2a
    const v9, 0x7f0b052f

    if-ne v4, v9, :cond_2c

    .line 857
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->keyboard:I

    if-eq v9, v13, :cond_2b

    .line 858
    :cond_2b
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 862
    :cond_2c
    const v9, 0x7f0b04e2

    if-ne v4, v9, :cond_2d

    .line 863
    const-string v9, "VZW"

    sget-object v10, Lcom/android/settings_ex/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 864
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 867
    :cond_2d
    const v9, 0x7f0b04f1

    if-ne v4, v9, :cond_2e

    .line 870
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 872
    :cond_2e
    const v9, 0x7f0b0523

    if-ne v4, v9, :cond_2f

    .line 875
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 877
    :cond_2f
    const v9, 0x7f0b0510

    if-eq v4, v9, :cond_1

    .line 881
    const v9, 0x7f0b0528

    if-ne v4, v9, :cond_30

    .line 883
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 885
    :cond_30
    const v9, 0x7f0b04e8

    if-eq v4, v9, :cond_1

    .line 889
    const v9, 0x7f0b0538

    if-ne v4, v9, :cond_31

    .line 891
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 893
    :cond_31
    const v9, 0x7f0b04fd

    if-ne v4, v9, :cond_32

    .line 895
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 897
    :cond_32
    const v9, 0x7f0b0539

    if-ne v4, v9, :cond_33

    .line 898
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 899
    :cond_33
    const v9, 0x7f0b04f8

    if-ne v4, v9, :cond_34

    .line 900
    const-string v9, "VZW"

    sget-object v10, Lcom/android/settings_ex/Settings;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 902
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 904
    :cond_34
    const v9, 0x7f0b04f7

    if-ne v4, v9, :cond_35

    .line 905
    const/4 v9, 0x0

    invoke-static {v9}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 906
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 908
    :cond_35
    const v9, 0x7f0b04fc

    if-ne v4, v9, :cond_36

    .line 910
    :try_start_5
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.sec.android.app.safetyassurance"

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_1

    .line 911
    :catch_5
    move-exception v0

    .line 912
    .restart local v0       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 914
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_36
    const v9, 0x7f0b0529

    if-ne v4, v9, :cond_37

    .line 916
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 918
    :cond_37
    const v9, 0x7f0b0507

    if-eq v4, v9, :cond_1

    .line 922
    const v9, 0x7f0b0527

    if-ne v4, v9, :cond_38

    .line 924
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 926
    :cond_38
    const v9, 0x7f0b0530

    if-ne v4, v9, :cond_39

    .line 928
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 930
    :cond_39
    const v9, 0x7f0b0531

    if-ne v4, v9, :cond_3a

    .line 932
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 934
    :cond_3a
    const v9, 0x7f0b0532

    if-ne v4, v9, :cond_1

    .line 936
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_1

    .line 957
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    .end local v4           #id:I
    :cond_3b
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 1662
    invoke-static {p0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1665
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "GuideFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/guide/GuideFragmentCallback;

    .line 1668
    .local v0, guide:Lcom/android/settings_ex/guide/GuideFragmentCallback;
    if-eqz v0, :cond_2

    .line 1670
    invoke-interface {v0, p1}, Lcom/android/settings_ex/guide/GuideFragmentCallback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 1674
    .end local v0           #guide:Lcom/android/settings_ex/guide/GuideFragmentCallback;
    :goto_0
    return v1

    .line 1670
    .restart local v0       #guide:Lcom/android/settings_ex/guide/GuideFragmentCallback;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1674
    .end local v0           #guide:Lcom/android/settings_ex/guide/GuideFragmentCallback;
    :cond_2
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    .line 481
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 482
    .local v4, superIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, startingFragment:Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->onIsMultiPane()Z

    move-result v5

    if-nez v5, :cond_1

    .line 486
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 487
    .local v2, modIntent:Landroid/content/Intent;
    const-string v5, ":android:show_fragment"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 488
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 489
    .local v0, args:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 490
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .end local v0           #args:Landroid/os/Bundle;
    .local v1, args:Landroid/os/Bundle;
    move-object v0, v1

    .line 494
    .end local v1           #args:Landroid/os/Bundle;
    .restart local v0       #args:Landroid/os/Bundle;
    :goto_0
    const-string v5, "intent"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 495
    const-string v5, ":android:show_fragment_args"

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 498
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :goto_1
    return-object v2

    .line 492
    .restart local v0       #args:Landroid/os/Bundle;
    .restart local v2       #modIntent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #args:Landroid/os/Bundle;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0       #args:Landroid/os/Bundle;
    goto :goto_0

    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #modIntent:Landroid/content/Intent;
    :cond_1
    move-object v2, v4

    .line 498
    goto :goto_1
.end method

.method public getNextButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 1075
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2
    .parameter "intent"

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mFragmentClass:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mFragmentClass:Ljava/lang/String;

    .line 518
    :cond_0
    :goto_0
    return-object v0

    .line 508
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, intentClass:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    .line 511
    :cond_2
    const-string v1, "com.android.settings_ex.ManageApplications"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings_ex.RunningServices"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "com.android.settings_ex.applications.StorageUse"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 515
    :cond_3
    const-class v1, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public hasNextButton()Z
    .locals 1

    .prologue
    .line 1070
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->hasNextButton()Z

    move-result v0

    return v0
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 1
    .parameter "accounts"

    .prologue
    .line 1653
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 1654
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 1655
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->invalidateHeaders()V

    .line 1656
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 1079
    if-nez p1, :cond_0

    .line 1080
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 1081
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings_ex/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 1082
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 1083
    check-cast v0, Lcom/android/settings_ex/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1085
    .restart local v0       #listAdapter:Landroid/widget/ListAdapter;
    :cond_1
    check-cast v0, Lcom/android/settings_ex/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/Settings$HeaderAdapter;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .parameter "fragment"

    .prologue
    .line 1697
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onAttachFragment(Landroid/app/Fragment;)V

    .line 1700
    instance-of v0, p1, Lcom/android/settings_ex/guide/GuideFragment;

    if-eqz v0, :cond_0

    .line 1701
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->setEnablerForGuide()V

    .line 1704
    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const v0, 0x7f070077

    invoke-virtual {p0, v0, p1}, Lcom/android/settings_ex/Settings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 610
    invoke-direct {p0, p1}, Lcom/android/settings_ex/Settings;->updateHeaderList(Ljava/util/List;)V

    .line 611
    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 6
    .parameter "fragmentName"
    .parameter "args"
    .parameter "titleRes"
    .parameter "shortTitleRes"

    .prologue
    const/4 v5, 0x1

    .line 543
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v1

    .line 547
    .local v1, intent:Landroid/content/Intent;
    const-class v4, Lcom/android/settings_ex/DataUsageSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/fuelgauge/PowerUsageSummary;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/UserDictionarySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/deviceinfo/Memory;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/applications/ManageApplications;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/WirelessSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/SoundSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/PrivacySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/vpn2/VpnSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/SecuritySettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/myplace/MyPlaceSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/myplace/MyPlaceProfileSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/myplace/MyPlaceListDelelete;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/safetyzone/SafetyZoneListDelelete;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/TetherSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/ApnSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/LocationSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/ZonePicker;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-class v4, Lcom/android/settings_ex/SambaSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 570
    :cond_0
    const-string v4, "settings:remove_ui_options"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 574
    :cond_1
    invoke-static {p0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 576
    const-class v4, Lcom/android/settings_ex/wifi/WifiSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 577
    .local v3, isWifiSettingsFragment:Z
    const-class v4, Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 579
    .local v2, isBtSettingsFragment:Z
    if-nez v3, :cond_2

    if-eqz v2, :cond_3

    .line 580
    :cond_2
    const-string v4, "settings:guide_is_on"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 583
    :cond_3
    const/4 v0, 0x0

    .line 585
    .local v0, guideExtra:Ljava/lang/String;
    if-eqz v3, :cond_6

    .line 586
    const-string v0, "wifi"

    .line 594
    :cond_4
    :goto_0
    const-string v4, "settings:guide_mode"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    .end local v0           #guideExtra:Ljava/lang/String;
    .end local v2           #isBtSettingsFragment:Z
    .end local v3           #isWifiSettingsFragment:Z
    :cond_5
    const-class v4, Lcom/android/settings_ex/SubSettings;

    invoke-virtual {v1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 600
    return-object v1

    .line 588
    .restart local v0       #guideExtra:Ljava/lang/String;
    .restart local v2       #isBtSettingsFragment:Z
    .restart local v3       #isWifiSettingsFragment:Z
    :cond_6
    if-nez v2, :cond_7

    const-class v4, Lcom/android/settings_ex/bluetooth/DeviceProfilesSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 590
    :cond_7
    const-string v0, "bt"

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "settings:remove_ui_options"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setUiOptions(I)V

    .line 214
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/Settings;->sSalesCode:Ljava/lang/String;

    .line 215
    new-instance v0, Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-direct {v0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/Settings;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    .line 216
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->updateAuthDescriptions(Landroid/content/Context;)V

    .line 217
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p0, v3}, Lcom/android/settings_ex/accounts/AuthenticatorHelper;->onAccountsUpdated(Landroid/content/Context;[Landroid/accounts/Account;)V

    .line 219
    const-string v0, "development"

    invoke-virtual {p0, v0, v2}, Lcom/android/settings_ex/Settings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    .line 232
    invoke-direct {p0}, Lcom/android/settings_ex/Settings;->getMetaData()V

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/Settings;->mInLocalHeaderSwitch:Z

    .line 234
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    iput-boolean v2, p0, Lcom/android/settings_ex/Settings;->mInLocalHeaderSwitch:Z

    .line 239
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings_ex/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 244
    iget v0, p0, Lcom/android/settings_ex/Settings;->mTopLevelHeaderId:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/Settings;->highlightHeader(I)V

    .line 247
    const v0, 0x7f090144

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/Settings;->setTitle(I)V

    .line 251
    :cond_1
    if-eqz p1, :cond_2

    .line 252
    const-string v0, "com.android.settings_ex.CURRENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 253
    const-string v0, "com.android.settings_ex.PARENT_HEADER"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    iput-object v0, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 257
    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_3

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v3}, Lcom/android/settings_ex/Settings;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 262
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    iget-object v0, v0, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings_ex/Settings$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/Settings$1;-><init>(Lcom/android/settings_ex/Settings;)V

    invoke-virtual {p0, v0, v3, v1}, Lcom/android/settings_ex/Settings;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    .line 271
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/high16 v1, 0x7f03

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setIcon(I)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 276
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 277
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 279
    :cond_5
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 357
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 358
    iget-boolean v0, p0, Lcom/android/settings_ex/Settings;->mListeningToAccountUpdates:Z

    if-eqz v0, :cond_0

    .line 359
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 361
    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Landroid/preference/PreferenceActivity$Header;
    .locals 3

    .prologue
    .line 527
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/Settings;->getStartingFragmentClass(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, fragmentClass:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 529
    new-instance v1, Landroid/preference/PreferenceActivity$Header;

    invoke-direct {v1}, Landroid/preference/PreferenceActivity$Header;-><init>()V

    .line 530
    .local v1, header:Landroid/preference/PreferenceActivity$Header;
    iput-object v0, v1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    .line 531
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    .line 532
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Landroid/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    .line 533
    iput-object v1, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 537
    .end local v1           #header:Landroid/preference/PreferenceActivity$Header;
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 8
    .parameter "header"
    .parameter "position"

    .prologue
    const/4 v7, 0x0

    .line 1585
    const/4 v2, 0x0

    .line 1586
    .local v2, revert:Z
    iget-object v3, p0, Lcom/android/settings_ex/Settings;->mInternationalRoaming:Landroid/preference/PreferenceActivity$Header;

    if-ne p1, v3, :cond_1

    .line 1587
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1588
    .local v0, airPlaneMode:I
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings_ex/Settings;->mMSADialog:Landroid/app/AlertDialog$Builder;

    .line 1589
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1590
    iget-object v3, p0, Lcom/android/settings_ex/Settings;->mMSADialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0911f7

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090147

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040013

    new-instance v5, Lcom/android/settings_ex/Settings$4;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/Settings$4;-><init>(Lcom/android/settings_ex/Settings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1620
    .end local v0           #airPlaneMode:I
    :goto_0
    return-void

    .line 1599
    .restart local v0       #airPlaneMode:I
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1600
    .local v1, intent:Landroid/content/Intent;
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.phone"

    const-string v5, "com.android.phone.InternationalRoamingSetting"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1601
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1602
    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1603
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1606
    .end local v0           #airPlaneMode:I
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b04d9

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    .line 1607
    const/4 v2, 0x1

    .line 1612
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 1614
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v3, :cond_4

    .line 1615
    iget-object v3, p0, Lcom/android/settings_ex/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    iget-wide v3, v3, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/settings_ex/Settings;->highlightHeader(I)V

    goto :goto_0

    .line 1608
    :cond_3
    iget-wide v3, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v5, 0x7f0b04e2

    cmp-long v3, v3, v5

    if-nez v3, :cond_2

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1609
    iput-object v7, p1, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    goto :goto_1

    .line 1617
    :cond_4
    iput-object p1, p0, Lcom/android/settings_ex/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1680
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 1683
    .local v0, retval:Z
    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x6f

    if-ne p1, v1, :cond_0

    .line 1688
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->finish()V

    .line 1689
    const/4 v0, 0x1

    .line 1692
    :cond_0
    return v0
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 446
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 449
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 450
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->onIsHidingHeaders()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->onIsMultiPane()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/Settings;->switchToHeaderLocal(Landroid/preference/PreferenceActivity$Header;)V

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 458
    :cond_1
    invoke-static {p0, p1}, Lcom/android/settings_ex/guide/GuideFragment;->deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 460
    invoke-static {p0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 461
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->setEnablerForGuide()V

    .line 465
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 339
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 341
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 342
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings_ex/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 343
    check-cast v0, Lcom/android/settings_ex/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings_ex/Settings$HeaderAdapter;->pause()V

    .line 346
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings_ex/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 348
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ex/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 353
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 1625
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitleRes()I

    move-result v3

    .line 1626
    .local v3, titleRes:I
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/WallpaperTypeSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1627
    const v3, 0x7f0904e1

    .line 1632
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ex/Settings;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1634
    const/4 v0, 0x1

    return v0

    .line 1628
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings_ex/OwnerInfoSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1630
    const v3, 0x7f090176

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 296
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 306
    new-instance v1, Lcom/android/settings_ex/Settings$2;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/Settings$2;-><init>(Lcom/android/settings_ex/Settings;)V

    iput-object v1, p0, Lcom/android/settings_ex/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 312
    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mDevelopmentPreferences:Landroid/content/SharedPreferences;

    iget-object v2, p0, Lcom/android/settings_ex/Settings;->mDevelopmentPreferencesListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 315
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 316
    .local v0, listAdapter:Landroid/widget/ListAdapter;
    instance-of v1, v0, Lcom/android/settings_ex/Settings$HeaderAdapter;

    if-eqz v1, :cond_0

    .line 317
    check-cast v0, Lcom/android/settings_ex/Settings$HeaderAdapter;

    .end local v0           #listAdapter:Landroid/widget/ListAdapter;
    invoke-virtual {v0}, Lcom/android/settings_ex/Settings$HeaderAdapter;->resume()V

    .line 319
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->invalidateHeaders()V

    .line 322
    invoke-static {}, Lcom/android/settings_ex/guide/GuideFragment;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mFirstHeader:Landroid/preference/PreferenceActivity$Header;

    :goto_0
    invoke-static {p0, v1}, Lcom/android/settings_ex/guide/GuideFragment;->setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->setEnablerForGuide()V

    .line 335
    :cond_1
    return-void

    .line 324
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mLastHeader:Landroid/preference/PreferenceActivity$Header;

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 286
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 287
    const-string v0, "com.android.settings_ex.CURRENT_HEADER"

    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    .line 290
    const-string v0, "com.android.settings_ex.PARENT_HEADER"

    iget-object v1, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 292
    :cond_1
    return-void
.end method

.method public setEnablerForGuide()V
    .locals 1

    .prologue
    .line 1712
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/Settings$HeaderAdapter;

    if-eqz v0, :cond_0

    .line 1714
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/Settings$HeaderAdapter;

    invoke-virtual {v0, p0}, Lcom/android/settings_ex/Settings$HeaderAdapter;->setEnablersForGuide(Lcom/android/settings_ex/Settings;)V

    .line 1716
    :cond_0
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 1643
    if-nez p1, :cond_0

    .line 1644
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1648
    :goto_0
    return-void

    .line 1646
    :cond_0
    new-instance v0, Lcom/android/settings_ex/Settings$HeaderAdapter;

    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getHeaders()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/Settings;->mAuthenticatorHelper:Lcom/android/settings_ex/accounts/AuthenticatorHelper;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings_ex/Settings$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings_ex/accounts/AuthenticatorHelper;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public shouldUpRecreateTask(Landroid/content/Intent;)Z
    .locals 2
    .parameter "targetIntent"

    .prologue
    .line 1638
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings_ex/Settings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-super {p0, v0}, Landroid/preference/PreferenceActivity;->shouldUpRecreateTask(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public switchToHeader(Landroid/preference/PreferenceActivity$Header;)V
    .locals 2
    .parameter "header"

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-boolean v0, p0, Lcom/android/settings_ex/Settings;->mInLocalHeaderSwitch:Z

    if-nez v0, :cond_0

    .line 372
    iput-object v1, p0, Lcom/android/settings_ex/Settings;->mCurrentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 373
    iput-object v1, p0, Lcom/android/settings_ex/Settings;->mParentHeader:Landroid/preference/PreferenceActivity$Header;

    .line 375
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->switchToHeader(Landroid/preference/PreferenceActivity$Header;)V

    .line 378
    invoke-static {}, Lcom/android/settings_ex/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 380
    invoke-static {p0, p1}, Lcom/android/settings_ex/guide/GuideFragment;->setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->setEnablerForGuide()V

    .line 385
    :cond_1
    return-void
.end method

.method public updateHotspotSSID()V
    .locals 10

    .prologue
    .line 388
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 390
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/Settings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 392
    .local v0, TempWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 393
    const-string v7, ""

    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/settings_ex/Settings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 395
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v7, "Settings"

    const-string v8, "updateHotspotS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const-string v7, "chameleon_ssid"

    invoke-static {v2, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 399
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    .line 400
    .local v6, wifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, mac:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 402
    const-string v7, ":"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 403
    .local v5, temp:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v3

    .line 404
    .local v3, len:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    add-int/lit8 v9, v3, -0x3

    invoke-virtual {v5, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 409
    .end local v3           #len:I
    .end local v5           #temp:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 411
    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v4           #mac:Ljava/lang/String;
    .end local v6           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_0
    return-void

    .line 406
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v4       #mac:Ljava/lang/String;
    .restart local v6       #wifiInfo:Landroid/net/wifi/WifiInfo;
    :cond_1
    const-string v7, "Settings"

    const-string v8, "MAC read fail"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
