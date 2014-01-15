.class public Lcom/android/settings_ex/WirelessSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# static fields
.field private static final BUTTON_SMART_NETWORK_KEY:Ljava/lang/String; = "button_smart_network_key"

.field private static final BUTTON_WIFI_CALLING_KEY:Ljava/lang/String; = "button_wifi_calling_key"

.field public static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final KEY_ALLSHARE_CAST_SETTINGS:Ljava/lang/String; = "allshare_cast_settings"

.field private static final KEY_CELL_BROADCAST_SETTINGS:Ljava/lang/String; = "cell_broadcast_settings"

.field private static final KEY_MOBILE_NETWORK_SETTINGS:Ljava/lang/String; = "mobile_network_settings"

.field private static final KEY_NEARBY_SETTINGS:Ljava/lang/String; = "nearby_settings"

.field public static final KEY_NFC_WALLET:Ljava/lang/String; = "nfc_wallet_manager"

.field private static final KEY_PARENT:Ljava/lang/String; = "parent"

.field private static final KEY_PAY_AS_YOU_GO:Ljava/lang/String; = "pay_as_you_go"

.field private static final KEY_PROXY_SETTINGS:Ljava/lang/String; = "proxy_settings"

.field public static final KEY_RCS_SETTINGS:Ljava/lang/String; = "rcs_settings"

.field private static final KEY_ROAMING_SETTINGS:Ljava/lang/String; = "roaming_settings"

.field private static final KEY_S_BEAM_SETTINGS:Ljava/lang/String; = "s_beam_settings"

.field private static final KEY_TETHER_SETTINGS:Ljava/lang/String; = "tether_settings"

.field private static final KEY_TOGGLE_AIRPLANE:Ljava/lang/String; = "toggle_airplane"

.field private static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"

.field private static final KEY_TOGGLE_NSD:Ljava/lang/String; = "toggle_nsd"

.field private static final KEY_TRANSFER_CATEGORY:Ljava/lang/String; = "transfer_category"

.field private static final KEY_VPN_SETTINGS:Ljava/lang/String; = "vpn_settings"

.field private static final KEY_WIFI_AP_SETTINGS:Ljava/lang/String; = "enable_switch_wifi_ap"

.field private static final KEY_WIMAX_SETTINGS:Ljava/lang/String; = "wimax_settings"

.field private static final KIES_CATEGORY:Ljava/lang/String; = "kies_category"

.field private static final LOG_TAG:Ljava/lang/String; = "WirelessSettings"

.field private static final MEDIA_SHARE_CATEGORY:Ljava/lang/String; = "media_share_category"

.field public static final NFC_LAST_WALLET_DEFAULT:Ljava/lang/String; = "nfc_last_wallet_default"

.field public static final NFC_WALLET_DEFAULT:Ljava/lang/String; = "nfc_wallet_default"

.field public static final REQUEST_CODE_EXIT_ECM:I = 0x1

.field private static final WIFI_CALLING_HOLDER_KEY:Ljava/lang/String; = "wifi_calling_holder_key"


# instance fields
.field private final MHS_REQUEST:I

.field private bTabStyle:Z

.field private mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mButtonSmartNetworkEnabled:Lcom/android/settings_ex/SmartNetworkPreference;

.field private mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

.field private mKiesCategory:Landroid/preference/PreferenceCategory;

.field private mLastNFCpaymentObserver:Landroid/database/ContentObserver;

.field private mMediaShareCategory:Landroid/preference/PreferenceCategory;

.field private mNFCpaymentObserver:Landroid/database/ContentObserver;

.field private mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

.field private mNfcWallet:Landroid/preference/PreferenceScreen;

.field private mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

.field private mRcsSettings:Lcom/android/settings_ex/rcs/RcsSettings;

.field private mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiCallSwitchPreference:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/WirelessSettings;->MHS_REQUEST:I

    .line 144
    iput-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    .line 150
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/WirelessSettings;->bTabStyle:Z

    .line 157
    iput-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mRcsSettings:Lcom/android/settings_ex/rcs/RcsSettings;

    .line 358
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/WirelessSettings$1;-><init>(Lcom/android/settings_ex/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mLastNFCpaymentObserver:Landroid/database/ContentObserver;

    .line 366
    new-instance v0, Lcom/android/settings_ex/WirelessSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/WirelessSettings$2;-><init>(Lcom/android/settings_ex/WirelessSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNFCpaymentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/WirelessSettings;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 349
    invoke-static {p0}, Lcom/android/settings_ex/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 355
    :cond_0
    :goto_0
    return v1

    .line 353
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected getHelpResource()I
    .locals 1

    .prologue
    .line 889
    const v0, 0x7f090a15

    return v0
.end method

.method getNfcEnabler(Landroid/app/Activity;Z)Lcom/android/settings_ex/nfc/NfcEnabler;
    .locals 9
    .parameter "activity"
    .parameter "bToggleable"

    .prologue
    const/4 v6, 0x0

    .line 843
    const-string v7, "toggle_nfc"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    .line 844
    .local v1, nfc:Landroid/preference/SwitchPreferenceScreen;
    const-string v7, "s_beam_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreferenceScreen;

    .line 847
    .local v5, sBeam:Landroid/preference/SwitchPreferenceScreen;
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    .line 848
    .local v2, nfcAdapter:Landroid/nfc/NfcAdapter;
    if-nez v2, :cond_0

    .line 849
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    const-string v8, "transfer_category"

    invoke-virtual {p0, v8}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    move-object v3, v6

    .line 884
    :goto_0
    return-object v3

    .line 852
    :cond_0
    const/4 v4, 0x0

    .line 854
    .local v4, nfcsummary:Ljava/lang/CharSequence;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "com.android.settings_ex.nfcsummary"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 855
    if-eqz v4, :cond_3

    .line 856
    invoke-virtual {v1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_1
    if-eqz p2, :cond_1

    .line 870
    const-string v7, "toggle_airplane"

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 874
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_mCommerce_WalletMgrConfig"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Off"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_mCommerce_WalletMgrConfig"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Disable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-boolean v7, p0, Lcom/android/settings_ex/WirelessSettings;->bTabStyle:Z

    if-eqz v7, :cond_4

    .line 878
    :cond_2
    new-instance v3, Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-direct {v3, p1, v1, v5, v6}, Lcom/android/settings_ex/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;)V

    .local v3, nfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;
    goto :goto_0

    .line 858
    .end local v3           #nfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;
    :cond_3
    const v7, 0x7f09025e

    :try_start_1
    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 859
    :catch_0
    move-exception v0

    .line 860
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v7, "CSCAppRes"

    const-string v8, "No data for CSCAppResourceUri"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    const-string v7, "toggle_nfc"

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    goto :goto_1

    .line 881
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_4
    new-instance v3, Lcom/android/settings_ex/nfc/NfcEnabler;

    iget-object v6, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    invoke-direct {v3, p1, v1, v5, v6}, Lcom/android/settings_ex/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/SwitchPreferenceScreen;Landroid/preference/PreferenceScreen;)V

    .restart local v3       #nfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;
    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 817
    if-ne p1, v2, :cond_2

    .line 819
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-nez v1, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 823
    :cond_1
    const-string v1, "exit_ecm_result"

    invoke-virtual {p3, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 825
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings_ex/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    goto :goto_0

    .line 827
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_2
    if-nez p1, :cond_0

    .line 829
    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    .line 830
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_0

    .line 832
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0

    .line 834
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_0

    .line 836
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 837
    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 29
    .parameter "savedInstanceState"

    .prologue
    .line 426
    invoke-super/range {p0 .. p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 428
    const v26, 0x7f0700a6

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 430
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v26

    if-eqz v26, :cond_1a

    const/4 v9, 0x1

    .line 455
    .local v9, isSecondaryUser:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 457
    .local v2, activity:Landroid/app/Activity;
    const-string v26, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 458
    const-string v26, "toggle_nsd"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/CheckBoxPreference;

    .line 459
    .local v16, nsd:Landroid/preference/CheckBoxPreference;
    const-string v26, "enable_switch_wifi_ap"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/SwitchPreference;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    .line 461
    const-string v26, "button_smart_network_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Lcom/android/settings_ex/SmartNetworkPreference;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings_ex/SmartNetworkPreference;

    .line 462
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c001b

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 463
    .local v10, isSupportedSmartNetwork:Z
    const-string v26, "jjh"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "isSupportedSmartNetwork: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings_ex/SmartNetworkPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1b

    .line 465
    const-string v26, "jjh"

    const-string v27, "mButtonSmartNetworkEnabled != null"

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :goto_1
    if-nez v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings_ex/SmartNetworkPreference;

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    .line 471
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings_ex/SmartNetworkPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 474
    :cond_0
    const-string v26, "ro.csc.sales_code"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 475
    .local v23, salesCode:Ljava/lang/String;
    const-string v26, "rcs_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v21

    check-cast v21, Landroid/preference/PreferenceScreen;

    .line 478
    .local v21, rcsSetting:Landroid/preference/PreferenceScreen;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_Clock_ExclusiveEnablingAutoPowerSetting"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 479
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    const-string v27, "auto_power_on_off_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 482
    :cond_1
    new-instance v26, Lcom/android/settings_ex/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v27, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-direct {v0, v2, v1}, Lcom/android/settings_ex/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    .line 485
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 488
    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v26

    const-string v27, "airplane_mode_toggleable_radios"

    invoke-static/range {v26 .. v27}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 492
    .local v24, toggleable:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 513
    if-eqz v24, :cond_2

    const-string v26, "wifi"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_3

    .line 514
    :cond_2
    const-string v26, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    const-string v27, "toggle_airplane"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 516
    :cond_3
    if-eqz v9, :cond_4

    .line 517
    const-string v26, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 521
    :cond_4
    if-eqz v24, :cond_5

    const-string v26, "bluetooth"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_5

    .line 526
    :cond_5
    if-nez v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_7

    .line 527
    :cond_6
    const-string v26, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)V

    .line 531
    :cond_7
    const-string v26, "ALL"

    const-string v27, "ALL"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 532
    const-string v26, "media_share_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/PreferenceCategory;

    .line 533
    .local v13, mediaShare:Landroid/preference/PreferenceCategory;
    const-string v26, "nearby_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 537
    .end local v13           #mediaShare:Landroid/preference/PreferenceCategory;
    :cond_8
    const-string v26, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    .line 538
    .local v12, mGlobalProxy:Landroid/preference/Preference;
    const-string v26, "device_policy"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    .line 541
    .local v11, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 542
    invoke-virtual {v11}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v26

    if-nez v26, :cond_1c

    const/16 v26, 0x1

    :goto_2
    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 545
    const-string v26, "connectivity"

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 547
    .local v4, cm:Landroid/net/ConnectivityManager;
    if-nez v9, :cond_9

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v26

    if-eqz v26, :cond_9

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v26

    if-nez v26, :cond_9

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_1d

    const-string v26, "ATT"

    const-string v27, "ro.csc.sales_code"

    invoke-static/range {v27 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1d

    .line 548
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    const-string v27, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 566
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    const-string v27, "wifi_calling_holder_key"

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    .line 578
    .local v25, wifiCallingHolder:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 581
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_Common_UseChameleon"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_1f

    .line 582
    const-string v26, "persist.sys.roaming_menu"

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_a

    .line 583
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    const-string v27, "roaming_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 590
    :cond_a
    :goto_4
    const/4 v8, 0x0

    .line 592
    .local v8, isCellBroadcastAppLinkEnabled:Z
    if-eqz v8, :cond_b

    .line 593
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v19

    .line 594
    .local v19, pm:Landroid/content/pm/PackageManager;
    const-string v26, "com.android.cellbroadcastreceiver"

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_b

    .line 596
    const/4 v8, 0x0

    .line 602
    .end local v19           #pm:Landroid/content/pm/PackageManager;
    :cond_b
    :goto_5
    if-nez v9, :cond_c

    if-nez v8, :cond_d

    .line 603
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v22

    .line 604
    .local v22, root:Landroid/preference/PreferenceScreen;
    const-string v26, "cell_broadcast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v20

    .line 605
    .local v20, ps:Landroid/preference/Preference;
    if-eqz v20, :cond_d

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 609
    .end local v20           #ps:Landroid/preference/Preference;
    .end local v22           #root:Landroid/preference/PreferenceScreen;
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    const-string v27, "com.ipsec.vpnclient"

    invoke-static/range {v26 .. v27}, Lcom/android/settings_ex/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 611
    .local v6, hasAdvVpn:Z
    const-string v26, "ATT"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_e

    const-string v26, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_20

    :cond_e
    if-eqz v6, :cond_20

    .line 612
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    const-string v27, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 618
    :goto_6
    const-string v26, "media_share_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mMediaShareCategory:Landroid/preference/PreferenceCategory;

    .line 619
    const-string v26, "kies_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mKiesCategory:Landroid/preference/PreferenceCategory;

    .line 635
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    const-string v27, "com.sec.android.app.kieswifi"

    const/16 v28, 0x0

    invoke-virtual/range {v26 .. v28}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 641
    :goto_7
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v26

    if-eqz v26, :cond_f

    .line 642
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    const-string v27, "usb_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 646
    :cond_f
    const/4 v3, 0x0

    .line 647
    .local v3, bToggleableNFC:Z
    if-eqz v24, :cond_10

    const-string v26, "nfc"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_11

    .line 648
    :cond_10
    const/4 v3, 0x1

    .line 651
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c0020

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/WirelessSettings;->bTabStyle:Z

    .line 652
    const-string v26, "nfc_wallet_manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    check-cast v26, Landroid/preference/PreferenceScreen;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    .line 653
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_mCommerce_WalletMgrConfig"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "Off"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_12

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_mCommerce_WalletMgrConfig"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "Disable"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_12

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/WirelessSettings;->bTabStyle:Z

    move/from16 v26, v0

    if-eqz v26, :cond_13

    .line 657
    :cond_12
    const-string v26, "transfer_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    check-cast v15, Landroid/preference/PreferenceCategory;

    .line 658
    .local v15, nfcCategory:Landroid/preference/PreferenceCategory;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mNfcWallet:Landroid/preference/PreferenceScreen;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v15, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 661
    .end local v15           #nfcCategory:Landroid/preference/PreferenceCategory;
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3}, Lcom/android/settings_ex/WirelessSettings;->getNfcEnabler(Landroid/app/Activity;Z)Lcom/android/settings_ex/nfc/NfcEnabler;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    .line 664
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_IMS_EnableRCSe"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_21

    .line 665
    const-string v26, "parent"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/PreferenceScreen;

    .line 666
    .local v18, parent:Landroid/preference/PreferenceScreen;
    new-instance v26, Lcom/android/settings_ex/rcs/RcsSettings;

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-direct {v0, v2, v1}, Lcom/android/settings_ex/rcs/RcsSettings;-><init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/WirelessSettings;->mRcsSettings:Lcom/android/settings_ex/rcs/RcsSettings;

    .line 674
    .end local v18           #parent:Landroid/preference/PreferenceScreen;
    :cond_14
    :goto_8
    const-string v26, "MTR"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_15

    .line 675
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    const-string v27, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 679
    :cond_15
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v26

    const-string v27, "CscFeature_FeliCa_EnableFeliCa"

    invoke-virtual/range {v26 .. v27}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_16

    .line 680
    const-string v26, "transfer_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceGroup;

    .line 681
    .local v14, nfcCat:Landroid/preference/PreferenceGroup;
    if-eqz v14, :cond_16

    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 686
    .end local v14           #nfcCat:Landroid/preference/PreferenceGroup;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c0020

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v26

    if-eqz v26, :cond_19

    .line 687
    const-string v26, "transfer_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    if-eqz v26, :cond_17

    .line 688
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    const-string v27, "transfer_category"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 689
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mMediaShareCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v26, v0

    if-eqz v26, :cond_18

    .line 690
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mMediaShareCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 691
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mKiesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v26, v0

    if-eqz v26, :cond_19

    .line 692
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mKiesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 696
    :cond_19
    return-void

    .line 430
    .end local v2           #activity:Landroid/app/Activity;
    .end local v3           #bToggleableNFC:Z
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v6           #hasAdvVpn:Z
    .end local v8           #isCellBroadcastAppLinkEnabled:Z
    .end local v9           #isSecondaryUser:Z
    .end local v10           #isSupportedSmartNetwork:Z
    .end local v11           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v12           #mGlobalProxy:Landroid/preference/Preference;
    .end local v16           #nsd:Landroid/preference/CheckBoxPreference;
    .end local v21           #rcsSetting:Landroid/preference/PreferenceScreen;
    .end local v23           #salesCode:Ljava/lang/String;
    .end local v24           #toggleable:Ljava/lang/String;
    .end local v25           #wifiCallingHolder:Landroid/preference/Preference;
    :cond_1a
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 467
    .restart local v2       #activity:Landroid/app/Activity;
    .restart local v9       #isSecondaryUser:Z
    .restart local v10       #isSupportedSmartNetwork:Z
    .restart local v16       #nsd:Landroid/preference/CheckBoxPreference;
    :cond_1b
    const-string v26, "jjh"

    const-string v27, "mButtonSmartNetworkEnabled == null"

    invoke-static/range {v26 .. v27}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 542
    .restart local v11       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v12       #mGlobalProxy:Landroid/preference/Preference;
    .restart local v21       #rcsSetting:Landroid/preference/PreferenceScreen;
    .restart local v23       #salesCode:Ljava/lang/String;
    .restart local v24       #toggleable:Ljava/lang/String;
    :cond_1c
    const/16 v26, 0x0

    goto/16 :goto_2

    .line 549
    .restart local v4       #cm:Landroid/net/ConnectivityManager;
    :cond_1d
    const-string v26, "TFN"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_1e

    .line 550
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    const-string v27, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 552
    :cond_1e
    const-string v26, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 556
    .local v17, p:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/settings_ex/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v26

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 557
    invoke-static {v4}, Lcom/android/settings_ex/Utils;->getTetheringSummary(Landroid/net/ConnectivityManager;)I

    move-result v26

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_3

    .line 585
    .end local v17           #p:Landroid/preference/Preference;
    .restart local v25       #wifiCallingHolder:Landroid/preference/Preference;
    :cond_1f
    const-string v26, "SPR"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    const-string v26, "VMU"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    const-string v26, "BST"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    const-string v26, "XAS"

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-nez v26, :cond_a

    .line 586
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    const-string v27, "roaming_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 599
    .restart local v8       #isCellBroadcastAppLinkEnabled:Z
    :catch_0
    move-exception v7

    .line 600
    .local v7, ignored:Ljava/lang/IllegalArgumentException;
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 614
    .end local v7           #ignored:Ljava/lang/IllegalArgumentException;
    .restart local v6       #hasAdvVpn:Z
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    const-string v27, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 636
    :catch_1
    move-exception v5

    .line 637
    .local v5, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/WirelessSettings;->mKiesCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 669
    .end local v5           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v3       #bToggleableNFC:Z
    :cond_21
    if-eqz v21, :cond_14

    .line 670
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 420
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 421
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/AirplaneModeEnabler;->destroy()V

    .line 422
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 778
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 780
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/AirplaneModeEnabler;->pause()V

    .line 781
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/nfc/NfcEnabler;->pause()V

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/NsdEnabler;->pause()V

    .line 788
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_2

    .line 789
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    .line 803
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 804
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mRcsSettings:Lcom/android/settings_ex/rcs/RcsSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/rcs/RcsSettings;->unregisterRcsProviderObserver()V

    .line 807
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_mCommerce_WalletMgrConfig"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_mCommerce_WalletMgrConfig"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings_ex/WirelessSettings;->bTabStyle:Z

    if-nez v0, :cond_4

    .line 811
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->unregisterNFCPaymentObserver()V

    .line 813
    :cond_4
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 177
    const-string v4, "mobile_network_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    if-ne p2, v4, :cond_2

    .line 286
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 287
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 289
    .local v1, simState:I
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    if-eqz v1, :cond_0

    if-ne v1, v3, :cond_2

    .line 292
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 293
    .local v0, insertSimPopup:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0909aa

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0909ab

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 345
    .end local v0           #insertSimPopup:Landroid/app/AlertDialog$Builder;
    .end local v1           #simState:I
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    :goto_0
    return v3

    .line 304
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v4, :cond_3

    const-string v4, "ril.cdma.inecmmode"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 307
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 339
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings_ex/SmartNetworkPreference;

    if-ne p2, v4, :cond_4

    .line 340
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings_ex/SmartNetworkPreference;

    if-eqz v4, :cond_1

    .line 341
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings_ex/SmartNetworkPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/SmartNetworkPreference;->checkSmartNetwork(Landroid/content/Context;)V

    goto :goto_0

    .line 345
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    goto :goto_0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 709
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 711
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings_ex/AirplaneModeEnabler;

    invoke-virtual {v4}, Lcom/android/settings_ex/AirplaneModeEnabler;->resume()V

    .line 712
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    if-eqz v4, :cond_0

    .line 713
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mNfcEnabler:Lcom/android/settings_ex/nfc/NfcEnabler;

    invoke-virtual {v4}, Lcom/android/settings_ex/nfc/NfcEnabler;->resume()V

    .line 715
    :cond_0
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    if-eqz v4, :cond_1

    .line 716
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mNsdEnabler:Lcom/android/settings_ex/NsdEnabler;

    invoke-virtual {v4}, Lcom/android/settings_ex/NsdEnabler;->resume()V

    .line 719
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v4, :cond_2

    .line 720
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 724
    :cond_2
    :try_start_0
    const-string v4, "enterprise_policy"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 726
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    const-string v4, "vpn_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isVpnAllowed()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 744
    .end local v1           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_IMS_EnableRCSe"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 745
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mRcsSettings:Lcom/android/settings_ex/rcs/RcsSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    .line 746
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mRcsSettings:Lcom/android/settings_ex/rcs/RcsSettings;

    invoke-virtual {v4}, Lcom/android/settings_ex/rcs/RcsSettings;->registerRcsProviderObserver()V

    .line 750
    :cond_3
    const-string v4, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_5

    .line 751
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 753
    const-string v4, "mobile_network_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    .line 754
    .local v2, mMobileNetwork:Landroid/preference/PreferenceScreen;
    if-eqz v2, :cond_4

    .line 755
    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 757
    :cond_4
    const-string v4, "roaming_settings"

    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 758
    .local v3, mRoamingSettings:Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_5

    .line 759
    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 764
    .end local v2           #mMobileNetwork:Landroid/preference/PreferenceScreen;
    .end local v3           #mRoamingSettings:Landroid/preference/PreferenceScreen;
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings_ex/SmartNetworkPreference;

    if-eqz v4, :cond_6

    .line 765
    iget-object v4, p0, Lcom/android/settings_ex/WirelessSettings;->mButtonSmartNetworkEnabled:Lcom/android/settings_ex/SmartNetworkPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings_ex/SmartNetworkPreference;->updateSmartNetworkPreference(Landroid/content/Context;)V

    .line 768
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_mCommerce_WalletMgrConfig"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Off"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_mCommerce_WalletMgrConfig"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Disable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/settings_ex/WirelessSettings;->bTabStyle:Z

    if-nez v4, :cond_7

    .line 772
    invoke-virtual {p0}, Lcom/android/settings_ex/WirelessSettings;->registerNFCPaymentObserver()V

    .line 774
    :cond_7
    return-void

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 700
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 702
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/android/settings_ex/WirelessSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 705
    :cond_0
    return-void
.end method

.method public registerNFCPaymentObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 375
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_wallet_default"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mNFCpaymentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_last_wallet_default"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/WirelessSettings;->mLastNFCpaymentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 381
    return-void
.end method

.method public unregisterNFCPaymentObserver()V
    .locals 2

    .prologue
    .line 384
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mNFCpaymentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/WirelessSettings;->mLastNFCpaymentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 386
    return-void
.end method

.method public updatePreference(Landroid/preference/PreferenceScreen;)V
    .locals 8
    .parameter "pref"

    .prologue
    const v7, 0x7f090277

    const/4 v6, 0x3

    .line 390
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 391
    .local v1, nfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 392
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getCurrentSeRouteInfo()I

    move-result v2

    .line 393
    .local v2, routeType:I
    const-string v3, "WirelessSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreference : Type is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 396
    const v3, 0x7f090279

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 415
    .end local v2           #routeType:I
    :cond_0
    :goto_0
    return-void

    .line 398
    .restart local v2       #routeType:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "nfc_wallet_default"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 399
    .local v0, defaultWallet:Ljava/lang/String;
    if-ne v2, v6, :cond_4

    .line 400
    if-eqz v0, :cond_2

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 401
    :cond_2
    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 403
    :cond_3
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 406
    :cond_4
    if-eqz v0, :cond_5

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 407
    :cond_5
    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 409
    :cond_6
    const v3, 0x7f09027a

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_0
.end method
