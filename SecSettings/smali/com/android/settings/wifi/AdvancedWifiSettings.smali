.class public Lcom/android/settings_ex/wifi/AdvancedWifiSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/AdvancedWifiSettings$SwitchHandler;
    }
.end annotation


# static fields
.field private static final APN_CTNET:Ljava/lang/String; = "ctnet"

.field private static final APN_CTWAP:Ljava/lang/String; = "ctwap"

.field private static DBG:Z = false

.field private static final DISCONNECT_WEAK_AP_DIALOG_ID:I = 0x2

.field private static final KEY_ADD_IWLAN_NETWORK:Ljava/lang/String; = "add_other_iwlan"

.field private static final KEY_AUTHENTICATION_INFORMATION:Ljava/lang/String; = "wifi_authentication_information"

.field private static final KEY_CMCC_MANUAL_CONNECTION:Ljava/lang/String; = "wifi_cmcc_manual"

.field private static final KEY_CMCC_PRIORITY:Ljava/lang/String; = "wifi_cmcc_priority"

.field private static final KEY_CONNECTION_PRIORITY_MODE:Ljava/lang/String; = "wifi_connection_priority_mode"

.field private static final KEY_CONNECTION_SETTINGS:Ljava/lang/String; = "wifi_connection_settings"

.field private static final KEY_CURRENT_IP_ADDRESS:Ljava/lang/String; = "current_ip_address"

.field private static final KEY_FREQUENCY_BAND:Ljava/lang/String; = "frequency_band"

.field private static final KEY_HIDDEN_APS:Ljava/lang/String; = "wifi_hidden_aps"

.field private static final KEY_HOTSPOT20_ENABLE:Ljava/lang/String; = "wifi_hotspot20_enable"

.field private static final KEY_HOTSPOT20_ROAM_ENABLE:Ljava/lang/String; = "wifi_hotspot20_roam_enable"

.field private static final KEY_LGT_MWLAN_PERMISSION:Ljava/lang/String; = "mwlan_permission_allowed_2"

.field private static final KEY_MAC_ADDRESS:Ljava/lang/String; = "mac_address"

.field private static final KEY_NOTIFY_OPEN_NETWORKS:Ljava/lang/String; = "notify_open_networks"

.field private static final KEY_POOR_NETWORK_DETECTION:Ljava/lang/String; = "wifi_poor_network_detection"

.field private static final KEY_PREFERRED_BAND:Ljava/lang/String; = "preferred_band"

.field private static final KEY_SLEEP_POLICY:Ljava/lang/String; = "sleep_policy"

.field private static final KEY_USE_WAG_FQDN:Ljava/lang/String; = "wagfqdn"

.field private static final KEY_USE_WAG_IP:Ljava/lang/String; = "use_wag_ip"

.field private static final KEY_US_ATT_AUTO_CONNECT:Ljava/lang/String; = "att_auto_connect"

.field private static final KEY_WAG_IP_SETTINGS:Ljava/lang/String; = "wag_ip_settings"

.field private static final KEY_WIFI_RESET:Ljava/lang/String; = "wifi_reset"

.field private static final KEY_WIFI_TIMER:Ljava/lang/String; = "wifi_timer"

.field private static final PREFERAPN_URI:Landroid/net/Uri; = null

.field private static final PREFERRED_APN_URI:Ljava/lang/String; = "content://telephony/carriers/preferapn"

.field private static final SWITCH_DISABLED:I = 0x2

.field private static final SWITCH_ENABLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AdvancedWifiSettings"

.field private static final WIFI_INTERNET_SERVICE_CHECK_DIALOG_ID:I = 0x3

.field private static final WIFI_RESET_DIALOG_ID:I = 0x1

.field public static hideNavigationButton:Z

.field private static isCancel:Z

.field private static use_static_wagip_orig:I

.field private static wagfqdn_orig:Ljava/lang/String;

.field private static wagip_address_orig:Ljava/lang/String;

.field private static wagport_orig:Ljava/lang/String;


# instance fields
.field private allowWifi:Z

.field private dialog:Landroid/app/AlertDialog;

.field private mApnName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEapMethod:Ljava/lang/String;

.field mEnableHs20:Lcom/android/settings_ex/SettingsSwitchPreference;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Lcom/android/settings_ex/wifi/AdvancedWifiSettings$SwitchHandler;

.field private mHiddenAps:Z

.field private mIsConn:Z

.field private mIwlan:Ljava/lang/String;

.field private mIwlanDialog:Lcom/android/settings_ex/wifi/IwlanDialog;

.field private mIwlanEnabler:Lcom/android/settings_ex/wifi/IwlanEnabler;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mPreferenceKeys:[Ljava/lang/String;

.field private mPreferredBand:Z

.field private mPriorityDialog:Lcom/android/settings_ex/wifi/PrioritySettingDialog;

.field private mPrioritymode:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReset:Z

.field private mSecSetupWizardMode:Z

.field private mSelected:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mSettingNames:[Ljava/lang/String;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mUiHandler:Landroid/os/Handler;

.field private mUseWagIpCheckBox:Landroid/preference/CheckBoxPreference;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field public mWifiServiceCheckDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

.field private poorNetworkDetection:Landroid/preference/CheckBoxPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 95
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v0, :cond_0

    move v0, v1

    :cond_0
    sput-boolean v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->DBG:Z

    .line 159
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 194
    sput-boolean v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 124
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_PreferredBand"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPreferredBand:Z

    .line 125
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ExceptScanlist"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mHiddenAps:Z

    .line 126
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_Reset"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mReset:Z

    .line 127
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    .line 128
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPrioritymode:Z

    .line 138
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 164
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wifi_static_wagip"

    aput-object v1, v0, v2

    const-string v1, "wifi_static_wagport"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSettingNames:[Ljava/lang/String;

    .line 168
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wagip"

    aput-object v1, v0, v2

    const-string v1, "wagport"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    .line 175
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUiHandler:Landroid/os/Handler;

    .line 179
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuIWLAN4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    .line 188
    new-instance v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 196
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIsConn:Z

    .line 1302
    new-instance v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$8;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiServiceCheckDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private ConnectedAPIsCTCAP()Z
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateWifiInternetServiceCheck()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIsConn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private changeHotspot20(Z)V
    .locals 11
    .parameter "enabled"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1266
    new-instance v5, Landroid/os/Message;

    invoke-direct {v5}, Landroid/os/Message;-><init>()V

    .line 1267
    .local v5, msg:Landroid/os/Message;
    const/16 v6, 0x29

    iput v6, v5, Landroid/os/Message;->what:I

    .line 1268
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1269
    .local v0, args:Landroid/os/Bundle;
    if-eqz p1, :cond_2

    .line 1270
    const-string v6, "enable"

    const-string v9, "ON"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    :goto_0
    iput-object v0, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1274
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v6

    if-eqz v6, :cond_0

    .line 1275
    const-string v6, "AdvancedWifiSettings"

    const-string v9, "HOTSPOT20 config store error"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "wifi_hotspot20_enable"

    if-eqz p1, :cond_3

    move v6, v7

    :goto_1
    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1279
    if-nez p1, :cond_5

    .line 1280
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 1281
    .local v2, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1282
    new-instance v4, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$7;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$7;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    .line 1292
    .local v4, mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 1293
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    iget v6, v1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-ne v6, v7, :cond_1

    .line 1294
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v6, v9, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_2

    .line 1272
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;
    :cond_2
    const-string v6, "enable"

    const-string v9, "OFF"

    invoke-virtual {v0, v6, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v6, v8

    .line 1277
    goto :goto_1

    .line 1298
    .restart local v2       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_4
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings_ex/SettingsSwitchPreference;

    invoke-virtual {v6, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1300
    .end local v2           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_5
    return-void
.end method

.method private getAuthenticationInformation()Ljava/lang/String;
    .locals 9

    .prologue
    .line 1236
    const-string v4, "/data/misc/wifi/message.txt"

    .line 1238
    .local v4, path:Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    .line 1239
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1240
    const-string v6, ""

    .line 1262
    :goto_0
    return-object v6

    .line 1244
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1247
    .local v5, sb:Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1250
    .local v2, in:Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, message:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1251
    const-string v6, "AdvancedWifiSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getInformation, message: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1256
    .end local v3           #message:Ljava/lang/String;
    :catchall_0
    move-exception v6

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1258
    .end local v2           #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 1259
    .local v0, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 1256
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #in:Ljava/io/BufferedReader;
    .restart local v3       #message:Ljava/lang/String;
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1262
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private getSelectedApnKey(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 9
    .parameter "contentResolver"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 974
    sget-object v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "name"

    aput-object v0, v2, v8

    const-string v5, "name ASC"

    move-object v0, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 975
    .local v6, cursor:Landroid/database/Cursor;
    const-string v7, "ctnet"

    .line 976
    .local v7, name:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 977
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 978
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 980
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 981
    return-object v7
.end method

.method private initPreferences()V
    .locals 41

    .prologue
    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v33

    .line 361
    .local v33, wifiEnabled:Z
    const-string v36, "notify_open_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    .line 364
    .local v18, notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    const-string v36, "wifi_hotspot20_enable"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    check-cast v36, Lcom/android/settings_ex/SettingsSwitchPreference;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings_ex/SettingsSwitchPreference;

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings_ex/SettingsSwitchPreference;

    move-object/from16 v36, v0

    if-eqz v36, :cond_0

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings_ex/SettingsSwitchPreference;

    move-object/from16 v37, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v38, "wifi_hotspot20_enable"

    const/16 v39, 0x0

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    const/16 v38, 0x1

    move/from16 v0, v36

    move/from16 v1, v38

    if-ne v0, v1, :cond_17

    const/16 v36, 0x1

    :goto_0
    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings_ex/SettingsSwitchPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEnableHs20:Lcom/android/settings_ex/SettingsSwitchPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 383
    :cond_0
    if-eqz v18, :cond_1

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "wifi_networks_available_notification_on"

    const/16 v38, 0x0

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_18

    const/16 v36, 0x1

    :goto_1
    move-object/from16 v0, v18

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 389
    :cond_1
    const-string v36, "wifi_poor_network_detection"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    if-eqz v36, :cond_2

    .line 391
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_19

    .line 392
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 405
    :cond_2
    :goto_2
    const-string v36, "att_auto_connect"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    .line 412
    .local v4, attAutoConnection:Landroid/preference/CheckBoxPreference;
    if-eqz v4, :cond_3

    .line 413
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 417
    :cond_3
    const-string v36, "wifi_cmcc_manual"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    .line 428
    .local v5, cmccConnectType:Landroid/preference/ListPreference;
    if-eqz v5, :cond_4

    .line 429
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 433
    :cond_4
    const-string v36, "frequency_band"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/ListPreference;

    .line 434
    .local v12, frequencyPref:Landroid/preference/ListPreference;
    if-eqz v12, :cond_5

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 450
    :cond_5
    const-string v36, "sleep_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/ListPreference;

    .line 451
    .local v25, sleepPolicyPref:Landroid/preference/ListPreference;
    if-eqz v25, :cond_7

    .line 453
    const v36, 0x7f040114

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 454
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 455
    const v36, 0x7f0a0031

    move-object/from16 v0, v25

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 457
    :cond_6
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 458
    const/16 v29, 0x2

    .line 465
    .local v29, value:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "wifi_sleep_policy"

    const/16 v38, 0x2

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v29

    .line 469
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    .line 470
    .local v26, stringValue:Ljava/lang/String;
    invoke-virtual/range {v25 .. v26}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 471
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 479
    .end local v26           #stringValue:Ljava/lang/String;
    .end local v29           #value:I
    :cond_7
    const-string v36, "preferred_band"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/ListPreference;

    .line 481
    .local v22, preferredBandPref:Landroid/preference/ListPreference;
    if-eqz v22, :cond_8

    .line 482
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPreferredBand:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1b

    .line 483
    const v36, 0x7f040114

    move-object/from16 v0, v22

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 484
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/net/wifi/WifiManager;->getWifiDualbandAPConnection()I

    move-result v29

    .line 487
    .restart local v29       #value:I
    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    .line 488
    .restart local v26       #stringValue:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 497
    .end local v26           #stringValue:Ljava/lang/String;
    .end local v29           #value:I
    :cond_8
    :goto_3
    const-string v36, "wifi_hidden_aps"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 499
    .local v13, hiddenApsPref:Landroid/preference/Preference;
    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mHiddenAps:Z

    move/from16 v36, v0

    if-nez v36, :cond_9

    .line 501
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 506
    :cond_9
    const-string v36, "wifi_reset"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    .line 508
    .local v24, resetPref:Landroid/preference/Preference;
    if-eqz v24, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mReset:Z

    move/from16 v36, v0

    if-nez v36, :cond_a

    .line 510
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 515
    :cond_a
    const-string v36, "wifi_connection_priority_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    .line 516
    .local v7, connMonitoringPref:Landroid/preference/CheckBoxPreference;
    const-string v36, "wifi_connection_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/PreferenceScreen;

    .line 518
    .local v8, connSettingsPref:Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPrioritymode:Z

    move/from16 v36, v0

    if-eqz v36, :cond_1d

    .line 519
    if-eqz v7, :cond_b

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v37, "wifi_connection_monitor_enable"

    const/16 v38, 0x1

    invoke-static/range {v36 .. v38}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    const/16 v37, 0x1

    move/from16 v0, v36

    move/from16 v1, v37

    if-ne v0, v1, :cond_1c

    const/16 v36, 0x1

    :goto_4
    move/from16 v0, v36

    invoke-virtual {v7, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 535
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "SKT"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_e

    .line 536
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 538
    .local v19, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v36, "iwlan_enabled_category"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 539
    .local v23, removablePref:Landroid/preference/Preference;
    if-eqz v23, :cond_c

    .line 540
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 541
    :cond_c
    const-string v36, "iwlan_networks"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 542
    if-eqz v23, :cond_d

    .line 543
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 545
    :cond_d
    const-string v36, "add_other_iwlan"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 546
    if-eqz v23, :cond_e

    .line 547
    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 552
    .end local v19           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v23           #removablePref:Landroid/preference/Preference;
    :cond_e
    const-string v36, "mwlan_permission_allowed_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    .line 554
    .local v17, mWlanEnabled:Landroid/preference/CheckBoxPreference;
    if-eqz v17, :cond_f

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "LGU"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_1f

    .line 557
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v36

    const-string v37, "com.lguplus.common.wificm.mwlan"

    const/16 v38, 0x0

    invoke-virtual/range {v36 .. v38}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v16

    .line 558
    .local v16, mWlan:Landroid/content/Context;
    const-string v36, "mwlan"

    const/16 v37, 0x4

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 559
    .local v21, pref_mWlan_4:Landroid/content/SharedPreferences;
    const-string v36, "mwlan"

    const/16 v37, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v20

    .line 560
    .local v20, pref_mWlan:Landroid/content/SharedPreferences;
    const-string v36, "permission_allowed_2"

    const/16 v37, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 561
    .local v15, isAllowed_4:Z
    const-string v36, "permission_allowed_2"

    const/16 v37, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 562
    .local v14, isAllowed:Z
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 565
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v36

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v36

    invoke-interface/range {v36 .. v36}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 566
    .local v10, e:Landroid/content/SharedPreferences$Editor;
    const-string v36, "mwlan_permission_allowed_2"

    move-object/from16 v0, v36

    invoke-interface {v10, v0, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 567
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 568
    const-string v36, "KEY_LGT_MWLAN_PERMISSION"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    check-cast v36, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Landroid/preference/TwoStatePreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .end local v10           #e:Landroid/content/SharedPreferences$Editor;
    .end local v14           #isAllowed:Z
    .end local v15           #isAllowed_4:Z
    .end local v16           #mWlan:Landroid/content/Context;
    .end local v20           #pref_mWlan:Landroid/content/SharedPreferences;
    .end local v21           #pref_mWlan_4:Landroid/content/SharedPreferences;
    :cond_f
    :goto_6
    const-string v36, "wifi_cmcc_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 587
    .local v6, cmccPriorityPref:Landroid/preference/PreferenceScreen;
    if-eqz v6, :cond_10

    .line 588
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 597
    :cond_10
    const-string v36, "wifi_timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v36

    check-cast v36, Lcom/android/settings_ex/SettingsSwitchPreference;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    move-object/from16 v36, v0

    if-eqz v36, :cond_11

    .line 599
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSecSetupWizardMode:Z

    move/from16 v36, v0

    if-nez v36, :cond_26

    .line 600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v36

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 604
    const-string v36, "AdvancedWifiSettings"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "WiFi Timer:  before value: "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v38, v0

    const-string v39, "wifitimer_enabled"

    const/16 v40, 0x0

    invoke-interface/range {v38 .. v40}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "  allowWifi:     "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->allowWifi:Z

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v11

    .line 608
    .local v11, ed:Landroid/content/SharedPreferences$Editor;
    const-string v36, "wifitimer_hide_navigation_button"

    sget-boolean v37, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 609
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const-string v37, "wifitimer_enabled"

    const/16 v38, 0x0

    invoke-interface/range {v36 .. v38}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    if-eqz v36, :cond_25

    .line 612
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->allowWifi:Z

    move/from16 v36, v0

    if-nez v36, :cond_21

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 614
    const-string v36, "wifitimer_enabled"

    const/16 v37, 0x0

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-interface {v11, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 615
    invoke-interface {v11}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 616
    new-instance v3, Landroid/content/Intent;

    const-string v36, "com.android.settings_ex.wifi.wifitimer_alarm"

    move-object/from16 v0, v36

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v3, alarm_intent:Landroid/content/Intent;
    const-string v36, "com.android.settings_ex.wifi.wifisheduler_action_type"

    const/16 v37, 0x1389

    move-object/from16 v0, v36

    move/from16 v1, v37

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 641
    .end local v3           #alarm_intent:Landroid/content/Intent;
    .end local v11           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_11
    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    const-string v37, "wag_ip_settings"

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    .line 642
    .local v31, wagIpSettings:Landroid/preference/Preference;
    if-eqz v31, :cond_12

    .line 643
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 645
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    const-string v37, "use_wag_ip"

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v28

    .line 646
    .local v28, useWagIp:Landroid/preference/Preference;
    if-eqz v28, :cond_13

    .line 647
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 649
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    const-string v37, "wagfqdn"

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    .line 650
    .local v27, useWagFqdn:Landroid/preference/Preference;
    if-eqz v27, :cond_14

    .line 651
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 653
    :cond_14
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget-object v37, v37, v38

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    .line 654
    .local v30, wagIp:Landroid/preference/Preference;
    if-eqz v30, :cond_15

    .line 655
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 657
    :cond_15
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget-object v37, v37, v38

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    .line 658
    .local v32, wagPort:Landroid/preference/Preference;
    if-eqz v32, :cond_16

    .line 659
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 663
    :cond_16
    return-void

    .line 369
    .end local v4           #attAutoConnection:Landroid/preference/CheckBoxPreference;
    .end local v5           #cmccConnectType:Landroid/preference/ListPreference;
    .end local v6           #cmccPriorityPref:Landroid/preference/PreferenceScreen;
    .end local v7           #connMonitoringPref:Landroid/preference/CheckBoxPreference;
    .end local v8           #connSettingsPref:Landroid/preference/PreferenceScreen;
    .end local v12           #frequencyPref:Landroid/preference/ListPreference;
    .end local v13           #hiddenApsPref:Landroid/preference/Preference;
    .end local v17           #mWlanEnabled:Landroid/preference/CheckBoxPreference;
    .end local v22           #preferredBandPref:Landroid/preference/ListPreference;
    .end local v24           #resetPref:Landroid/preference/Preference;
    .end local v25           #sleepPolicyPref:Landroid/preference/ListPreference;
    .end local v27           #useWagFqdn:Landroid/preference/Preference;
    .end local v28           #useWagIp:Landroid/preference/Preference;
    .end local v30           #wagIp:Landroid/preference/Preference;
    .end local v31           #wagIpSettings:Landroid/preference/Preference;
    .end local v32           #wagPort:Landroid/preference/Preference;
    :cond_17
    const/16 v36, 0x0

    goto/16 :goto_0

    .line 384
    :cond_18
    const/16 v36, 0x0

    goto/16 :goto_1

    .line 394
    :cond_19
    const/4 v9, 0x0

    .line 395
    .local v9, defaultValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    const v37, 0x7f0903d6

    invoke-virtual/range {v36 .. v37}, Landroid/preference/Preference;->setTitle(I)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v36, v0

    const v37, 0x7f0903d7

    invoke-virtual/range {v36 .. v37}, Landroid/preference/Preference;->setSummary(I)V

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    move-object/from16 v37, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v36

    const-string v38, "wifi_watchdog_poor_network_test_enabled"

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v36

    const/16 v38, 0x1

    move/from16 v0, v36

    move/from16 v1, v38

    if-ne v0, v1, :cond_1a

    const/16 v36, 0x1

    :goto_8
    move-object/from16 v0, v37

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 399
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateWifiInternetServiceCheck()V

    goto/16 :goto_2

    .line 397
    :cond_1a
    const/16 v36, 0x0

    goto :goto_8

    .line 491
    .end local v9           #defaultValue:I
    .restart local v4       #attAutoConnection:Landroid/preference/CheckBoxPreference;
    .restart local v5       #cmccConnectType:Landroid/preference/ListPreference;
    .restart local v12       #frequencyPref:Landroid/preference/ListPreference;
    .restart local v22       #preferredBandPref:Landroid/preference/ListPreference;
    .restart local v25       #sleepPolicyPref:Landroid/preference/ListPreference;
    :cond_1b
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 520
    .restart local v7       #connMonitoringPref:Landroid/preference/CheckBoxPreference;
    .restart local v8       #connSettingsPref:Landroid/preference/PreferenceScreen;
    .restart local v13       #hiddenApsPref:Landroid/preference/Preference;
    .restart local v24       #resetPref:Landroid/preference/Preference;
    :cond_1c
    const/16 v36, 0x0

    goto/16 :goto_4

    .line 524
    :cond_1d
    if-eqz v7, :cond_1e

    .line 525
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 528
    :cond_1e
    if-eqz v8, :cond_b

    .line 529
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_5

    .line 571
    .restart local v17       #mWlanEnabled:Landroid/preference/CheckBoxPreference;
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v19

    .line 573
    .restart local v19       #parentPreference:Landroid/preference/PreferenceGroup;
    const-string v36, "mwlan_enabled_category"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 574
    .restart local v23       #removablePref:Landroid/preference/Preference;
    if-eqz v23, :cond_20

    .line 575
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 578
    :cond_20
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 621
    .end local v19           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v23           #removablePref:Landroid/preference/Preference;
    .restart local v6       #cmccPriorityPref:Landroid/preference/PreferenceScreen;
    .restart local v11       #ed:Landroid/content/SharedPreferences$Editor;
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const-string v37, "wifitimer_start_time_checked"

    const/16 v38, 0x1

    invoke-interface/range {v36 .. v38}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    if-eqz v36, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v37, v0

    const-string v38, "wifitimer_start_time"

    const-string v39, "19:00"

    invoke-interface/range {v37 .. v39}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/settings_ex/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 623
    .local v35, wifiTimerStartTime:Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v36, v0

    const-string v37, "wifitimer_end_time_checked"

    const/16 v38, 0x1

    invoke-interface/range {v36 .. v38}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v36

    if-eqz v36, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    move-object/from16 v37, v0

    const-string v38, "wifitimer_end_time"

    const-string v39, "21:00"

    invoke-interface/range {v37 .. v39}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Lcom/android/settings_ex/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 625
    .local v34, wifiTimerEndTime:Ljava/lang/String;
    :goto_a
    const-string v36, ""

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_24

    const-string v36, ""

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_24

    .line 626
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    move-object/from16 v36, v0

    const v37, 0x7f09034a

    invoke-virtual/range {v36 .. v37}, Landroid/preference/TwoStatePreference;->setSummaryOn(I)V

    .line 629
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    invoke-virtual/range {v36 .. v37}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 621
    .end local v34           #wifiTimerEndTime:Ljava/lang/String;
    .end local v35           #wifiTimerStartTime:Ljava/lang/String;
    :cond_22
    const-string v35, ""

    goto :goto_9

    .line 623
    .restart local v35       #wifiTimerStartTime:Ljava/lang/String;
    :cond_23
    const-string v34, ""

    goto :goto_a

    .line 628
    .restart local v34       #wifiTimerEndTime:Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    move-object/from16 v36, v0

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, "~"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto :goto_b

    .line 632
    .end local v34           #wifiTimerEndTime:Ljava/lang/String;
    .end local v35           #wifiTimerStartTime:Ljava/lang/String;
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    invoke-virtual/range {v36 .. v37}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 635
    .end local v11           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_26
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 569
    .end local v6           #cmccPriorityPref:Landroid/preference/PreferenceScreen;
    :catch_0
    move-exception v36

    goto/16 :goto_6
.end method

.method private isSimCheck()Z
    .locals 2

    .prologue
    .line 1366
    sget-boolean v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1367
    const/4 v0, 0x0

    .line 1368
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readWifiOldSettings()V
    .locals 2

    .prologue
    .line 1140
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "readWifiOldSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    return-void
.end method

.method private refreshWifiInfo()V
    .locals 10

    .prologue
    const v9, 0x7f090562

    .line 1061
    iget-object v7, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1063
    .local v4, wifiInfo:Landroid/net/wifi/WifiInfo;
    const-string v7, "mac_address"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 1064
    .local v6, wifiMacAddressPref:Landroid/preference/Preference;
    if-nez v4, :cond_3

    const/4 v2, 0x0

    .line 1065
    .local v2, macAddress:Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .end local v2           #macAddress:Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1068
    const-string v7, "current_ip_address"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .line 1069
    .local v5, wifiIpAddressPref:Landroid/preference/Preference;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1070
    .local v1, ipAddress:Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIsConn:Z

    if-nez v7, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #ipAddress:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1073
    const-string v7, "wifi_authentication_information"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .line 1075
    .local v3, wifiAuthenticationInfoPref:Landroid/preference/Preference;
    iget-object v7, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v8, "AKA"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    const-string v7, ""

    const-string v8, "KTT"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1076
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getAuthenticationInformation()Ljava/lang/String;

    move-result-object v0

    .line 1077
    .local v0, information:Ljava/lang/String;
    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_2
    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1080
    if-eqz v0, :cond_6

    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1081
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1090
    .end local v0           #information:Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .line 1064
    .end local v3           #wifiAuthenticationInfoPref:Landroid/preference/Preference;
    .end local v5           #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_3
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1065
    .restart local v2       #macAddress:Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .end local v2           #macAddress:Ljava/lang/String;
    .restart local v0       #information:Ljava/lang/String;
    .restart local v3       #wifiAuthenticationInfoPref:Landroid/preference/Preference;
    .restart local v5       #wifiIpAddressPref:Landroid/preference/Preference;
    :cond_5
    move-object v7, v0

    .line 1077
    goto :goto_2

    .line 1083
    :cond_6
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 1086
    .end local v0           #information:Ljava/lang/String;
    :cond_7
    if-eqz v3, :cond_2

    .line 1087
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private showIwlanDialog(Landroid/content/Context;Lcom/android/settings_ex/wifi/IwlanNetwork;Z)V
    .locals 1
    .parameter "context"
    .parameter "iwlanNetwork"
    .parameter "edit"

    .prologue
    .line 1227
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings_ex/wifi/IwlanDialog;

    if-eqz v0, :cond_0

    .line 1228
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings_ex/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/IwlanDialog;->dismiss()V

    .line 1231
    :cond_0
    new-instance v0, Lcom/android/settings_ex/wifi/IwlanDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings_ex/wifi/IwlanDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/IwlanNetwork;Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings_ex/wifi/IwlanDialog;

    .line 1232
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings_ex/wifi/IwlanDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1233
    return-void
.end method

.method private showPriorityDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings_ex/wifi/PrioritySettingDialog;

    if-eqz v0, :cond_0

    .line 1200
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "showPriorityDialog mPriorityDialog null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings_ex/wifi/PrioritySettingDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/PrioritySettingDialog;->dismiss()V

    .line 1203
    :cond_0
    new-instance v0, Lcom/android/settings_ex/wifi/PrioritySettingDialog;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings_ex/wifi/PrioritySettingDialog;-><init>(Landroid/content/Context;Lcom/android/settings_ex/wifi/AccessPoint;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings_ex/wifi/PrioritySettingDialog;

    .line 1204
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings_ex/wifi/PrioritySettingDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1205
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .parameter "sleepPolicyPref"
    .parameter "value"

    .prologue
    .line 666
    if-eqz p2, :cond_2

    .line 667
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0032

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 668
    .local v3, values:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ex/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0a0031

    .line 670
    .local v2, summaryArrayResId:I
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 671
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 672
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 673
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 674
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 683
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_2
    return-void

    .line 668
    .restart local v3       #values:[Ljava/lang/String;
    :cond_0
    const v2, 0x7f0a0030

    goto :goto_0

    .line 671
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #summaryArrayResId:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 681
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 682
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updateUi()V
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 985
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 987
    .local v0, contentResolver:Landroid/content/ContentResolver;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->getSelectedApnKey(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mApnName:Ljava/lang/String;

    .line 989
    const-string v6, "AdvancedWifiSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "======updateUi=======getInt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "wifi_static_use_wagip"

    invoke-static {v0, v10, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v9, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUseWagIpCheckBox:Landroid/preference/CheckBoxPreference;

    const-string v6, "wifi_static_use_wagip"

    invoke-static {v0, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 991
    const-string v6, "wagfqdn"

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    .line 992
    .local v5, wifiWagFqdn:Landroid/preference/EditTextPreference;
    const-string v6, "wifi_static_wagfqdn"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 993
    .local v4, settingwagValue:Ljava/lang/String;
    const-string v6, "AdvancedWifiSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CW_SISO : AdvancedSettings : UpdateUi : WIFI_STATIC_WAGFQDN : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    invoke-virtual {v5, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 995
    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 996
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUseWagIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 997
    const-string v6, "AdvancedWifiSettings"

    const-string v9, "CW_SISO : AdvancedSettings : UpdateUi :wifiWagFqdn IP Enabled"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1005
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSettingNames:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_7

    .line 1006
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/EditTextPreference;

    .line 1007
    .local v2, preference:Landroid/preference/EditTextPreference;
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSettingNames:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1008
    .local v3, settingValue:Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1009
    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v6, v6, v1

    const-string v9, "wagip"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1012
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mUseWagIpCheckBox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1013
    const-string v6, "AdvancedWifiSettings"

    const-string v9, "CW_SISO : AdvancedSettings : UpdateUi :Wag IP Disabled"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1021
    :cond_0
    :goto_3
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v6, v6, v1

    const-string v9, "wagport"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1022
    if-nez v3, :cond_1

    .line 1023
    const-string v6, "AdvancedWifiSettings"

    const-string v9, "updateUi===null == settingValue"

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    const-string v6, "5060"

    invoke-virtual {v2, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 1025
    const-string v6, "5060"

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1028
    :cond_1
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    aget-object v6, v6, v1

    const-string v9, "wifi_http_proxy"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1030
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->ConnectedAPIsCTCAP()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mApnName:Ljava/lang/String;

    const-string v9, "ctwap"

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1031
    invoke-virtual {v2, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1005
    :cond_2
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #settingValue:Ljava/lang/String;
    .end local v4           #settingwagValue:Ljava/lang/String;
    .end local v5           #wifiWagFqdn:Landroid/preference/EditTextPreference;
    :cond_3
    move v6, v8

    .line 990
    goto/16 :goto_0

    .line 1000
    .restart local v4       #settingwagValue:Ljava/lang/String;
    .restart local v5       #wifiWagFqdn:Landroid/preference/EditTextPreference;
    :cond_4
    const-string v6, "AdvancedWifiSettings"

    const-string v9, "CW_SISO : AdvancedSettings : UpdateUi :wifiWagFqdn IP Disabled "

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-virtual {v5, v8}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1016
    .restart local v1       #i:I
    .restart local v2       #preference:Landroid/preference/EditTextPreference;
    .restart local v3       #settingValue:Ljava/lang/String;
    :cond_5
    const-string v6, "AdvancedWifiSettings"

    const-string v9, "CW_SISO : AdvancedSettings : UpdateUi :Wag IP Enabled "

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 1033
    :cond_6
    invoke-virtual {v2, v7}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_4

    .line 1037
    .end local v2           #preference:Landroid/preference/EditTextPreference;
    .end local v3           #settingValue:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private updateWifiInternetServiceCheck()V
    .locals 10

    .prologue
    const/4 v9, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1339
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    .line 1341
    .local v0, isAirplaneMode:Z
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mobile_data"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v1, v4

    .line 1343
    .local v1, isMobileDataEnabled:Z
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const-string v7, "phone"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 1344
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 1346
    .local v2, simState:I
    if-nez v0, :cond_6

    if-eqz v1, :cond_6

    .line 1347
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_1

    .line 1348
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->isSimCheck()Z

    move-result v6

    if-eqz v6, :cond_0

    if-ne v2, v9, :cond_5

    .line 1349
    :cond_0
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1359
    :cond_1
    :goto_2
    sget-boolean v6, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->DBG:Z

    if-eqz v6, :cond_2

    const-string v7, "AdvancedWifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Checkbox - Airplane Mode Off / Mobile Data Enabled / SIM State-Ready : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v0, :cond_7

    move v6, v4

    :goto_3
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " / "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " / "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-ne v2, v9, :cond_8

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_2
    return-void

    .end local v0           #isAirplaneMode:Z
    .end local v1           #isMobileDataEnabled:Z
    .end local v2           #simState:I
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_3
    move v0, v5

    .line 1339
    goto :goto_0

    .restart local v0       #isAirplaneMode:Z
    :cond_4
    move v1, v5

    .line 1341
    goto :goto_1

    .line 1351
    .restart local v1       #isMobileDataEnabled:Z
    .restart local v2       #simState:I
    .restart local v3       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 1355
    :cond_6
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_1

    .line 1356
    iget-object v6, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->poorNetworkDetection:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    :cond_7
    move v6, v5

    .line 1359
    goto :goto_3

    :cond_8
    move v4, v5

    goto :goto_4
.end method

.method private updatecmccConnectTypeSummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 6
    .parameter "cmccConnectType"
    .parameter "value"

    .prologue
    .line 686
    if-eqz p2, :cond_1

    .line 687
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 688
    .local v2, values:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 689
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 690
    aget-object v3, v2, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 691
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 692
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 701
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_1
    return-void

    .line 689
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #values:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 699
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :cond_1
    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 700
    const-string v3, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid cmcc connect type value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private writeWifiOldSettings()V
    .locals 2

    .prologue
    .line 1170
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "writeWifiOldSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 304
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 305
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    .line 306
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 312
    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const-string v3, "wifitimer_pref"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 314
    const-string v2, "device_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/admin/DevicePolicyManager;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 317
    sget-boolean v2, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    if-eqz v2, :cond_1

    .line 318
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 319
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 320
    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 321
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 323
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/16 v3, 0x8

    const/16 v4, 0xc

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 325
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 330
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 200
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 202
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiAdvancedSecSetupActivity;

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSecSetupWizardMode:Z

    .line 222
    const v0, 0x7f070099

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 224
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.HS20_DISABLED_COMPLETE_BY_CREDERROR_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 258
    new-instance v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$2;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 300
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "dialogId"

    .prologue
    const v3, 0x104000a

    const/high16 v2, 0x104

    .line 1094
    packed-switch p1, :pswitch_data_0

    .line 1135
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1096
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090f85

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090f87

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$4;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$3;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1111
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090f8c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$6;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$5;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings$5;-><init>(Lcom/android/settings_ex/wifi/AdvancedWifiSettings;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1128
    :pswitch_2
    new-instance v0, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiServiceCheckDialogListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/android/settings_ex/wifi/WifiInternetServiceCheckDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->dialog:Landroid/app/AlertDialog;

    .line 1129
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1130
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->dialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1094
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 707
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 708
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 709
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 353
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 354
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 355
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 356
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 821
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 823
    .local v5, key:Ljava/lang/String;
    const-string v10, "frequency_band"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 825
    :try_start_0
    iget-object v11, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v12, 0x1

    invoke-virtual {v11, v10, v12}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 833
    :cond_0
    const-string v10, "sleep_policy"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 835
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 836
    .local v6, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "wifi_sleep_policy"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 838
    invoke-direct {p0, p1, v6}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 969
    .end local v6           #stringValue:Ljava/lang/String;
    .end local p1
    .end local p2
    :cond_1
    :goto_0
    const/4 v10, 0x1

    :goto_1
    return v10

    .line 826
    .restart local p1
    .restart local p2
    :catch_0
    move-exception v2

    .line 827
    .local v2, e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0903ef

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 829
    const/4 v10, 0x0

    goto :goto_1

    .line 839
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .line 840
    .restart local v2       #e:Ljava/lang/NumberFormatException;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    const v11, 0x7f0902a2

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 842
    const/4 v10, 0x0

    goto :goto_1

    .line 844
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v10, "preferred_band"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object/from16 v6, p2

    .line 845
    check-cast v6, Ljava/lang/String;

    .line 846
    .restart local v6       #stringValue:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiManager;->setWifiDualbandAPConnection(I)Z

    goto :goto_0

    .line 848
    .end local v6           #stringValue:Ljava/lang/String;
    :cond_3
    const-string v10, "wifi_hotspot20_enable"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 849
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 850
    .local v4, enabled:Z
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KEY_HOTSPOT20_ENABLE: new value - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->changeHotspot20(Z)V

    goto :goto_0

    .line 852
    .end local v4           #enabled:Z
    .restart local p2
    :cond_4
    const-string v10, "wifi_timer"

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 853
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 854
    .restart local v4       #enabled:Z
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "onPreferenceChange WIFI_TIMER:    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    check-cast p1, Lcom/android/settings_ex/SettingsSwitchPreference;

    .end local p1
    iput-object p1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    .line 857
    if-eqz v4, :cond_6

    .line 859
    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 860
    const-string v10, "AdvancedWifiSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WifiTimer allowWifi:    "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->allowWifi:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->allowWifi:Z

    if-nez v10, :cond_7

    .line 863
    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 864
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 865
    .local v9, wifiToastIntent:Landroid/content/Intent;
    const-string v10, "info_type"

    const/4 v11, 0x2

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 866
    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 867
    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/settings_ex/wifi/AdvancedWifiSettings$SwitchHandler;

    if-eqz v10, :cond_5

    .line 868
    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/settings_ex/wifi/AdvancedWifiSettings$SwitchHandler;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 870
    :cond_5
    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 882
    .end local v9           #wifiToastIntent:Landroid/content/Intent;
    :cond_6
    :goto_2
    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 883
    .local v3, ed:Landroid/content/SharedPreferences$Editor;
    const-string v10, "wifitimer_enabled"

    invoke-interface {v3, v10, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 884
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 885
    new-instance v1, Landroid/content/Intent;

    const-string v10, "com.android.settings_ex.wifi.wifitimer_alarm"

    invoke-direct {v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 886
    .local v1, alarm_intent:Landroid/content/Intent;
    const-string v10, "com.android.settings_ex.wifi.wifisheduler_action_type"

    const/16 v11, 0x1389

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 888
    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 872
    .end local v1           #alarm_intent:Landroid/content/Intent;
    .end local v3           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_7
    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v11, "wifitimer_start_time_checked"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v12, "wifitimer_start_time"

    const-string v13, "19:00"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings_ex/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 874
    .local v8, wifiTimerStartTime:Ljava/lang/String;
    :goto_3
    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v11, "wifitimer_end_time_checked"

    const/4 v12, 0x1

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v12, "wifitimer_end_time"

    const-string v13, "21:00"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/settings_ex/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 876
    .local v7, wifiTimerEndTime:Ljava/lang/String;
    :goto_4
    const-string v10, ""

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 877
    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    const v11, 0x7f09034a

    invoke-virtual {v10, v11}, Landroid/preference/TwoStatePreference;->setSummaryOn(I)V

    goto :goto_2

    .line 872
    .end local v7           #wifiTimerEndTime:Ljava/lang/String;
    .end local v8           #wifiTimerStartTime:Ljava/lang/String;
    :cond_8
    const-string v8, ""

    goto :goto_3

    .line 874
    .restart local v8       #wifiTimerStartTime:Ljava/lang/String;
    :cond_9
    const-string v7, ""

    goto :goto_4

    .line 879
    .restart local v7       #wifiTimerEndTime:Ljava/lang/String;
    :cond_a
    iget-object v10, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings_ex/SettingsSwitchPreference;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "~"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/TwoStatePreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 17
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 713
    invoke-virtual/range {p2 .. p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v13

    .line 715
    .local v13, key:Ljava/lang/String;
    const-string v2, "notify_open_networks"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 800
    :cond_0
    :goto_1
    const/4 v2, 0x1

    :goto_2
    return v2

    .line 716
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 719
    .restart local p2
    :cond_2
    const-string v2, "wifi_poor_network_detection"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 720
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v12

    .line 721
    .local v12, isChecked:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_internet_service_check_warning"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_3

    .line 722
    if-eqz v12, :cond_3

    .line 723
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 724
    const/4 v2, 0x1

    goto :goto_2

    .line 727
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_watchdog_poor_network_test_enabled"

    if-eqz v12, :cond_4

    const/4 v2, 0x1

    :goto_3
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 731
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 732
    .local v15, msg:Landroid/os/Message;
    const/16 v2, 0x2d

    iput v2, v15, Landroid/os/Message;->what:I

    .line 733
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 734
    .local v9, args:Landroid/os/Bundle;
    const-string v2, "enable"

    invoke-virtual {v9, v2, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 735
    iput-object v9, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 736
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v15}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 737
    const-string v2, "AdvancedWifiSettings"

    const-string v3, "HOTSPOT20 config store error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 727
    .end local v9           #args:Landroid/os/Bundle;
    .end local v15           #msg:Landroid/os/Message;
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 740
    .end local v12           #isChecked:Z
    .restart local p2
    :cond_5
    const-string v2, "wifi_timer"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 741
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceActivity;

    const-class v3, Lcom/android/settings_ex/wifi/WifiTimer;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f090349

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_1

    .line 745
    :cond_6
    const-string v2, "att_auto_connect"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 746
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v12

    .line 747
    .restart local v12       #isChecked:Z
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 748
    .restart local v15       #msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v15, Landroid/os/Message;->what:I

    .line 750
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 751
    .restart local v9       #args:Landroid/os/Bundle;
    const-string v2, "enable"

    invoke-virtual {v9, v2, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 752
    iput-object v9, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v15}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    if-nez v2, :cond_0

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_auto_connecct"

    if-eqz v12, :cond_7

    const/4 v2, 0x1

    :goto_4
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_4

    .line 757
    .end local v9           #args:Landroid/os/Bundle;
    .end local v12           #isChecked:Z
    .end local v15           #msg:Landroid/os/Message;
    .restart local p2
    :cond_8
    const-string v2, "wifi_cmcc_priority"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 761
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mSelected:Lcom/android/settings_ex/wifi/AccessPoint;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->showPriorityDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto/16 :goto_1

    .line 762
    :cond_9
    const-string v2, "wifi_connection_priority_mode"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 763
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v12

    .line 765
    .restart local v12       #isChecked:Z
    if-eqz v12, :cond_a

    .line 766
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_1

    .line 768
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_connection_monitor_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 769
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/android/settings_ex/wifi/WifiConnectionMonitorService;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_1

    .line 771
    .end local v12           #isChecked:Z
    .restart local p2
    :cond_b
    const-string v2, "wifi_reset"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 772
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_1

    .line 773
    :cond_c
    move-object/from16 v0, p2

    instance-of v2, v0, Lcom/android/settings_ex/wifi/IwlanNetwork;

    if-eqz v2, :cond_d

    .line 774
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast p2, Lcom/android/settings_ex/wifi/IwlanNetwork;

    .end local p2
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v1, v3}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->showIwlanDialog(Landroid/content/Context;Lcom/android/settings_ex/wifi/IwlanNetwork;Z)V

    goto/16 :goto_1

    .line 775
    .restart local p2
    :cond_d
    const-string v2, "add_other_iwlan"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 776
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->showIwlanDialog(Landroid/content/Context;Lcom/android/settings_ex/wifi/IwlanNetwork;Z)V

    goto/16 :goto_1

    .line 777
    :cond_e
    const-string v2, "mwlan_permission_allowed_2"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 778
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v12

    .line 780
    .restart local v12       #isChecked:Z
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.lguplus.common.wificm.mwlan"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v14

    .line 781
    .local v14, mWlan:Landroid/content/Context;
    const-string v2, "mwlan"

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v16

    .line 782
    .local v16, pref_mWlanCheck:Landroid/content/SharedPreferences;
    invoke-interface/range {v16 .. v16}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    .line 783
    .local v10, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "permission_allowed_2"

    invoke-interface {v10, v2, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 784
    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 785
    new-instance v11, Landroid/content/Intent;

    const-string v2, "com.lguplus.common.wificm.mwlan.interface"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    .local v11, i:Landroid/content/Intent;
    const-string v2, "type"

    const-string v3, "notify"

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 787
    const-string v2, "action"

    const-string v3, "permissionChanged"

    invoke-virtual {v11, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 788
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 789
    const-string v2, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mWlan isChecked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v12, :cond_f

    const v2, 0x7f090f91

    :goto_5
    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 794
    .end local v10           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v11           #i:Landroid/content/Intent;
    .end local v14           #mWlan:Landroid/content/Context;
    .end local v16           #pref_mWlanCheck:Landroid/content/SharedPreferences;
    :catch_0
    move-exception v2

    goto/16 :goto_1

    .line 791
    .restart local v10       #edit:Landroid/content/SharedPreferences$Editor;
    .restart local v11       #i:Landroid/content/Intent;
    .restart local v14       #mWlan:Landroid/content/Context;
    .restart local v16       #pref_mWlanCheck:Landroid/content/SharedPreferences;
    :cond_f
    const v2, 0x7f090f92

    goto :goto_5

    .line 795
    .end local v10           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v11           #i:Landroid/content/Intent;
    .end local v12           #isChecked:Z
    .end local v14           #mWlan:Landroid/content/Context;
    .end local v16           #pref_mWlanCheck:Landroid/content/SharedPreferences;
    .restart local p2
    :cond_10
    const-string v2, "wifi_hotspot20_enable"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 796
    new-instance v2, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings_ex/wifi/Hs20PickerDialog;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 798
    :cond_11
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 334
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 345
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 346
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 347
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 349
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1209
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 1211
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1212
    new-instance v0, Lcom/android/settings_ex/wifi/IwlanEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/IwlanEnabler;-><init>(Lcom/android/settings_ex/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings_ex/wifi/IwlanEnabler;

    .line 1213
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings_ex/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/IwlanEnabler;->onStart()V

    .line 1215
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1219
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 1221
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings_ex/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/IwlanEnabler;->onStop()V

    .line 1224
    :cond_0
    return-void
.end method
