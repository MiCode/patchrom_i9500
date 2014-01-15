.class public Lcom/android/settings_ex/TetherSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "TetherSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final ATTENTION_URL:Ljava/lang/String; = "file:///android_asset/html/%y/tethering_attention.html"

.field private static final BLUETOOTH_TETHERING:I = 0x2

.field private static final CONFIG_SUBTEXT:I = 0x7f090472

.field private static final DIALOG_AP_SETTINGS:I = 0x1

.field private static final DIALOG_TETHER_ATTENTION:I = 0x4

.field private static final DIALOG_TETHER_HELP:I = 0x2

.field private static final DIALOG_TETHER_USCC:I = 0xa

.field private static final DIALOG_USB_TETHER_NO_SIM:I = 0x5

.field private static final ENABLE_BLUETOOTH_TETHERING:Ljava/lang/String; = "enable_bluetooth_tethering"

.field private static final ENABLE_SWITCH_WIFI_AP:Ljava/lang/String; = "enable_switch_wifi_ap"

.field private static final ENABLE_WIFI_AP:Ljava/lang/String; = "enable_wifi_ap"

.field private static final HELP_PATH:Ljava/lang/String; = "html/%y%z/tethering_help.html"

.field private static final HELP_URL:Ljava/lang/String; = "file:///android_asset/html/%y%z/tethering_%xhelp.html"

.field private static final INVALID:I = -0x1

.field private static final PROVISION_REQUEST:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TetherSettings"

.field private static final TETHERING_HELP:Ljava/lang/String; = "tethering_help"

.field private static final USB_BLUETOOTH_HELP_MODIFIER:Ljava/lang/String; = "usb_bluetooth_"

.field private static final USB_HELP_MODIFIER:Ljava/lang/String; = "usb_"

.field private static final USB_TETHERING:I = 0x1

.field private static final USB_TETHER_SETTINGS:Ljava/lang/String; = "usb_tether_settings"

.field private static final USB_WIFI_HELP_MODIFIER:Ljava/lang/String; = "usb_wifi_"

.field private static final WIFI_AP_SSID_AND_SECURITY:Ljava/lang/String; = "wifi_ap_ssid_and_security"

.field private static final WIFI_HELP_MODIFIER:Ljava/lang/String; = "wifi_"

.field private static final WIFI_TETHERING:I

.field private static final is3LMAllowed:Z


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/preference/CheckBoxPreference;

.field private mContext:Landroid/content/Context;

.field private mCreateNetwork:Landroid/preference/Preference;

.field private mDefaultSecurity:Ljava/lang/String;

.field private mDefaultSsidPwd:Ljava/lang/String;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

.field private mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

.field private mEnableWifiAp:Landroid/preference/CheckBoxPreference;

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mProvisionApp:[Ljava/lang/String;

.field private mSecurityType:[Ljava/lang/String;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mTetherChoice:I

.field private mTetherHelp:Landroid/preference/PreferenceScreen;

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/preference/CheckBoxPreference;

.field private mUsbTetherEnabling:Z

.field private mView:Landroid/webkit/WebView;

.field private mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

.field private mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field private wifiAvailable:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 153
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 157
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_UseDefaultSecurityAs"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DefaultSsidNPwd"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 178
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 184
    iput-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherEnabling:Z

    .line 185
    iput-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->wifiAvailable:Z

    .line 186
    iput-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mIsTablet:Z

    .line 187
    iput-boolean v2, p0, Lcom/android/settings_ex/TetherSettings;->mIsLightTheme:Z

    .line 314
    new-instance v0, Lcom/android/settings_ex/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/TetherSettings$1;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 501
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/TetherSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings_ex/TetherSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/TetherSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget v0, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings_ex/TetherSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput p1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings_ex/TetherSettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/TetherSettings;)Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->startTethering()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$902(Lcom/android/settings_ex/TetherSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method private static findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ifaces"
    .parameter "regexes"

    .prologue
    .line 1069
    move-object v0, p0

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v5           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v4, v0, v3

    .line 1070
    .local v4, iface:Ljava/lang/String;
    move-object v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v6, :cond_1

    aget-object v7, v1, v2

    .line 1071
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1076
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    .end local v7           #regex:Ljava/lang/String;
    :goto_2
    return-object v4

    .line 1070
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v4       #iface:Ljava/lang/String;
    .restart local v6       #len$:I
    .restart local v7       #regex:Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1069
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 1076
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #iface:Ljava/lang/String;
    .end local v6           #len$:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private initWifiTethering()V
    .locals 3

    .prologue
    .line 287
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 288
    .local v0, activity:Landroid/app/Activity;
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 289
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 290
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    .line 292
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Wifi_UseRandom4digitCombinationAsSSID"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->generateDefaultSSID()V

    .line 312
    :cond_0
    return-void
.end method

.method private setUsbTethering(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 977
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 979
    .local v0, cm:Landroid/net/ConnectivityManager;
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 980
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    move-result v1

    if-eqz v1, :cond_0

    .line 981
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v2, 0x7f0905ed

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 985
    :goto_0
    return-void

    .line 984
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x0

    .line 886
    iput p1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 887
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 888
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 889
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "TetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "choice = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 891
    const-string v1, "ATT"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 892
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 893
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 895
    :cond_0
    invoke-virtual {p0, v0, v4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 903
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 900
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->startTethering()V

    goto :goto_0
.end method

.method private startTethering()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 943
    iget v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    packed-switch v2, :pswitch_data_0

    .line 973
    :cond_0
    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 974
    return-void

    .line 945
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v2, :cond_1

    .line 946
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    .line 947
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v2, :cond_0

    .line 948
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0

    .line 953
    :pswitch_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 954
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_2

    .line 955
    iput-boolean v4, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothEnableForTether:Z

    .line 956
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 957
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0900d4

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 958
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 960
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 961
    .local v1, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v1, :cond_3

    invoke-virtual {v1, v4}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 962
    :cond_3
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v3, 0x7f0905ef

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(I)V

    .line 963
    invoke-virtual {p0}, Lcom/android/settings_ex/TetherSettings;->checkBluetoothVisibility()V

    goto :goto_0

    .line 967
    .end local v0           #adapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v1           #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    :pswitch_2
    invoke-direct {p0, v4}, Lcom/android/settings_ex/TetherSettings;->setUsbTethering(Z)V

    goto :goto_0

    .line 943
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 21
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 815
    const/4 v6, 0x0

    .line 816
    .local v6, bluetoothErrored:Z
    move-object/from16 v4, p3

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v10           #i$:I
    .end local v12           #len$:I
    .local v11, i$:I
    :goto_0
    if-ge v11, v12, :cond_2

    aget-object v15, v4, v11

    .line 817
    .local v15, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .local v5, arr$:[Ljava/lang/String;
    array-length v13, v5

    .local v13, len$:I
    const/4 v10, 0x0

    .end local v11           #i$:I
    .restart local v10       #i$:I
    :goto_1
    if-ge v10, v13, :cond_1

    aget-object v14, v5, v10

    .line 818
    .local v14, regex:Ljava/lang/String;
    invoke-virtual {v15, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    const/4 v6, 0x1

    .line 817
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 816
    .end local v14           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto :goto_0

    .line 822
    .end local v5           #arr$:[Ljava/lang/String;
    .end local v13           #len$:I
    .end local v15           #s:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    .line 823
    .local v3, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v9

    .line 824
    .local v9, btState:I
    const/16 v17, 0xd

    move/from16 v0, v17

    if-ne v9, v0, :cond_3

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 826
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090295

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(I)V

    .line 865
    :goto_2
    return-void

    .line 827
    :cond_3
    const/16 v17, 0xb

    move/from16 v0, v17

    if-ne v9, v0, :cond_4

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0900d4

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 831
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothPan;

    .line 832
    .local v7, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    const/16 v17, 0xc

    move/from16 v0, v17

    if-ne v9, v0, :cond_8

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 836
    invoke-virtual {v7}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v8

    .line 837
    .local v8, bluetoothTethered:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-le v8, v0, :cond_5

    .line 838
    const v17, 0x7f0905f1

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 841
    .local v16, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 842
    .end local v16           #summary:Ljava/lang/String;
    :cond_5
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_6

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0905f0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    .line 845
    :cond_6
    if-eqz v6, :cond_7

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0905f3

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    .line 848
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0905ef

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_2

    .line 851
    .end local v8           #bluetoothTethered:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 852
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0905f2

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_2
.end method

.method private updateState()V
    .locals 5

    .prologue
    .line 650
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 653
    .local v1, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 654
    .local v0, available:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v3

    .line 655
    .local v3, tethered:[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 656
    .local v2, errored:[Ljava/lang/String;
    invoke-direct {p0, v0, v3, v2}, Lcom/android/settings_ex/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 663
    const-string v5, "enterprise_policy"

    invoke-virtual {p0, v5}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 664
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isUsbTetheringEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 665
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 666
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 675
    :goto_0
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 676
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v3, :cond_0

    .line 677
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 678
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 680
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v3, :cond_1

    .line 681
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 724
    :cond_1
    :goto_1
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothEnabled(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isBluetoothTetheringEnabled()Z

    move-result v3

    if-nez v3, :cond_a

    .line 726
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 727
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 728
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v4, 0x7f0905f2

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 734
    :goto_2
    return-void

    .line 667
    :cond_3
    iget-boolean v5, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTetherEnabling:Z

    if-ne v5, v3, :cond_4

    .line 668
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 669
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 672
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :cond_5
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_7

    move v1, v3

    .line 688
    .local v1, isAirplaneMode:Z
    :goto_3
    const/4 v2, 0x1

    .line 689
    .local v2, wifiHotspotAvailable:Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v5, "persist.sys.wifi_lock"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "wifi_lock.enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 691
    const/4 v2, 0x0

    .line 694
    :cond_6
    if-nez v1, :cond_8

    if-eqz v2, :cond_8

    .line 695
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v5, :cond_1

    .line 696
    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .end local v1           #isAirplaneMode:Z
    .end local v2           #wifiHotspotAvailable:Z
    :cond_7
    move v1, v4

    .line 685
    goto :goto_3

    .line 699
    .restart local v1       #isAirplaneMode:Z
    .restart local v2       #wifiHotspotAvailable:Z
    :cond_8
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v3, :cond_9

    .line 700
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 702
    :cond_9
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v3, :cond_1

    .line 703
    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 731
    .end local v1           #isAirplaneMode:Z
    .end local v2           #wifiHotspotAvailable:Z
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/TetherSettings;->updateBluetoothState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 17
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 739
    const-string v15, "connectivity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 741
    .local v3, cm:Landroid/net/ConnectivityManager;
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbConnected:Z

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    if-nez v15, :cond_1

    const/4 v11, 0x1

    .line 742
    .local v11, usbAvailable:Z
    :goto_0
    const/4 v12, 0x0

    .line 743
    .local v12, usbError:I
    move-object/from16 v1, p1

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    move v5, v4

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v9, v1, v5

    .line 744
    .local v9, s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .local v2, arr$:[Ljava/lang/String;
    array-length v7, v2

    .local v7, len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_2
    if-ge v4, v7, :cond_2

    aget-object v8, v2, v4

    .line 745
    .local v8, regex:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 746
    if-nez v12, :cond_0

    .line 747
    invoke-virtual {v3, v9}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v12

    .line 744
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 741
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v7           #len$:I
    .end local v8           #regex:Ljava/lang/String;
    .end local v9           #s:Ljava/lang/String;
    .end local v11           #usbAvailable:Z
    .end local v12           #usbError:I
    :cond_1
    const/4 v11, 0x0

    goto :goto_0

    .line 743
    .restart local v2       #arr$:[Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    .restart local v9       #s:Ljava/lang/String;
    .restart local v11       #usbAvailable:Z
    .restart local v12       #usbError:I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_1

    .line 752
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #len$:I
    .end local v9           #s:Ljava/lang/String;
    :cond_3
    const/4 v14, 0x0

    .line 753
    .local v14, usbTethered:Z
    move-object/from16 v1, p2

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    move v5, v4

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v6, :cond_6

    aget-object v9, v1, v5

    .line 754
    .restart local v9       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_4
    if-ge v4, v7, :cond_5

    aget-object v8, v2, v4

    .line 755
    .restart local v8       #regex:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    const/4 v14, 0x1

    .line 754
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 753
    .end local v8           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_3

    .line 758
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #len$:I
    .end local v9           #s:Ljava/lang/String;
    :cond_6
    const/4 v13, 0x0

    .line 759
    .local v13, usbErrored:Z
    move-object/from16 v1, p3

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v6, v1

    .restart local v6       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    move v5, v4

    .end local v1           #arr$:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .restart local v5       #i$:I
    :goto_5
    if-ge v5, v6, :cond_9

    aget-object v9, v1, v5

    .line 760
    .restart local v9       #s:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .restart local v2       #arr$:[Ljava/lang/String;
    array-length v7, v2

    .restart local v7       #len$:I
    const/4 v4, 0x0

    .end local v5           #i$:I
    .restart local v4       #i$:I
    :goto_6
    if-ge v4, v7, :cond_8

    aget-object v8, v2, v4

    .line 761
    .restart local v8       #regex:Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_7

    const/4 v13, 0x1

    .line 760
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 759
    .end local v8           #regex:Ljava/lang/String;
    :cond_8
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    .end local v4           #i$:I
    .restart local v5       #i$:I
    goto :goto_5

    .line 767
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v7           #len$:I
    .end local v9           #s:Ljava/lang/String;
    :cond_9
    const-string v15, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 768
    .local v10, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v14, :cond_c

    .line 769
    const-string v15, "TMB"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 770
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v15

    const/16 v16, 0x5

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 771
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0905ea

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    .line 772
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 773
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 811
    :cond_a
    :goto_7
    return-void

    .line 776
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0905ea

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    .line 777
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 778
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_7

    .line 780
    :cond_c
    if-eqz v11, :cond_e

    .line 781
    if-nez v12, :cond_d

    .line 782
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0905e9

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    .line 786
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 787
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_7

    .line 784
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0905ed

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_8

    .line 788
    :cond_e
    if-eqz v13, :cond_f

    .line 789
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0905ed

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    .line 790
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 791
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_7

    .line 792
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    if-eqz v15, :cond_10

    .line 793
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0905eb

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    .line 794
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 795
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_7

    .line 797
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v16, 0x7f0905ec

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setSummary(I)V

    .line 798
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 799
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_7
.end method


# virtual methods
.method public checkBluetoothVisibility()V
    .locals 4

    .prologue
    .line 494
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 495
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getScanMode()I

    move-result v1

    const/16 v2, 0x17

    if-eq v1, v2, :cond_0

    .line 496
    const-string v1, "TetherSettings"

    const-string v2, "visibility is disabled"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0905f6

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 499
    :cond_0
    return-void
.end method

.method public generateDefaultSSID()V
    .locals 20

    .prologue
    .line 1109
    const/4 v10, 0x0

    .line 1110
    .local v10, number:Ljava/lang/String;
    const-string v16, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/TelephonyManager;

    .line 1112
    .local v14, telephonyManager:Landroid/telephony/TelephonyManager;
    if-eqz v14, :cond_0

    .line 1113
    invoke-virtual {v14}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v10

    .line 1116
    :cond_0
    if-nez v10, :cond_1

    .line 1117
    const-string v10, ""

    .line 1120
    :cond_1
    const-string v15, ""

    .line 1121
    .local v15, tempSSID:Ljava/lang/String;
    const-string v4, ""

    .line 1122
    .local v4, defaultSsid:Ljava/lang/String;
    const-string v3, ""

    .line 1124
    .local v3, defaultNumber:Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1125
    const v16, 0x7f090473

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1133
    :goto_0
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x4

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_5

    .line 1134
    invoke-virtual {v10}, Ljava/lang/String;->toCharArray()[C

    move-result-object v16

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v17

    add-int/lit8 v17, v17, -0x4

    const/16 v18, 0x4

    invoke-static/range {v16 .. v18}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v6

    .line 1135
    .local v6, last4digitNum:Ljava/lang/String;
    invoke-virtual {v15, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1136
    move-object v3, v6

    .line 1144
    .end local v6           #last4digitNum:Ljava/lang/String;
    :goto_1
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1145
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iput-object v4, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA2/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1150
    :cond_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1152
    .local v11, randomUUID:Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1153
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1170
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mDefaultSecurity:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "WPA2/PSK"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    .line 1171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x4

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    .line 1180
    .end local v11           #randomUUID:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 1181
    return-void

    .line 1127
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 1128
    .local v9, mSplitSsid:[Ljava/lang/String;
    const/16 v16, 0x0

    aget-object v15, v9, v16

    goto/16 :goto_0

    .line 1138
    .end local v9           #mSplitSsid:[Ljava/lang/String;
    :cond_5
    new-instance v12, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v12, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 1139
    .local v12, rnd:Ljava/util/Random;
    const/16 v16, 0x2327

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v16

    move/from16 v0, v16

    add-int/lit16 v13, v0, 0x3e8

    .line 1140
    .local v13, sequence:I
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1141
    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_1

    .line 1155
    .end local v12           #rnd:Ljava/util/Random;
    .end local v13           #sequence:I
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v11       #randomUUID:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mDefaultSsidPwd:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1156
    .local v8, mSplitPwd:[Ljava/lang/String;
    array-length v0, v8

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_7

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x0

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x9

    const/16 v19, 0xd

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 1159
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1160
    .local v7, mPwd:Ljava/lang/StringBuilder;
    const/4 v5, 0x1

    .local v5, i:I
    :goto_4
    array-length v0, v8

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v5, v0, :cond_3

    .line 1161
    const-string v16, "LAST4DIGIT"

    aget-object v17, v8, v5

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_8

    .line 1162
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1160
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1164
    :cond_8
    aget-object v16, v8, v5

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1173
    .end local v5           #i:I
    .end local v7           #mPwd:Ljava/lang/StringBuilder;
    .end local v8           #mSplitPwd:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    .line 1176
    .end local v11           #randomUUID:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    const-string v17, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3
.end method

.method public getHelpResource()I
    .locals 1

    .prologue
    .line 1185
    const v0, 0x7f090a1c

    return v0
.end method

.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 879
    const-string v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 882
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 906
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 907
    const-string v1, "WifiAP_TetherSettings"

    const-string v2, "TetherSettings onActivityResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const-string v1, "enterprise_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 911
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-nez p1, :cond_1

    .line 912
    if-ne p2, v4, :cond_2

    .line 913
    iget v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    if-ne v1, v4, :cond_0

    .line 914
    iput v3, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    .line 919
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->startTethering()V

    .line 940
    :cond_1
    :goto_0
    return-void

    .line 924
    :cond_2
    iget v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    packed-switch v1, :pswitch_data_0

    .line 932
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v1, :cond_3

    .line 933
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 934
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v1, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 937
    :cond_3
    :goto_1
    iput v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChoice:I

    goto :goto_0

    .line 926
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 929
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 924
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1080
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1081
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1082
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_0

    .line 1088
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    .line 1089
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v7}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1091
    const-wide/16 v2, 0x258

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1095
    :goto_0
    sput-boolean v6, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 1096
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v3, v6}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 1100
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v2}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v1

    .line 1101
    .local v1, index:I
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090472

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    aput-object v5, v4, v7

    iget-object v5, p0, Lcom/android/settings_ex/TetherSettings;->mSecurityType:[Ljava/lang/String;

    aget-object v5, v5, v1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1106
    .end local v1           #index:I
    :cond_0
    return-void

    .line 1092
    :catch_0
    move-exception v0

    .line 1093
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1098
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 198
    const v7, 0x7f070086

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 200
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 201
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mContext:Landroid/content/Context;

    .line 202
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/TetherSettings;->mIsTablet:Z

    .line 203
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings_ex/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/TetherSettings;->mIsLightTheme:Z

    .line 205
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 206
    .local v1, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v11, 0x5

    invoke-virtual {v1, v7, v10, v11}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 218
    :cond_0
    const-string v7, "enable_wifi_ap"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    .line 220
    const-string v7, "enable_switch_wifi_ap"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/SwitchPreference;

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    .line 222
    const-string v7, "wifi_ap_ssid_and_security"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    .line 223
    .local v6, wifiApSettings:Landroid/preference/Preference;
    const-string v7, "usb_tether_settings"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    .line 224
    const-string v7, "VZW"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 225
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f0905e8

    invoke-virtual {v7, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 227
    :cond_1
    const-string v7, "enable_bluetooth_tethering"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    .line 230
    const-string v7, "tethering_help"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    .line 233
    const-string v7, "connectivity"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 236
    .local v3, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 237
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    .line 238
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 240
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_4

    move v5, v8

    .line 241
    .local v5, usbAvailable:Z
    :goto_0
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_5

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/android/settings_ex/TetherSettings;->wifiAvailable:Z

    .line 246
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v7, v7

    if-eqz v7, :cond_6

    move v2, v8

    .line 248
    .local v2, bluetoothAvailable:Z
    :goto_2
    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 249
    :cond_2
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 252
    :cond_3
    iget-boolean v7, p0, Lcom/android/settings_ex/TetherSettings;->wifiAvailable:Z

    if-eqz v7, :cond_7

    invoke-static {}, Lcom/android/settings_ex/Utils;->isMonkeyRunning()Z

    move-result v7

    if-nez v7, :cond_7

    .line 254
    new-instance v7, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-direct {v7, v0, v10}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    .line 255
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v7, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings_ex/SettingsPreferenceFragment;)V

    .line 256
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 257
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 262
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->initWifiTethering()V

    .line 269
    :goto_3
    if-nez v2, :cond_8

    .line 270
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 280
    :goto_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mProvisionApp:[Ljava/lang/String;

    .line 283
    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    .line 284
    return-void

    .end local v2           #bluetoothAvailable:Z
    .end local v5           #usbAvailable:Z
    :cond_4
    move v5, v9

    .line 240
    goto :goto_0

    .restart local v5       #usbAvailable:Z
    :cond_5
    move v7, v9

    .line 241
    goto :goto_1

    :cond_6
    move v2, v9

    .line 246
    goto :goto_2

    .line 264
    .restart local v2       #bluetoothAvailable:Z
    :cond_7
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 265
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 266
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings_ex/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 272
    :cond_8
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothPan;

    .line 273
    .local v4, pan:Landroid/bluetooth/BluetoothPan;
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 274
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4

    .line 276
    :cond_9
    iget-object v7, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 22
    .parameter "id"

    .prologue
    .line 327
    const/16 v18, 0x2

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_9

    .line 328
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    .line 331
    .local v12, locale:Ljava/util/Locale;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/ContextWrapper;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    .line 332
    .local v6, am:Landroid/content/res/AssetManager;
    const-string v18, "html/%y%z/tethering_help.html"

    const-string v19, "%y"

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 333
    .local v14, path:Ljava/lang/String;
    const-string v18, "%z"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x5f

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 334
    const/16 v16, 0x1

    .line 335
    .local v16, useCountry:Z
    const/4 v10, 0x0

    .line 337
    .local v10, is:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v6, v14}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 341
    if-eqz v10, :cond_0

    .line 343
    :try_start_1
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 347
    :cond_0
    :goto_0
    const-string v18, "file:///android_asset/html/%y%z/tethering_%xhelp.html"

    const-string v19, "%y"

    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 348
    .local v15, url:Ljava/lang/String;
    const-string v19, "%z"

    if-eqz v16, :cond_4

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v20, 0x5f

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v12}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :goto_1
    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->wifiAvailable:Z

    move/from16 v18, v0

    if-nez v18, :cond_5

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 350
    const-string v18, "%x"

    const-string v19, "usb_"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 368
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    .line 371
    .local v13, parent:Landroid/view/ViewParent;
    if-eqz v13, :cond_2

    instance-of v0, v13, Landroid/view/ViewGroup;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 372
    check-cast v13, Landroid/view/ViewGroup;

    .end local v13           #parent:Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 375
    :cond_2
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0905f8

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mView:Landroid/webkit/WebView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 381
    .local v3, HelpDialog:Landroid/app/AlertDialog;
    new-instance v18, Lcom/android/settings_ex/TetherSettings$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/TetherSettings$2;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 489
    .end local v3           #HelpDialog:Landroid/app/AlertDialog;
    .end local v6           #am:Landroid/content/res/AssetManager;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v12           #locale:Ljava/util/Locale;
    .end local v14           #path:Ljava/lang/String;
    .end local v15           #url:Ljava/lang/String;
    .end local v16           #useCountry:Z
    :goto_3
    return-object v3

    .line 338
    .restart local v6       #am:Landroid/content/res/AssetManager;
    .restart local v10       #is:Ljava/io/InputStream;
    .restart local v12       #locale:Ljava/util/Locale;
    .restart local v14       #path:Ljava/lang/String;
    .restart local v16       #useCountry:Z
    :catch_0
    move-exception v9

    .line 339
    .local v9, ignored:Ljava/lang/Exception;
    const/16 v16, 0x0

    .line 341
    if-eqz v10, :cond_0

    .line 343
    :try_start_2
    throw v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 344
    :catch_1
    move-exception v18

    goto/16 :goto_0

    .line 341
    .end local v9           #ignored:Ljava/lang/Exception;
    :catchall_0
    move-exception v18

    if-eqz v10, :cond_3

    .line 343
    :try_start_3
    throw v10
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 344
    :cond_3
    :goto_4
    throw v18

    .line 348
    .restart local v15       #url:Ljava/lang/String;
    :cond_4
    const-string v18, ""

    goto/16 :goto_1

    .line 351
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->wifiAvailable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 352
    const-string v18, "%x"

    const-string v19, "wifi_"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 354
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    if-nez v18, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->wifiAvailable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 355
    const-string v18, "%x"

    const-string v19, "usb_wifi_"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 358
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->wifiAvailable:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 359
    const-string v18, "%x"

    const-string v19, "usb_bluetooth_"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 363
    :cond_8
    const-string v18, "%x"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 395
    .end local v6           #am:Landroid/content/res/AssetManager;
    .end local v10           #is:Ljava/io/InputStream;
    .end local v12           #locale:Ljava/util/Locale;
    .end local v14           #path:Ljava/lang/String;
    .end local v15           #url:Ljava/lang/String;
    .end local v16           #useCountry:Z
    :cond_9
    const/16 v18, 0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 396
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 397
    .local v5, activity:Landroid/app/Activity;
    new-instance v18, Lcom/android/settings_ex/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/TetherSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v5, v1, v2}, Lcom/android/settings_ex/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    .line 398
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ex/TetherSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiApDialog;

    goto/16 :goto_3

    .line 399
    .end local v5           #activity:Landroid/app/Activity;
    :cond_a
    const/16 v18, 0xa

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    .line 400
    const-string v18, "USC"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 401
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    .local v4, USBTetheringWarningDialog:Landroid/app/AlertDialog$Builder;
    new-instance v17, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 405
    .local v17, warnningmsg:Landroid/widget/TextView;
    const v18, 0x7f09104e

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(I)V

    .line 406
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mIsTablet:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/TetherSettings;->mIsLightTheme:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    .line 407
    const/16 v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextColor(I)V

    .line 408
    :cond_b
    const/high16 v18, 0x4190

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setTextSize(F)V

    .line 409
    const/16 v18, 0x1e

    const/16 v19, 0x1e

    const/16 v20, 0x1e

    const/16 v21, 0x1e

    invoke-virtual/range {v17 .. v21}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 410
    const/high16 v18, 0x4000

    const/high16 v19, 0x3f80

    invoke-virtual/range {v17 .. v19}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 412
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 413
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 416
    const v18, 0x7f09104f

    new-instance v19, Lcom/android/settings_ex/TetherSettings$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/TetherSettings$3;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 426
    const/high16 v18, 0x104

    new-instance v19, Lcom/android/settings_ex/TetherSettings$4;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/TetherSettings$4;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_3

    .line 434
    .end local v4           #USBTetheringWarningDialog:Landroid/app/AlertDialog$Builder;
    .end local v17           #warnningmsg:Landroid/widget/TextView;
    :cond_c
    const/16 v18, 0x4

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_e

    .line 435
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    .line 436
    .restart local v12       #locale:Ljava/util/Locale;
    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "ja"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    const-string v11, "ja"

    .line 437
    .local v11, language:Ljava/lang/String;
    :goto_5
    const-string v18, "file:///android_asset/html/%y/tethering_attention.html"

    const-string v19, "%y"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 444
    .restart local v15       #url:Ljava/lang/String;
    new-instance v7, Landroid/webkit/WebView;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 445
    .local v7, attention_view:Landroid/webkit/WebView;
    invoke-virtual {v7, v15}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 447
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x1040014

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f090699

    new-instance v20, Lcom/android/settings_ex/TetherSettings$6;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/TetherSettings$6;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f09069a

    new-instance v20, Lcom/android/settings_ex/TetherSettings$5;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/TetherSettings$5;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .local v8, dialog:Landroid/app/AlertDialog;
    move-object v3, v8

    .line 477
    goto/16 :goto_3

    .line 436
    .end local v7           #attention_view:Landroid/webkit/WebView;
    .end local v8           #dialog:Landroid/app/AlertDialog;
    .end local v11           #language:Ljava/lang/String;
    .end local v15           #url:Ljava/lang/String;
    :cond_d
    const-string v11, "en"

    goto :goto_5

    .line 479
    .end local v12           #locale:Ljava/util/Locale;
    :cond_e
    const-string v18, "TMB"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    const/16 v18, 0x5

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_f

    .line 480
    new-instance v18, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v19, 0x7f09037c

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f090699

    new-instance v20, Lcom/android/settings_ex/TetherSettings$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/TetherSettings$7;-><init>(Lcom/android/settings_ex/TetherSettings;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0905db

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_3

    .line 489
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 344
    .restart local v6       #am:Landroid/content/res/AssetManager;
    .restart local v10       #is:Ljava/io/InputStream;
    .restart local v12       #locale:Ljava/util/Locale;
    .restart local v14       #path:Ljava/lang/String;
    .restart local v16       #useCountry:Z
    :catch_2
    move-exception v18

    goto/16 :goto_0

    :catch_3
    move-exception v19

    goto/16 :goto_4
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 868
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 870
    .local v0, enable:Z
    if-eqz v0, :cond_0

    .line 871
    invoke-direct {p0, v2}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    .line 875
    :goto_0
    return v2

    .line 873
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/WifiApEnabler;->setSoftapEnabled(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 15
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 989
    const-string v12, "connectivity"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    .line 992
    .local v5, cm:Landroid/net/ConnectivityManager;
    const-string v12, "phone"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 995
    .local v10, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v12, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_4

    .line 996
    iget-object v12, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v8

    .line 998
    .local v8, newState:Z
    const-string v12, "TMB"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    const/4 v13, 0x5

    if-eq v12, v13, :cond_0

    .line 1001
    iget-object v12, p0, Lcom/android/settings_ex/TetherSettings;->mUsbTether:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1002
    const/4 v12, 0x5

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 1003
    const/4 v12, 0x1

    .line 1065
    .end local v8           #newState:Z
    :goto_0
    return v12

    .line 1006
    .restart local v8       #newState:Z
    :cond_0
    if-eqz v8, :cond_3

    .line 1007
    const-string v12, "USC"

    invoke-static {}, Lcom/android/settings_ex/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 1008
    const/16 v12, 0xa

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 1065
    .end local v8           #newState:Z
    :cond_1
    :goto_1
    invoke-super/range {p0 .. p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v12

    goto :goto_0

    .line 1011
    .restart local v8       #newState:Z
    :cond_2
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_1

    .line 1014
    :cond_3
    invoke-direct {p0, v8}, Lcom/android/settings_ex/TetherSettings;->setUsbTethering(Z)V

    goto :goto_1

    .line 1016
    .end local v8           #newState:Z
    :cond_4
    iget-object v12, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_a

    .line 1017
    iget-object v12, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v12}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    .line 1018
    .local v4, bluetoothTetherState:Z
    const-string v12, "device_policy"

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/admin/DevicePolicyManager;

    .line 1020
    .local v6, dpm:Landroid/app/admin/DevicePolicyManager;
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    .line 1022
    .local v1, allowInternetSharing:Z
    if-nez v1, :cond_5

    .line 1023
    iget-object v12, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    .line 1024
    .local v3, bluetoothPan:Landroid/bluetooth/BluetoothPan;
    const-string v12, "TetherSettings"

    const-string v13, "Internet Sharing is restricted by MDM."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    iget-object v12, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 1026
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x104017a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v12

    invoke-virtual {v12}, Landroid/widget/Toast;->show()V

    .line 1027
    const/4 v12, 0x0

    goto :goto_0

    .line 1030
    .end local v3           #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    :cond_5
    if-eqz v4, :cond_6

    .line 1031
    const/4 v12, 0x2

    invoke-direct {p0, v12}, Lcom/android/settings_ex/TetherSettings;->startProvisioningIfNecessary(I)V

    goto :goto_1

    .line 1033
    :cond_6
    const/4 v7, 0x0

    .line 1035
    .local v7, errored:Z
    invoke-virtual {v5}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v11

    .line 1036
    .local v11, tethered:[Ljava/lang/String;
    iget-object v12, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v11, v12}, Lcom/android/settings_ex/TetherSettings;->findIface([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1037
    .local v2, bluetoothIface:Ljava/lang/String;
    if-eqz v2, :cond_7

    invoke-virtual {v5, v2}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_7

    .line 1039
    const/4 v7, 0x1

    .line 1045
    :cond_7
    iget-object v12, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothPan;

    .line 1046
    .restart local v3       #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    if-eqz v3, :cond_8

    const/4 v12, 0x0

    invoke-virtual {v3, v12}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 1047
    :cond_8
    if-eqz v7, :cond_9

    .line 1048
    iget-object v12, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f0905f3

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 1050
    :cond_9
    iget-object v12, p0, Lcom/android/settings_ex/TetherSettings;->mBluetoothTether:Landroid/preference/CheckBoxPreference;

    const v13, 0x7f0905f2

    invoke-virtual {v12, v13}, Landroid/preference/Preference;->setSummary(I)V

    goto/16 :goto_1

    .line 1054
    .end local v1           #allowInternetSharing:Z
    .end local v2           #bluetoothIface:Ljava/lang/String;
    .end local v3           #bluetoothPan:Landroid/bluetooth/BluetoothPan;
    .end local v4           #bluetoothTetherState:Z
    .end local v6           #dpm:Landroid/app/admin/DevicePolicyManager;
    .end local v7           #errored:Z
    .end local v11           #tethered:[Ljava/lang/String;
    :cond_a
    iget-object v12, p0, Lcom/android/settings_ex/TetherSettings;->mTetherHelp:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_b

    .line 1056
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 1057
    .local v9, pickIntent:Landroid/content/Intent;
    const-string v12, "com.android.settings_ex"

    const-string v13, "com.android.settings_ex.TetherHelp"

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1058
    invoke-virtual {p0, v9}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 1059
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 1061
    .end local v9           #pickIntent:Landroid/content/Intent;
    :cond_b
    iget-object v12, p0, Lcom/android/settings_ex/TetherSettings;->mCreateNetwork:Landroid/preference/Preference;

    move-object/from16 v0, p2

    if-ne v0, v12, :cond_1

    .line 1062
    const/4 v12, 0x1

    invoke-virtual {p0, v12}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto/16 :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 629
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 630
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    .line 631
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 557
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStart()V

    .line 559
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 561
    .local v0, activity:Landroid/app/Activity;
    const-string v4, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings_ex/TetherSettings;->mMassStorageActive:Z

    .line 562
    new-instance v4, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings_ex/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings_ex/TetherSettings;Lcom/android/settings_ex/TetherSettings$1;)V

    iput-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 563
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 564
    .local v2, filter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v3

    .line 566
    .local v3, intent:Landroid/content/Intent;
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 567
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 568
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 570
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 571
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 572
    const-string v4, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 573
    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 574
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 576
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #filter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 577
    .restart local v2       #filter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    const-string v4, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v4, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 581
    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v0, v3}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 583
    :cond_0
    const-string v4, "enterprise_policy"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 584
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v4

    if-nez v4, :cond_2

    .line 585
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v4, :cond_1

    .line 586
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 589
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v4, :cond_2

    .line 591
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mEnableSwitchWifiAp:Landroid/preference/SwitchPreference;

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 614
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v4, :cond_3

    .line 615
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 616
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/WifiApEnabler;->resume()V

    .line 618
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v4, :cond_4

    .line 620
    iget-object v4, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 623
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/TetherSettings;->updateState()V

    .line 624
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 636
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 637
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 638
    iput-object v2, p0, Lcom/android/settings_ex/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 639
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mEnableWifiAp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 641
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApEnabler:Lcom/android/settings_ex/wifi/WifiApEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApEnabler;->pause()V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_1

    .line 645
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    .line 647
    :cond_1
    return-void
.end method
