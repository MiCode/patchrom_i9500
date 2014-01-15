.class public Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiApSettings.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x2000

.field private static final DHCP_LEASE_FILE:Ljava/lang/String; = "/data/misc/dhcp/dnsmasq.leases"

.field private static final DIALOG_CONFIGURE:I = 0x1

.field private static final DIALOG_DEVICEINFO:I = 0x4

.field private static final DIALOG_DISCONNECT:I = 0x3

.field private static final DIALOG_MPCS_INFO:I = 0x8

.field private static final DIALOG_NOSIM:I = 0x5

.field private static final DIALOG_OPEN_SECURITY_WARNING:I = 0x7

.field private static final DIALOG_ROAMING:I = 0x6

.field private static final DIALOG_SET_CHECK_FLASE:I = 0x63

.field private static final DIALOG_TIMEOUT:I = 0x2

.field private static final MENU_ID_ALLOW_LIST:I = 0x1

.field private static final MENU_ID_CONFIGURE:I = 0x3

.field private static final MENU_ID_HELP:I = 0x5

.field private static final MENU_ID_LAN_SETTINGS:I = 0x4

.field private static final MENU_ID_TIMEOUT:I = 0x2

.field private static final NONE_RESULT:I = 0x64

.field private static final SHARED_DONTDISPLAYMPCSWARNING:Ljava/lang/String; = "DONT_DISPLAY_MPCS_WARNING"

.field private static final SHARED_PREF_NAME:Ljava/lang/String; = "SAMSUNG_HOTSPOT"

.field private static final SHARED_TIMEOUT:Ljava/lang/String; = "CONNECTION_TIMEOUT"

.field private static final TAG:Ljava/lang/String; = "WifiApSettings"

.field private static final TEXT_COLOR:Ljava/lang/String; = "#2898c4"

.field public static final WIFIAP_POWER_MODE_ALARM:Ljava/lang/String; = "com.android.settings_ex.wifi.wifiap_power_mode_alarm"

.field public static final WIFIAP_POWER_MODE_ALARM_EXPIRE:I = 0x1

.field public static final WIFIAP_POWER_MODE_ALARM_OPTION:Ljava/lang/String; = "wifiap_power_mode_alarm_option"

.field public static final WIFIAP_POWER_MODE_ALARM_START:I = 0x0

.field public static final WIFIAP_POWER_MODE_ALARM_STOP:I = 0x2

.field public static final WIFIAP_POWER_MODE_ALARM_UNKNOWN:I = 0x3

.field public static final WIFIAP_POWER_MODE_VALUE_CHANGED:I = 0x4

.field private static mWifiApSettings:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/settings_ex/SettingsPreferenceFragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final MHS_REQUEST:I

.field private bDisableMifi:Z

.field private isRoaming:Z

.field private isShowPassword:I

.field private key_compare:I

.field mAllowedMenuItem:Landroid/view/MenuItem;

.field public mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field mConfigureMenuItem:Landroid/view/MenuItem;

.field private mConnectedDevices:Landroid/preference/PreferenceCategory;

.field private mContext:Landroid/content/Context;

.field private mContinueOpen:Z

.field private mCurrentSelected:Landroid/preference/Preference;

.field private mDeviceInfo:Landroid/preference/PreferenceScreen;

.field private mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

.field private mDisabledHelp:Lcom/android/settings_ex/wifi/mobileap/WifiApHelpScreenPreference;

.field private mDismissDialog:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mHowTo:Landroid/preference/Preference;

.field private mHowToCategory:Landroid/preference/PreferenceCategory;

.field private mIsTablet:Z

.field private mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScreenType:Z

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsidPreference:Landroid/preference/Preference;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempConfig:Landroid/net/wifi/WifiConfiguration;

.field private mView:Landroid/view/View;

.field private mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private misLightTheme:Z

.field phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 134
    iput v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->MHS_REQUEST:I

    .line 136
    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 137
    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 138
    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 139
    iput v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->key_compare:I

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    .line 167
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->bDisableMifi:Z

    .line 183
    iput v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->isShowPassword:I

    .line 185
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->isRoaming:Z

    .line 186
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    .line 187
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    .line 362
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$2;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 743
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$10;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 821
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$14;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 192
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    .line 193
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$1;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)Lcom/android/settings_ex/wifi/WifiApDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->updateStatus()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->getTimeoutValueFromIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;Ljava/lang/Boolean;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->setTimeout(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method private compareWifiConfiguration(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;I)Z
    .locals 3
    .parameter "oldConfig"
    .parameter "newConfig"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 995
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 996
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->channel:I

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->channel:I

    if-ne v1, v2, :cond_0

    .line 997
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-boolean v2, p2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-ne v1, v2, :cond_0

    .line 998
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    iget v2, p2, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    if-ne v1, v2, :cond_0

    .line 999
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->key_compare:I

    if-ne v1, p3, :cond_0

    .line 1000
    packed-switch p3, :pswitch_data_0

    .line 1016
    :cond_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_0
    return v0

    .line 1005
    :pswitch_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iget-object v2, p2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getChameleonMaxUser()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1020
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1021
    .local v1, cr:Landroid/content/ContentResolver;
    const/4 v0, 0x0

    .line 1023
    .local v0, chameleonMaxUser:I
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1024
    .local v3, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 1026
    :try_start_0
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v4

    if-ne v4, v5, :cond_1

    .line 1027
    const-string v4, "chameleon_gsmmaxuser"

    const/4 v5, 0x1

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1041
    :cond_0
    :goto_0
    return v0

    .line 1028
    :cond_1
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->IsDomesticRoaming()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1029
    const-string v4, "chameleon_domroammaxuser"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1030
    :cond_2
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->IsInternationalRoaming()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1031
    const-string v4, "chameleon_introammaxuser"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 1033
    :cond_3
    const-string v4, "chameleon_maxuser"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    goto :goto_0

    .line 1035
    :catch_0
    move-exception v2

    .line 1036
    .local v2, e:Landroid/os/RemoteException;
    const/16 v0, 0xa

    .line 1039
    goto :goto_0

    .line 1037
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 1038
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 784
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 785
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 786
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 788
    .local v0, mRvfMode:I
    return v0
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1
    .parameter "value"

    .prologue
    .line 848
    sparse-switch p1, :sswitch_data_0

    .line 862
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 850
    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 852
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 854
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 856
    :sswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 858
    :sswitch_4
    const/4 v0, 0x4

    goto :goto_0

    .line 860
    :sswitch_5
    const/4 v0, 0x5

    goto :goto_0

    .line 848
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1
    .parameter "index"

    .prologue
    const/16 v0, 0x4b0

    .line 866
    packed-switch p1, :pswitch_data_0

    .line 880
    :goto_0
    :pswitch_0
    return v0

    .line 868
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 870
    :pswitch_2
    const/16 v0, 0x12c

    goto :goto_0

    .line 872
    :pswitch_3
    const/16 v0, 0x258

    goto :goto_0

    .line 876
    :pswitch_4
    const/16 v0, 0x708

    goto :goto_0

    .line 878
    :pswitch_5
    const/16 v0, 0xe10

    goto :goto_0

    .line 866
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromPreference()I
    .locals 3

    .prologue
    .line 901
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 902
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "SAMSUNG_HOTSPOT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 904
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v1, "CONNECTION_TIMEOUT"

    const-string v2, "1200"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 909
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 910
    .local v0, action:Ljava/lang/String;
    const-string v1, "WifiApSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleEvent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const-string v1, "android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 912
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 927
    :cond_0
    :goto_0
    return-void

    .line 913
    :cond_1
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 914
    const-string v1, "wifi_state"

    const/16 v2, 0xe

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_2

    .line 916
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 917
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 918
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-nez v1, :cond_0

    .line 919
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 922
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mScreenType:Z

    if-eqz v1, :cond_0

    .line 923
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private saveTimeoutPreference(I)V
    .locals 5
    .parameter "value"

    .prologue
    .line 888
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v2, :cond_0

    .line 889
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "SAMSUNG_HOTSPOT"

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 890
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 892
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "CONNECTION_TIMEOUT"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 893
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 895
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.settings_ex.wifi.wifiap_power_mode_alarm"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 896
    .local v0, alarm_intent:Landroid/content/Intent;
    const-string v2, "wifiap_power_mode_alarm_option"

    const/4 v3, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 897
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 898
    return-void
.end method

.method private setHelpPreference(Ljava/lang/Boolean;)V
    .locals 7
    .parameter "enabled"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 951
    const-string v0, "WifiApSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHelpPreference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 954
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 955
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 956
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 959
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 960
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 961
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 962
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v6}, Landroid/preference/Preference;->setOrder(I)V

    .line 963
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f090372

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 964
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 965
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 966
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 967
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    .line 969
    iput-boolean v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mScreenType:Z

    .line 992
    :goto_0
    return-void

    .line 971
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 972
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 973
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v0, :cond_2

    .line 974
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 975
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setOrder(I)V

    .line 977
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 978
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 979
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    const v1, 0x7f090367

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 980
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 989
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings_ex/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 990
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mScreenType:Z

    goto :goto_0
.end method

.method private setTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 884
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->saveTimeoutPreference(I)V

    .line 885
    return-void
.end method

.method private showNoHotspotModeWarningDialog()V
    .locals 3

    .prologue
    .line 792
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 793
    .local v0, noHotspotModeWarning:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0903b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 794
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 795
    const v1, 0x7f0903bf

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 796
    const v1, 0x7f090699

    new-instance v2, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$11;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 801
    const v1, 0x7f09069a

    new-instance v2, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$12;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 809
    new-instance v1, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$13;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$13;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 817
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 818
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 819
    return-void
.end method

.method private updateConnectedDevices()V
    .locals 23

    .prologue
    .line 297
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v10, connectedDeviceList:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApStaList()Ljava/lang/String;

    move-result-object v17

    .line 303
    .local v17, staList:Ljava/lang/String;
    const/4 v15, 0x0

    .line 304
    .local v15, num:I
    if-eqz v17, :cond_0

    .line 305
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v15, v2, 0x12

    .line 306
    const-string v2, "WifiApSettings"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "staList.length() = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ",  num = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 310
    if-eqz v17, :cond_8

    if-lez v15, :cond_8

    .line 311
    const/4 v7, 0x0

    .line 312
    .local v7, buf:Ljava/io/BufferedReader;
    const-string v2, " "

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 313
    .local v18, tok:[Ljava/lang/String;
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    .line 316
    .local v19, tokLength:I
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v21, "/data/misc/dhcp/dnsmasq.leases"

    move-object/from16 v0, v21

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v21, 0x2000

    move/from16 v0, v21

    invoke-direct {v8, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 317
    .end local v7           #buf:Ljava/io/BufferedReader;
    .local v8, buf:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, bufReadLine:Ljava/lang/String;
    if-eqz v9, :cond_5

    .line 318
    const-string v2, " "

    invoke-virtual {v9, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 319
    .local v11, dhcpLeaseInfo:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v15, :cond_1

    .line 320
    array-length v2, v11

    const/16 v21, 0x4

    move/from16 v0, v21

    if-lt v2, v0, :cond_4

    const/4 v2, 0x0

    aget-object v2, v11, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    aget-object v2, v11, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x2

    aget-object v2, v11, v2

    if-eqz v2, :cond_4

    const/4 v2, 0x3

    aget-object v2, v11, v2

    if-eqz v2, :cond_4

    .line 322
    move/from16 v0, v19

    if-ge v13, v0, :cond_4

    aget-object v2, v18, v13

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    aget-object v2, v11, v2

    aget-object v21, v18, v13

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 324
    const/4 v2, 0x3

    aget-object v2, v11, v2

    const-string v21, "*"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 325
    const v2, 0x7f090370

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, deviceName:Ljava/lang/String;
    :goto_2
    aget-object v2, v18, v13

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 330
    .local v4, mac:Ljava/lang/String;
    const/4 v2, 0x2

    aget-object v5, v11, v2

    .line 331
    .local v5, ip:Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v6, v11, v2

    .line 333
    .local v6, connectTime:Ljava/lang/String;
    new-instance v1, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct/range {v1 .. v6}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .local v1, device:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 340
    .end local v1           #device:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;
    .end local v3           #deviceName:Ljava/lang/String;
    .end local v4           #mac:Ljava/lang/String;
    .end local v5           #ip:Ljava/lang/String;
    .end local v6           #connectTime:Ljava/lang/String;
    .end local v9           #bufReadLine:Ljava/lang/String;
    .end local v11           #dhcpLeaseInfo:[Ljava/lang/String;
    .end local v13           #i:I
    :catch_0
    move-exception v12

    move-object v7, v8

    .line 341
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    .local v12, e:Ljava/io/IOException;
    :goto_3
    :try_start_2
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 344
    if-eqz v7, :cond_2

    .line 345
    :try_start_3
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 350
    .end local v12           #e:Ljava/io/IOException;
    :cond_2
    :goto_4
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    .line 351
    .local v20, wifiApConnectedDevices:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_5

    .line 327
    .end local v7           #buf:Ljava/io/BufferedReader;
    .end local v14           #i$:Ljava/util/Iterator;
    .end local v20           #wifiApConnectedDevices:Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;
    .restart local v8       #buf:Ljava/io/BufferedReader;
    .restart local v9       #bufReadLine:Ljava/lang/String;
    .restart local v11       #dhcpLeaseInfo:[Ljava/lang/String;
    .restart local v13       #i:I
    :cond_3
    const/4 v2, 0x3

    :try_start_4
    aget-object v3, v11, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .restart local v3       #deviceName:Ljava/lang/String;
    goto :goto_2

    .line 319
    .end local v3           #deviceName:Ljava/lang/String;
    :cond_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 344
    .end local v11           #dhcpLeaseInfo:[Ljava/lang/String;
    .end local v13           #i:I
    :cond_5
    if-eqz v8, :cond_6

    .line 345
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_6
    move-object v7, v8

    .line 348
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 346
    .end local v7           #buf:Ljava/io/BufferedReader;
    .restart local v8       #buf:Ljava/io/BufferedReader;
    :catch_1
    move-exception v12

    .line 347
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v7, v8

    .line 349
    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 346
    .end local v9           #bufReadLine:Ljava/lang/String;
    :catch_2
    move-exception v12

    .line 347
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 343
    .end local v12           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 344
    :goto_6
    if-eqz v7, :cond_7

    .line 345
    :try_start_6
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 348
    :cond_7
    :goto_7
    throw v2

    .line 346
    :catch_3
    move-exception v12

    .line 347
    .restart local v12       #e:Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 354
    .end local v7           #buf:Ljava/io/BufferedReader;
    .end local v12           #e:Ljava/io/IOException;
    .end local v18           #tok:[Ljava/lang/String;
    .end local v19           #tokLength:I
    :cond_8
    new-instance v16, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 355
    .local v16, pf:Landroid/preference/Preference;
    const v2, 0x7f090386

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 356
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 360
    .end local v16           #pf:Landroid/preference/Preference;
    :cond_9
    return-void

    .line 343
    .restart local v8       #buf:Ljava/io/BufferedReader;
    .restart local v18       #tok:[Ljava/lang/String;
    .restart local v19       #tokLength:I
    :catchall_1
    move-exception v2

    move-object v7, v8

    .end local v8           #buf:Ljava/io/BufferedReader;
    .restart local v7       #buf:Ljava/io/BufferedReader;
    goto :goto_6

    .line 340
    :catch_4
    move-exception v12

    goto :goto_3
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 8
    .parameter "showIcon"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x500

    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x1

    .line 499
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 501
    .local v0, mWidth:I
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    .line 502
    if-eqz p1, :cond_3

    .line 503
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f0200e6

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 504
    if-ge v0, v6, :cond_2

    .line 505
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 514
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    .line 515
    if-eqz p1, :cond_5

    .line 516
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v2, 0x7f020300

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 517
    if-ge v0, v6, :cond_4

    .line 518
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 527
    :cond_1
    :goto_1
    return-void

    .line 507
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 510
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 511
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 520
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 523
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 524
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateStatus()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 381
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_2

    .line 382
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    if-eqz v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 409
    :cond_0
    const v1, 0x7f09038c

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "#2898c4"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    aput-object v3, v2, v6

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 416
    .local v0, text:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 421
    .end local v0           #text:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v1, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->updateSsid(Ljava/lang/String;)V

    .line 423
    :cond_2
    return-void

    .line 412
    :cond_3
    const v1, 0x7f09038b

    new-array v2, v6, [Ljava/lang/Object;

    const-string v3, "#2898c4"

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/Html;->escapeHtml(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #text:Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v4, 0x10

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 213
    const v2, 0x7f07009b

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 215
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 226
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    .line 227
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    .line 229
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 230
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 232
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    .line 233
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->misLightTheme:Z

    .line 235
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v2, :cond_0

    .line 239
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v2, :cond_2

    .line 240
    const-string v2, "enable_switch_wifi_ap"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 241
    new-instance v2, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-direct {v2, v0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    .line 242
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings_ex/SettingsPreferenceFragment;)V

    .line 262
    :goto_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDeviceInfo:Landroid/preference/PreferenceScreen;

    .line 263
    new-instance v2, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v2, p0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;-><init>(Lcom/android/settings_ex/SettingsPreferenceFragment;Landroid/net/wifi/WifiConfiguration;)V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    .line 264
    const-string v2, "wifi_ap_connected_devices"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    .line 265
    const-string v2, "wifi_ap_howto_category"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mHowToCategory:Landroid/preference/PreferenceCategory;

    .line 266
    const-string v2, "wifi_ap_howto"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    .line 267
    new-instance v2, Lcom/android/settings_ex/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-direct {v2, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApHelpScreenPreference;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings_ex/wifi/mobileap/WifiApHelpScreenPreference;

    .line 268
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings_ex/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 269
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDisabledHelp:Lcom/android/settings_ex/wifi/mobileap/WifiApHelpScreenPreference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 270
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    const v3, 0x7f040102

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 271
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mHowTo:Landroid/preference/Preference;

    invoke-virtual {v2, v6}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 273
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->updateStatus()V

    .line 275
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 276
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 277
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 289
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->setHelpPreference(Ljava/lang/Boolean;)V

    .line 290
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->getRvfMode()I

    move-result v2

    if-lez v2, :cond_1

    .line 291
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->showNoHotspotModeWarningDialog()V

    .line 293
    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 294
    return-void

    .line 244
    :cond_2
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 245
    .local v1, padding:I
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v6, v6, v1, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 246
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 248
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v7, v7, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 253
    new-instance v2, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSwitch:Landroid/widget/Switch;

    invoke-direct {v2, v0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    .line 254
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v2, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setInformation(Lcom/android/settings_ex/SettingsPreferenceFragment;)V

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v2, 0x1

    .line 832
    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    if-nez p1, :cond_0

    .line 834
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 835
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-nez v0, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 837
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0

    .line 839
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 842
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 492
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 493
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    .line 494
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 495
    return-void

    .line 493
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 206
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 207
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    .line 208
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    .line 209
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 20
    .parameter "dialogId"

    .prologue
    .line 612
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    .line 613
    .local v8, ctx:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->misLightTheme:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 614
    :cond_0
    new-instance v8, Landroid/view/ContextThemeWrapper;

    .end local v8           #ctx:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const v17, 0x103012b

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v8, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 616
    .restart local v8       #ctx:Landroid/content/Context;
    :cond_1
    const-string v16, "layout_inflater"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 620
    .local v11, inflater:Landroid/view/LayoutInflater;
    const/16 v16, 0x1

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 624
    new-instance v16, Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v19, v0

    invoke-direct/range {v16 .. v19}, Lcom/android/settings_ex/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    .line 625
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mTempConfig:Landroid/net/wifi/WifiConfiguration;

    .line 627
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 632
    .local v7, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v16, "wifi_ap_show_passwd"

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v7, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->isShowPassword:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->isShowPassword:I

    move/from16 v16, v0

    const/16 v18, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/16 v16, 0x1

    :goto_1
    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->setCheckShowPassword(Z)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConfigureDialogDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    move-object/from16 v16, v0

    .line 740
    .end local v7           #cr:Landroid/content/ContentResolver;
    :goto_2
    return-object v16

    .line 633
    .restart local v7       #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v10

    .line 634
    .local v10, e:Ljava/lang/NullPointerException;
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->isShowPassword:I

    goto :goto_0

    .line 636
    .end local v10           #e:Ljava/lang/NullPointerException;
    :cond_2
    const/16 v16, 0x0

    goto :goto_1

    .line 641
    .end local v7           #cr:Landroid/content/ContentResolver;
    :cond_3
    const/16 v16, 0x2

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 642
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->getTimeoutValueFromPreference()I

    move-result v16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->getTimeoutIndexFromValue(I)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    .line 643
    const v16, 0x7f040168

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 644
    .local v9, customView:Landroid/view/View;
    const v16, 0x7f0b0439

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ListView;

    .line 645
    .local v12, lv:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f0a002a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v15

    .line 647
    .local v15, timeoutItems:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 649
    .local v3, adapter:Landroid/widget/ListAdapter;
    new-instance v3, Landroid/widget/ArrayAdapter;

    .end local v3           #adapter:Landroid/widget/ListAdapter;
    const v16, 0x7f04013e

    move/from16 v0, v16

    invoke-direct {v3, v8, v0, v15}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 653
    .restart local v3       #adapter:Landroid/widget/ListAdapter;
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    .line 654
    invoke-virtual {v12, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 655
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v12, v0, v1}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    .line 656
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSelectedTimeoutValue:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 657
    new-instance v16, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$3;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 664
    new-instance v14, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 665
    .local v14, timeoutDialog:Landroid/app/AlertDialog$Builder;
    const v16, 0x7f09036a

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x7f090699

    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$5;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x7f090143

    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$4;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 677
    invoke-virtual {v14}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    goto/16 :goto_2

    .line 679
    .end local v3           #adapter:Landroid/widget/ListAdapter;
    .end local v9           #customView:Landroid/view/View;
    .end local v12           #lv:Landroid/widget/ListView;
    .end local v14           #timeoutDialog:Landroid/app/AlertDialog$Builder;
    .end local v15           #timeoutItems:[Ljava/lang/CharSequence;
    :cond_4
    const/16 v16, 0x7

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 680
    const-string v16, "WifiApSettings"

    const-string v17, "create dialog  DIALOG_OPEN_SECURITY_WARNING"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 682
    .local v2, OpenSecurityWarningDialog:Landroid/app/AlertDialog$Builder;
    const v16, 0x7f0903b9

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x1010355

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 684
    const v16, 0x7f040167

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 685
    .restart local v9       #customView:Landroid/view/View;
    invoke-virtual {v2, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 686
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 687
    const v16, 0x7f0b0436

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    const/high16 v17, -0x100

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setTextColor(I)V

    .line 689
    :cond_5
    const v16, 0x7f0b0437

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 690
    .local v5, bChangeSecurity:Landroid/widget/Button;
    const v16, 0x7f0b0438

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    .line 691
    .local v6, bContinue:Landroid/widget/Button;
    new-instance v16, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$6;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$6;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 699
    new-instance v16, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$7;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$7;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 708
    const v16, 0x7f09069a

    new-instance v17, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$8;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$8;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 717
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    goto/16 :goto_2

    .line 719
    .end local v2           #OpenSecurityWarningDialog:Landroid/app/AlertDialog$Builder;
    .end local v5           #bChangeSecurity:Landroid/widget/Button;
    .end local v6           #bContinue:Landroid/widget/Button;
    .end local v9           #customView:Landroid/view/View;
    :cond_6
    const/16 v16, 0x8

    move/from16 v0, p1

    move/from16 v1, v16

    if-ne v0, v1, :cond_7

    .line 720
    const v16, 0x7f040166

    const/16 v17, 0x0

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    const v17, 0x7f0b0435

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 722
    .local v13, not_show_again:Landroid/widget/CheckBox;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 723
    .local v4, b:Landroid/app/AlertDialog$Builder;
    const v16, 0x7f0900fb

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 725
    const v16, 0x7f090699

    new-instance v17, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$9;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v13}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings$9;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;Landroid/widget/CheckBox;)V

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 737
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v16

    goto/16 :goto_2

    .line 740
    .end local v4           #b:Landroid/app/AlertDialog$Builder;
    .end local v13           #not_show_again:Landroid/widget/CheckBox;
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 461
    const v3, 0x7f090365

    invoke-interface {p1, v2, v5, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 462
    .local v0, menuTimeOut:Landroid/view/MenuItem;
    const v3, 0x7f02030b

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 465
    const v3, 0x7f090366

    invoke-interface {p1, v2, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    .line 466
    const/4 v3, 0x3

    const v4, 0x7f090364

    invoke-interface {p1, v2, v3, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    .line 467
    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-eqz v3, :cond_1

    .line 468
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    const v4, 0x7f0200e6

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 469
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 470
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    const v4, 0x7f020300

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 471
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 483
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mIsTablet:Z

    if-nez v3, :cond_0

    .line 484
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->updateOptionsMenuIcon(Z)V

    .line 487
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 488
    return-void

    .line 473
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mAllowedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 474
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConfigureMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 484
    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    if-eqz v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 455
    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 456
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/16 v6, 0x64

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 536
    sget-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 537
    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings.get() is null. Make WeakReference again for WifiApSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    .line 540
    :cond_0
    sget-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 541
    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings is not acivated. Is this function called after onPause?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 599
    :goto_0
    return v0

    .line 543
    :cond_1
    sget-object v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSettings:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 544
    const-string v0, "WifiApSettings"

    const-string v1, "WifiApSettings.get() is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    .line 545
    goto :goto_0

    .line 548
    :cond_2
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 599
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 550
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 551
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 552
    iput-boolean v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDismissDialog:Z

    .line 553
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mContinueOpen:Z

    .line 554
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 555
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mOldWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings_ex/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->key_compare:I

    :cond_4
    move v0, v7

    .line 557
    goto :goto_0

    .line 559
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    move v0, v7

    .line 561
    goto :goto_0

    .line 563
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_5

    .line 564
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090366

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :goto_1
    move v0, v7

    .line 570
    goto :goto_0

    .line 568
    :cond_5
    const-class v0, Lcom/android/settings_ex/wifi/mobileap/WifiApAllowedList;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1

    .line 573
    :pswitch_3
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_6

    .line 574
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings_ex/wifi/mobileap/WifiApLanSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09039e

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_6
    move v0, v7

    .line 578
    goto/16 :goto_0

    .line 581
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_7

    .line 592
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings_ex/wifi/mobileap/WifiApHelpScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090367

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    :cond_7
    move v0, v7

    .line 597
    goto/16 :goto_0

    .line 548
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 442
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 443
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->pause()V

    .line 445
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 446
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 447
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 448
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 605
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mSsidPreference:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApDeviceInfoPreference;->onClickItem(Landroid/net/wifi/WifiConfiguration;)V

    .line 607
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 427
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 428
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mIsForegroundWifiSettings:Z

    .line 429
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiApSwitchEnabler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->resume()V

    .line 431
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 432
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->updateConnectedDevices()V

    .line 433
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 435
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApDialog;->dismissSpinnerPopup()V

    .line 438
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "outState"

    .prologue
    .line 531
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 532
    return-void
.end method

.method public removeDevice(Landroid/preference/Preference;)V
    .locals 3
    .parameter "pref"

    .prologue
    .line 930
    move-object v2, p1

    check-cast v2, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApConnectedDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    .line 931
    .local v0, mac:Ljava/lang/String;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 932
    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x4

    iput v2, v1, Landroid/os/Message;->what:I

    .line 933
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 934
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 935
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mConnectedDevices:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 936
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    .prologue
    .line 945
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 946
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSettings;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 948
    return-void

    .line 946
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public saveLast2gChannel(I)V
    .locals 2
    .parameter "channel"

    .prologue
    .line 939
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 940
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_ap_last_2g_channel"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 941
    return-void
.end method
