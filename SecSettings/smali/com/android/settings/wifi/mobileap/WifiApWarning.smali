.class public Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DIALOG_ATTENTION:I = 0x1b

.field private static final DIALOG_FIRST_TIME_CONFIGURE:I = 0x1d

.field private static final DIALOG_HOTSPOT_END:I = 0x1f

.field private static final DIALOG_HOTSPOT_ERROR:I = 0x15

.field public static final DIALOG_HOTSPOT_NO_DATA:I = 0x1

.field public static final DIALOG_HOTSPOT_PROVISIONING_REQUEST:I = 0x5

.field private static final DIALOG_HOTSPOT_START:I = 0x16

.field private static final DIALOG_HOTSPOT_WARNING:I = 0x17

.field private static final DIALOG_ID_NOLTE:I = 0x18

.field private static final DIALOG_ID_NOSIM:I = 0x19

.field public static final DIALOG_NAI_MISMATCH:I = 0x2

.field private static final DIALOG_PROGRESS_DISABLE_HOTSPOT:I = 0xb

.field private static final DIALOG_PROGRESS_ENABLE_HOTSPOT:I = 0xa

.field private static final DIALOG_ROAMING:I = 0x1a

.field public static final DIALOG_TYPE_ERROR:I = 0x0

.field private static final DIALOG_WARN_BATTERY:I = 0x1c

.field private static final DIALOG_WARN_WIFI_DISABLE:I = 0x1e

.field public static final DIALOG_WIFI_AP_ENABLE_WARNING:I = 0x4

.field public static final DIALOG_WIFI_ENABLE_WARNING:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiApWarning"

.field public static final WIFIAP_WARNING_DIALOG:Ljava/lang/String; = "com.android.settings_ex.wifi.mobileap.wifiapwarning"

.field public static final WIFIAP_WARNING_DIALOG_TYPE:Ljava/lang/String; = "wifiap_warning_dialog_type"

.field private static final WIFI_TETHERING:I


# instance fields
.field private final MHS_REQUEST:I

.field private isAirplaneMode:Z

.field private mApDisableDialog:Landroid/app/AlertDialog;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

.field private mDialogType:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLightTheme:Z

.field private mIsRoaming:Z

.field private mIsTablet:Z

.field private mNaiMismatchDialog:Landroid/app/AlertDialog;

.field private mProvisionApp:[Ljava/lang/String;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

.field mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiDisabledByEnablingHotspot:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private nextDialogId:I

.field phoneStateListener:Landroid/telephony/PhoneStateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 60
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 88
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    .line 89
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    .line 90
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIsRoaming:Z

    .line 91
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    .line 92
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 111
    iput v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->MHS_REQUEST:I

    .line 113
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 570
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$28;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$28;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 615
    new-instance v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$29;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$29;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->afterBatteryDialog()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Lcom/android/settings_ex/wifi/WifiApDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIsRoaming:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->disableWifiDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->preProvisioning()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    return-void
.end method

.method private afterAttentionDialog()V
    .locals 2

    .prologue
    .line 588
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 594
    :goto_0
    return-void

    .line 592
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->afterBatteryDialog()V

    goto :goto_0
.end method

.method private afterBatteryDialog()V
    .locals 1

    .prologue
    .line 597
    const/4 v0, 0x1

    .line 610
    .local v0, setSoftapEnableFlag:Z
    if-eqz v0, :cond_0

    .line 611
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->disableWifiDialog()V

    .line 613
    :cond_0
    return-void
.end method

.method private disableWifiDialog()V
    .locals 2

    .prologue
    .line 643
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 644
    .local v0, wifiState:I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 646
    const/16 v1, 0x1e

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 650
    :goto_0
    return-void

    .line 648
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto :goto_0
.end method

.method private dismissProgressDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 807
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 808
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 810
    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    .line 811
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 820
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    .line 814
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 816
    iput-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    .line 817
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private getRvfMode()I
    .locals 3

    .prologue
    .line 746
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 747
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    .line 748
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    .line 750
    .local v0, mRvfMode:I
    return v0
.end method

.method private handleWifiApStateChanged(I)V
    .locals 5
    .parameter "state"

    .prologue
    const/16 v4, 0xb

    const/16 v3, 0xa

    .line 823
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 824
    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    .line 825
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    .line 839
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    const/16 v1, 0xd

    if-ne p1, v1, :cond_0

    .line 827
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto :goto_0

    .line 828
    :cond_2
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 829
    if-ne p1, v4, :cond_0

    .line 830
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-nez v1, :cond_3

    .line 831
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 832
    .local v0, wm:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_3

    .line 833
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 836
    .end local v0           #wm:Landroid/net/wifi/WifiManager;
    :cond_3
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto :goto_0
.end method

.method private isLTEMode()Z
    .locals 5

    .prologue
    .line 564
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 565
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 566
    .local v0, currentNetworkRat:Ljava/lang/String;
    const-string v2, "WifiApWarning"

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

    .line 567
    const-string v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isProvisioningCheck()Z
    .locals 2

    .prologue
    .line 740
    sget-boolean v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    const/4 v0, 0x0

    .line 742
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSimCheck()Z
    .locals 2

    .prologue
    .line 844
    sget-boolean v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    const/4 v0, 0x0

    .line 846
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private preProvisioning()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 540
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 541
    .local v0, tm:Landroid/telephony/TelephonyManager;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 543
    const-string v1, "WifiApWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimCheck() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isSimCheck()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isSimCheck()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const-string v1, "READY"

    const-string v2, "gsm.sim.state"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    const/16 v1, 0x19

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    .line 560
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->phoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 561
    return-void

    .line 558
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    goto :goto_0
.end method

.method private secSetSoftapEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 578
    if-eqz p1, :cond_0

    .line 582
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    .line 585
    :cond_0
    return-void
.end method

.method private sendBroadcastEnablingHotspotCancel()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 768
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    if-eqz v1, :cond_1

    .line 769
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    .line 770
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 771
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_saved_state"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 772
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiDisabledByEnablingHotspot:Z

    .line 775
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 776
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "called_dialog"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 777
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 778
    return-void
.end method

.method private setRvfMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 754
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 755
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x1b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 756
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 757
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 758
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 759
    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 760
    return-void
.end method

.method private setSoftapEnabled(Z)V
    .locals 9
    .parameter "enable"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 653
    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v2

    .line 654
    .local v2, wifiApState:I
    if-eqz p1, :cond_2

    const/16 v4, 0xc

    if-eq v2, v4, :cond_0

    const/16 v4, 0xd

    if-ne v2, v4, :cond_2

    .line 656
    :cond_0
    iget v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    .line 657
    const-string v4, "WifiApWarning"

    const-string v5, "provisioning sucess"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 699
    :goto_0
    return-void

    .line 662
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    .line 663
    .local v3, wifiState:I
    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 664
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "airplane_mode_on"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    .line 665
    const-string v4, "WifiApWarning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setSoftapEnabled(enable), isAirplaneMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    if-eqz p1, :cond_4

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-eqz v4, :cond_4

    .line 667
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 668
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    move v4, v6

    .line 664
    goto :goto_1

    .line 671
    :cond_4
    if-eqz p1, :cond_6

    const/4 v4, 0x2

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 673
    :cond_5
    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 674
    const-string v4, "wifi_saved_state"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 676
    const-wide/16 v7, 0x258

    :try_start_0
    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    :cond_6
    :goto_2
    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->getRvfMode()I

    move-result v4

    if-lez v4, :cond_7

    .line 683
    invoke-direct {p0, v6}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setRvfMode(I)V

    .line 684
    const-string v4, "WifiApWarning"

    const-string v6, "setRvfMode(0) for Hotspot configuration"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    :cond_7
    const-string v4, "WifiApWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSoftapEnabled: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    if-eqz p1, :cond_8

    .line 689
    sput-boolean v5, Lcom/android/settings_ex/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    .line 690
    :cond_8
    iget-object v4, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    .line 677
    :catch_0
    move-exception v1

    .line 678
    .local v1, e:Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method private showNextHotspotDialog(I)V
    .locals 21
    .parameter "id"

    .prologue
    .line 323
    packed-switch p1, :pswitch_data_0

    .line 535
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 537
    :goto_1
    return-void

    .line 325
    :pswitch_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 326
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 329
    :pswitch_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 330
    .local v5, HotspotWarningDialog:Landroid/app/AlertDialog$Builder;
    new-instance v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 334
    .local v15, view:Landroid/widget/TextView;
    const v17, 0x7f0903cf

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setText(I)V

    .line 336
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 337
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    :cond_0
    const/high16 v17, 0x4190

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 339
    const/16 v17, 0x1e

    const/16 v18, 0x1e

    const/16 v19, 0x1e

    const/16 v20, 0x1e

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 340
    const/high16 v17, 0x4000

    const/high16 v18, 0x3f80

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 341
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 342
    invoke-virtual {v5, v15}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 343
    const v17, 0x7f0903bd

    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$9;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$9;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 348
    const v17, 0x7f09069a

    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$10;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 354
    new-instance v17, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$11;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$11;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 360
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 361
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 364
    .end local v5           #HotspotWarningDialog:Landroid/app/AlertDialog$Builder;
    .end local v15           #view:Landroid/widget/TextView;
    :pswitch_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 365
    .local v4, HotspotNoLTEWarningDialog:Landroid/app/AlertDialog$Builder;
    const v17, 0x7f0903c3

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 366
    const v17, 0x7f090699

    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$12;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$12;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 372
    new-instance v17, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$13;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$13;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 378
    const v17, 0x7f09037d

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 379
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 380
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 383
    .end local v4           #HotspotNoLTEWarningDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    new-instance v12, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 384
    .local v12, mNoSimDialog:Landroid/app/AlertDialog$Builder;
    const v17, 0x7f09037c

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 385
    const v17, 0x7f090699

    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$14;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$14;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v12, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 391
    new-instance v17, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$15;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$15;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 397
    const v17, 0x7f09037d

    move/from16 v0, v17

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 398
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 399
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 402
    .end local v12           #mNoSimDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_4
    new-instance v13, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 403
    .local v13, mWarnRoamBulder:Landroid/app/AlertDialog$Builder;
    const v17, 0x7f090399

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 404
    const v17, 0x7f090644

    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$16;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$16;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 409
    new-instance v17, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$17;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$17;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 415
    const v17, 0x7f090398

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 416
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 417
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 420
    .end local v13           #mWarnRoamBulder:Landroid/app/AlertDialog$Builder;
    :pswitch_5
    const-string v7, "file:///android_asset/html/%y/tethering_attention.html"

    .line 421
    .local v7, attention_url:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v11

    .line 422
    .local v11, locale:Ljava/util/Locale;
    invoke-virtual {v11}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    const-string v18, "ja"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    const-string v10, "ja"

    .line 423
    .local v10, language:Ljava/lang/String;
    :goto_2
    const-string v17, "%y"

    move-object/from16 v0, v17

    invoke-virtual {v7, v0, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    .line 425
    .local v14, url:Ljava/lang/String;
    new-instance v8, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 426
    .local v8, attention_view:Landroid/webkit/WebView;
    invoke-virtual {v8, v14}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 428
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 429
    .local v6, attentionDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v6, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 430
    const v17, 0x7f090699

    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$18;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$18;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 435
    const v17, 0x7f09069a

    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$19;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$19;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 441
    new-instance v17, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$20;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$20;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 447
    const v17, 0x1040014

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 448
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 449
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 450
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 422
    .end local v6           #attentionDialog:Landroid/app/AlertDialog$Builder;
    .end local v8           #attention_view:Landroid/webkit/WebView;
    .end local v10           #language:Ljava/lang/String;
    .end local v14           #url:Ljava/lang/String;
    :cond_1
    const-string v10, "en"

    goto :goto_2

    .line 453
    .end local v7           #attention_url:Ljava/lang/String;
    .end local v11           #locale:Ljava/util/Locale;
    :pswitch_6
    new-instance v9, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 454
    .local v9, batteryDialog:Landroid/app/AlertDialog$Builder;
    const v17, 0x7f0903bc

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 455
    const v17, 0x7f090699

    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$21;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$21;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 460
    const v17, 0x7f09069a

    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$22;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$22;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 466
    new-instance v17, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$23;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$23;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 472
    const v17, 0x7f0905dc

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 473
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 474
    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 477
    .end local v9           #batteryDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_7
    const-string v17, "WifiApWarning"

    const-string v18, "DIALOG_FIRST_TIME_CONFIGURE create"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 479
    new-instance v17, Lcom/android/settings_ex/wifi/WifiApDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings_ex/wifi/WifiApDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$24;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$24;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v17 .. v18}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings_ex/wifi/WifiApDialog;->show()V

    goto/16 :goto_1

    .line 494
    :pswitch_8
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 495
    .local v16, warnWifiDisable:Landroid/app/AlertDialog$Builder;
    const v17, 0x7f090359

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 496
    const v17, 0x7f090699

    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$25;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$25;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 514
    const v17, 0x7f09069a

    new-instance v18, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$26;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$26;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v16 .. v18}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 520
    new-instance v17, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$27;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$27;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 526
    const v17, 0x7f0903b9

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 527
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 528
    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 531
    .end local v16           #warnWifiDisable:Landroid/app/AlertDialog$Builder;
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 533
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private showProgressDialog(I)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 787
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    .line 788
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 789
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    .line 790
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09032b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 793
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 804
    :cond_1
    :goto_0
    return-void

    .line 795
    :cond_2
    const/16 v0, 0xb

    if-ne p1, v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3

    .line 797
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    .line 798
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 799
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09032c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 800
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 801
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 5
    .parameter "choice"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 702
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 703
    const/16 v1, 0xa

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    .line 704
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 705
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 706
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 707
    const/high16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    const-string v1, "WifiApWarning"

    const-string v2, "startActivityForResult"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    invoke-virtual {p0, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 713
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 711
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method isProvisioningNeeded()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 735
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->isProvisioningCheck()Z

    move-result v1

    if-nez v1, :cond_1

    .line 736
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 716
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 717
    const-string v0, "WifiApWarning"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    if-nez p1, :cond_0

    .line 719
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 720
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 722
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 723
    const-string v0, "WifiApWarning"

    const-string v1, "WifiAp is disabled: provisioning fail"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 725
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 727
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 728
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 851
    const-string v0, "WifiApWarning"

    const-string v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 853
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x104000a

    const/4 v10, 0x0

    const v9, 0x7f10002b

    .line 129
    const-string v6, "WifiApWarning"

    const-string v7, "onCreate"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 133
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    .line 134
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiManager;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 135
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    iput-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 136
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    .line 137
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    .line 138
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1070022

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    .line 139
    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    .line 140
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v6, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v8, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 142
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.android.settings_ex.wifi.mobileap.wifiapwarning"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 143
    const-string v6, "WifiApWarning"

    const-string v7, "Error: this activity may be started only with intent"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const-string v6, "wifiap_warning_dialog_type"

    invoke-virtual {v3, v6, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    .line 148
    iget-object v5, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 149
    .local v5, p:Lcom/android/internal/app/AlertController$AlertParams;
    iget v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    packed-switch v6, :pswitch_data_0

    .line 317
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 151
    :pswitch_0
    const-string v6, "WifiApWarning"

    const-string v7, "DIALOG_HOTSPOT_NO_DATA"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :pswitch_1
    const-string v6, "WifiApWarning"

    const-string v7, "DIALOG_NAI_MISMATCH"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 155
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 156
    invoke-virtual {p0, v9}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 157
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    iget v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_2

    .line 159
    const v6, 0x7f090330

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 162
    :goto_1
    const v6, 0x7f09032e

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 163
    new-instance v6, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$2;

    invoke-direct {v6, p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$2;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v11, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 186
    new-instance v6, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$3;

    invoke-direct {v6, p0, v2}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    .line 210
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 161
    :cond_2
    const v6, 0x7f09032f

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 249
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    .end local v2           #cr:Landroid/content/ContentResolver;
    :pswitch_2
    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 251
    invoke-virtual {p0, v10}, Landroid/app/Activity;->setVisible(Z)V

    .line 252
    move-object v1, p0

    .line 253
    .local v1, av:Landroid/app/Activity;
    invoke-virtual {p0, v9}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 254
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x1040014

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1010355

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f09032a

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 258
    .local v4, newDialog:Landroid/app/AlertDialog$Builder;
    new-instance v6, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$6;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v4, v11, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 265
    new-instance v6, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$7;

    invoke-direct {v6, p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/app/Activity;)V

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 281
    const/high16 v6, 0x104

    new-instance v7, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$8;

    invoke-direct {v7, p0, v1}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning$8;-><init>(Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;Landroid/app/Activity;)V

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 297
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    .line 298
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 299
    iget-object v6, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 303
    .end local v1           #av:Landroid/app/Activity;
    .end local v4           #newDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 304
    invoke-virtual {p0, v9}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 309
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->preProvisioning()V

    goto/16 :goto_0

    .line 312
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 313
    invoke-virtual {p0, v9}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 314
    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 888
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 889
    iget-object v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 890
    iget v0, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 891
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    .line 892
    :cond_0
    const-string v0, "WifiApWarning"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 858
    const-string v1, "WifiApWarning"

    const-string v2, "onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 860
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 861
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 862
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 863
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 865
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 868
    invoke-static {p0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 870
    const/4 v1, -0x2

    invoke-static {p0, v1, p0}, Lcom/android/settings_ex/guide/GuideFragment;->onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V

    .line 873
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 874
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 875
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 885
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    :goto_0
    return-void

    .line 876
    :cond_4
    iget v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 877
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    if-eqz v1, :cond_5

    .line 878
    const-string v1, "WifiApWarning"

    const-string v2, "mDialogConfigure.dismiss()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 881
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 882
    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 782
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 783
    const-string v0, "WifiApWarning"

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    .prologue
    .line 762
    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 763
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/android/settings_ex/wifi/WifiApDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiApDialog;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 765
    return-void

    .line 763
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
