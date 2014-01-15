.class public Lcom/android/settings_ex/wfd/WfdPickerActivity;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WfdPickerActivity.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# static fields
.field private static final ACTION_NFC_CONECT:Ljava/lang/String; = "com.samsung.wfd.NFC_CONNECT"

.field public static final ACTION_SELECT_DEV:Ljava/lang/String; = "com.samsung.wfd.SELECT_DEV_TO_WRITE"

.field private static final ACTION_WRITE_NFC:Ljava/lang/String; = "com.samsung.wfd.WRITE_NFC"

.field private static final AFTER_SHAKE:I = 0x1e1

.field private static final CONNECTION_TIMEOUT_SECONDS:I = 0x3c

.field private static final CONNECT_MAX_RETRIES:I = 0x3

.field private static final CONNECT_RETRY_DELAY_MILLIS:I = 0x1f4

.field private static final DBG:Z = false

.field private static final DIALOG_AUTO_CONNECT:I = 0xb

.field private static final DIALOG_ERROR_CONNECT_FAILED:I = 0xd

.field private static final DIALOG_ERROR_NETWORK_FAILED:I = 0xe

.field private static final DIALOG_RENAME:I = 0xf

.field private static final DIALOG_TERMINATE:I = 0xc

.field private static final HELP_ACTIVITY:I = 0x0

.field private static final KEY_AVAILABLE_DEVICES:Ljava/lang/String; = "allsharecast_available"

.field private static final KEY_CONNECTED_DEVICES:Ljava/lang/String; = "allsharecast_connected"

.field public static final KEY_LAST_CONNECTED_DEVICE_ADDR:Ljava/lang/String; = "wlan.wfd.lastdeviceaddr"

.field public static final KEY_LAST_CONNECTED_DEVICE_NAME:Ljava/lang/String; = "wlan.wfd.lastdevicename"

.field private static final KEY_MULTI_PANE_SWITCH:Ljava/lang/String; = "allsharecast_switch"

.field private static final MAX_NAME_LENGTH:I = 0x17

.field private static final MENU_ID_ENDCONNECT:I = 0x2

.field private static final MENU_ID_HELP:I = 0x3

.field private static final MENU_ID_PIN:I = 0x4

.field private static final MENU_ID_SCAN_STOP:I = 0x1

.field private static final MENU_TYPE_ENDCONNECT:I = 0x4

.field private static final MENU_TYPE_NONE:I = 0x1

.field private static final MENU_TYPE_SCAN:I = 0x2

.field private static final MENU_TYPE_STOP:I = 0x3

.field private static final MIN_NAME_LENGTH:I = 0x17

.field private static final RTSP_TIMEOUT_SECONDS:I = 0xf

.field private static final SHAKE_SUCCEED:I = 0x1e0

.field private static final TOT_SCANNING_LIMIT_TIME:I = 0xa

.field private static final TOT_SCANNING_TIME:I = 0xa

.field private static final TOT_SCANNING_TIME_MS:I = 0x2710

.field private static final WFD_PICKER_STATE_CONNECTED:I = 0x5

.field private static final WFD_PICKER_STATE_CONNECTING:I = 0x4

.field private static final WFD_PICKER_STATE_DISABLED:I = 0x1

.field private static final WFD_PICKER_STATE_DISCONNECTED:I = 0x7

.field private static final WFD_PICKER_STATE_ENABLED:I = 0x2

.field private static final WFD_PICKER_STATE_SCANNING:I = 0x3

.field private static final WFD_PICKER_STATE_SCANSTOP:I = 0x6

.field private static final WFD_PICKER_STATE_UNKNOWN:I

.field private static mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

.field private static mWfdAlreadyEnabled:Z

.field private static mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# instance fields
.field private final ACTION_ALLSHARE_CAST_START:Ljava/lang/String;

.field private final ACTION_WFD_RESTART:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private final TEST:Ljava/lang/Boolean;

.field private TICKS_PER_SEC:J

.field private TOT_CONNECT_TIME:I

.field private TOT_CONNECT_TIME_MS:J

.field private bShowInternalHelp:Z

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivityStartedByAllShare:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mAutoConnStartedFromInv:Z

.field private mAutoConnectDialog:Landroid/app/AlertDialog;

.field private mAutoConnectSysProp:Ljava/lang/String;

.field private mCanShake:Z

.field private mCastEndConnect:Landroid/view/MenuItem;

.field private mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

.field mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field private mConnectingDialogCalled:Z

.field private mConnectionRetriesLeft:I

.field private final mConnectionTimeout:Ljava/lang/Runnable;

.field private mControlByWfdService:I

.field private mCurDialog:Landroid/app/AlertDialog;

.field private mCurMenuType:I

.field private mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

.field mCurrentWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mEditDeviceName:Landroid/widget/EditText;

.field private mEmptyMessage:Landroid/widget/TextView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableControlByWfdService:Z

.field private mErrorHandlingDialog:Landroid/app/AlertDialog;

.field private mInPickerDialog:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mIsConnectRequestedFlag:Z

.field private mIsP2pBusyDialogCalled:Z

.field private mIsPaused:Z

.field private mIsTablet:Z

.field private mLastConnectDeviceAddr:Ljava/lang/String;

.field private mLastConnectDeviceName:Ljava/lang/String;

.field private mListView:Landroid/widget/ListView;

.field private mMenuItemHelp:Landroid/view/MenuItem;

.field private mMenuItemScanStop:Landroid/view/MenuItem;

.field private mMotionHandler:Landroid/os/Handler;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mMultiPaneSwitch:Landroid/preference/SwitchPreference;

.field private mNfcWriteMode:Z

.field private mNoDeviceImage:Landroid/widget/ImageView;

.field private mNoDeviceText:Landroid/widget/TextView;

.field private mNotNfcEntry:Z

.field private mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mPeersConnected:Landroid/preference/PreferenceGroup;

.field private mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mRtspTimeout:Ljava/lang/Runnable;

.field private mSRController:Lcom/sec/android/app/screenrecorder/remote/SRServiceController;

.field private mScanningTimer:Landroid/os/CountDownTimer;

.field private mTempSsid:Ljava/lang/String;

.field private mTerminatedFlag:Z

.field private mTickCount:I

.field private mWFDDialogState:I

.field private mWFDSettingState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWfdDeviceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mWfdEnabled:Z

.field private mWfdManager:Lcom/samsung/wfd/WfdManager;

.field private mWfdState:I

.field private mWfdSwitchEnabler:Lcom/android/settings_ex/wfd/WfdSwitchEnabler;

.field private mWfdTerminateDialog:Landroid/app/AlertDialog;

.field private final wfdStateArr:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    sput-object v1, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 195
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdAlreadyEnabled:Z

    .line 200
    sput-object v1, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 118
    const-string v0, "WfdPickerActivity"

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->TAG:Ljava/lang/String;

    .line 119
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->TEST:Ljava/lang/Boolean;

    .line 131
    iput v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 140
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 143
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 144
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 146
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    .line 147
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 148
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 156
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings_ex/wfd/WfdSwitchEnabler;

    .line 168
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "WFD_PICKER_STATE_UNKNOWN"

    aput-object v1, v0, v4

    const-string v1, "WFD_PICKER_STATE_DISABLED"

    aput-object v1, v0, v5

    const-string v1, "WFD_PICKER_STATE_ENABLED"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "WFD_PICKER_STATE_SCANNING"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "WFD_PICKER_STATE_CONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "WFD_PICKER_STATE_ESTABLISHED"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WFD_PICKER_STATE_SCANSTOP"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "WFD_PICKER_STATE_DISCONNECTED"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->wfdStateArr:[Ljava/lang/String;

    .line 175
    const/16 v0, 0x28

    iput v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->TOT_CONNECT_TIME:I

    .line 176
    const-wide/32 v0, 0x9c40

    iput-wide v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->TOT_CONNECT_TIME_MS:J

    .line 177
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    .line 179
    iput v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 181
    iput v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 183
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 184
    iput v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdState:I

    .line 185
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    .line 186
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    .line 187
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 188
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 189
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    .line 190
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 191
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 192
    iput-boolean v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsPaused:Z

    .line 193
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z

    .line 194
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    .line 196
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 198
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 199
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 208
    const-string v0, "com.samsung.wfd.PICK_WFD_NETWORK"

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->ACTION_WFD_RESTART:Ljava/lang/String;

    .line 209
    const-string v0, "com.sec.android.allshare.intent.action.CAST_START"

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->ACTION_ALLSHARE_CAST_START:Ljava/lang/String;

    .line 215
    iput v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTickCount:I

    .line 216
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 218
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 219
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 220
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    .line 221
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->bShowInternalHelp:Z

    .line 223
    iput v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 224
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 225
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    .line 226
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    .line 227
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    .line 228
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    .line 230
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    .line 231
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 232
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 234
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 235
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    .line 237
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    .line 241
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 243
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 247
    iput-boolean v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCanShake:Z

    .line 249
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mSRController:Lcom/sec/android/app/screenrecorder/remote/SRServiceController;

    .line 250
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    .line 252
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    .line 255
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    .line 257
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;

    .line 259
    new-instance v0, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$1;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 493
    new-instance v0, Lcom/android/settings_ex/wfd/WfdPickerActivity$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$2;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 511
    new-instance v0, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$3;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionHandler:Landroid/os/Handler;

    .line 2618
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2619
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2622
    iput v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectionRetriesLeft:I

    .line 2628
    new-instance v0, Lcom/android/settings_ex/wfd/WfdPickerActivity$22;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$22;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectionTimeout:Ljava/lang/Runnable;

    .line 2640
    new-instance v0, Lcom/android/settings_ex/wfd/WfdPickerActivity$23;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$23;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mRtspTimeout:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->cancelWfdConnect()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mControlByWfdService:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mControlByWfdService:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->scanDevice()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setDialogListener(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    return-object v0
.end method

.method static synthetic access$200()Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    return-void
.end method

.method static synthetic access$202(Landroid/net/wifi/p2p/WifiP2pGroup;)Landroid/net/wifi/p2p/WifiP2pGroup;
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    sput-object p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCreatedGroupInfo:Landroid/net/wifi/p2p/WifiP2pGroup;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCanShake:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/hardware/motion/MotionRecognitionManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/hardware/motion/MRListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/settings_ex/wfd/WfdPickerActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setDeviceName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1

    .prologue
    .line 115
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3002(Lcom/android/settings_ex/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setCastMenu(I)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/preference/PreferenceGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDDialogState:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$3810(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTickCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTickCount:I

    return v0
.end method

.method static synthetic access$3900(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->displayConnectionFailed()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Lcom/samsung/wfd/WfdManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/settings_ex/wfd/WfdPickerActivity;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$4202(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic access$4300(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Lcom/android/settings_ex/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/settings_ex/wfd/WfdPickerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->finishScanDevice(I)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->handleConnectionFailure(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->removeAutoConnectDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wfd/WfdPickerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdState:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wfd/WfdPickerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings_ex/wfd/WfdPickerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    return p1
.end method

.method private addActionsTo(Landroid/content/IntentFilter;)V
    .locals 1
    .parameter "intentFilter"

    .prologue
    .line 807
    const-string v0, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    const-string v0, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 810
    const-string v0, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 811
    const-string v0, "android.intent.action.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    const-string v0, "com.samsung.wfd.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    const-string v0, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    const-string v0, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 2
    .parameter "messageId"

    .prologue
    .line 2349
    const-string v0, "WfdPickerActivity"

    const-string v1, "addMessagePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2350
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 2351
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2352
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2353
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 2354
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2358
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 2359
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2360
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2361
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2363
    :cond_1
    return-void
.end method

.method private autoConnecting()V
    .locals 6

    .prologue
    .line 2708
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 2710
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectedDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-nez v3, :cond_1

    .line 2711
    const-string v3, "WfdPickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Connecting to Wifi display: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v5, v5, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2715
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-nez v3, :cond_0

    .line 2716
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 2717
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v3, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 2724
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-static {v3}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    .line 2726
    .local v1, display:Landroid/hardware/display/WifiDisplay;
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2727
    .local v2, newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    sget-object v3, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/android/settings_ex/wfd/WfdPickerActivity$24;

    invoke-direct {v5, p0, v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity$24;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v3, v4, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2752
    .end local v0           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v1           #display:Landroid/hardware/display/WifiDisplay;
    .end local v2           #newDevice:Landroid/net/wifi/p2p/WifiP2pDevice;
    :goto_1
    return-void

    .line 2719
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->makePinConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v0

    .line 2720
    .restart local v0       #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setDialogListener(Z)V

    goto :goto_0

    .line 2751
    .end local v0           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    :cond_1
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_1
.end method

.method private cancelWfdConnect()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2081
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2085
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2086
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if (isWfdConnected() == true)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2088
    iput-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 2143
    :cond_0
    :goto_0
    return-void

    .line 2090
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2091
    const-string v0, "WfdPickerActivity"

    const-string v1, "cancelWfdConnect if (isP2pConnected() && isWfdConnected() == false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wfd/WfdPickerActivity$18;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$18;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2111
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2113
    iput-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    goto :goto_0

    .line 2116
    :cond_2
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wfd/WfdPickerActivity$19;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$19;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2127
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2129
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    .line 2131
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2132
    iput-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 2133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2134
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setDialogListener(Z)V

    .line 2135
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_0
.end method

.method private changeActionBar()V
    .locals 5

    .prologue
    const/16 v3, 0x10

    const/4 v4, -0x2

    .line 1452
    const-string v1, "WfdPickerActivity"

    const-string v2, "changeActionBar"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v1, :cond_0

    .line 1455
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1457
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_1

    .line 1468
    .end local v0           #actionBar:Landroid/app/ActionBar;
    :cond_0
    :goto_0
    return-void

    .line 1461
    .restart local v0       #actionBar:Landroid/app/ActionBar;
    :cond_1
    invoke-virtual {v0, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1463
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    goto :goto_0
.end method

.method private clearLastConnectedDeviceInfo()V
    .locals 2

    .prologue
    .line 2209
    const-string v0, "WfdPickerActivity"

    const-string v1, "clearLastConnectedDeviceInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2212
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 2213
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 2215
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2217
    return-void
.end method

.method private connectByNFC(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4
    .parameter "dev"
    .parameter "peer"
    .parameter "activityIntent"
    .parameter "intentAction"

    .prologue
    .line 1630
    invoke-direct {p0, p3}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 1631
    .local v0, devAddr:Ljava/lang/String;
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1634
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device is found in the list device name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    iput-object p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1636
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1638
    invoke-direct {p0, p2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;)V

    .line 1640
    :cond_0
    return-void
.end method

.method private connectLastConnection(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;)V
    .locals 2
    .parameter "dev"
    .parameter "peer"

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1622
    :cond_0
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1623
    invoke-direct {p0, p2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;)V

    .line 1625
    :cond_1
    return-void
.end method

.method private convertDevAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "addr"

    .prologue
    const/16 v8, 0xe

    const/16 v7, 0xc

    const/4 v6, 0x0

    .line 1583
    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1}, Ljava/util/Formatter;-><init>()V

    .line 1584
    .local v1, partialMacAddr:Ljava/util/Formatter;
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1585
    .local v2, subString:Ljava/lang/String;
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1587
    .local v0, enable:I
    xor-int/lit16 v0, v0, 0x80

    .line 1588
    const-string v3, "%02x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private createAutoConnectDialog()Landroid/app/AlertDialog;
    .locals 11

    .prologue
    const/4 v2, 0x0

    const/4 v10, 0x0

    .line 1971
    const-string v0, "WfdPickerActivity"

    const-string v1, "createAutoConnectDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    .line 1975
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    .line 1976
    .local v7, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f040156

    invoke-virtual {v7, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1977
    .local v9, vwTitleView:Landroid/view/View;
    const v0, 0x7f0b00f7

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1978
    .local v8, txViewTitle:Landroid/widget/TextView;
    const v0, 0x7f090443

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1979
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setCustomTitle(Landroid/view/View;)V

    .line 1981
    const v0, 0x7f04014f

    invoke-virtual {v7, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 1983
    .local v6, bodyView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 1986
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1988
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v10}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 1990
    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->TOT_CONNECT_TIME:I

    iput v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTickCount:I

    .line 1992
    new-instance v0, Lcom/android/settings_ex/wfd/WfdPickerActivity$15;

    iget-wide v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->TOT_CONNECT_TIME_MS:J

    iget-wide v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity$15;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 2005
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2007
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 2008
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->autoConnecting()V

    .line 2009
    iput-boolean v10, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 2012
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings_ex/wfd/WfdPickerActivity$16;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$16;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2033
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f09069a

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/wfd/WfdPickerActivity$17;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$17;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2054
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private createDongleRenameDialog()Landroid/app/AlertDialog;
    .locals 9

    .prologue
    .line 1684
    const/4 v6, 0x1

    new-array v1, v6, [Landroid/text/InputFilter;

    .line 1685
    .local v1, filters:[Landroid/text/InputFilter;
    const/4 v6, 0x0

    new-instance v7, Lcom/android/settings_ex/wfd/WfdPickerActivity$6;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$6;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    aput-object v7, v1, v6

    .line 1706
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 1707
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v6, 0x7f040180

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1708
    .local v4, layout:Landroid/view/View;
    const v6, 0x7f0b043c

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    .line 1709
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1710
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    const/16 v7, 0x4000

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setInputType(I)V

    .line 1711
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1712
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v6, :cond_0

    .line 1713
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v7, v7, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1716
    :cond_0
    new-instance v6, Lcom/android/settings_ex/wfd/WfdPickerActivity$7;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$7;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    iput-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1728
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 1729
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->selectAll()V

    .line 1730
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1732
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f090406

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f090699

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/settings_ex/wfd/WfdPickerActivity$9;

    invoke-direct {v8, p0, v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity$9;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const v8, 0x7f09069a

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/settings_ex/wfd/WfdPickerActivity$8;

    invoke-direct {v8, p0, v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity$8;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1755
    .local v0, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1756
    new-instance v6, Lcom/android/settings_ex/wfd/WfdPickerActivity$10;

    invoke-direct {v6, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$10;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1763
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 1765
    const/4 v6, -0x1

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 1766
    .local v5, mOkButton:Landroid/widget/Button;
    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEditDeviceName:Landroid/widget/EditText;

    new-instance v7, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;

    invoke-direct {v7, p0, v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity$11;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;Landroid/widget/Button;)V

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1805
    return-object v0
.end method

.method private createErrorHandlingDialog(I)Landroid/app/AlertDialog;
    .locals 4
    .parameter "nErrorType"

    .prologue
    .line 1912
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createErrorHandlingDialog << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    .line 1914
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f090443

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 1916
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1918
    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    .line 1919
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f090446

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1926
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f090699

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/wfd/WfdPickerActivity$14;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$14;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1944
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    return-object v0

    .line 1921
    :cond_1
    const/16 v0, 0xe

    if-ne p1, v0, :cond_0

    .line 1922
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mErrorHandlingDialog:Landroid/app/AlertDialog;

    const v1, 0x7f090447

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private createWfdTerminateDialog()Landroid/app/AlertDialog;
    .locals 4

    .prologue
    .line 1867
    const-string v0, "WfdPickerActivity"

    const-string v1, "createWfdTerminateDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1868
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    .line 1870
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f090443

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 1872
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const v1, 0x7f090445

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1875
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    const v2, 0x7f090699

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/wfd/WfdPickerActivity$12;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$12;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1898
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    const v2, 0x7f09069a

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/settings_ex/wfd/WfdPickerActivity$13;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$13;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1907
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdTerminateDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method private static createWifiDisplay(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/hardware/display/WifiDisplay;
    .locals 4
    .parameter "device"

    .prologue
    .line 2679
    new-instance v0, Landroid/hardware/display/WifiDisplay;

    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/display/WifiDisplay;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private displayConnectionFailed()V
    .locals 2

    .prologue
    .line 1956
    const-string v0, "WfdPickerActivity"

    const-string v1, "displayConnectionFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1957
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1959
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->removeAutoConnectDialog()V

    .line 1961
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->cancelWfdConnect()V

    .line 1962
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 1963
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 1967
    :cond_0
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 1968
    return-void
.end method

.method private finishScanDevice(I)V
    .locals 6
    .parameter "result"

    .prologue
    const/4 v5, 0x0

    .line 2532
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "finishScanDevice << result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2534
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2536
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    .line 2537
    const-string v2, "WfdPickerActivity"

    const-string v3, "mWfdDeviceList is NULL"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2617
    :cond_0
    :goto_0
    return-void

    .line 2541
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2542
    const-string v2, "WfdPickerActivity"

    const-string v3, "finishScanDevice GetActivity is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2546
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2547
    packed-switch p1, :pswitch_data_0

    .line 2575
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "check the reason:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2578
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 2580
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2582
    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v2, :cond_4

    .line 2583
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/wfd/WfdPickerDialog;

    invoke-virtual {v2}, Lcom/android/settings_ex/wfd/WfdPickerDialog;->changeToScan()V

    .line 2588
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 2589
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2590
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2549
    :pswitch_0
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scan timer expired! peer list num is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2553
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 2554
    .local v0, nfcAddr:Ljava/lang/String;
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nfc dev info : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2555
    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2556
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->displayConnectionFailed()V

    goto :goto_1

    .line 2561
    .end local v0           #nfcAddr:Ljava/lang/String;
    :pswitch_1
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discoverPeers received onFailure! peer list num is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2563
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2564
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v2, v5}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_0

    .line 2570
    :pswitch_2
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "discoverPeers cancel! peer list num is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 2593
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-nez p1, :cond_0

    .line 2596
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 2598
    .local v1, peer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    iget-object v2, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2600
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2602
    :cond_6
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoconnect prop"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2608
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;)V

    goto/16 :goto_0

    .line 2547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getLastConnectedDeviceInfo()V
    .locals 6

    .prologue
    .line 2146
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "WfdPickerActivity"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2148
    .local v2, pref_r:Landroid/content/SharedPreferences;
    const-string v3, "wlan.wfd.lastdevicename"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2150
    .local v1, mLastDeviceName:Ljava/lang/String;
    const-string v3, "wlan.wfd.lastdeviceaddr"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2153
    .local v0, mLastDeviceAddr:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 2154
    iput-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 2157
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 2158
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 2161
    :cond_1
    const-string v3, "WfdPickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLastConnectedDeviceInfo Last n:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2163
    return-void
.end method

.method private getNfcDevAddrFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .parameter "activityIntent"

    .prologue
    const/4 v3, 0x0

    .line 1643
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;

    move-result-object v0

    .line 1644
    .local v0, msgs:[Landroid/nfc/NdefMessage;
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    .line 1646
    aget-object v2, v0, v3

    invoke-virtual {v2}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v1

    .line 1647
    .local v1, payload:[B
    const-string v2, "WfdPickerActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connecting by nfc dev addr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 1652
    .end local v1           #payload:[B
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Ljava/lang/String;

    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getPreviousWifiState()Z
    .locals 7

    .prologue
    .line 1816
    const/4 v4, 0x0

    .line 1817
    .local v4, ret:Z
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v5, :cond_0

    .line 1819
    :try_start_0
    const-string v5, "com.samsung.wfd.WfdManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1820
    .local v2, refClass:Ljava/lang/Class;
    const-string v5, "getPreviousWifiState"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1821
    .local v1, method:Ljava/lang/reflect/Method;
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    .line 1822
    .local v3, result:Ljava/lang/Boolean;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1830
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #refClass:Ljava/lang/Class;
    .end local v3           #result:Ljava/lang/Boolean;
    :cond_0
    :goto_0
    return v4

    .line 1824
    :catch_0
    move-exception v0

    .line 1825
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "WfdPickerActivity"

    const-string v6, "this method is not supported for this model"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private getSecuredMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mac"

    .prologue
    const/16 v3, 0x11

    .line 1594
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 1595
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

    .line 1597
    .end local p1
    :cond_0
    return-object p1
.end method

.method private handleConnectionFailure(Z)V
    .locals 2
    .parameter "timeoutOccurred"

    .prologue
    .line 2654
    const-string v0, "WfdPickerActivity"

    const-string v1, "Wifi display connection failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2656
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    if-eqz v0, :cond_0

    .line 2657
    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectionRetriesLeft:I

    if-lez v0, :cond_0

    .line 2658
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2676
    :cond_0
    return-void
.end method

.method private handleIntentActions(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 6
    .parameter "activity"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 763
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, intentAction:Ljava/lang/String;
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 768
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    .line 770
    if-eqz v0, :cond_1

    .line 771
    const-string v1, "com.sec.android.allshare.intent.action.CAST_START"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 773
    :cond_0
    iput-boolean v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    .line 779
    :cond_1
    :goto_0
    return-void

    .line 774
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.samsung.wfd.SELECT_DEV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 775
    iput-boolean v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    goto :goto_0
.end method

.method private initConnectedDevUI(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter "preferenceScreen"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1601
    const-string v0, "WfdPickerActivity"

    const-string v1, "show connected devices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1605
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1606
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1608
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    const v1, 0x7f090409

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 1609
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1611
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 1613
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1614
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1616
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1617
    return-void
.end method

.method private initMemberVariables()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 644
    const-string v0, "WfdPickerActivity"

    const-string v1, "Initializing member variables"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/wfd/WfdPickerDialog;

    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    .line 647
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    .line 648
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mInPickerDialog:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    iput v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 651
    iput-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 653
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 654
    iput v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 655
    iput-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsConnectRequestedFlag:Z

    .line 656
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCanShake:Z

    .line 658
    const-string v0, "wlan.wfd.autoconnect"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    .line 659
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProp wlan.wfd.autoconnect:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnectSysProp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const-string v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->bShowInternalHelp:Z

    .line 663
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isNotNfcEntry()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    .line 665
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->addActionsTo(Landroid/content/IntentFilter;)V

    .line 666
    return-void
.end method

.method private initUI()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 733
    const v2, 0x7f070095

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 735
    const-string v2, "allsharecast_available"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ex/ProgressCategory;

    iput-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    .line 736
    const-string v2, "allsharecast_connected"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    .line 737
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 739
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/ProgressCategory;->setIgnoreNoDevice(Z)V

    .line 740
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v2, v4}, Lcom/android/settings_ex/ProgressCategory;->setIgnoreMessage(Z)V

    .line 742
    const-string v2, "allsharecast_switch"

    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    .line 744
    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v2, :cond_0

    .line 745
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 748
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 749
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 750
    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 752
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 753
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    .line 759
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    :goto_0
    invoke-virtual {p0, v4}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 760
    return-void

    .line 755
    .restart local v1       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    goto :goto_0
.end method

.method private isDongleRenameAvailable()Z
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 1810
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->isDongleRenameAvailable()Z

    move-result v0

    .line 1812
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNotNfcEntry()Z
    .locals 4

    .prologue
    .line 680
    const/4 v0, 0x0

    .line 682
    .local v0, msgs:[Landroid/nfc/NdefMessage;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 683
    .local v1, rawMsgs:[Landroid/os/Parcelable;
    if-eqz v1, :cond_0

    .line 684
    const/4 v2, 0x0

    .line 686
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private isP2pConnected()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2815
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2818
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2821
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_0

    .line 2822
    const-string v4, "WfdPickerActivity"

    const-string v5, "isP2pConnected >> true"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    const/4 v3, 0x1

    .line 2832
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 2825
    .restart local v0       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v2       #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    const-string v4, "WfdPickerActivity"

    const-string v5, "isP2pConnected >> false"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2828
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 2829
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "WfdPickerActivity"

    const-string v5, "isP2pConnected - NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isP2pEnabled()Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 2837
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 2840
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 2843
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2844
    const-string v4, "WfdPickerActivity"

    const-string v5, "isP2pEnabled >> true!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2845
    const/4 v3, 0x1

    .line 2854
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 2847
    .restart local v0       #connectivityManager:Landroid/net/ConnectivityManager;
    .restart local v2       #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    const-string v4, "WfdPickerActivity"

    const-string v5, "isP2pEnabled >> false!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2850
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :catch_0
    move-exception v1

    .line 2851
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v4, "WfdPickerActivity"

    const-string v5, "isP2pEnabled - NullPointerException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static isPrimarySinkDeviceType(I)Z
    .locals 2
    .parameter "deviceType"

    .prologue
    const/4 v0, 0x1

    .line 2754
    if-eq p0, v0, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 3
    .parameter "dev"

    .prologue
    .line 2766
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->GOdeviceName:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupClient()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2768
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CheckItemWifiBusy >> ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is busy device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    const/4 v0, 0x1

    .line 2772
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z
    .locals 1
    .parameter "dev"

    .prologue
    .line 2759
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isSessionAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->isWfdEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isPrimarySinkDeviceType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makePinConnConfig(Landroid/net/wifi/p2p/WifiP2pDevice;)Landroid/net/wifi/p2p/WifiP2pConfig;
    .locals 3
    .parameter "mP2pDevice"

    .prologue
    .line 2070
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 2071
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makePinConnConfig << n:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2073
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 2075
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->wps:Landroid/net/wifi/WpsInfo;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/wifi/WpsInfo;->setup:I

    .line 2076
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    return-object v0
.end method

.method private printWfdSettingState()V
    .locals 4

    .prologue
    .line 2220
    const-string v0, "printWfdSettingState << curr WFDState is "

    .line 2221
    .local v0, stateStr:Ljava/lang/String;
    iget v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x7

    if-gt v1, v2, :cond_0

    .line 2222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->wfdStateArr:[Ljava/lang/String;

    iget v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2227
    :goto_0
    const-string v1, "WfdPickerActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    return-void

    .line 2224
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown! curr WFDState is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "name"
    .parameter "addr"

    .prologue
    .line 2192
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "WfdPickerActivity"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 2194
    .local v2, pref_w:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 2196
    .local v1, edit:Landroid/content/SharedPreferences$Editor;
    const-string v3, "wlan.wfd.lastdevicename"

    invoke-interface {v1, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2197
    const-string v3, "wlan.wfd.lastdeviceaddr"

    invoke-interface {v1, v3, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2199
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2201
    const-string v3, "WfdPickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLastConnectedDeviceInfo Last n:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2206
    .end local v1           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v2           #pref_w:Landroid/content/SharedPreferences;
    :goto_0
    return-void

    .line 2203
    :catch_0
    move-exception v0

    .line 2204
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WfdPickerActivity"

    const-string v4, "putLastConnectedDeviceInfo - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private removeAutoConnectDialog()V
    .locals 1

    .prologue
    .line 2058
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2059
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 2060
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 2061
    return-void
.end method

.method private retrieveServiceManagers()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 692
    const-string v1, "WfdPickerActivity"

    const-string v2, "Retrieving Service Managers"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const-string v1, "WfdPickerActivity"

    const-string v2, "try to getSystemService WIFI_DISPLAY_SERVICE..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    const-string v1, "wifip2p"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pManager;

    sput-object v1, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 697
    sget-object v1, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_3

    .line 698
    sget-object v1, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 701
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v1, :cond_0

    .line 702
    const-string v1, "WfdPickerActivity"

    const-string v2, "Failed to set up connection with wifi p2p service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    sput-object v5, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 710
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "device_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 713
    sget-object v1, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_1

    .line 714
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setDialogListener(Z)V

    .line 716
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "cause"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 718
    .local v0, option:I
    packed-switch v0, :pswitch_data_0

    .line 724
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v1, :cond_2

    .line 726
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "motion_recognition"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 727
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setWfdEnabled()V

    .line 730
    :cond_2
    return-void

    .line 707
    .end local v0           #option:I
    :cond_3
    const-string v1, "WfdPickerActivity"

    const-string v2, "mWifiP2pManager is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 720
    .restart local v0       #option:I
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mActivityStartedByAllShare:Z

    goto :goto_1

    .line 718
    nop

    :pswitch_data_0
    .packed-switch 0x22077
        :pswitch_0
    .end packed-switch
.end method

.method private scanDevice()V
    .locals 6

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x3

    .line 2454
    const-string v0, "WfdPickerActivity"

    const-string v1, "scanDevice"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2456
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2457
    const-string v0, "WfdPickerActivity"

    const-string v1, "scanDevice GetActivity is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    :cond_0
    :goto_0
    return-void

    .line 2461
    :cond_1
    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ne v0, v3, :cond_2

    .line 2462
    const-string v0, "WfdPickerActivity"

    const-string v1, "already scanning devices"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2466
    :cond_2
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 2467
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTickCount:I

    .line 2469
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2471
    const-string v0, "WfdPickerActivity"

    const-string v1, "remove current device list!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 2474
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 2475
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    const v1, 0x7f090408

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 2476
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 2478
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2480
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_3

    .line 2481
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2482
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2485
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2486
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2488
    invoke-direct {p0, v3}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2489
    iput v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 2490
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_4

    .line 2491
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wfd/WfdPickerDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wfd/WfdPickerDialog;->changeToStop()V

    .line 2494
    :cond_4
    new-instance v0, Lcom/android/settings_ex/wfd/WfdPickerActivity$20;

    const-wide/16 v2, 0x2710

    iget-wide v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->TICKS_PER_SEC:J

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity$20;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;JJ)V

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    .line 2504
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 2507
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2509
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2510
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto/16 :goto_0

    .line 2514
    :cond_5
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/16 v2, 0x64b

    new-instance v3, Lcom/android/settings_ex/wfd/WfdPickerActivity$21;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$21;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto/16 :goto_0
.end method

.method private setAllShareCastSwitch()V
    .locals 10

    .prologue
    const/16 v6, 0x10

    const/4 v9, -0x2

    const/4 v8, 0x0

    .line 844
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 845
    .local v0, activity:Landroid/app/Activity;
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    .line 847
    instance-of v4, v0, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_2

    move-object v3, v0

    .line 848
    check-cast v3, Landroid/preference/PreferenceActivity;

    .line 849
    .local v3, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-nez v4, :cond_1

    .line 851
    :cond_0
    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 854
    .local v1, padding:I
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v8, v8, v1, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 855
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 858
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v9, v9, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 866
    .end local v1           #padding:I
    :cond_1
    invoke-virtual {v3}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 867
    new-instance v4, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-direct {v4, v0, v5, p0}, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    iput-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings_ex/wfd/WfdSwitchEnabler;

    .line 874
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    .line 875
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    .line 876
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 878
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 880
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_6

    .line 882
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->updateScreenOnEnabled()V

    .line 889
    :goto_1
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 891
    :cond_3
    new-instance v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {v2}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 892
    .local v2, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 893
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdManager;->getDisplayDeviceName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 894
    iput v8, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 895
    const/4 v4, 0x5

    iput v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 896
    iput-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 897
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v4}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 900
    .end local v2           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_4
    return-void

    .line 869
    .restart local v3       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_5
    new-instance v4, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v4, v0, v5, p0}, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    iput-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings_ex/wfd/WfdSwitchEnabler;

    goto/16 :goto_0

    .line 885
    .end local v3           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->updateScreenOnDisabled()V

    goto :goto_1
.end method

.method private setCastMenu(I)V
    .locals 9
    .parameter "menuType"

    .prologue
    const v8, 0x7f020305

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 2366
    const-string v3, "WfdPickerActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCastMenu in with menuType "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 2370
    .local v0, isLandscape:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    if-nez v3, :cond_3

    .line 2371
    :cond_0
    const-string v1, "WfdPickerActivity"

    const-string v2, "setCastMenu menu item is not created yet"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    :cond_1
    :goto_1
    :pswitch_0
    return-void

    .end local v0           #isLandscape:Z
    :cond_2
    move v0, v2

    .line 2368
    goto :goto_0

    .line 2375
    .restart local v0       #isLandscape:Z
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v3, :cond_1

    .line 2377
    iget-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_8

    .line 2378
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2379
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const/4 v4, 0x4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2386
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "launch_from_help"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2387
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2390
    :cond_6
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 2395
    :pswitch_1
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_7

    if-eqz v0, :cond_9

    .line 2397
    :cond_7
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v3, 0x7f0200d5

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2398
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2406
    :goto_3
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2407
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v3, 0x7f090417

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2409
    iput p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurMenuType:I

    goto :goto_1

    .line 2381
    :cond_8
    iget-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v3, :cond_5

    .line 2382
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2383
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_2

    .line 2402
    :cond_9
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2403
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_3

    .line 2413
    :pswitch_2
    const-string v2, "WfdPickerActivity"

    const-string v3, "MENU_TYPE_SCAN_STOP"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2414
    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v2, :cond_a

    if-eqz v0, :cond_b

    .line 2415
    :cond_a
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v3, 0x7f0200d7

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2416
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2424
    :goto_4
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2425
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v3, 0x7f0906da

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2427
    iput p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 2429
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v2, v1}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_1

    .line 2420
    :cond_b
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v2, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2421
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_4

    .line 2433
    :pswitch_3
    const-string v3, "WfdPickerActivity"

    const-string v4, "MENU_TYPE_ENDCONNECT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2434
    iget-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    if-nez v3, :cond_c

    if-eqz v0, :cond_e

    .line 2435
    :cond_c
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v4, 0x7f0200d1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2436
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2437
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v3

    if-eqz v3, :cond_d

    move v3, v2

    :goto_5
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2442
    :goto_6
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v4

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2443
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_7
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2444
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v3, 0x7f090418

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    :cond_d
    move v3, v1

    .line 2437
    goto :goto_5

    .line 2439
    :cond_e
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v3, v7}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 2440
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_6

    :cond_f
    move v2, v1

    .line 2443
    goto :goto_7

    .line 2390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDeviceName(Ljava/lang/String;)V
    .locals 7
    .parameter "deviceName"

    .prologue
    .line 1835
    :try_start_0
    const-string v3, "com.samsung.wfd.WfdManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 1836
    .local v2, refClass:Ljava/lang/Class;
    const-string v3, "setDeviceName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1837
    .local v1, method:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1843
    .end local v1           #method:Ljava/lang/reflect/Method;
    .end local v2           #refClass:Ljava/lang/Class;
    :goto_0
    return-void

    .line 1839
    :catch_0
    move-exception v0

    .line 1840
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "WfdPickerActivity"

    const-string v4, "this method is not supported for this model"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private setDialogListener(Z)V
    .locals 3
    .parameter "option"

    .prologue
    .line 1656
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1657
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings_ex/wfd/WfdPickerActivity$5;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$5;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setDialogListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)V

    .line 1680
    :goto_0
    return-void

    .line 1678
    :cond_0
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setDialogListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DialogListener;)V

    goto :goto_0
.end method

.method private setLastConnectedDeviceInfo(Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 5
    .parameter "currentP2pDevice"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2167
    if-nez p1, :cond_1

    .line 2168
    const-string v0, "WfdPickerActivity"

    const-string v1, "setLastConnectedDeviceInfo if (mP2pDevice == null) initialize!! "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 2171
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    .line 2186
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->putLastConnectedDeviceInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 2188
    return-void

    .line 2173
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 2175
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    .line 2179
    :cond_2
    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2181
    const-string v0, "%s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    goto :goto_0
.end method

.method private startWifiDisplayTo(Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;)V
    .locals 3
    .parameter "mPeer"

    .prologue
    const/4 v2, 0x0

    .line 2684
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2685
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 2686
    iget-object v0, p1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2688
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 2689
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 2690
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    if-eqz v0, :cond_1

    .line 2691
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay without ui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2692
    iput-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 2693
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->autoConnecting()V

    .line 2705
    :cond_0
    :goto_0
    return-void

    .line 2695
    :cond_1
    const-string v0, "WfdPickerActivity"

    const-string v1, "startwifidisplay with ui"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2696
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsPaused:Z

    if-eqz v0, :cond_2

    .line 2697
    const-string v0, "WfdPickerActivity"

    const-string v1, "activity already paused! we don\'t need to create this dialog...skip!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2700
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2701
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0
.end method

.method private stopConnectingCountDown()V
    .locals 1

    .prologue
    .line 2064
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 2065
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mScanningTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 2067
    :cond_0
    return-void
.end method

.method private terminateWfdActivity()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1111
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 1114
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectConfig:Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 1116
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    if-ne v0, v2, :cond_1

    .line 1161
    :cond_0
    :goto_0
    return-void

    .line 1119
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mTerminatedFlag:Z

    .line 1122
    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1123
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Since the wfd state is established, do not terminate WfdManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1126
    :cond_2
    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mControlByWfdService:I

    sparse-switch v0, :sswitch_data_0

    .line 1142
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no problem! << "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mControlByWfdService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1148
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1149
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1150
    iput-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1152
    :cond_3
    const-string v0, "WfdPickerActivity"

    const-string v1, "lock release!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mControlByWfdService:I

    .line 1156
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 1158
    const-string v0, "WfdPickerActivity"

    const-string v1, "terminateWfdActivity >> Wi-Fi Wfd Terminate ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1131
    :sswitch_0
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "terminateWfdActivity >> picker is finished by WfdService! cause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mControlByWfdService:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1126
    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x1e -> :sswitch_0
        0x28 -> :sswitch_0
        0x32 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method finishWfdPickerDialog()V
    .locals 2

    .prologue
    .line 537
    const-string v0, "WfdPickerActivity"

    const-string v1, "finishWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 539
    return-void
.end method

.method getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;
    .locals 9
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 783
    const/4 v3, 0x0

    .line 785
    .local v3, msgs:[Landroid/nfc/NdefMessage;
    const-string v6, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v4

    .line 786
    .local v4, rawMsgs:[Landroid/os/Parcelable;
    if-eqz v4, :cond_0

    .line 787
    array-length v6, v4

    new-array v3, v6, [Landroid/nfc/NdefMessage;

    .line 788
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    .line 789
    aget-object v6, v4, v1

    check-cast v6, Landroid/nfc/NdefMessage;

    aput-object v6, v3, v1

    .line 788
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 793
    .end local v1           #i:I
    :cond_0
    new-array v0, v7, [B

    .line 794
    .local v0, empty:[B
    new-instance v5, Landroid/nfc/NdefRecord;

    const/4 v6, 0x5

    invoke-direct {v5, v6, v0, v0, v0}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    .line 795
    .local v5, record:Landroid/nfc/NdefRecord;
    new-instance v2, Landroid/nfc/NdefMessage;

    new-array v6, v8, [Landroid/nfc/NdefRecord;

    aput-object v5, v6, v7

    invoke-direct {v2, v6}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    .line 798
    .local v2, msg:Landroid/nfc/NdefMessage;
    new-array v3, v8, [Landroid/nfc/NdefMessage;

    .end local v3           #msgs:[Landroid/nfc/NdefMessage;
    aput-object v2, v3, v7

    .line 803
    .end local v0           #empty:[B
    .end local v2           #msg:Landroid/nfc/NdefMessage;
    .end local v5           #record:Landroid/nfc/NdefRecord;
    .restart local v3       #msgs:[Landroid/nfc/NdefMessage;
    :cond_1
    return-object v3
.end method

.method handleP2pStateChanged(I)V
    .locals 8
    .parameter "state"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2277
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleP2pStateChanged with state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2279
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 2280
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    iput p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdState:I

    .line 2281
    packed-switch p1, :pswitch_data_0

    .line 2345
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2285
    :pswitch_1
    const-string v1, "WfdPickerActivity"

    const-string v2, " onReceive << WIFI_P2P_STATE_DISABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 2287
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 2289
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->updateScreenOnDisabled()V

    .line 2291
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2292
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 2294
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v1, :cond_1

    .line 2295
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2297
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 2298
    invoke-direct {p0, v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setDialogListener(Z)V

    .line 2299
    iput v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_0

    .line 2303
    :pswitch_2
    const-string v1, "WfdPickerActivity"

    const-string v2, " onReceive << WIFI_P2P_STATE_ENABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    iput-boolean v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdEnabled:Z

    .line 2306
    iget v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ne v1, v6, :cond_2

    .line 2307
    const-string v1, "WfdPickerActivity"

    const-string v2, "Wfd state is already established, don\'t need to set Wfd state enable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2311
    :cond_2
    iget v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 2312
    iput v7, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 2313
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->updateScreenOnEnabled()V

    .line 2316
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_5

    .line 2317
    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    if-eqz v1, :cond_4

    .line 2318
    const-string v1, "WfdPickerActivity"

    const-string v2, "wait... scanDevice is called next time! received on WfdManager.WIFIDISPLAY_CONTROL_FROM_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2322
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_0

    .line 2326
    :cond_5
    sget-object v1, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v1, :cond_0

    .line 2327
    sget-object v1, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_0

    .line 2333
    :pswitch_3
    iget v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-eq v1, v6, :cond_0

    .line 2334
    iput v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_0

    .line 2281
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 3
    .parameter "targetPackage"

    .prologue
    .line 669
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 671
    .local v1, pm:Landroid/content/pm/PackageManager;
    const/16 v2, 0x80

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 675
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 672
    :catch_0
    move-exception v0

    .line 673
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method isWfdConnected()Z
    .locals 3

    .prologue
    .line 2777
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v0, :cond_0

    .line 2778
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected status is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 2781
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2795
    :cond_0
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 2785
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "isWfdConnected >> true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2786
    const/4 v0, 0x1

    goto :goto_1

    .line 2789
    :cond_1
    const-string v0, "WfdPickerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWfdConnected >> false - getWfdState current state - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v2}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2781
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isWiFiConnected()Z
    .locals 5

    .prologue
    .line 2800
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 2802
    .local v1, manager:Landroid/net/ConnectivityManager;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2810
    .end local v1           #manager:Landroid/net/ConnectivityManager;
    :goto_0
    return v2

    .line 2806
    :catch_0
    move-exception v0

    .line 2807
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "WfdPickerActivity"

    const-string v4, "isWiFiConnected - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 837
    const-string v0, "WfdPickerActivity"

    const-string v1, "onActivityCreated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setAllShareCastSwitch()V

    .line 840
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 841
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 1432
    const-string v0, "WfdPickerActivity"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    iget v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1436
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1437
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_0

    .line 1438
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1439
    :cond_0
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1442
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdEnabled:Z

    if-nez v0, :cond_2

    .line 1443
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v0, :cond_2

    .line 1444
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1447
    :cond_2
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1448
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1325
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1326
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_PIN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_0

    .line 1328
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 1329
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v0, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1330
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->autoConnecting()V

    .line 1333
    :cond_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "user press to connect!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const/4 v0, 0x1

    .line 1336
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 595
    const-string v2, "WfdPickerActivity"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 599
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 600
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 601
    .local v1, intent:Landroid/content/Intent;
    const v2, 0x7f10002b

    invoke-virtual {v0, v2}, Landroid/view/ContextThemeWrapper;->setTheme(I)V

    .line 603
    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->TEST:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 617
    :cond_0
    if-nez v1, :cond_1

    .line 618
    const-string v2, "WfdPickerActivity"

    const-string v3, "intent is null! check!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 641
    :goto_0
    return-void

    .line 623
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 624
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 626
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 627
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 628
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 629
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.net.wifi.p2p.REQUEST_STATE_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/ContextWrapper;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 632
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->initMemberVariables()V

    .line 634
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->retrieveServiceManagers()V

    .line 636
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->getLastConnectedDeviceInfo()V

    .line 638
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->initUI()V

    .line 640
    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->handleIntentActions(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 1365
    instance-of v1, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v1, :cond_0

    .line 1366
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    iget v2, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 1369
    .local v0, preference:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-nez v1, :cond_0

    .line 1370
    instance-of v1, v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v1, :cond_0

    .line 1371
    check-cast v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .end local v0           #preference:Landroid/preference/Preference;
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 1372
    const/4 v1, 0x4

    const v2, 0x7f09046b

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdEnabled:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1378
    :cond_0
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4
    .parameter "id"

    .prologue
    .line 1382
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreateDialog << "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iput p1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDDialogState:I

    .line 1385
    const/4 v0, 0x0

    .line 1387
    .local v0, retDialog:Landroid/app/AlertDialog;
    packed-switch p1, :pswitch_data_0

    .line 1406
    const/4 v1, 0x0

    .line 1426
    :goto_0
    return-object v1

    .line 1389
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->createAutoConnectDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1409
    :goto_1
    if-eqz v0, :cond_0

    .line 1410
    new-instance v1, Lcom/android/settings_ex/wfd/WfdPickerActivity$4;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity$4;-><init>(Lcom/android/settings_ex/wfd/WfdPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1425
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    move-object v1, v0

    .line 1426
    goto :goto_0

    .line 1392
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->createWfdTerminateDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1393
    goto :goto_1

    .line 1396
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->createErrorHandlingDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    .line 1397
    goto :goto_1

    .line 1400
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->createDongleRenameDialog()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1401
    goto :goto_1

    .line 1387
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 13
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v12, 0x2

    const v11, 0x7f020305

    const/4 v10, 0x5

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1165
    const-string v7, "WfdPickerActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateOptionsMenu  NfcWriteMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v12, :cond_3

    move v4, v5

    .line 1168
    .local v4, isLandscape:Z
    :goto_0
    iget-boolean v7, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v7, :cond_2

    .line 1170
    const v7, 0x7f090417

    invoke-interface {p1, v6, v5, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdEnabled:Z

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    .line 1174
    const v7, 0x7f090418

    invoke-interface {p1, v6, v12, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v8

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    .line 1178
    const/4 v7, 0x3

    const v8, 0x7f09041c

    invoke-interface {p1, v6, v7, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v7

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    .line 1182
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "launch_from_help"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1183
    iget-object v7, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1186
    :cond_0
    iget-boolean v7, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNfcWriteMode:Z

    if-eqz v7, :cond_1

    .line 1187
    iget-object v7, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v7, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1190
    :cond_1
    const/4 v1, 0x0

    .line 1191
    .local v1, activityIntent:Landroid/content/Intent;
    const/4 v3, 0x0

    .line 1193
    .local v3, intentAction:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1194
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1195
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1201
    .end local v0           #activity:Landroid/app/Activity;
    :goto_1
    iget-object v7, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v7, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1203
    iget-boolean v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v5, :cond_4

    .line 1204
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v7, 0x7f0200d5

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1207
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v7, 0x7f0200d4

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1210
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1211
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1212
    iget v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 1232
    .end local v1           #activityIntent:Landroid/content/Intent;
    .end local v3           #intentAction:Ljava/lang/String;
    :cond_2
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1233
    return-void

    .end local v4           #isLandscape:Z
    :cond_3
    move v4, v6

    .line 1166
    goto/16 :goto_0

    .line 1197
    .restart local v1       #activityIntent:Landroid/content/Intent;
    .restart local v3       #intentAction:Ljava/lang/String;
    .restart local v4       #isLandscape:Z
    :catch_0
    move-exception v2

    .line 1198
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v7, "WfdPickerActivity"

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1214
    .end local v2           #e:Ljava/lang/NullPointerException;
    :cond_4
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1215
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v10}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1217
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1218
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1220
    if-eqz v4, :cond_5

    .line 1221
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    const v6, 0x7f0200d5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1222
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemHelp:Landroid/view/MenuItem;

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1223
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1224
    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCastEndConnect:Landroid/view/MenuItem;

    const v6, 0x7f0200d4

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1227
    :cond_5
    const-string v5, "WfdPickerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setCastMenu mCurMenuType="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurMenuType:I

    invoke-direct {p0, v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setCastMenu(I)V

    goto :goto_2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 820
    const-string v1, "WfdPickerActivity"

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    const v1, 0x7f040150

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 822
    .local v0, v:Landroid/view/View;
    const v1, 0x7f0b03ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    .line 823
    const v1, 0x7f0b03e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    .line 824
    const v1, 0x7f0b03eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    .line 826
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    const v2, 0x7f0202e0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 827
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    const v2, 0x7f090fc7

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 828
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const v2, 0x7f09044a

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 830
    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v1, :cond_0

    .line 831
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 832
    :cond_0
    return-object v0
.end method

.method public onDetach()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 1038
    const-string v6, "WfdPickerActivity"

    const-string v7, "onDetach"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    invoke-super {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onDetach()V

    .line 1042
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v6

    if-nez v6, :cond_0

    .line 1043
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const-string v7, "wifi"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 1044
    .local v3, tWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1045
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 1046
    .local v2, msg:Landroid/os/Message;
    const/16 v6, 0x12

    iput v6, v2, Landroid/os/Message;->what:I

    .line 1047
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1048
    .local v1, args:Landroid/os/Bundle;
    const-string v6, "stop"

    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1049
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1050
    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1068
    .end local v1           #args:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    .end local v3           #tWifiManager:Landroid/net/wifi/WifiManager;
    :cond_0
    const/4 v5, 0x0

    .line 1069
    .local v5, writeIfSuccess:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1071
    .local v0, action:Ljava/lang/String;
    const-string v6, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1072
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "tag_write_if_success"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1073
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "tag_write_if_success"

    invoke-virtual {v6, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 1074
    const-string v6, "WfdPickerActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onDetach writeIfSuccess="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :cond_1
    invoke-direct {p0, v9}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setDialogListener(Z)V

    .line 1084
    iget v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_4

    sget-boolean v6, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdAlreadyEnabled:Z

    if-nez v6, :cond_4

    .line 1086
    const-string v6, "WfdPickerActivity"

    const-string v7, "onDetach mWFDSettingState != WFD_PICKER_STATE_DISABLED "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    iget v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mControlByWfdService:I

    if-nez v6, :cond_2

    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v7, 0x5

    if-eq v6, v7, :cond_2

    .line 1088
    const-string v6, "WfdPickerActivity"

    const-string v7, "onDetach P2p is on.. but wfd is not connected..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f09044c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 1095
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->terminateWfdActivity()V

    .line 1102
    :goto_0
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isP2pConnected()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWiFiConnected()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->getPreviousWifiState()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1103
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 1104
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_3

    .line 1105
    invoke-virtual {v4, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1108
    .end local v4           #wifiManager:Landroid/net/wifi/WifiManager;
    :cond_3
    return-void

    .line 1098
    :cond_4
    sput-boolean v9, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdAlreadyEnabled:Z

    .line 1099
    const-string v6, "WfdPickerActivity"

    const-string v7, "onDetach mWFDSettingState = WFD_PICKER_STATE_DISABLED already"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 13
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x1

    .line 1250
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1320
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1252
    :pswitch_0
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_SCAN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090417

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1255
    .local v11, mScanString:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1256
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1257
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->scanDevice()V

    :cond_0
    :goto_1
    move v0, v12

    .line 1268
    goto :goto_0

    .line 1261
    :cond_1
    iput-boolean v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    .line 1262
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->clearLastConnectedDeviceInfo()V

    .line 1264
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 1266
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->finishScanDevice(I)V

    goto :goto_1

    .line 1270
    .end local v11           #mScanString:Ljava/lang/String;
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->bShowInternalHelp:Z

    if-nez v0, :cond_8

    .line 1271
    const/4 v10, 0x0

    .line 1273
    .local v10, intentToHelpActivity:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v8

    .line 1274
    .local v8, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v8, :cond_4

    .line 1282
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-ne v0, v12, :cond_6

    .line 1283
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intentToHelpActivity:Landroid/content/Intent;
    const-string v0, "com.samsung.wfd.WRITE_NFC"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1288
    .restart local v10       #intentToHelpActivity:Landroid/content/Intent;
    :goto_2
    if-eqz v10, :cond_3

    .line 1290
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 1291
    .local v7, action:Ljava/lang/String;
    if-eqz v7, :cond_2

    const-string v0, "com.samsung.wfd.PICK_WFD_NETWORK"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "noaction"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1292
    :cond_2
    const-string v0, "called_by_settings"

    const/4 v1, 0x0

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1298
    .end local v7           #action:Ljava/lang/String;
    :goto_3
    const/high16 v0, 0x400

    invoke-virtual {v10, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1299
    invoke-virtual {p0, v10}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_3
    move v0, v12

    .line 1301
    goto/16 :goto_0

    .line 1275
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v0, :cond_5

    .line 1276
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings_ex/wfd/WfdHelpFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09045c

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 1279
    :cond_5
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intentToHelpActivity:Landroid/content/Intent;
    const-string v0, "com.samsung.wfd.DP_HELP"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v10       #intentToHelpActivity:Landroid/content/Intent;
    goto :goto_2

    .line 1285
    :cond_6
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intentToHelpActivity:Landroid/content/Intent;
    const-string v0, "com.samsung.wfd.DP_HELP"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v10       #intentToHelpActivity:Landroid/content/Intent;
    goto :goto_2

    .line 1294
    .restart local v7       #action:Ljava/lang/String;
    :cond_7
    :try_start_1
    const-string v0, "called_by_settings"

    const/4 v1, 0x1

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 1295
    .end local v7           #action:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 1296
    .local v9, e:Ljava/lang/NullPointerException;
    const-string v0, "WfdPickerActivity"

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1303
    .end local v8           #adapter:Landroid/nfc/NfcAdapter;
    .end local v9           #e:Ljava/lang/NullPointerException;
    .end local v10           #intentToHelpActivity:Landroid/content/Intent;
    :cond_8
    const/4 v10, 0x0

    .line 1305
    .restart local v10       #intentToHelpActivity:Landroid/content/Intent;
    new-instance v10, Landroid/content/Intent;

    .end local v10           #intentToHelpActivity:Landroid/content/Intent;
    const-string v0, "com.samsung.helphub.HELP"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1306
    .restart local v10       #intentToHelpActivity:Landroid/content/Intent;
    const-string v0, "helphub:section"

    const-string v1, "allshare_cast"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1307
    invoke-virtual {p0, v10}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    move v0, v12

    .line 1308
    goto/16 :goto_0

    .line 1312
    .end local v10           #intentToHelpActivity:Landroid/content/Intent;
    :pswitch_2
    const-string v0, "WfdPickerActivity"

    const-string v1, "MENU_ID_ENDCONNECT"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1315
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    :cond_9
    move v0, v12

    .line 1317
    goto/16 :goto_0

    .line 1250
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 966
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 969
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 970
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsPaused:Z

    .line 972
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_0

    .line 973
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 975
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 976
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.P2P_CONNECTION_ESTABLISHED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 977
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.wfd.STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 980
    :cond_1
    iget v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 983
    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEnableControlByWfdService:Z

    .line 986
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings_ex/wfd/WfdSwitchEnabler;

    if-eqz v1, :cond_3

    .line 987
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings_ex/wfd/WfdSwitchEnabler;

    invoke-virtual {v1}, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->pause()V

    .line 989
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->stopConnectingCountDown()V

    .line 991
    iget v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 992
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause stop peer Discovery in Scanning "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    sget-object v1, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 995
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    if-eqz v1, :cond_4

    .line 996
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 997
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1002
    :cond_4
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-ne v1, v4, :cond_6

    .line 1003
    iget v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDDialogState:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-ne v1, v4, :cond_5

    iget v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    .line 1006
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->cancelWfdConnect()V

    .line 1007
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause cancelWfdConnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    :cond_5
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1013
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_7

    .line 1014
    const-string v1, "WfdPickerActivity"

    const-string v2, "onPause, stopPeerDiscovery if wfd not connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    sget-object v1, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 1020
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1025
    :goto_0
    return-void

    .line 1021
    :catch_0
    move-exception v0

    .line 1022
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 14
    .parameter "peers"

    .prologue
    const/16 v13, 0x8

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1471
    const-string v8, "WfdPickerActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onPeersAvailable, mConnectingDialogCalled : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 1473
    iget v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v9, 0x6

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-eq v8, v11, :cond_0

    iget v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    iget-boolean v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-eq v8, v11, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-boolean v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsP2pBusyDialogCalled:Z

    if-eqz v8, :cond_2

    .line 1480
    :cond_0
    const-string v8, "WfdPickerActivity"

    const-string v9, "onPeersAvailable >> skip!! "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1578
    :cond_1
    :goto_0
    return-void

    .line 1484
    :cond_2
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1486
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 1487
    .local v7, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v7, v12}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 1489
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1490
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 1492
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v8

    if-nez v8, :cond_7

    .line 1494
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    const v9, 0x7f090408

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(I)V

    .line 1495
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v8, v11}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 1497
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1498
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 1500
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 1501
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1503
    iget-boolean v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v8, :cond_3

    .line 1504
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    check-cast v8, Lcom/android/settings_ex/wfd/WfdPickerDialog;

    invoke-virtual {v8}, Lcom/android/settings_ex/wfd/WfdPickerDialog;->changeToStop()V

    .line 1506
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1507
    .local v2, dev:Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-direct {p0, v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWifiDisplayDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWifiBusy(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 1508
    const-string v8, "WfdPickerActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Device Name - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Address - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " peer.wfdDeviceType - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v10}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getDeviceType()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    iget v8, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_4

    .line 1513
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1515
    new-instance v6, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v6, v8, v2}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 1516
    .local v6, peer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v8, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1518
    const/4 v1, 0x0

    .line 1519
    .local v1, activityIntent:Landroid/content/Intent;
    const/4 v5, 0x0

    .line 1521
    .local v5, intentAction:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1522
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 1523
    if-eqz v1, :cond_5

    .line 1524
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1530
    .end local v0           #activity:Landroid/app/Activity;
    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    const-string v8, "com.samsung.wfd.LAUNCH_WFD_PICKER_DLG"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-boolean v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    if-nez v8, :cond_6

    .line 1531
    const-string v8, "WfdPickerActivity"

    const-string v9, "connect by nfc"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    invoke-direct {p0, v2, v6, v1, v5}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->connectByNFC(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;Landroid/content/Intent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1526
    :catch_0
    move-exception v3

    .line 1527
    .local v3, e:Ljava/lang/NullPointerException;
    const-string v8, "WfdPickerActivity"

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1535
    .end local v3           #e:Ljava/lang/NullPointerException;
    :cond_6
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v9, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v9, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1537
    const-string v8, "WfdPickerActivity"

    const-string v9, "connectLastConnection"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    invoke-direct {p0, v2, v6}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->connectLastConnection(Landroid/net/wifi/p2p/WifiP2pDevice;Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;)V

    goto/16 :goto_1

    .line 1546
    .end local v1           #activityIntent:Landroid/content/Intent;
    .end local v2           #dev:Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #intentAction:Ljava/lang/String;
    .end local v6           #peer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    :cond_7
    invoke-direct {p0, v7}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->initConnectedDevUI(Landroid/preference/PreferenceScreen;)V

    .line 1548
    const-string v8, "WfdPickerActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deviceList size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1552
    .local v6, peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceAddr:Ljava/lang/String;

    iget-object v9, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1554
    const-string v8, "WfdPickerActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "connected item:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v8}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v8

    if-nez v8, :cond_a

    .line 1556
    iput v12, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 1557
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    new-instance v9, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v9, v10, v6}, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;-><init>(Landroid/content/Context;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 1559
    const/4 v8, 0x5

    iput v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 1561
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iget-object v9, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 1562
    iget-object v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mLastConnectDeviceName:Ljava/lang/String;

    iput-object v8, v6, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    .line 1564
    :cond_9
    iput-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    goto :goto_3

    .line 1566
    :cond_a
    const-string v8, "WfdPickerActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "check!! mPeersConnected.getPreferenceCount():"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersConnected:Landroid/preference/PreferenceGroup;

    invoke-virtual {v10}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1574
    .end local v6           #peer:Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_b
    iget-boolean v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v8, :cond_1

    .line 1575
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 1342
    const-string v1, "WfdPickerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWfdConnected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bStartConnectingFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1344
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mConnectingDialogCalled:Z

    if-nez v1, :cond_1

    .line 1345
    instance-of v1, p2, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    if-eqz v1, :cond_0

    move-object v0, p2

    .line 1346
    check-cast v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    .line 1347
    .local v0, mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->startWifiDisplayTo(Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;)V

    .line 1348
    const-string v1, "WfdPickerActivity"

    const-string v2, "user press to connect!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1359
    .end local v0           #mSelectedWifiPeer:Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 1353
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isDongleRenameAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1354
    const-string v1, "WfdPickerActivity"

    const-string v2, "user press to rename!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    .line 1355
    check-cast v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pPeer;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurrentP2pDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 1356
    const/16 v1, 0xf

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 1237
    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v1, :cond_0

    .line 1239
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1240
    .local v0, searchMenu:Landroid/view/MenuItem;
    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdEnabled:Z

    if-eqz v1, :cond_1

    .line 1241
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1246
    .end local v0           #searchMenu:Landroid/view/MenuItem;
    :cond_0
    :goto_0
    return-void

    .line 1243
    .restart local v0       #searchMenu:Landroid/view/MenuItem;
    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x3

    .line 904
    const-string v4, "WfdPickerActivity"

    const-string v5, "onResume"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->printWfdSettingState()V

    .line 906
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 908
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->getLastConnectedDeviceInfo()V

    .line 909
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsPaused:Z

    .line 912
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 913
    .local v3, tWifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 914
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 915
    .local v1, msg:Landroid/os/Message;
    const/16 v4, 0x12

    iput v4, v1, Landroid/os/Message;->what:I

    .line 916
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 917
    .local v0, args:Landroid/os/Bundle;
    const-string v4, "stop"

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 918
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 919
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 923
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 925
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings_ex/wfd/WfdSwitchEnabler;

    if-eqz v4, :cond_1

    .line 926
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdSwitchEnabler:Lcom/android/settings_ex/wfd/WfdSwitchEnabler;

    invoke-virtual {v4}, Lcom/android/settings_ex/wfd/WfdSwitchEnabler;->resume()V

    .line 928
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCanShake:Z

    if-eqz v4, :cond_2

    .line 929
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v4, v5, v10}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 932
    :cond_2
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v4, :cond_5

    .line 933
    const-string v4, "WfdPickerActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWFDSettingState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iget-object v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v4}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v2

    .line 936
    .local v2, state:I
    iget-boolean v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v4, :cond_3

    if-ne v2, v9, :cond_3

    .line 937
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 940
    :cond_3
    if-lt v2, v7, :cond_7

    .line 942
    invoke-direct {p0, v8}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->setCastMenu(I)V

    .line 943
    iput v8, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mCurMenuType:I

    .line 945
    sget-object v4, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v4, :cond_4

    .line 946
    sget-object v4, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v5, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v4, v5, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    .line 950
    :cond_4
    if-lt v2, v8, :cond_6

    .line 951
    iput v11, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 962
    .end local v2           #state:I
    :cond_5
    :goto_0
    return-void

    .line 953
    .restart local v2       #state:I
    :cond_6
    if-ne v2, v7, :cond_5

    .line 954
    iput v11, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    goto :goto_0

    .line 957
    :cond_7
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isP2pEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    if-ne v4, v7, :cond_5

    .line 958
    iput v10, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWFDSettingState:I

    .line 959
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->scanDevice()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1029
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 1030
    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNotNfcEntry:Z

    if-nez v0, :cond_0

    .line 1031
    const-string v0, "WfdPickerActivity"

    const-string v1, "Dialog finish!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 1034
    :cond_0
    return-void
.end method

.method public setAutoConnStarted()V
    .locals 1

    .prologue
    .line 1948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mAutoConnStartedFromInv:Z

    .line 1949
    return-void
.end method

.method setWfdEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 558
    const-string v1, "WfdPickerActivity"

    const-string v2, "setWfdEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    const-string v1, "wfd"

    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/wfd/WfdManager;

    iput-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    .line 561
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v1, :cond_1

    .line 562
    const-string v1, "WfdPickerActivity"

    const-string v2, "AllShare Cast is turned on..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->getWfdState()I

    move-result v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 564
    sput-boolean v3, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdAlreadyEnabled:Z

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1, v3}, Lcom/samsung/wfd/WfdManager;->setWfdEnabledDialog(Z)Z

    .line 568
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->setWfdModeAlways()V

    .line 573
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 574
    const-string v1, "WfdPickerActivity"

    const-string v2, "setWfdEnabled, unsuccessful, because of DPM"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v1}, Lcom/samsung/wfd/WfdManager;->setWfdTerminate()Z

    .line 591
    :goto_1
    return-void

    .line 570
    :cond_1
    const-string v1, "WfdPickerActivity"

    const-string v2, "mWfdManager is null !"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 587
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_ENABLED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    .local v0, actionIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public setWifiDisplayDeviceAddress(Ljava/lang/String;)V
    .locals 7
    .parameter "deviceAddress"

    .prologue
    .line 1847
    :try_start_0
    const-string v3, "com.samsung.wfd.WfdManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1848
    .local v0, clazz:Ljava/lang/Class;
    const-string v3, "setDisplayDeviceAddress"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1849
    .local v2, method:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1853
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1850
    :catch_0
    move-exception v1

    .line 1851
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "WfdPickerActivity"

    const-string v4, "this method is not supported for this model"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiDisplayDeviceName(Ljava/lang/String;)V
    .locals 7
    .parameter "deviceName"

    .prologue
    .line 1857
    :try_start_0
    const-string v3, "com.samsung.wfd.WfdManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1858
    .local v0, clazz:Ljava/lang/Class;
    const-string v3, "setDisplayDeviceName"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1859
    .local v2, method:Ljava/lang/reflect/Method;
    iget-object v3, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdManager:Lcom/samsung/wfd/WfdManager;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1863
    .end local v0           #clazz:Ljava/lang/Class;
    .end local v2           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 1860
    :catch_0
    move-exception v1

    .line 1861
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "WfdPickerActivity"

    const-string v4, "this method is not supported for this model"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showDialogp(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 1952
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 1953
    return-void
.end method

.method startScanningWfdPickerDialog()V
    .locals 2

    .prologue
    .line 550
    const-string v0, "WfdPickerActivity"

    const-string v1, "startScanningWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->isWfdConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 552
    invoke-direct {p0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->scanDevice()V

    .line 554
    :cond_0
    return-void
.end method

.method stopScanningWfdPickerDialog(Z)V
    .locals 3
    .parameter "stopPeerDiscovery"

    .prologue
    .line 542
    const-string v0, "WfdPickerActivity"

    const-string v1, "stopScanningWfdPickerDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    if-eqz p1, :cond_0

    .line 544
    sget-object v0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 546
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->finishScanDevice(I)V

    .line 547
    return-void
.end method

.method updateScreenOnDisabled()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 2232
    const-string v1, "WfdPickerActivity"

    const-string v2, "updateScreenOnDisabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 2234
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 2236
    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 2237
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2238
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2241
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2242
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2244
    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mInPickerDialog:Z

    if-nez v1, :cond_1

    .line 2245
    const v1, 0x7f09044a

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wfd/WfdPickerActivity;->addMessagePreference(I)V

    .line 2247
    :cond_1
    return-void
.end method

.method updateScreenOnEnabled()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2250
    const-string v1, "WfdPickerActivity"

    const-string v2, "updateScreenOnEnabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 2253
    .local v0, preferenceScreen:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 2254
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 2258
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    const v2, 0x7f090408

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 2259
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mPeersGroup:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2261
    iget-boolean v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 2262
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMultiPaneSwitch:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2263
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mEmptyMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2266
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mMenuItemScanStop:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mWfdDeviceList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2268
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 2269
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2270
    iget-object v1, p0, Lcom/android/settings_ex/wfd/WfdPickerActivity;->mNoDeviceImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2274
    :cond_0
    return-void
.end method
