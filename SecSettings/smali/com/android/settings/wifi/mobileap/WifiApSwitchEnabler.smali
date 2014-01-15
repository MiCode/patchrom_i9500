.class public Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiApSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DIALOG_ATTENTION:I = 0x6

.field private static final DIALOG_FIRST_TIME_CONFIGURE:I = 0x9

.field private static final DIALOG_HOTSPOT_WARNING:I = 0x8

.field private static final DIALOG_ID_NOLTE:I = 0xb

.field private static final DIALOG_ID_NOSIM:I = 0x1

.field private static final DIALOG_PROGRESS_ENABLE_HOTSPOT:I = 0x2

.field private static final DIALOG_ROAMING:I = 0x5

.field private static final DIALOG_WARN_BATTERY:I = 0x7

.field private static final DIALOG_WARN_CLIENT_DISCONNECT:I = 0x4

.field private static final DIALOG_WARN_WIFI_DISABLE:I = 0x3

.field private static final DIALOG_WARN_WIFI_P2P_DISABLE:I = 0xa

.field private static final SWITCH_DISABLED:I = 0x2

.field private static final SWITCH_ENABLED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiApSwitchEnabler"

.field private static final WIFI_TETHERING:I

.field private static final is3LMAllowed:Z


# instance fields
.field private final MHS_REQUEST:I

.field private bDisableMifi:Z

.field private isSetChecked:Z

.field private isShowPassword:I

.field private mActivity:Ljava/lang/Object;

.field private mChangeState:Z

.field mCm:Landroid/net/ConnectivityManager;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mContext:Landroid/content/Context;

.field private mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

.field private mHandler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLightTheme:Z

.field private mIsRoaming:Z

.field private mIsTablet:Z

.field private mNoSimDialog:Landroid/app/AlertDialog;

.field private mOriginalSummary:Ljava/lang/CharSequence;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPref:Landroid/preference/SwitchPreference;

.field private mTetherHandler:Landroid/os/Handler;

.field private mTetherRunnable:Ljava/lang/Runnable;

.field private mWarnRoam:Landroid/app/AlertDialog;

.field mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

.field mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiRegexs:[Ljava/lang/String;

.field phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 94
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 3
    .parameter "context"
    .parameter "switchPref"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 100
    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 111
    iput v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->MHS_REQUEST:I

    .line 114
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIsRoaming:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    .line 123
    iput v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->isShowPassword:I

    .line 124
    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 146
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    .line 150
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    .line 152
    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 157
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 794
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$27;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$27;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1063
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 224
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    .line 225
    iput-object p2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 226
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    .line 228
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->initSwitchEnabler()V

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 3
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    .line 100
    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 111
    iput v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->MHS_REQUEST:I

    .line 114
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 115
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIsRoaming:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    .line 123
    iput v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->isShowPassword:I

    .line 124
    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 146
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->bDisableMifi:Z

    .line 148
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mTetherHandler:Landroid/os/Handler;

    .line 150
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    .line 152
    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 157
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$1;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 794
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$27;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$27;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1063
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$28;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    .line 232
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    .line 233
    iput-object p2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 235
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->initSwitchEnabler()V

    .line 236
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;[Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->afterDisconnectDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->afterBatteryDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)Lcom/android/settings_ex/wifi/WifiApDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIsRoaming:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method private afterAttentionDialog()V
    .locals 2

    .prologue
    .line 987
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 989
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 993
    :goto_0
    return-void

    .line 991
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->afterBatteryDialog()V

    goto :goto_0
.end method

.method private afterBatteryDialog()V
    .locals 3

    .prologue
    .line 975
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 976
    .local v0, wifiState:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 977
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 984
    :goto_0
    return-void

    .line 978
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->isP2pEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 979
    const-string v1, "WifiApSwitchEnabler"

    const-string v2, "WiFi p2p on. Create dailog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 982
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->afterDisconnectDialog()V

    goto :goto_0
.end method

.method private afterDisconnectDialog()V
    .locals 2

    .prologue
    .line 1098
    const/4 v0, 0x1

    .line 1108
    .local v0, setSoftapEnableFlag:Z
    if-eqz v0, :cond_0

    .line 1109
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    .line 1110
    :cond_0
    return-void
.end method

.method private checkRvfMode()V
    .locals 1

    .prologue
    .line 1021
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->getRvfMode()I

    move-result v0

    if-lez v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    .line 1023
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 1027
    :goto_0
    return-void

    .line 1025
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_0
.end method

.method private dismissDialog(I)V
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 942
    packed-switch p1, :pswitch_data_0

    .line 966
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_1

    .line 967
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 968
    .local v0, wifiApState:I
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    .line 969
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 972
    .end local v0           #wifiApState:I
    :cond_1
    return-void

    .line 944
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 945
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 946
    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 950
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 951
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 952
    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    .line 954
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    if-eqz v1, :cond_0

    .line 955
    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 959
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 961
    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 942
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private enableWifiCheckBox()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 279
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "airplane_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 288
    .local v0, isAirplaneMode:Z
    :goto_0
    if-nez v0, :cond_2

    .line 289
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 290
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v3, 0xd

    if-eq v1, v3, :cond_0

    .line 291
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 298
    :cond_0
    :goto_1
    return-void

    .end local v0           #isAirplaneMode:Z
    :cond_1
    move v0, v2

    .line 279
    goto :goto_0

    .line 294
    .restart local v0       #isAirplaneMode:Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 296
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    goto :goto_1
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 1030
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1031
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1032
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 1034
    .local v0, mRvfMode:I
    return v0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const v4, 0x7f090296

    const/4 v3, 0x5

    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 660
    packed-switch p1, :pswitch_data_0

    .line 718
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 719
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 720
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    .line 722
    :goto_0
    return-void

    .line 662
    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 663
    const v0, 0x7f0903c1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 664
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 680
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 681
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 682
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 683
    invoke-virtual {p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 685
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 688
    :pswitch_2
    const v0, 0x7f0903c2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 689
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 704
    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 705
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mOriginalSummary:Ljava/lang/CharSequence;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    .line 706
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    .line 708
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mChangeState:Z

    goto :goto_0

    .line 711
    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 712
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 713
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 714
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    .line 715
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    goto :goto_0

    .line 660
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method private initSwitchEnabler()V
    .locals 3

    .prologue
    .line 187
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    .line 188
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings_ex/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    .line 189
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 190
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 196
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    .line 198
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 199
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    new-instance v1, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    .line 207
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    .line 210
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 212
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    .line 220
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 221
    return-void
.end method

.method private isLTEMode()Z
    .locals 5

    .prologue
    .line 1057
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1058
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 1059
    .local v0, currentNetworkRat:Ljava/lang/String;
    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " isLTEMode() network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    const-string v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isP2pEnabled()Z
    .locals 4

    .prologue
    .line 1114
    :try_start_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    .line 1115
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mCm:Landroid/net/ConnectivityManager;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 1117
    .local v1, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 1121
    .end local v1           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v2, "WifiApSwitchEnabler"

    const-string v3, "isP2pEnabled - NullPointerException"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isProvisioningCheck()Z
    .locals 2

    .prologue
    .line 862
    sget-boolean v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    const/4 v0, 0x0

    .line 864
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimCheck()Z
    .locals 2

    .prologue
    .line 856
    sget-boolean v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 857
    const/4 v0, 0x0

    .line 858
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private preProvisioning()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 868
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 869
    .local v1, tm:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 870
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 871
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 873
    .local v0, netType:I
    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSimCheck() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->isSimCheck()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    const-string v2, "READY"

    const-string v3, "gsm.sim.state"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 884
    invoke-direct {p0, v6}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    .line 893
    :goto_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 894
    return-void

    .line 891
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->startProvisioningIfNecessary(I)V

    goto :goto_0
.end method

.method private setRvfMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 1038
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 1039
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x1b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1040
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1041
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1042
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1043
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1044
    return-void
.end method

.method private setSummary(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(I)V

    .line 783
    :cond_0
    return-void
.end method

.method private setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "summary"

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 788
    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 22
    .parameter "id"

    .prologue
    .line 403
    packed-switch p1, :pswitch_data_0

    .line 657
    :goto_0
    return-void

    .line 405
    :pswitch_0
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 406
    .local v5, HotspotWarningDialog:Landroid/app/AlertDialog$Builder;
    new-instance v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 410
    .local v14, view:Landroid/widget/TextView;
    const v18, 0x7f0903cf

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(I)V

    .line 412
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIsTablet:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIsLightTheme:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 413
    const/16 v18, -0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    :cond_0
    const/high16 v18, 0x4190

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 415
    const/16 v18, 0x1e

    const/16 v19, 0x1e

    const/16 v20, 0x1e

    const/16 v21, 0x1e

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 416
    const/high16 v18, 0x4000

    const/high16 v19, 0x3f80

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v14, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 417
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 418
    invoke-virtual {v5, v14}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 419
    const v18, 0x7f0903bd

    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$2;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 425
    const v18, 0x7f09069a

    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$3;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 432
    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$4;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 438
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 439
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 443
    .end local v5           #HotspotWarningDialog:Landroid/app/AlertDialog$Builder;
    .end local v14           #view:Landroid/widget/TextView;
    :pswitch_1
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 444
    .local v6, ad:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f09037c

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 445
    const v18, 0x7f090699

    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$5;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$5;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 451
    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$6;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 457
    const v18, 0x7f09037d

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 458
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mNoSimDialog:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 463
    .end local v6           #ad:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 464
    .local v4, HotspotNoLTEWarningDialog:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0903c3

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 465
    const v18, 0x7f090699

    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$7;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$7;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 471
    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$8;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$8;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 477
    const v18, 0x7f09037d

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 478
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 479
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 483
    .end local v4           #HotspotNoLTEWarningDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 484
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v18, v0

    const v19, 0x7f090399

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v18, v0

    const v19, 0x7f090644

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$9;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$9;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v18, v0

    const v19, 0x7f090398

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoamBulder:Landroid/app/AlertDialog$Builder;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$10;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$10;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWarnRoam:Landroid/app/AlertDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 503
    :pswitch_4
    const/16 v18, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 504
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 505
    new-instance v18, Landroid/app/ProgressDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f09032b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 512
    :pswitch_5
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 513
    .local v16, warnWifiDisable:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f090359

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f090699

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$13;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$13;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f09069a

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$12;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$12;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$11;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$11;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0903b9

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x1010355

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 538
    .end local v16           #warnWifiDisable:Landroid/app/AlertDialog$Builder;
    :pswitch_6
    new-instance v15, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 539
    .local v15, warnClientDisconnect:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f09036c

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f090699

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$15;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$15;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f09069a

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$14;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$14;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0903b9

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x1010355

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 558
    .end local v15           #warnClientDisconnect:Landroid/app/AlertDialog$Builder;
    :pswitch_7
    const-string v8, "file:///android_asset/html/%y/tethering_attention.html"

    .line 559
    .local v8, attention_url:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    .line 560
    .local v12, locale:Ljava/util/Locale;
    invoke-virtual {v12}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    const-string v19, "ja"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    const-string v11, "ja"

    .line 561
    .local v11, language:Ljava/lang/String;
    :goto_1
    const-string v18, "%y"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 563
    .local v13, url:Ljava/lang/String;
    new-instance v9, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 564
    .local v9, attention_view:Landroid/webkit/WebView;
    invoke-virtual {v9, v13}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 566
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 567
    .local v7, attentionDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f090699

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$17;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$17;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f09069a

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$16;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$16;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x1040014

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x1010355

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 560
    .end local v7           #attentionDialog:Landroid/app/AlertDialog$Builder;
    .end local v9           #attention_view:Landroid/webkit/WebView;
    .end local v11           #language:Ljava/lang/String;
    .end local v13           #url:Ljava/lang/String;
    :cond_1
    const-string v11, "en"

    goto :goto_1

    .line 587
    .end local v8           #attention_url:Ljava/lang/String;
    .end local v12           #locale:Ljava/util/Locale;
    :pswitch_8
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 588
    .local v10, batteryDialog:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f0903bc

    move/from16 v0, v18

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f090699

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$20;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$20;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f09069a

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$19;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$19;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$18;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$18;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0905dc

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 612
    .end local v10           #batteryDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_9
    const-string v18, "WifiApSwitchEnabler"

    const-string v19, "DIALOG_FIRST_TIME_CONFIGURE create"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 614
    new-instance v18, Lcom/android/settings_ex/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v21, v0

    invoke-direct/range {v18 .. v21}, Lcom/android/settings_ex/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$21;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$21;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/settings_ex/wifi/WifiApDialog;->show()V

    .line 627
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 628
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    goto/16 :goto_0

    .line 632
    :pswitch_a
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-direct/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 633
    .local v17, warnWifiP2PDisable:Landroid/app/AlertDialog$Builder;
    const v18, 0x7f09035f

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f090699

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$24;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$24;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f09069a

    new-instance v20, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$23;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$23;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$22;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$22;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x7f0903b9

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    const v19, 0x1010355

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_2
    .end packed-switch
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 897
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 898
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 899
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 900
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 901
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 902
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v1, v1, Landroid/preference/PreferenceActivity;

    if-eqz v1, :cond_1

    .line 903
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v1, Landroid/preference/PreferenceActivity;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 909
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 904
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/settings_ex/SettingsPreferenceFragment;

    if-eqz v1, :cond_0

    .line 905
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    check-cast v1, Lcom/android/settings_ex/SettingsPreferenceFragment;

    invoke-virtual {v1, v0, v3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 907
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    goto :goto_0
.end method

.method private updateTetherState([Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 13
    .parameter "available"
    .parameter "tethered"
    .parameter "errored"

    .prologue
    .line 378
    const/4 v11, 0x0

    .line 379
    .local v11, wifiTethered:Z
    const/4 v10, 0x0

    .line 381
    .local v10, wifiErrored:Z
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/Object;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .local v6, o:Ljava/lang/Object;
    move-object v8, v6

    .line 382
    check-cast v8, Ljava/lang/String;

    .line 383
    .local v8, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 384
    .local v7, regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_0

    const/4 v11, 0x1

    .line 383
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 381
    .end local v7           #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_0

    .line 387
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p3

    .restart local v0       #arr$:[Ljava/lang/Object;
    array-length v4, v0

    .restart local v4       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    move v3, v2

    .end local v0           #arr$:[Ljava/lang/Object;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .restart local v3       #i$:I
    :goto_2
    if-ge v3, v4, :cond_5

    aget-object v6, v0, v3

    .restart local v6       #o:Ljava/lang/Object;
    move-object v8, v6

    .line 388
    check-cast v8, Ljava/lang/String;

    .line 389
    .restart local v8       #s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiRegexs:[Ljava/lang/String;

    .restart local v1       #arr$:[Ljava/lang/String;
    array-length v5, v1

    .restart local v5       #len$:I
    const/4 v2, 0x0

    .end local v3           #i$:I
    .restart local v2       #i$:I
    :goto_3
    if-ge v2, v5, :cond_4

    aget-object v7, v1, v2

    .line 390
    .restart local v7       #regex:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v10, 0x1

    .line 389
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 387
    .end local v7           #regex:Ljava/lang/String;
    :cond_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2           #i$:I
    .restart local v3       #i$:I
    goto :goto_2

    .line 394
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #len$:I
    .end local v6           #o:Ljava/lang/Object;
    .end local v8           #s:Ljava/lang/String;
    :cond_5
    if-eqz v11, :cond_7

    iget-object v12, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v12, :cond_7

    .line 395
    iget-object v12, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 396
    .local v9, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0, v9}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V

    .line 400
    .end local v9           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_6
    :goto_4
    return-void

    .line 397
    :cond_7
    if-eqz v10, :cond_6

    .line 398
    const v12, 0x7f090296

    invoke-direct {p0, v12}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    goto :goto_4
.end method


# virtual methods
.method public getIsSetChecked()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    return v0
.end method

.method public getStaNum()I
    .locals 5

    .prologue
    .line 1013
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 1014
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    .line 1015
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    .line 1016
    .local v1, num:I
    const-string v2, "WifiApSwitchEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STANUM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    return v1
.end method

.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 912
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningCheck()Z

    move-result v1

    if-nez v1, :cond_1

    .line 913
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "arg0"
    .parameter "isChecked"

    .prologue
    const/4 v1, 0x0

    .line 803
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    if-eqz v0, :cond_0

    .line 819
    :goto_0
    return-void

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 807
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 809
    if-eqz p2, :cond_1

    .line 815
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    goto :goto_0

    .line 817
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 823
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-nez v3, :cond_0

    .line 850
    .end local p2
    :goto_0
    return v1

    .line 825
    .restart local p2
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_EnableMobileOfficeMdm"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "persist.sys.wifi_lock"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi_lock.enabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 827
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 828
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    move v1, v2

    .line 830
    goto :goto_0

    .line 833
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 834
    .local v0, enable:Z
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_2

    move v1, v2

    goto :goto_0

    .line 836
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 837
    iget-object v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 839
    if-eqz v0, :cond_3

    .line 845
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->preProvisioning()V

    :goto_1
    move v1, v2

    .line 850
    goto :goto_0

    .line 847
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_1
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 265
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 266
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 271
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 276
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 256
    :cond_1
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->dismissDialog(I)V

    .line 257
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    .line 259
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 260
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiApDialog;->dismissSpinnerPopup()V

    .line 262
    :cond_2
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    .prologue
    .line 1092
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1093
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1095
    return-void

    .line 1093
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public secSetSoftapEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 997
    if-eqz p1, :cond_0

    .line 1001
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->afterAttentionDialog()V

    .line 1010
    :goto_0
    return-void

    .line 1004
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->getStaNum()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1005
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->showDialog(I)V

    goto :goto_0

    .line 1007
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSoftapEnabled(Z)Z

    goto :goto_0
.end method

.method public sendSetChecked(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 917
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v0, :cond_0

    .line 919
    if-eqz p1, :cond_1

    .line 920
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 924
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 726
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 727
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 728
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->isSetChecked:Z

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 731
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 733
    :cond_1
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 737
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isWifiTetheringEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 738
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 739
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 741
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 762
    :cond_1
    :goto_0
    return-void

    .line 755
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_3

    .line 756
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 757
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitchPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setInformation(Landroid/preference/PreferenceActivity;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 1047
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "setInformation: PreferenceActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    .line 1049
    return-void
.end method

.method public setInformation(Lcom/android/settings_ex/SettingsPreferenceFragment;)V
    .locals 2
    .parameter "pref"

    .prologue
    .line 1052
    const-string v0, "WifiApSwitchEnabler"

    const-string v1, "setInformation: SettingsPreferenceFragment"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mActivity:Ljava/lang/Object;

    .line 1054
    return-void
.end method

.method public setSoftapEnabled(Z)Z
    .locals 12
    .parameter "enable"

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 301
    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v5

    .line 302
    .local v5, wifiState:I
    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 303
    .local v0, cr:Landroid/content/ContentResolver;
    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v7, :cond_0

    move v3, v7

    .line 305
    .local v3, isAirplaneMode:Z
    :goto_0
    if-eqz p1, :cond_1

    if-eqz v3, :cond_1

    .line 306
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 307
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 366
    :goto_1
    return v6

    .end local v3           #isAirplaneMode:Z
    :cond_0
    move v3, v6

    .line 303
    goto :goto_0

    .line 313
    .restart local v3       #isAirplaneMode:Z
    :cond_1
    if-eqz p1, :cond_3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_2

    const/4 v8, 0x3

    if-ne v5, v8, :cond_3

    .line 315
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 316
    const-string v8, "wifi_saved_state"

    invoke-static {v0, v8, v7}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 318
    const-wide/16 v8, 0x258

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->getRvfMode()I

    move-result v8

    if-lez v8, :cond_4

    .line 325
    invoke-direct {p0, v6}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setRvfMode(I)V

    .line 326
    const-string v8, "WifiApSwitchEnabler"

    const-string v9, "setRvfMode(0) for Hotspot configuration"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_4
    const-string v8, "WifiApSwitchEnabler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setSoftapEnabled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->isProvisioningNeeded()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 331
    sput-boolean v7, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 332
    const-string v8, "WifiApSwitchEnabler"

    const-string v9, "Provisioning succeeded."

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_5
    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v11, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 337
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 342
    :goto_3
    if-eqz p1, :cond_8

    .line 343
    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v9, "device_policy"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 344
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {v1, v11}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 345
    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    if-eqz v8, :cond_6

    .line 346
    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->sendSetChecked(Z)V

    .line 347
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_1

    .line 319
    .end local v1           #dpm:Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v2

    .line 320
    .local v2, e:Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 339
    .end local v2           #e:Ljava/lang/InterruptedException;
    :cond_7
    const v8, 0x7f090296

    invoke-direct {p0, v8}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSummary(I)V

    goto :goto_3

    .line 354
    :cond_8
    if-nez p1, :cond_9

    .line 355
    const/4 v4, 0x0

    .line 357
    .local v4, wifiSavedState:I
    :try_start_1
    const-string v8, "wifi_saved_state"

    invoke-static {v0, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    .line 361
    :goto_4
    if-ne v4, v7, :cond_9

    .line 362
    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 363
    const-string v8, "wifi_saved_state"

    invoke-static {v0, v8, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .end local v4           #wifiSavedState:I
    :cond_9
    move v6, v7

    .line 366
    goto/16 :goto_1

    .line 358
    .restart local v4       #wifiSavedState:I
    :catch_1
    move-exception v8

    goto :goto_4
.end method

.method public setSwitch(Landroid/widget/Switch;)V
    .locals 7
    .parameter "switch_"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 765
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-ne v5, p1, :cond_0

    .line 778
    :goto_0
    return-void

    .line 766
    :cond_0
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 767
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 768
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 769
    new-instance v5, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;)V

    iput-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mHandler:Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler$SwitchHandler;

    .line 771
    iget-object v5, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 773
    .local v2, wifiApState:I
    const/16 v5, 0xd

    if-ne v2, v5, :cond_3

    move v1, v3

    .line 774
    .local v1, isEnabled:Z
    :goto_1
    const/16 v5, 0xb

    if-ne v2, v5, :cond_4

    move v0, v3

    .line 775
    .local v0, isDisabled:Z
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 776
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    move v4, v3

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    .line 777
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->enableWifiCheckBox()V

    goto :goto_0

    .end local v0           #isDisabled:Z
    .end local v1           #isEnabled:Z
    :cond_3
    move v1, v4

    .line 773
    goto :goto_1

    .restart local v1       #isEnabled:Z
    :cond_4
    move v0, v4

    .line 774
    goto :goto_2
.end method

.method public updateConfigSummary(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "wifiConfig"

    .prologue
    .line 370
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x10405fc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, s:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f09046f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez p1, :cond_0

    .end local v0           #s:Ljava/lang/String;
    :goto_0
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApSwitchEnabler;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    return-void

    .line 372
    .restart local v0       #s:Ljava/lang/String;
    :cond_0
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method
