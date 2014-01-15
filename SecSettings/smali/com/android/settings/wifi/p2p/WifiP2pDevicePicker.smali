.class public Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiP2pDevicePicker.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static final DBG:Z = true

.field private static final DIALOG_DISCONNECT_FOR_SCANNING:I = 0x1

.field private static final DIALOG_MAX_CLIENT_SUPPORT:I = 0x2

.field private static final GC_SCAN_TIME:I = 0x5

.field private static final KEY_AVAILABLE_DEVICES:Ljava/lang/String; = "available"

.field private static final KEY_BUSY_DEVICES:Ljava/lang/String; = "busy"

.field private static final KEY_CONNECTED_DEVICES:Ljava/lang/String; = "connected"

.field private static final KEY_NO_DEVICE:Ljava/lang/String; = "no_device"

.field private static final KEY_SCAN_DEVICES:Ljava/lang/String; = "scan"

.field private static final KEY_SEND_BUTTON:Ljava/lang/String; = "sendButton"

.field private static final KEY_THIS_DEVICE:Ljava/lang/String; = "this_device"

.field private static final MENU_ID_MULTI_CONNECT:I = 0x2

.field private static final MENU_ID_SCAN:I = 0x1

.field private static final MENU_TYPE_MULTICONNECT:I = 0x4

.field private static final MENU_TYPE_NONE:I = 0x1

.field private static final MENU_TYPE_NO_MULTICONNECT:I = 0x5

.field private static final MENU_TYPE_SCAN:I = 0x2

.field private static final MENU_TYPE_SCAN_STOP:I = 0x3

.field private static final TAG:Ljava/lang/String; = "WifiP2pDevicePicker"

.field private static mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;


# instance fields
.field private customActionBarView:Landroid/view/View;

.field private mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mConnectInProgress:Z

.field private mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mFullScanTimer:Landroid/os/CountDownTimer;

.field private mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLandscape:Z

.field private mIsTablet:Z

.field private mMultiConnect:Z

.field private mMultiConnectClicked:Z

.field private mMultiConnectFooter:Landroid/widget/TextView;

.field private mNoDeviceIcon:Landroid/widget/ImageView;

.field private mNoDevicePref:Landroid/preference/PreferenceGroup;

.field private mNoFileShareDevice:Landroid/widget/TextView;

.field private mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

.field private mP2pMenu:Landroid/view/MenuItem;

.field private mP2pMultiConnect:Landroid/view/MenuItem;

.field private mPeersBusy:Landroid/preference/PreferenceGroup;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

.field private mReceivedStickyEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanClicked:Z

.field private mScanDialog:Landroid/app/AlertDialog;

.field private mScanTimer:Landroid/os/CountDownTimer;

.field private mSelectAll:Landroid/preference/CheckBoxPreference;

.field private mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

.field private mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

.field private mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mThisDevicePref:Landroid/preference/PreferenceGroup;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field protected revertMenuItem:Landroid/view/View;

.field protected revertMenuItemIcon:Landroid/view/View;

.field protected revertMenuItemText:Landroid/view/View;

.field protected saveMenuItem:Landroid/view/View;

.field protected saveMenuItemIcon:Landroid/view/View;

.field protected saveMenuItemText:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 119
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    .line 144
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 145
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 147
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    .line 149
    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 150
    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 156
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    .line 160
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    .line 162
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    .line 163
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    .line 171
    iput-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    .line 182
    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;

    .line 185
    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 189
    new-instance v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$1;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mReceivedStickyEnabled:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pInfo;)Landroid/net/wifi/p2p/WifiP2pInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnect:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    return p1
.end method

.method static synthetic access$1802(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->send()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Lcom/android/settings_ex/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$900()Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    return-object v0
.end method

.method private addThisDevicePreference()V
    .locals 5

    .prologue
    .line 1161
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 1162
    .local v0, pref:Landroid/preference/Preference;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1164
    .local v1, ssid:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1165
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_p2p_device_name"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1168
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1169
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1171
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1173
    const v2, 0x7f020240

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setIcon(I)V

    .line 1174
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 1176
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1177
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1178
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1179
    return-void
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "addr"

    .prologue
    const/16 v9, 0xe

    const/16 v8, 0xc

    const/4 v7, 0x0

    .line 868
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 869
    .local v1, partialMacAddr:Ljava/util/Formatter;
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 870
    .local v3, subString:Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 872
    .local v0, enable:I
    xor-int/lit16 v0, v0, 0x80

    .line 873
    const-string v4, "%02x"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 875
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p1, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 876
    .local v2, result:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/Formatter;->close()V

    .line 878
    return-object v2
.end method

.method private getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3
    .parameter "device"

    .prologue
    const/4 v2, 0x0

    .line 916
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 917
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 919
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsPbcSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 928
    :goto_0
    return-object v0

    .line 921
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsKeypadSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 922
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x2

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 923
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->wpsDisplaySupported()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 924
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v2, 0x1

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0

    .line 926
    :cond_2
    iget-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    iput v2, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_0
.end method

.method private getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mac"

    .prologue
    const/16 v3, 0x11

    .line 882
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xe

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 885
    .end local p1
    :cond_0
    return-object p1
.end method

.method private isP2pConnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 902
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 903
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 905
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v4, v5, :cond_0

    .line 906
    const/4 v3, 0x1

    .line 912
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return v3

    .line 909
    :catch_0
    move-exception v1

    .line 910
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "WifiP2pDevicePicker"

    const-string v5, "isP2pConnected - NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 5

    .prologue
    .line 890
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 891
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 893
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 897
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 894
    :catch_0
    move-exception v1

    .line 895
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiP2pDevicePicker"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private send()Z
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, -0x1

    const/4 v5, 0x1

    .line 1104
    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v6}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1105
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f09043f

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 1157
    :goto_0
    return v4

    .line 1109
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1112
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1113
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.android.settings_ex.wifi.p2p.WifiP2pDeviceList"

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1114
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v4, v8, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1116
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .end local v2           #intent:Landroid/content/Intent;
    :goto_1
    move v4, v5

    .line 1157
    goto :goto_0

    .line 1122
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 1123
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1124
    .local v3, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->getPreferredConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 1125
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v4, :cond_2

    .line 1126
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v7, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$9;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$9;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v4, v6, v0, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_2

    .line 1137
    .end local v0           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v3           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_3
    iput-boolean v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    .line 1139
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1140
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.android.settings_ex.wifi.p2p.WifiP2pDeviceList"

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1141
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    invoke-virtual {v4, v8, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1143
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    .line 1145
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v7, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$10;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$10;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v4, v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_1
.end method

.method private setP2pMenu(I)V
    .locals 6
    .parameter "type"

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1043
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    if-nez v0, :cond_1

    .line 1101
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1047
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v0, v2

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    .line 1049
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_5

    .line 1050
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1051
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1057
    :goto_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1059
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v2, 0x7f090417

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1047
    goto :goto_1

    .line 1053
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1062
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_7

    .line 1063
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f0200d5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1064
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1069
    :goto_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f090417

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1066
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1067
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    .line 1072
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_9

    .line 1073
    :cond_8
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f0200d7

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1074
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1079
    :goto_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v1, 0x7f0906da

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1076
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1077
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    .line 1082
    :pswitch_3
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v0, :cond_b

    .line 1083
    :cond_a
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f0200d4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1084
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1090
    :goto_5
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1091
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v1, 0x7f090436

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1087
    :cond_b
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1088
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_5

    .line 1094
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1095
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1057
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private setScanTimer(ZZ)V
    .locals 5
    .parameter "enable"
    .parameter "doListen"

    .prologue
    .line 932
    if-eqz p1, :cond_1

    .line 933
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 934
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    sget-object v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 935
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 936
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 937
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 938
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 939
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 941
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 942
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 943
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 944
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 945
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 950
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    .line 951
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 952
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 954
    const-string v1, "WifiP2pDevicePicker"

    const-string v2, "setScanTimer - true ===> discoverPeersWithFlush one time for 30 sec"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/16 v3, 0x64b

    new-instance v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$8;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$8;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 979
    .end local v0           #preferenceScreen:Landroid/preference/PreferenceScreen;
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    const-string v1, "WifiP2pDevicePicker"

    const-string v2, "setScanTimer - false"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 968
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 970
    iput-boolean p1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    .line 971
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 972
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mFullScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v1}, Landroid/os/CountDownTimer;->cancel()V

    .line 975
    if-eqz p2, :cond_0

    .line 976
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->requestP2pListen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method private showMultiConnectDevices()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 982
    invoke-direct {p0, v8}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    .line 983
    const/4 v5, 0x5

    invoke-direct {p0, v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 985
    new-instance v5, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    .line 986
    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    const v6, 0x7f09043e

    invoke-virtual {v5, v6}, Landroid/preference/Preference;->setTitle(I)V

    .line 987
    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v7}, Landroid/preference/Preference;->setOrder(I)V

    .line 988
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 989
    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 991
    const/4 v0, 0x0

    .line 992
    .local v0, count:I
    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 993
    .local v3, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->isInvitationCapable()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 994
    new-instance v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 995
    .local v4, temp_peer:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v1

    .line 996
    .local v1, devices:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-interface {v1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 997
    invoke-virtual {v4, v8}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 999
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1000
    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 1004
    .end local v1           #devices:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    .end local v3           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v4           #temp_peer:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    :cond_2
    if-lez v0, :cond_3

    .line 1005
    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    iget-object v6, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1007
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    return-void
.end method

.method private useCustomActionBar(Z)V
    .locals 7
    .parameter "use"

    .prologue
    const/16 v2, 0x8

    const/4 v6, 0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 1011
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1013
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz p1, :cond_3

    .line 1014
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v1, :cond_1

    .line 1015
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1016
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1022
    :goto_0
    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1025
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v5, v5, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1028
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-eqz v1, :cond_2

    .line 1029
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 1040
    :goto_1
    return-void

    .line 1019
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1020
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1031
    :cond_2
    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_1

    .line 1034
    :cond_3
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1036
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 1037
    const v1, 0x7f090433

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1038
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f0b005c

    const/4 v3, 0x1

    .line 320
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 324
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v2, :cond_0

    .line 325
    const-string v2, "enterprise_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/RestrictionPolicy;->isWifiDirectAllowed()Z

    move-result v2

    if-nez v2, :cond_1

    .line 328
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 378
    :goto_0
    return-void

    .line 333
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    .line 336
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    move v2, v3

    :goto_1
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v4, "layout_inflater"

    invoke-virtual {v2, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 343
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f04017d

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    .line 345
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v4, 0x7f0b0419

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    .line 346
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v4, 0x7f0b0417

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    .line 347
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v4, 0x7f0b041a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemText:Landroid/view/View;

    .line 348
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->saveMenuItemIcon:Landroid/view/View;

    .line 349
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->customActionBarView:Landroid/view/View;

    const v4, 0x7f0b0418

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemText:Landroid/view/View;

    .line 350
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->revertMenuItemIcon:Landroid/view/View;

    .line 352
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->saveMenuItem:Landroid/view/View;

    new-instance v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$2;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$2;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 358
    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->revertMenuItem:Landroid/view/View;

    new-instance v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$3;

    invoke-direct {v4, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$3;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    .line 375
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->addThisDevicePreference()V

    .line 377
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setForcedClick(Z)V

    goto/16 :goto_0

    .line 336
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v2, "WifiP2pDevicePicker"

    const-string v4, "Fragment not attached to Activity"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x2

    .line 589
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    .line 591
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 592
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    const/4 v0, 0x5

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 594
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 595
    return-void

    .line 589
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 591
    goto :goto_1

    .line 592
    :cond_3
    const/4 v0, 0x4

    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    const-wide/16 v4, 0x3e8

    const/4 v9, 0x1

    .line 392
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 394
    const v0, 0x7f0700a0

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 396
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.THIS_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    .line 403
    .local v8, activity:Landroid/app/Activity;
    const-string v0, "available"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/ProgressCategory;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    .line 404
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v9}, Lcom/android/settings_ex/ProgressCategory;->setIgnoreNoDevice(Z)V

    .line 405
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v9}, Lcom/android/settings_ex/ProgressCategory;->setIgnoreMessage(Z)V

    .line 406
    const-string v0, "connected"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 407
    const-string v0, "busy"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    .line 408
    const-string v0, "this_device"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mThisDevicePref:Landroid/preference/PreferenceGroup;

    .line 409
    const-string v0, "no_device"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    .line 411
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 413
    new-instance v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$4;

    const-wide/16 v2, 0x7530

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$4;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;JJ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    .line 431
    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$5;

    move-object v3, p0

    move-wide v6, v4

    invoke-direct/range {v2 .. v7}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$5;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;JJ)V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mFullScanTimer:Landroid/os/CountDownTimer;

    .line 450
    const-string v0, "enterprise_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 452
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isWifiDirectAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 457
    :cond_0
    const-string v0, "wifip2p"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 458
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_4

    .line 459
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v8, v1, v10}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 460
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_3

    .line 462
    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iput-object v10, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 473
    :cond_1
    :goto_0
    new-instance v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$6;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$6;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    .line 491
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_2

    .line 492
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 493
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$7;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker$7;-><init>(Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestGroupInfo(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;)V

    .line 513
    :cond_2
    invoke-virtual {p0, v9}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 516
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 517
    return-void

    .line 465
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0

    .line 469
    :cond_4
    const-string v0, "WifiP2pDevicePicker"

    const-string v1, "mWifiP2pManager is null !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "id"

    .prologue
    const v7, 0x7f090699

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 702
    if-ne p1, v4, :cond_1

    .line 703
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090417

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090438

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mDisconnectListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f09069a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 709
    .local v0, dialog:Landroid/app/AlertDialog;
    iput-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanDialog:Landroid/app/AlertDialog;

    .line 719
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_0
    :goto_0
    return-object v0

    .line 711
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 712
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0903fb

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09042e

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget v6, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 717
    .restart local v0       #dialog:Landroid/app/AlertDialog;
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 565
    const v3, 0x7f090417

    invoke-interface {p1, v1, v0, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    .line 568
    const v3, 0x7f090436

    invoke-interface {p1, v1, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    .line 570
    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsTablet:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIsLandscape:Z

    if-eqz v3, :cond_2

    .line 571
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    const v4, 0x7f0200d5

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 572
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 574
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    const v4, 0x7f0200d4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 575
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 584
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    :goto_2
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 585
    return-void

    :cond_1
    move v0, v1

    .line 575
    goto :goto_0

    .line 579
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMenu:Landroid/view/MenuItem;

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 580
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mP2pMultiConnect:Landroid/view/MenuItem;

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v4, :cond_3

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v4

    if-nez v4, :cond_3

    move v1, v0

    :cond_3
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    :cond_4
    move v0, v2

    .line 584
    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 383
    const v1, 0x7f04017e

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 386
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0b03e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    .line 387
    return-object v0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 552
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDetach()V

    .line 553
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    if-nez v0, :cond_0

    .line 555
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 599
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 622
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 601
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_0

    .line 604
    :sswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v1

    if-nez v1, :cond_2

    .line 605
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-nez v1, :cond_1

    .line 606
    invoke-direct {p0, v0, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_1

    .line 607
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanClicked:Z

    if-eqz v1, :cond_0

    .line 608
    invoke-direct {p0, v2, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_1

    .line 611
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 615
    :sswitch_2
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-nez v1, :cond_0

    .line 616
    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    .line 617
    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 618
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->showMultiConnectDevices()V

    goto :goto_1

    .line 599
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 535
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 537
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 539
    invoke-direct {p0, v1, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    .line 544
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mScanTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 547
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 548
    return-void

    .line 541
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mConnectInProgress:Z

    if-nez v0, :cond_0

    .line 542
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setScanTimer(ZZ)V

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 18
    .parameter "peers"

    .prologue
    .line 723
    invoke-virtual/range {p0 .. p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    .line 725
    .local v10, preferenceScreen:Landroid/preference/PreferenceScreen;
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 727
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v15}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 728
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 729
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 730
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->clear()Z

    .line 732
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v15

    if-nez v15, :cond_0

    .line 733
    const-string v15, "WifiP2pDevicePicker"

    const-string v16, "return, P2P is not enabled..."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    :goto_0
    return-void

    .line 737
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v7

    .line 739
    .local v7, devices:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/p2p/WifiP2pDevice;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v15

    if-nez v15, :cond_b

    .line 740
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    const v16, 0x7f090408

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setTitle(I)V

    .line 741
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 742
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 744
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 746
    if-eqz p1, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 747
    :cond_1
    const-string v15, "WifiP2pDevicePicker"

    const-string v16, "no devices found"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 862
    :cond_2
    :goto_1
    sput-object p1, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    goto :goto_0

    .line 752
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 754
    const/4 v2, 0x0

    .local v2, av_cnt:I
    const/4 v3, 0x0

    .line 756
    .local v3, busy_cnt:I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    const v16, 0x7f090408

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setTitle(I)V

    .line 757
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 758
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 760
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const v16, 0x7f09040a

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setTitle(I)V

    .line 761
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 762
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 764
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 765
    .local v9, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v15, :cond_5

    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_6

    :cond_5
    invoke-virtual {v9}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v15

    if-nez v15, :cond_6

    .line 767
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 768
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    new-instance v16, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 769
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 774
    :cond_6
    new-instance v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v11, v15, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 779
    .local v11, temp:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    add-int/lit8 v2, v2, 0x1

    .line 780
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v15, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 781
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mAvailablePeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v0, v11, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_2

    .line 785
    .end local v9           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v11           #temp:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    :cond_7
    if-gtz v2, :cond_8

    .line 786
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 788
    :cond_8
    if-lez v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-eqz v15, :cond_a

    .line 789
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 791
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-eqz v15, :cond_2

    .line 792
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->showMultiConnectDevices()V

    goto/16 :goto_1

    .line 797
    .end local v2           #av_cnt:I
    .end local v3           #busy_cnt:I
    .end local v8           #i$:Ljava/util/Iterator;
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 798
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersBusy:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 799
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mNoDevicePref:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 801
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v16, 0x7f090409

    invoke-virtual/range {v15 .. v16}, Landroid/preference/Preference;->setTitle(I)V

    .line 802
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Landroid/preference/PreferenceGroup;->setEnabled(Z)V

    .line 803
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10, v15}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 805
    const/4 v6, 0x0

    .line 806
    .local v6, devCount:I
    const/4 v15, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 808
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    if-eqz v15, :cond_c

    .line 809
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectClicked:Z

    .line 810
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mMultiConnectFooter:Landroid/widget/TextView;

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 811
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->useCustomActionBar(Z)V

    .line 812
    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->setP2pMenu(I)V

    .line 815
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    if-eqz v15, :cond_2

    .line 816
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->isGroupOwner()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 817
    const-string v15, "WifiP2pDevicePicker"

    const-string v16, "I am GO"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 820
    .local v4, client:Landroid/net/wifi/p2p/WifiP2pDevice;
    const/4 v15, 0x0

    iput v15, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 821
    new-instance v12, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v12, v15, v4}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 822
    .local v12, temp_c:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    invoke-interface {v7, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_d

    .line 823
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 825
    :cond_d
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 826
    add-int/lit8 v6, v6, 0x1

    .line 827
    goto :goto_3

    .line 829
    .end local v4           #client:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v12           #temp_c:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    invoke-virtual {v15}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 830
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->convertDevAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 831
    .local v5, convertedAddr:Ljava/lang/String;
    const-string v15, "WifiP2pDevicePicker"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "I am GC, my GO addr : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", converted : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :cond_f
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 835
    .restart local v9       #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10

    iget-object v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 837
    :cond_10
    const/4 v15, 0x0

    iput v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 838
    new-instance v14, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v14, v15, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 839
    .local v14, temp_go:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    invoke-interface {v7, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_11

    .line 840
    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 842
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v14}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 843
    add-int/lit8 v6, v6, 0x1

    .line 844
    goto :goto_4

    .line 846
    .end local v14           #temp_go:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mGoDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->groupownerAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v15, v15, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v0, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    .line 848
    const/4 v15, 0x0

    iput v15, v9, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 849
    new-instance v13, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-direct {v13, v15, v9}, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 850
    .local v13, temp_gc:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    invoke-interface {v7, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_13

    .line 851
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 853
    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v15, v13}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 854
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 627
    instance-of v3, p2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v3, :cond_1

    move-object v3, p2

    .line 628
    check-cast v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 629
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v3, v3, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 630
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mThisDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 631
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f090414

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 638
    :cond_1
    :goto_0
    instance-of v3, p2, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v3, :cond_3

    move-object v1, p2

    .line 639
    check-cast v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;

    .line 640
    .local v1, peer:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 641
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 642
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    sget v4, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-lt v3, v4, :cond_6

    .line 643
    invoke-virtual {v1, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 644
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 672
    :cond_2
    :goto_1
    const-string v3, "WifiP2pDevicePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "# of Selected Peers : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    .end local v1           #peer:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    if-ne p2, v3, :cond_4

    .line 675
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sget v4, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-le v3, v4, :cond_c

    .line 676
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 677
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 697
    :cond_4
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 634
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 635
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->send()Z

    goto :goto_0

    .line 647
    .restart local v1       #peer:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto :goto_1

    .line 650
    :cond_7
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_1

    .line 653
    :cond_8
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 654
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v3}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    sget v4, Landroid/net/wifi/p2p/WifiP2pManager;->MAX_CLIENT_SUPPORT:I

    if-lt v3, v4, :cond_9

    .line 655
    invoke-virtual {v1, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 656
    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_1

    .line 659
    :cond_9
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 660
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v4, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 662
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v5}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 667
    :cond_a
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 668
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v6}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 669
    :cond_b
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto/16 :goto_1

    .line 680
    .end local v1           #peer:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    :cond_c
    const/4 v0, 0x1

    .local v0, i:I
    :goto_3
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_f

    .line 681
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 682
    .local v2, temp:Landroid/preference/Preference;
    instance-of v3, v2, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;

    if-eqz v3, :cond_d

    move-object v1, v2

    .line 683
    check-cast v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;

    .line 684
    .restart local v1       #peer:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectAll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    .line 685
    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 686
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 680
    .end local v1           #peer:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    :cond_d
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 689
    .restart local v1       #peer:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    :cond_e
    iget-object v3, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    iget-object v4, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-virtual {v3, v4}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->remove(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    goto :goto_4

    .line 693
    .end local v1           #peer:Lcom/android/settings_ex/wifi/p2p/WifiP2pAvailablePeer;
    .end local v2           #temp:Landroid/preference/Preference;
    :cond_f
    const-string v3, "WifiP2pDevicePicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SelectAll, # of Selected Peers : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mSelectedPeers:Landroid/net/wifi/p2p/WifiP2pDeviceList;

    invoke-virtual {v5}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 521
    const-string v0, "WifiP2pDevicePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume(), p2p enabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", p2p connected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->isP2pConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isWifiDirectAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 529
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 530
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/p2p/WifiP2pDevicePicker;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 531
    return-void
.end method
