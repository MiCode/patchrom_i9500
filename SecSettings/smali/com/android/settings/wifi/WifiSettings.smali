.class public Lcom/android/settings_ex/wifi/WifiSettings;
.super Lcom/android/settings_ex/SettingsPreferenceFragment;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_ex/wifi/WifiSettings$ProportionalOuterFrame;,
        Lcom/android/settings_ex/wifi/WifiSettings$Scanner;,
        Lcom/android/settings_ex/wifi/WifiSettings$Multimap;
    }
.end annotation


# static fields
.field private static final CTC_SSID_HIGH_PRIORITY:I = 0xf4243

.field private static final CTC_SSID_LOW_PRIORITY:I = 0xf4241

.field private static final CTC_SSID_MIDDLE_PRIORITY:I = 0xf4242

.field private static final CURRENT_SSID_PRIORITY:I = 0xf4244

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EXTRA_AUTO_FINISH_ON_CONNECT:Ljava/lang/String; = "wifi_auto_finish_on_connect"

.field private static final EXTRA_ENABLE_NEXT_ON_CONNECT:Ljava/lang/String; = "wifi_enable_next_on_connect"

.field static final EXTRA_FOUND_SSID_LIST:Ljava/lang/String; = "found_ssid_list"

.field private static final EXTRA_IS_FIRST_RUN:Ljava/lang/String; = "firstRun"

.field public static final EXTRA_LAUNCH_WITH:Ljava/lang/String; = "launch_with"

.field public static final HIGHEST_PRIORITY:I = 0xf4240

.field private static final KEY_ACCESS_POINTS:Ljava/lang/String; = "access_points"

.field private static final KEY_NOTIFY_OPEN_NETWORKS:Ljava/lang/String; = "notifyMe"

.field private static final KEY_SMCC_MODE:Ljava/lang/String; = "smcc_mode"

.field private static final KEY_US_VZW_SEAMLESS_CONNECT:Ljava/lang/String; = "connect_seamlessly"

.field private static final KEY_WIFI_ACCESS_POINTS_EMPTY:Ljava/lang/String; = "wifi_access_points_empty"

.field private static final KEY_WIFI_PICKER_DIALOG_ADD_NETWORK:Ljava/lang/String; = "wifi_picker_dialog_add_network"

.field private static final KEY_WIFI_PROGRESS_CATEGORY:Ljava/lang/String; = "wifi_progress_category"

.field public static final LAUNCH_WITH_ADVANCED:I = 0x3

.field public static final LAUNCH_WITH_CHECK_DIALOG:I = 0x1

.field public static final LAUNCH_WITH_SCC_DIFF_DIALOG:I = 0x4

.field public static final LAUNCH_WITH_WIFI_ON:I = 0x2

.field private static final MENU_ID_ADD_NETWORK:I = 0x4

.field private static final MENU_ID_ADVANCED:I = 0x5

.field private static final MENU_ID_AUTOJOIN:I = 0xc

.field private static final MENU_ID_CONNECT:I = 0x7

.field private static final MENU_ID_FORGET:I = 0x8

.field private static final MENU_ID_HELP:I = 0xb

.field private static final MENU_ID_MANAGE_NETWORK:I = 0xa

.field private static final MENU_ID_MODIFY:I = 0x9

.field private static final MENU_ID_P2P:I = 0x3

.field private static final MENU_ID_SCAN:I = 0x6

.field private static final MENU_ID_WPS_PBC:I = 0x1

.field private static final MENU_ID_WPS_PIN:I = 0x2

.field static final PROPERTY_SCAN_OUTDATED_THREHOLD:Ljava/lang/String; = "persist.scan.outdate.limit"

.field private static final SAVE_DIALOG_ACCESS_POINT_STATE:Ljava/lang/String; = "wifi_ap_state"

.field private static final SAVE_DIALOG_EDIT_MODE:Ljava/lang/String; = "edit_mode"

.field private static final TAG:Ljava/lang/String; = "WifiSettings"

#the value of this static final field might be set in the static constructor
.field private static final WIFI_AUTOJOIN:Z = false

.field private static final WIFI_CONNECTION_ERROR_DIALOG_ID:I = 0x6

.field private static final WIFI_CONNECTIVITY_CHECK_DIALOG_ID:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final WIFI_CONNECT_THRESHOLD:I = 0x0

.field private static final WIFI_DIALOG_ID:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final WIFI_ERRORCODE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final WIFI_HIGHMOBILITY:I = 0x0

#the value of this static final field might be set in the static constructor
.field private static final WIFI_OFF:Z = false

.field private static final WIFI_RESCAN_INTERVAL_MS:I = 0x2710

.field private static final WIFI_RETRY_DIALOG_ID:I = 0x5

.field private static final WIFI_SCC_DIFF_DIALOG_ID:I = 0x8

#the value of this static final field might be set in the static constructor
.field private static final WIFI_SSIDSTATUSBARINFO:Z = false

.field private static final WIFI_UI_CW_NETWORKID_INVALID:I = -0x1

.field private static final WIFI_UI_CW_OPERATION_TYPE_ADD_SAVE_NETWORK:I = 0x3

.field private static final WIFI_UI_CW_OPERATION_TYPE_CONNECT_NETWORK:I = 0x1

.field private static final WIFI_UI_CW_OPERATION_TYPE_INVALID:I = -0x1

.field private static final WIFI_UI_CW_OPERATION_TYPE_REMOVE_NETWORK:I = 0x2

.field private static final WIFI_UI_CW_OPERATION_TYPE_SAVE_NETWORK:I = 0x0

.field private static final WIFI_VZW_NEW_DIALOG_ID:I = 0x7

.field private static final WPS_PBC_DIALOG_ID:I = 0x2

.field private static final WPS_PIN_DIALOG_ID:I = 0x3

.field public static cancel_network:I

.field public static edit_network:I

.field public static forget_network:I

.field private static final is3LMAllowed:Z

.field private static mHiddenApList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mInOffloadDialog:Z

.field public static mManageNetworkConnected:I

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private static mSavedSelectedAP:Lcom/android/settings_ex/wifi/AccessPoint;

.field public static mStartWith:I

.field public static manageNetwork:Z

.field public static vzwEditFlag:Z

.field public static vzwViewFlag:Z


# instance fields
.field private final ERROR_DIALOG_DURATION_TIME:I

.field private WIFISCAN_OUTDATED_TIME_THRESHOLD:I

.field private helpMenuCheck:Z

.field private isOOBE:Z

.field private isScanResultAvailable:Z

.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mActivity:Landroid/app/Activity;

.field private mAddNetworkItem:Landroid/preference/Preference;

.field mAddNetworkMenuItem:Landroid/view/MenuItem;

.field mAdvancedMenuItem:Landroid/view/MenuItem;

.field private mAllowUpdateScanList:I

.field private mAutoFinishOnConnection:Z

.field private mAutojoinMenuItem:Landroid/view/MenuItem;

.field private mCWConnectToNw:I

.field private mCWPendingOperation:I

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectSeamlessly:Landroid/preference/CheckBoxPreference;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

.field public mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mDlgEdit:Z

.field private mDurationDialogHandler:Landroid/os/Handler;

.field mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapMethod:Ljava/lang/String;

.field private mEmptyListPreference:Landroid/preference/Preference;

.field private mEmptyView:Landroid/widget/TextView;

.field private mEnableNextOnConnection:Z

.field private mErrorApInfo:Landroid/net/wifi/WifiInfo;

.field private mErrorDialog:Landroid/app/AlertDialog;

.field private mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

.field private mErrorDialogRunnable:Ljava/lang/Runnable;

.field private mErrorDialogStopScan:Z

.field private final mFilter:Landroid/content/IntentFilter;

.field private mFirst5GScanFlag:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mHandlerForKTCM:Landroid/os/Handler;

.field private mHiddenAps:Z

.field private mIgnoreConnectedMsg:Z

.field private mInManageNetwork:Z

.field private mInPickerActivity:Z

.field private mInPickerDialog:Z

.field private mInSecPickerActivity:Z

.field private mInSetupWizardWifiScreen:Z

.field private mInXlSetupWizard:Z

.field private mIsLightTheme:Z

.field private mIsRegisteredMotionListener:Z

.field private mIsTablet:Z

.field private mKeyStoreNetworkId:I

.field private mLastCWErrorReason:I

.field private mLastCWState:I

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field public mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

.field private mNotifyMe:Landroid/preference/CheckBoxPreference;

.field mP2pMenuItem:Landroid/view/MenuItem;

.field private mP2pSupported:Z

.field private mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunnableForKTCM:Ljava/lang/Runnable;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSavedApCount:I

.field mScanMenuItem:Landroid/view/MenuItem;

.field private final mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

.field private mSccDiffDialog:Landroid/app/AlertDialog;

.field private mSccDiffDialogRunnable:Ljava/lang/Runnable;

.field private mScrollTimer:J

.field private mSecSetupWizardMode:Z

.field private mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

.field private mSetupWizardMode:Z

.field private mSetupWizardWifiScreen:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

.field private mSmccPreference:Landroid/preference/PreferenceScreen;

.field private mTalkBackEnabled:Z

.field private mTextToSpeech:Landroid/speech/tts/TextToSpeech;

.field private mTopSsids:[Ljava/lang/String;

.field private mWatchdogDialog:Landroid/app/AlertDialog;

.field private mWatchdogDialogRunnable:Ljava/lang/Runnable;

.field private mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field rememberedAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;"
        }
    .end annotation
.end field

.field private searchingDone:Z

.field wifiOffloadDialog:Lcom/android/settings_ex/wifi/WifiOffloadDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 165
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSettings;->DEBUG:Z

    .line 309
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings_ex/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 372
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableThresholdDuringConnection"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    .line 373
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableHighMobilityDisabled"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_HIGHMOBILITY:I

    .line 374
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    .line 375
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_SkipWifiActvDuringSetupWizard"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_OFF:Z

    .line 376
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuAutoJoin"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_AUTOJOIN:Z

    .line 377
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisplaySsidStatusBarInfo"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_SSIDSTATUSBARINFO:Z

    .line 390
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings_ex/wifi/WifiSettings;->mHiddenApList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 396
    invoke-direct {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;-><init>()V

    .line 228
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 230
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 235
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    .line 267
    const v0, 0x493e0

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->WIFISCAN_OUTDATED_TIME_THRESHOLD:I

    .line 271
    iput-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 272
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mActivity:Landroid/app/Activity;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    .line 305
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    .line 306
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_ExceptScanlist"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mHiddenAps:Z

    .line 310
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 318
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->ERROR_DIALOG_DURATION_TIME:I

    .line 327
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 356
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mCWPendingOperation:I

    .line 357
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mCWConnectToNw:I

    .line 368
    iput-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    .line 3019
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$24;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$24;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 3057
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$25;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$25;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 397
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 398
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 400
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 405
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.ERROR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SHOW_EAP_MESSAGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 430
    :cond_0
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ex/wifi/WifiSettings$1;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 437
    new-instance v0, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-direct {v0, p0, v2}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/WifiSettings$1;)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    .line 439
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    .line 446
    return-void
.end method

.method private CWHandleCommand(II)I
    .locals 7
    .parameter "command"
    .parameter "networkId"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3280
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3281
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3282
    .local v0, args:Landroid/os/Bundle;
    packed-switch p1, :pswitch_data_0

    .line 3304
    :cond_0
    :goto_0
    :pswitch_0
    iput p1, v1, Landroid/os/Message;->what:I

    .line 3305
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3306
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v2

    .line 3308
    .local v2, result:I
    return v2

    .line 3284
    .end local v2           #result:I
    :pswitch_1
    const-string v3, "netId"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3285
    const-string v3, "disableOthers"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3289
    :pswitch_2
    const-string v3, "bEnable"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 3293
    :pswitch_3
    iget v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v4, 0xb

    if-ne v3, v4, :cond_1

    .line 3294
    const-string v3, "nRetryMethod"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3295
    :cond_1
    iget v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 3296
    const-string v3, "nRetryMethod"

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 3282
    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings_ex/wifi/WifiSettings;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->removeDialogTimer(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings_ex/wifi/WifiSettings;ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings_ex/wifi/WifiSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/ProgressCategory;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings_ex/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInPickerDialog:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 161
    sget-boolean v0, Lcom/android/settings_ex/wifi/WifiSettings;->DEBUG:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiNewDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/WifiNewDialog;)Lcom/android/settings_ex/wifi/WifiNewDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/settings_ex/wifi/WifiSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTalkBackEnabled:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/settings_ex/wifi/WifiSettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAllowUpdateScanList:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/NetworkInfo$DetailedState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/AccessPoint;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiSettings;->showNewDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/settings_ex/wifi/WifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 161
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings_ex/wifi/WifiSettings;->showNewDialog(Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 161
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings_ex/wifi/WifiSettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings_ex/wifi/WifiSettings;)Lcom/android/settings_ex/wifi/WifiSettings$Scanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/speech/tts/TextToSpeech;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings_ex/wifi/WifiSettings;)Landroid/net/wifi/WifiManager$ActionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings_ex/wifi/WifiSettings;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private addMessagePreference(I)V
    .locals 1
    .parameter "messageId"

    .prologue
    .line 2283
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2286
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 2309
    return-void
.end method

.method private addSmccPreferencesIfNeeded()V
    .locals 2

    .prologue
    .line 2235
    const-string v0, "wifi_progress_category"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    if-eqz v0, :cond_0

    .line 2236
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ProgressCategory;->setIgnoreNoDevice(Z)V

    .line 2237
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 2238
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 2239
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2243
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSmccPreference:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 2244
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSmccPreference:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2246
    :cond_1
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1
    .parameter "connected"

    .prologue
    .line 3014
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3015
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3017
    :cond_0
    return-void
.end method

.method private connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V
    .locals 9
    .parameter "networkId"
    .parameter "listener"

    .prologue
    const/4 v8, -0x1

    .line 3416
    sget-boolean v5, Lcom/android/settings_ex/wifi/WifiSettings;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "WifiSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "connectNetwork nid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3419
    :cond_0
    sget v5, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    if-ne v5, v8, :cond_1

    sget v5, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_HIGHMOBILITY:I

    if-eq v5, v8, :cond_2

    .line 3421
    :cond_1
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 3422
    .local v2, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3423
    .local v0, args:Landroid/os/Bundle;
    const/16 v5, 0x1d

    iput v5, v2, Landroid/os/Message;->what:I

    .line 3424
    const-string v5, "netId"

    invoke-virtual {v0, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3425
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3426
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 3430
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    sget-boolean v5, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    if-eqz v5, :cond_5

    .line 3431
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 3432
    .local v4, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v4, :cond_5

    .line 3433
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 3434
    .local v3, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v5, p1, :cond_3

    .line 3435
    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v6, 0x7

    if-eq v5, v6, :cond_4

    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v6, 0x8

    if-eq v5, v6, :cond_4

    iget v5, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v6, 0x9

    if-ne v5, v6, :cond_5

    .line 3436
    :cond_4
    const/4 v5, 0x0

    iput v5, v3, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 3443
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScrollTimer:J

    .line 3444
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1, p2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3445
    return-void
.end method

.method private connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 5
    .parameter "config"
    .parameter "listener"

    .prologue
    const/4 v4, -0x1

    .line 3378
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiSettings"

    const-string v3, "connectNetwork"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3381
    :cond_0
    sget v2, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_CONNECT_THRESHOLD:I

    if-ne v2, v4, :cond_1

    sget v2, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_HIGHMOBILITY:I

    if-eq v2, v4, :cond_2

    .line 3383
    :cond_1
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 3384
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3385
    .local v0, args:Landroid/os/Bundle;
    const/16 v2, 0x1d

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3386
    const-string v2, "netId"

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3387
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3388
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 3392
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_ERRORCODE:Z

    if-eqz v2, :cond_4

    .line 3393
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_3

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_3

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_4

    .line 3394
    :cond_3
    const/4 v2, 0x0

    iput v2, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 3397
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScrollTimer:J

    .line 3398
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3399
    return-void
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings_ex/wifi/AccessPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2313
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2316
    .local v1, accessPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;

    const/4 v10, 0x0

    invoke-direct {v2, p0, v10}, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;Lcom/android/settings_ex/wifi/WifiSettings$1;)V

    .line 2318
    .local v2, apMap:Lcom/android/settings_ex/wifi/WifiSettings$Multimap;,"Lcom/android/settings_ex/wifi/WifiSettings$Multimap<Ljava/lang/String;Lcom/android/settings_ex/wifi/AccessPoint;>;"
    const/4 v4, 0x0

    .line 2319
    .local v4, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-nez v10, :cond_0

    .line 2320
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 2322
    :cond_0
    if-eqz v4, :cond_3

    .line 2326
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSavedApCount:I

    .line 2328
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 2329
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10, v3}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 2330
    .local v0, accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    iget v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSavedApCount:I

    add-int/lit8 v10, v10, 0x1

    iput v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSavedApCount:I

    .line 2344
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v10, v11}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2347
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mHiddenAps:Z

    if-eqz v10, :cond_2

    iget-object v10, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->isHiddenAccessPoint(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2351
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2352
    iget-object v10, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v10, v0}, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 2359
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v9

    .line 2360
    .local v9, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v9, :cond_8

    .line 2361
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 2363
    .local v8, result:Landroid/net/wifi/ScanResult;
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v10, :cond_4

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v11, "[IBSS]"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2368
    const/4 v5, 0x0

    .line 2369
    .local v5, found:Z
    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v10}, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 2370
    .restart local v0       #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {v0, v8}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2371
    const/4 v5, 0x1

    goto :goto_2

    .line 2373
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_6
    if-nez v5, :cond_4

    .line 2374
    new-instance v0, Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-direct {v0, v10, v8}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 2376
    .restart local v0       #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mHiddenAps:Z

    if-eqz v10, :cond_7

    iget-object v10, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/settings_ex/wifi/WifiSettings;->isHiddenAccessPoint(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 2380
    :cond_7
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2381
    iget-object v10, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v10, v0}, Lcom/android/settings_ex/wifi/WifiSettings$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 2388
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v5           #found:Z
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #result:Landroid/net/wifi/ScanResult;
    :cond_8
    :try_start_0
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2407
    :goto_3
    return-object v1

    .line 2404
    :catch_0
    move-exception v10

    goto :goto_3
.end method

.method private deleteNetworkFromOffloadDB(Ljava/lang/String;)V
    .locals 3
    .parameter "ssid"

    .prologue
    .line 3480
    const-string v1, "WifiSettings"

    const-string v2, "Sending broadcast for deleting network from Offload DB"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3481
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.wifi_offload.ACTION_DELETE_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3482
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "delete_ssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3483
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 3484
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 3486
    :cond_0
    return-void
.end method

.method private dismissDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 1654
    packed-switch p1, :pswitch_data_0

    .line 1693
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1656
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1657
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1658
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 1659
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    goto :goto_0

    .line 1663
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1664
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 1665
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    goto :goto_0

    .line 1669
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1670
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1671
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1675
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 1676
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1677
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    goto :goto_0

    .line 1681
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1682
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1683
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1687
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1688
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1689
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 1654
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method

.method private getAccessPoint(I)Lcom/android/settings_ex/wifi/AccessPoint;
    .locals 5
    .parameter "networkId"

    .prologue
    .line 2726
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 2727
    .local v2, prefScreen:Landroid/preference/PreferenceGroup;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    if-eqz v4, :cond_0

    .line 2728
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    .line 2731
    :cond_0
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 2733
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 2734
    .local v3, preference:Landroid/preference/Preference;
    instance-of v4, v3, Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v4, :cond_1

    move-object v0, v3

    .line 2735
    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 2736
    .local v0, accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    iget v4, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v4, p1, :cond_1

    .line 2742
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v3           #preference:Landroid/preference/Preference;
    :goto_1
    return-object v0

    .line 2731
    .restart local v3       #preference:Landroid/preference/Preference;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2742
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private getErrorAnimationView(II)Landroid/view/View;
    .locals 8
    .parameter "animationId"
    .parameter "messageId"

    .prologue
    .line 1954
    const-string v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 1956
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f040173

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1957
    .local v3, view:Landroid/view/View;
    const v4, 0x7f0b004a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1958
    .local v2, text:Landroid/widget/TextView;
    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1959
    const v4, 0x7f0b0480

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1960
    .local v0, img:Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1961
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 1962
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/settings_ex/wifi/WifiSettings$23;

    invoke-direct {v5, p0}, Lcom/android/settings_ex/wifi/WifiSettings$23;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    const-wide/16 v6, 0x5f

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1968
    return-object v3
.end method

.method private getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    .locals 6
    .parameter "config"

    .prologue
    .line 3461
    const/4 v1, 0x0

    .line 3462
    .local v1, found:Z
    const/4 v3, -0x1

    .line 3463
    .local v3, newNetId:I
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->rememberedAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 3464
    .local v0, accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {v0, p1}, Lcom/android/settings_ex/wifi/AccessPoint;->checkIfSame(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3465
    const/4 v1, 0x1

    .line 3466
    iget v3, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    .line 3470
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_1
    if-eqz v1, :cond_2

    move v4, v3

    .line 3473
    .end local v3           #newNetId:I
    .local v4, newNetId:I
    :goto_0
    return v4

    .end local v4           #newNetId:I
    .restart local v3       #newNetId:I
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v3

    move v4, v3

    .end local v3           #newNetId:I
    .restart local v4       #newNetId:I
    goto :goto_0
.end method

.method private getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;
    .locals 4
    .parameter "networkId"

    .prologue
    .line 1751
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 1752
    .local v1, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v1, :cond_1

    .line 1753
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 1754
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v3, p1, :cond_0

    .line 1759
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2430
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2432
    .local v1, action:Ljava/lang/String;
    const-string v13, "android.net.wifi.supplicant.WAPI_EVENT"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 2433
    const-string v11, "wapi_string"

    .line 2435
    .local v11, wapiEventName:Ljava/lang/String;
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 2436
    .local v12, wapiGetEvent:I
    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SUPPLICANT_WAPI_EVENT received: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2437
    packed-switch v12, :pswitch_data_0

    .line 2588
    .end local v11           #wapiEventName:Ljava/lang/String;
    .end local v12           #wapiGetEvent:I
    :cond_0
    :goto_0
    return-void

    .line 2439
    .restart local v11       #wapiEventName:Ljava/lang/String;
    .restart local v12       #wapiGetEvent:I
    :pswitch_0
    const v13, 0x7f090299

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2443
    :pswitch_1
    const v13, 0x7f09029a

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 2447
    .end local v11           #wapiEventName:Ljava/lang/String;
    .end local v12           #wapiGetEvent:I
    :cond_1
    const-string v13, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2448
    const-string v13, "wifi_state"

    const/4 v14, 0x4

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WifiSettings;->updateWifiState(I)V

    goto :goto_0

    .line 2450
    :cond_2
    const-string v13, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2451
    sget-boolean v13, Lcom/android/settings_ex/wifi/WifiSettings;->DEBUG:Z

    if-eqz v13, :cond_3

    const-string v13, "WifiSettings"

    const-string v14, ">>> SCAN_RESULTS_AVAILABLE_ACTION RECEIVED"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    :cond_3
    sget-boolean v13, Lcom/android/settings_ex/wifi/WifiSettings;->DEBUG:Z

    if-eqz v13, :cond_4

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mAllowUpdateScanList = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAllowUpdateScanList:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2461
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mTalkBackEnabled:Z

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAllowUpdateScanList:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_6

    .line 2462
    const-string v13, "WifiSettings"

    const-string v14, "SKIP SCAN LIST UPDATE!!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mFirst5GScanFlag:Z

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v13, :cond_0

    .line 2476
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 2477
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v13}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->forceScan()V

    .line 2478
    sget-boolean v13, Lcom/android/settings_ex/wifi/WifiSettings;->DEBUG:Z

    if-eqz v13, :cond_0

    const-string v13, "WifiSettings"

    const-string v14, "Force scan for 5G APs"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2464
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    .line 2465
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAllowUpdateScanList:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAllowUpdateScanList:I

    .line 2466
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mTalkBackEnabled:Z

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mSavedApCount:I

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAllowUpdateScanList:I

    const/4 v14, 0x3

    if-eq v13, v14, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mSavedApCount:I

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAllowUpdateScanList:I

    const/4 v14, 0x2

    if-ne v13, v14, :cond_5

    .line 2468
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->speakTTS()V

    .line 2469
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAllowUpdateScanList:I

    goto :goto_1

    .line 2480
    :cond_9
    const-string v13, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 2481
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    .line 2483
    const-string v13, "wifiConfiguration"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 2484
    .local v7, network:Landroid/net/wifi/WifiConfiguration;
    const-string v13, "changeReason"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 2485
    .local v9, reason:I
    if-eqz v7, :cond_0

    .line 2486
    sget-boolean v13, Lcom/android/settings_ex/wifi/WifiSettings;->DEBUG:Z

    if-eqz v13, :cond_a

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ">>> CONFIGURED_NETWORKS_CHANGED_ACTION nid:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", reason:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    :cond_a
    iget v13, v7, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    iget v13, v7, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    iget v13, v7, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_0

    .line 2491
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/settings_ex/wifi/WifiSettings;->showConnectionFailDialog(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 2495
    .end local v7           #network:Landroid/net/wifi/WifiConfiguration;
    .end local v9           #reason:I
    :cond_b
    const-string v13, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 2496
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    goto/16 :goto_0

    .line 2497
    :cond_c
    const-string v13, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    .line 2504
    const-string v13, "newState"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/SupplicantState;

    .line 2506
    .local v10, state:Landroid/net/wifi/SupplicantState;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v13

    if-nez v13, :cond_0

    sget-object v13, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    if-eq v10, v13, :cond_0

    .line 2507
    sget-boolean v13, Lcom/android/settings_ex/wifi/WifiSettings;->DEBUG:Z

    if-eqz v13, :cond_d

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ">>> SUPPLICANT_STATE_CHANGED_ACTION state:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2508
    :cond_d
    invoke-static {v10}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2514
    .end local v10           #state:Landroid/net/wifi/SupplicantState;
    :cond_e
    const-string v13, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 2515
    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 2517
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    .line 2518
    .local v4, isConn:Z
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v13, :cond_f

    if-eqz v4, :cond_f

    .line 2519
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 2521
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v13, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2522
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 2523
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    .line 2524
    sget-boolean v13, Lcom/android/settings_ex/wifi/WifiSettings;->DEBUG:Z

    if-eqz v13, :cond_10

    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ">>> NETWORK_STATE_CHANGED_ACTION state:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2525
    :cond_10
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 2536
    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-eqz v13, :cond_11

    .line 2537
    const-string v13, "WifiSettings"

    const-string v14, " Wifi Connection Established --> Launch The Next Activity "

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2538
    new-instance v8, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    iget-object v13, v13, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mForwardIntent:Ljava/lang/String;

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2539
    .local v8, nextIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v13, "setup_wizard_bundle"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    iget-object v14, v14, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;->mBundleExtras:Landroid/os/Bundle;

    invoke-virtual {v8, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2540
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2541
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 2542
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    .line 2547
    .end local v8           #nextIntent:Landroid/content/Intent;
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v13, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2548
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 2551
    .end local v3           #info:Landroid/net/NetworkInfo;
    .end local v4           #isConn:Z
    :cond_12
    const-string v13, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_13

    .line 2552
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2553
    :cond_13
    const-string v13, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_14

    .line 2554
    const-string v13, "launch_with"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 2555
    .local v5, launchWith:I
    const/4 v13, 0x3

    if-ne v5, v13, :cond_0

    .line 2557
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto/16 :goto_0

    .line 2562
    .end local v5           #launchWith:I
    :cond_14
    const-string v13, "android.net.wifi.ERROR"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 2563
    const-string v13, "errorCode"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2564
    .local v2, errorCode:I
    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ">>> ERROR_ACTION RECEIVED code:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2565
    packed-switch v2, :pswitch_data_1

    goto/16 :goto_0

    .line 2567
    :pswitch_2
    const-string v13, "wifiInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    .line 2568
    const/4 v13, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WifiSettings;->dismissDialog(I)V

    .line 2569
    const/4 v13, 0x6

    const/16 v14, 0x7530

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings_ex/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 2572
    .end local v2           #errorCode:I
    :cond_15
    const-string v13, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2573
    const-string v13, "info_type"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2574
    .local v6, msgId:I
    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ">>> SHOW_INFO_MESSAGE RECEIVED code:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2575
    packed-switch v6, :pswitch_data_2

    goto/16 :goto_0

    .line 2578
    :pswitch_3
    const/4 v13, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ex/wifi/WifiSettings;->dismissDialog(I)V

    .line 2579
    const-string v13, "visible"

    const/4 v14, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 2580
    const/4 v13, 0x4

    const/16 v14, 0x7530

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings_ex/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto/16 :goto_0

    .line 2437
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 2565
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
    .end packed-switch

    .line 2575
    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_3
    .end packed-switch
.end method

.method private isHiddenAccessPoint(Ljava/lang/String;)Z
    .locals 2
    .parameter "accessPoint"

    .prologue
    .line 3595
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    sget-object v1, Lcom/android/settings_ex/wifi/WifiSettings;->mHiddenApList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3596
    sget-object v1, Lcom/android/settings_ex/wifi/WifiSettings;->mHiddenApList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3597
    const/4 v1, 0x1

    .line 3601
    :goto_1
    return v1

    .line 3595
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3601
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static isIpAddressValid(Ljava/lang/String;)Z
    .locals 3
    .parameter "value"

    .prologue
    .line 3547
    const-string v0, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    .line 3551
    .local v0, IP_REGEX:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    .line 3552
    const/4 v2, 0x1

    .line 3557
    :goto_0
    return v2

    .line 3555
    :cond_0
    const-string v2, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 3557
    .local v1, validIp:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    goto :goto_0
.end method

.method private isSSIDduplicate(Ljava/lang/String;)Z
    .locals 6
    .parameter "ssid"

    .prologue
    .line 3666
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 3668
    .local v2, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " CW_SISO : isSSIDduplicate Enter.ssid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    if-eqz v2, :cond_1

    .line 3670
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 3671
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 3672
    .local v1, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " CW_SISO : isSSIDduplicate Enter.SSID Being Compared "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3673
    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3674
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " CW_SISO : isSSIDduplicate Same ssid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3675
    const/4 v3, 0x1

    .line 3680
    .end local v0           #i:I
    .end local v1           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :goto_1
    return v3

    .line 3670
    .restart local v0       #i:I
    .restart local v1       #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3679
    .end local v0           #i:I
    .end local v1           #wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " CW_SISO : isSSIDduplicate Exit.Not Same ssid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3680
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private isScanThresholdCrossed()Z
    .locals 1

    .prologue
    .line 2263
    const/4 v0, 0x0

    return v0
.end method

.method private isSecurityFieldsShowed()Z
    .locals 3

    .prologue
    .line 1612
    const/4 v0, 0x0

    .line 1617
    .local v0, ll:Landroid/view/ViewGroup;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v1, :cond_0

    .line 1618
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    const v2, 0x7f0b044b

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .end local v0           #ll:Landroid/view/ViewGroup;
    check-cast v0, Landroid/view/ViewGroup;

    .line 1620
    .restart local v0       #ll:Landroid/view/ViewGroup;
    :cond_0
    if-nez v0, :cond_1

    .line 1621
    const/4 v1, 0x0

    .line 1623
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v1

    goto :goto_0
.end method

.method private isUsimUseable()Z
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3517
    const-string v6, "phone"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 3518
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 3519
    .local v2, simSate:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v5

    .line 3521
    .local v1, isAirplaneMode:Z
    :goto_0
    const/4 v6, 0x5

    if-eq v2, v6, :cond_1

    if-nez v1, :cond_1

    .line 3522
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f090301

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 3542
    :goto_1
    return v4

    .end local v1           #isAirplaneMode:Z
    :cond_0
    move v1, v4

    .line 3519
    goto :goto_0

    .line 3526
    .restart local v1       #isAirplaneMode:Z
    :cond_1
    const-string v6, ""

    const-string v7, "SKT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 3527
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3529
    .local v0, imsi:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v6, "45005"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "45000"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3530
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f090303

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3533
    .end local v0           #imsi:Ljava/lang/String;
    :cond_2
    const-string v6, ""

    const-string v7, "KTT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3534
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 3536
    .restart local v0       #imsi:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v6, "45008"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "45002"

    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 3537
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f090302

    invoke-static {v5, v6, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .end local v0           #imsi:Ljava/lang/String;
    :cond_3
    move v4, v5

    .line 3542
    goto :goto_1
.end method

.method private removeDialogTimer(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 1945
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1946
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1947
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v0, :cond_1

    .line 1948
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1949
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    .line 1951
    :cond_1
    return-void
.end method

.method private requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 2021
    invoke-static {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 2023
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 2024
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    .line 2025
    const/4 v0, 0x1

    .line 2027
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .parameter "config"

    .prologue
    .line 3454
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3455
    const/4 v0, 0x1

    return v0
.end method

.method private setupAddNetworkPreference()V
    .locals 2

    .prologue
    .line 2268
    const-string v0, "wifi_picker_dialog_add_network"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    .line 2269
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    const v1, 0x7f02050a

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setIcon(I)V

    .line 2272
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2274
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2277
    :cond_0
    return-void
.end method

.method private showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 0
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1607
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    .line 1609
    return-void
.end method

.method private showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "newState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2666
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    if-nez v0, :cond_1

    .line 2693
    :cond_0
    :goto_0
    return-void

    .line 2668
    :cond_1
    if-nez p1, :cond_2

    .line 2669
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2670
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgressText(ZI)V

    .line 2671
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    goto :goto_0

    .line 2673
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 2674
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    const v1, 0x7f090441

    invoke-virtual {v0, v3, v1}, Lcom/android/settings_ex/ProgressCategory;->setProgressText(ZI)V

    .line 2675
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v3}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 2676
    iput-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 2677
    :cond_3
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_4

    .line 2678
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    if-nez v0, :cond_0

    .line 2679
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgressText(ZI)V

    .line 2680
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 2681
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIgnoreConnectedMsg:Z

    goto :goto_0

    .line 2686
    :cond_4
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v0, :cond_5

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v0, :cond_0

    .line 2687
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgressText(ZI)V

    .line 2688
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 2689
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v2, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgressText(ZI)V

    .line 2690
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v0, v2}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    goto/16 :goto_0
.end method

.method private showConnectionFailDialog(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "config"

    .prologue
    const/4 v3, 0x1

    .line 2698
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->getPromptCredentialsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2723
    :cond_0
    :goto_0
    return-void

    .line 2702
    :cond_1
    if-eqz p1, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    if-ne v1, v3, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    if-eq v1, v3, :cond_0

    .line 2706
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2707
    sget-boolean v1, Lcom/android/settings_ex/wifi/WifiSettings;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiSettings"

    const-string v2, "AP Dialog is aleady showing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2709
    :cond_2
    const-string v1, "WifiSettings"

    const-string v2, "Show retry popup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2710
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->getAccessPoint(I)Lcom/android/settings_ex/wifi/AccessPoint;

    move-result-object v0

    .line 2711
    .local v0, accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    if-nez v0, :cond_3

    .line 2712
    const-string v1, "WifiSettings"

    const-string v2, "Fail to show retry popup. Can not find access point."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2713
    :cond_3
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2714
    const-string v1, "WifiSettings"

    const-string v2, "Fail to show retry popup. It\'s default AP"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2716
    :cond_4
    iget v1, v0, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_5

    .line 2717
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f09083a

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2719
    :cond_5
    invoke-direct {p0, v0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->showRetryDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto :goto_0
.end method

.method private showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 2
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v1, 0x1

    .line 1627
    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->dismissDialog(I)V

    .line 1629
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 1630
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->removeDialog(I)V

    .line 1631
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 1635
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 1636
    iput-boolean p2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    .line 1638
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 1639
    return-void
.end method

.method private showDurationDialog(IIZ)V
    .locals 9
    .parameter "id"
    .parameter "durationTime"
    .parameter "stopScan"

    .prologue
    const v8, 0x7f0903e2

    const v7, 0x1040014

    const/high16 v6, 0x104

    const v5, 0x1010355

    const/4 v4, 0x0

    .line 1763
    iput-boolean p3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1764
    iget-boolean v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v2, :cond_0

    .line 1765
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    .line 1767
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1942
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 1770
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    .line 1771
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 1772
    const-string v2, "WifiSettings"

    const-string v3, "Ignore wifi connectivity check dialog. WifiInfo is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1775
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1776
    .local v1, watchdogDialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f020517

    const v3, 0x7f0903da

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1777
    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1778
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1779
    const v2, 0x7f0903db

    new-instance v3, Lcom/android/settings_ex/wifi/WifiSettings$9;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/WifiSettings$9;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1790
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1791
    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiSettings$10;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1801
    :cond_3
    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiSettings$11;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-virtual {v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1805
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    .line 1806
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/settings_ex/wifi/WifiSettings$12;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/WifiSettings$12;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1816
    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettings$13;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiSettings$13;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    .line 1823
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWatchdogDialogRunnable:Ljava/lang/Runnable;

    int-to-long v4, p2

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1824
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 1830
    .end local v1           #watchdogDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    const-string v2, ""

    const-string v3, "KTT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1831
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0902f1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1832
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1833
    iput-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialogStopScan:Z

    .line 1834
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    goto/16 :goto_0

    .line 1840
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1841
    .local v0, errDialog:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f020516

    const v3, 0x7f0902f2

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->getErrorAnimationView(II)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1842
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1843
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1845
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorApInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->getWifiConfiguration(I)Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1846
    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettings$14;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiSettings$14;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-virtual {v0, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1856
    :cond_5
    const v2, 0x7f090643

    new-instance v3, Lcom/android/settings_ex/wifi/WifiSettings$15;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/WifiSettings$15;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1865
    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettings$16;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiSettings$16;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-virtual {v0, v6, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1869
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 1870
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/settings_ex/wifi/WifiSettings$17;

    invoke-direct {v3, p0}, Lcom/android/settings_ex/wifi/WifiSettings$17;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1875
    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettings$18;

    invoke-direct {v2, p0}, Lcom/android/settings_ex/wifi/WifiSettings$18;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    .line 1882
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDurationDialogHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialogRunnable:Ljava/lang/Runnable;

    int-to-long v4, p2

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1883
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 1767
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showNewDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 4
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 1973
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    if-eqz v1, :cond_0

    .line 1974
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1977
    :cond_0
    new-instance v1, Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/android/settings_ex/wifi/WifiNewDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    .line 1978
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1982
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget v1, p1, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v1, :cond_1

    .line 1988
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings_ex/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings_ex/guide/GuideFragmentCallback;

    move-result-object v0

    .line 1990
    .local v0, guide:Lcom/android/settings_ex/guide/GuideFragmentCallback;
    if-eqz v0, :cond_1

    .line 1991
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-interface {v0}, Lcom/android/settings_ex/guide/GuideFragmentCallback;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1992
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-interface {v0}, Lcom/android/settings_ex/guide/GuideFragmentCallback;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1997
    .end local v0           #guide:Lcom/android/settings_ex/guide/GuideFragmentCallback;
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiNewDialog;->show()V

    .line 1998
    return-void
.end method

.method private showNewDialog(Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V
    .locals 6
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "details"

    .prologue
    .line 2001
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 2002
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2004
    :cond_0
    new-instance v0, Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/WifiNewDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    .line 2005
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2006
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->show()V

    .line 2008
    return-void
.end method

.method private showNewDialog(Lcom/android/settings_ex/wifi/AccessPoint;ZZZ)V
    .locals 7
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "details"
    .parameter "manageNetwork"

    .prologue
    .line 2010
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    if-eqz v0, :cond_0

    .line 2011
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2014
    :cond_0
    new-instance v0, Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/settings_ex/wifi/WifiNewDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    .line 2015
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 2016
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiNewDialog;->show()V

    .line 2017
    return-void
.end method

.method private showRetryDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v0, 0x5

    .line 1643
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->dismissDialog(I)V

    .line 1646
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 1647
    iput-boolean p2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    .line 1649
    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    .line 1650
    return-void
.end method

.method private startWith(I)V
    .locals 8
    .parameter "id"

    .prologue
    const/16 v7, 0x7530

    const/4 v6, 0x0

    .line 1018
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiSettings activity start with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    packed-switch p1, :pswitch_data_0

    .line 1044
    :goto_0
    return-void

    .line 1021
    :pswitch_0
    const/4 v3, 0x4

    invoke-direct {p0, v3, v7, v6}, Lcom/android/settings_ex/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto :goto_0

    .line 1025
    :pswitch_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 1026
    .local v1, handler:Landroid/os/Handler;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1027
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Lcom/android/settings_ex/wifi/WifiSettings$8;

    invoke-direct {v2, p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings$8;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;Landroid/app/Activity;)V

    .line 1034
    .local v2, runnable:Ljava/lang/Runnable;
    const-wide/16 v3, 0x320

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1038
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #runnable:Ljava/lang/Runnable;
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto :goto_0

    .line 1041
    :pswitch_3
    const/16 v3, 0x8

    invoke-direct {p0, v3, v7, v6}, Lcom/android/settings_ex/wifi/WifiSettings;->showDurationDialog(IIZ)V

    goto :goto_0

    .line 1019
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateAccessPoints()V
    .locals 13

    .prologue
    .line 2036
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    if-nez v9, :cond_1

    .line 2231
    :cond_0
    :goto_0
    return-void

    .line 2038
    :cond_1
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v8

    .line 2039
    .local v8, wifiState:I
    const/4 v3, 0x0

    .line 2040
    .local v3, filter:Z
    const/4 v5, 0x0

    .line 2041
    .local v5, mobile:Lcom/android/settings_ex/wifi/AccessPoint;
    const-string v9, "WifiSettings"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[updateAccessPoints] wifiState : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    packed-switch v8, :pswitch_data_0

    .line 2222
    :cond_2
    :goto_1
    iget-wide v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScrollTimer:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-eqz v9, :cond_0

    .line 2223
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScrollTimer:J

    sub-long/2addr v9, v11

    const-wide/16 v11, 0x1f4

    cmp-long v9, v9, v11

    if-lez v9, :cond_13

    .line 2224
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiSettings;->DEBUG:Z

    if-eqz v9, :cond_3

    const-string v9, "WifiSettings"

    const-string v10, "scroll end"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    :cond_3
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScrollTimer:J

    goto :goto_0

    .line 2045
    :pswitch_0
    iget-boolean v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-nez v9, :cond_5

    :cond_4
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mNewDialog:Lcom/android/settings_ex/wifi/WifiNewDialog;

    invoke-virtual {v9}, Landroid/app/Dialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 2047
    :cond_5
    const-string v9, "WifiSettings"

    const-string v10, "Skip updateAccessPoints"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2051
    :cond_6
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->constructAccessPoints()Ljava/util/List;

    move-result-object v1

    .line 2052
    .local v1, accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 2066
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    .line 2067
    .local v6, targetScreen:Landroid/preference/PreferenceGroup;
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    if-eqz v9, :cond_7

    .line 2068
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/settings_ex/ProgressCategory;->setProgress(Z)V

    .line 2069
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 2075
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2076
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    .line 2078
    :cond_7
    iget-boolean v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v9, :cond_8

    .line 2140
    :cond_8
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v9

    if-nez v9, :cond_a

    .line 2142
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    .line 2143
    .local v7, wifiIsEnabled:Z
    if-eqz v7, :cond_c

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v9

    if-eqz v9, :cond_c

    const/4 v2, 0x1

    .line 2144
    .local v2, allowUserProfiles:Z
    :goto_2
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    if-eqz v9, :cond_9

    .line 2145
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2149
    :cond_9
    const v9, 0x7f0902b7

    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    .line 2152
    .end local v2           #allowUserProfiles:Z
    .end local v7           #wifiIsEnabled:Z
    :cond_a
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_b
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 2165
    .local v0, accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_SSIDSTATUSBARINFO:Z

    if-eqz v9, :cond_f

    .line 2166
    if-eqz v0, :cond_b

    .line 2167
    iget-object v9, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v10, "MOBILE-EAPSIM"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_d

    .line 2168
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 2169
    iget-object v9, v0, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v10, "MOBILE"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2170
    move-object v5, v0

    goto :goto_3

    .line 2143
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    .end local v4           #i$:Ljava/util/Iterator;
    .restart local v7       #wifiIsEnabled:Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_2

    .line 2173
    .end local v7           #wifiIsEnabled:Z
    .restart local v0       #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_d
    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    if-eqz v9, :cond_e

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    iget v9, v9, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v9, :cond_e

    .line 2174
    const/4 v3, 0x1

    .line 2176
    :cond_e
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 2180
    :cond_f
    invoke-virtual {v6, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_3

    .line 2184
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_10
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_SSIDSTATUSBARINFO:Z

    if-eqz v9, :cond_11

    .line 2185
    const/4 v9, 0x1

    if-ne v3, v9, :cond_11

    if-eqz v5, :cond_11

    .line 2186
    invoke-virtual {v6, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 2187
    const-string v9, "WifiSettings"

    const-string v10, "network removed "

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    :cond_11
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkMenuItem:Landroid/view/MenuItem;

    if-nez v9, :cond_2

    .line 2194
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    .line 2195
    .restart local v7       #wifiIsEnabled:Z
    if-eqz v7, :cond_12

    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v9}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/app/enterprise/WifiPolicy;->getAllowUserProfiles(Z)Z

    move-result v9

    if-eqz v9, :cond_12

    const/4 v2, 0x1

    .line 2196
    .restart local v2       #allowUserProfiles:Z
    :goto_4
    iget-object v9, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 2198
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 2195
    .end local v2           #allowUserProfiles:Z
    :cond_12
    const/4 v2, 0x0

    goto :goto_4

    .line 2205
    .end local v1           #accessPoints:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/android/settings_ex/wifi/AccessPoint;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #targetScreen:Landroid/preference/PreferenceGroup;
    .end local v7           #wifiIsEnabled:Z
    :pswitch_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    goto/16 :goto_1

    .line 2209
    :pswitch_2
    const v9, 0x7f090295

    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 2214
    :pswitch_3
    const v9, 0x7f0902b6

    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    goto/16 :goto_1

    .line 2226
    :cond_13
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/AdapterView;->getCount()I

    move-result v9

    if-lez v9, :cond_0

    .line 2227
    sget-boolean v9, Lcom/android/settings_ex/wifi/WifiSettings;->DEBUG:Z

    if-eqz v9, :cond_14

    const-string v9, "WifiSettings"

    const-string v10, "force scroll up"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2228
    :cond_14
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 2043
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private updateCTCSsidPriority(Landroid/net/wifi/WifiConfiguration;I)V
    .locals 1
    .parameter "config"
    .parameter "prio"

    .prologue
    .line 3684
    packed-switch p2, :pswitch_data_0

    .line 3697
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 3698
    return-void

    .line 3686
    :pswitch_0
    const v0, 0xf4243

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    .line 3689
    :pswitch_1
    const v0, 0xf4242

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    .line 3692
    :pswitch_2
    const v0, 0xf4241

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    goto :goto_0

    .line 3684
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateCWConnectionState(II)V
    .locals 7
    .parameter "state"
    .parameter "nCwError"

    .prologue
    .line 2836
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCWConnectionState state("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "CW Error ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2838
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2839
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    .line 2933
    :cond_0
    return-void

    .line 2842
    :cond_1
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2911
    const/4 v3, 0x0

    .line 2912
    .local v3, preferenceCount:I
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    if-eqz v4, :cond_3

    .line 2913
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    .line 2918
    :goto_0
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 2921
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    if-eqz v4, :cond_4

    .line 2922
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .line 2926
    .local v2, preference:Landroid/preference/Preference;
    :goto_2
    instance-of v4, v2, Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v4, :cond_2

    move-object v0, v2

    .line 2927
    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 2928
    .local v0, accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    const-string v4, "WifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCWConnectionState========accessPoint.update  mLastState"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2929
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2918
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2915
    .end local v1           #i:I
    .end local v2           #preference:Landroid/preference/Preference;
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v3

    goto :goto_0

    .line 2924
    .restart local v1       #i:I
    :cond_4
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .restart local v2       #preference:Landroid/preference/Preference;
    goto :goto_2
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 6
    .parameter "state"

    .prologue
    .line 2592
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2593
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    .line 2663
    :cond_0
    return-void

    .line 2597
    :cond_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 2598
    .local v2, prefScreen:Landroid/preference/PreferenceGroup;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    if-eqz v4, :cond_2

    .line 2599
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    .line 2601
    invoke-direct {p0, p1}, Lcom/android/settings_ex/wifi/WifiSettings;->showConnectingMessge(Landroid/net/NetworkInfo$DetailedState;)V

    .line 2605
    :cond_2
    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-eq p1, v4, :cond_3

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialogStopScan:Z

    if-eqz v4, :cond_6

    .line 2606
    :cond_3
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    .line 2611
    :goto_0
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2612
    if-eqz p1, :cond_4

    .line 2613
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2616
    :cond_4
    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_0

    .line 2618
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 2619
    .local v3, preference:Landroid/preference/Preference;
    instance-of v4, v3, Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v4, :cond_5

    move-object v0, v3

    .line 2620
    check-cast v0, Lcom/android/settings_ex/wifi/AccessPoint;

    .line 2621
    .local v0, accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings_ex/wifi/AccessPoint;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 2616
    .end local v0           #accessPoint:Lcom/android/settings_ex/wifi/AccessPoint;
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2608
    .end local v1           #i:I
    .end local v3           #preference:Landroid/preference/Preference;
    :cond_6
    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v4}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    goto :goto_0
.end method

.method public static updateHiddenAccessPoint()V
    .locals 6

    .prologue
    .line 3563
    const-string v4, "/data/misc/wifi/hiddenAPs.txt"

    .line 3565
    .local v4, path:Ljava/lang/String;
    sget-object v5, Lcom/android/settings_ex/wifi/WifiSettings;->mHiddenApList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 3567
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 3568
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 3588
    :goto_0
    return-void

    .line 3572
    :cond_0
    const/4 v0, 0x0

    .line 3575
    .local v0, accessPoint:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3578
    .local v3, in:Ljava/io/BufferedReader;
    :goto_1
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3579
    sget-object v5, Lcom/android/settings_ex/wifi/WifiSettings;->mHiddenApList:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3582
    :catchall_0
    move-exception v5

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3584
    .end local v3           #in:Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 3585
    .local v1, e:Ljava/io/IOException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 3582
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #in:Ljava/io/BufferedReader;
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter "showIcon"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, 0x1

    .line 1172
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1173
    if-eqz p1, :cond_2

    .line 1174
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0200d5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1175
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1181
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v0, :cond_1

    .line 1182
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v0, :cond_4

    .line 1183
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1184
    if-eqz p1, :cond_3

    .line 1185
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0200d9

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1186
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1204
    :cond_1
    :goto_1
    return-void

    .line 1177
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1178
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0

    .line 1188
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1189
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1193
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_1

    .line 1194
    if-eqz p1, :cond_5

    .line 1195
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0200cd

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1196
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1

    .line 1198
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    .line 1199
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_1
.end method

.method private updateWifiState(I)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2747
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 2749
    .local v0, currentActivity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 2750
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2760
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2829
    :goto_0
    iput-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 2830
    iput-object v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 2831
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    .line 2832
    :cond_1
    :goto_1
    return-void

    .line 2762
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    .line 2763
    sget-object v1, Lcom/android/settings_ex/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    if-nez v1, :cond_1

    .line 2765
    sget-object v1, Lcom/android/settings_ex/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 2766
    iput-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    goto :goto_1

    .line 2772
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFirst5GScanFlag:Z

    .line 2782
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTalkBackEnabled:Z

    if-eqz v1, :cond_2

    .line 2783
    const-string v1, "WifiSettings"

    const-string v2, "TALK BACK ON !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    iput v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAllowUpdateScanList:I

    .line 2787
    :cond_2
    const v1, 0x7f090294

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    goto :goto_0

    .line 2791
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->closeContextMenu()V

    .line 2792
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v1, :cond_3

    .line 2793
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiDialog;->dismissKeypad()V

    .line 2795
    :cond_3
    const v1, 0x7f0902b6

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->addMessagePreference(I)V

    .line 2797
    sget-object v1, Lcom/android/settings_ex/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    if-eqz v1, :cond_4

    .line 2799
    sget-object v1, Lcom/android/settings_ex/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 2800
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    .line 2810
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v1, :cond_5

    .line 2816
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->dismissDialog(I)V

    .line 2818
    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->dismissDialog(I)V

    .line 2820
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->dismissDialog(I)V

    goto :goto_0

    .line 2814
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    goto :goto_2

    .line 2760
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method forget()V
    .locals 3

    .prologue
    .line 3489
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3491
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3513
    :goto_0
    return-void

    .line 3499
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3506
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3507
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    .line 3509
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    .line 3512
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    goto :goto_0
.end method

.method getAccessPointsCount()I
    .locals 2

    .prologue
    .line 3634
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    .line 3635
    .local v0, wifiIsEnabled:Z
    if-eqz v0, :cond_1

    .line 3636
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    if-eqz v1, :cond_0

    .line 3637
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    .line 3642
    :goto_0
    return v1

    .line 3639
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    goto :goto_0

    .line 3642
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "targetPackage"

    .prologue
    const/4 v4, 0x0

    .line 3759
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 3760
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 3761
    .local v2, packages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 3762
    .local v1, packageInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v5, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 3763
    const/4 v4, 0x1

    .line 3766
    .end local v1           #packageInfo:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return v4
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v12, -0x2

    const/16 v9, 0x10

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 531
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.wifi.direct"

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pSupported:Z

    .line 532
    const-string v7, "wifi"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 534
    new-instance v7, Lcom/android/settings_ex/wifi/WifiSettings$2;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/wifi/WifiSettings$2;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 546
    new-instance v7, Lcom/android/settings_ex/wifi/WifiSettings$3;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/wifi/WifiSettings$3;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 558
    new-instance v7, Lcom/android/settings_ex/wifi/WifiSettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/wifi/WifiSettings$4;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 570
    if-eqz p1, :cond_0

    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 572
    const-string v7, "edit_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    .line 573
    const-string v7, "wifi_ap_state"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 577
    :cond_0
    const-string v7, "motion_recognition"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v7, Lcom/android/settings_ex/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 578
    new-instance v7, Lcom/android/settings_ex/wifi/WifiSettings$5;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/wifi/WifiSettings$5;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    .line 594
    const-string v7, "enterprise_policy"

    invoke-virtual {p0, v7}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 597
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 598
    .local v1, activity:Landroid/app/Activity;
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 605
    .local v4, intent:Landroid/content/Intent;
    const-string v7, "wifi_auto_finish_on_connect"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    .line 607
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAutoFinishOnConnection:Z

    if-eqz v7, :cond_2

    .line 609
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 610
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getNextButton()Landroid/widget/Button;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 613
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 615
    .local v2, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 617
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 618
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 804
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    :goto_0
    return-void

    .line 625
    :cond_2
    const-string v7, "wifi_enable_next_on_connect"

    invoke-virtual {v4, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 630
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v7, :cond_3

    .line 631
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->hasNextButton()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 632
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 634
    .restart local v2       #connectivity:Landroid/net/ConnectivityManager;
    if-eqz v2, :cond_3

    .line 635
    invoke-virtual {v2, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 637
    .local v3, info:Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/settings_ex/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 643
    .end local v2           #connectivity:Landroid/net/ConnectivityManager;
    .end local v3           #info:Landroid/net/NetworkInfo;
    :cond_3
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInManageNetwork:Z

    if-eqz v7, :cond_10

    .line 644
    const-string v7, "WifiSettings"

    const-string v8, "onCreate:only_access_points"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    sput v10, Lcom/android/settings_ex/wifi/WifiSettings;->mManageNetworkConnected:I

    .line 646
    sput-boolean v10, Lcom/android/settings_ex/wifi/WifiSettings;->manageNetwork:Z

    .line 647
    const v7, 0x7f070098

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 648
    const-string v7, "access_points"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/ProgressCategory;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    .line 649
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    if-eqz v7, :cond_4

    .line 650
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v7, v10}, Lcom/android/settings_ex/ProgressCategory;->setIgnoreMessage(Z)V

    .line 670
    :cond_4
    :goto_1
    const-string v7, "wifi_progress_category"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings_ex/ProgressCategory;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    .line 671
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    if-eqz v7, :cond_5

    .line 672
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mProgressCategory:Lcom/android/settings_ex/ProgressCategory;

    invoke-virtual {v7, v10}, Lcom/android/settings_ex/ProgressCategory;->setIgnoreMessage(Z)V

    .line 674
    :cond_5
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-nez v7, :cond_6

    .line 675
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->setupAddNetworkPreference()V

    .line 679
    :cond_6
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_7

    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v7, :cond_8

    .line 680
    :cond_7
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    const/high16 v8, 0x1e4

    invoke-virtual {v7, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 700
    :cond_8
    const-string v7, "connect_seamlessly"

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectSeamlessly:Landroid/preference/CheckBoxPreference;

    .line 721
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectSeamlessly:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_9

    .line 722
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectSeamlessly:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 732
    :cond_9
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    .line 734
    .local v0, actionBarSwitch:Landroid/widget/Switch;
    instance-of v7, v1, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_c

    move-object v6, v1

    .line 735
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 736
    .local v6, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {v6}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v7

    if-nez v7, :cond_c

    .line 737
    :cond_a
    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 739
    .local v5, padding:I
    invoke-virtual {v0, v11, v11, v5, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 741
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_c

    .line 742
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInPickerActivity:Z

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-eqz v7, :cond_12

    .line 743
    :cond_b
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/16 v8, 0x14

    invoke-virtual {v7, v9, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 745
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 751
    :goto_2
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v12, v12, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 756
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const v8, 0x7f090291

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setTitle(I)V

    .line 757
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    const/high16 v8, 0x7f03

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setIcon(I)V

    .line 762
    .end local v5           #padding:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_c
    new-instance v7, Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-direct {v7, v1, v0}, Lcom/android/settings_ex/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    .line 767
    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v7

    const v8, 0x1020004

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    .line 769
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/high16 v8, 0x4190

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 770
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    const/16 v8, 0x30

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 772
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 775
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v7, :cond_d

    invoke-static {}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode()Z

    move-result v7

    if-nez v7, :cond_d

    .line 777
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 791
    :cond_d
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v7, :cond_13

    sget-boolean v7, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_OFF:Z

    if-eqz v7, :cond_13

    .line 792
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v11}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 797
    :cond_e
    :goto_3
    invoke-virtual {p0, v10}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 798
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mHiddenAps:Z

    if-eqz v7, :cond_f

    .line 799
    invoke-static {}, Lcom/android/settings_ex/wifi/WifiSettings;->updateHiddenAccessPoint()V

    .line 803
    :cond_f
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 651
    .end local v0           #actionBarSwitch:Landroid/widget/Switch;
    :cond_10
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInPickerDialog:Z

    if-eqz v7, :cond_11

    .line 652
    const v7, 0x7f0700a3

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 658
    :cond_11
    const v7, 0x7f0700a4

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    goto/16 :goto_1

    .line 747
    .restart local v0       #actionBarSwitch:Landroid/widget/Switch;
    .restart local v5       #padding:I
    .restart local v6       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_12
    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto/16 :goto_2

    .line 793
    .end local v5           #padding:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_13
    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v7, :cond_e

    .line 794
    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_3
.end method

.method onAddNetworkPressed()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3625
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 3629
    iput-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 3630
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    .line 3631
    return-void
.end method

.method public onAdvancedMenuPressed()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 1303
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInPickerActivity:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardMode:Z

    if-eqz v0, :cond_1

    .line 1304
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    .line 1308
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    .line 1309
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0902b1

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 1319
    :goto_1
    return-void

    .line 1306
    :cond_1
    sput-boolean v6, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;->hideNavigationButton:Z

    goto :goto_0

    .line 1314
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-eqz v0, :cond_3

    .line 1315
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.net.wifi.SECSETUP_WIFI_ADVANCED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1317
    :cond_3
    const-class v0, Lcom/android/settings_ex/wifi/AdvancedWifiSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_1
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 480
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 498
    instance-of v0, p1, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    if-eqz v0, :cond_0

    .line 499
    const-string v0, "WifiSettings"

    const-string v1, " SetupWizard Wifi Screen Instance Creation Goes Here !!! in onAttach of Fragment "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 501
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    if-nez v0, :cond_0

    .line 502
    check-cast p1, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    .end local p1
    iput-object p1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    .line 505
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialogInterface"
    .parameter "button"

    .prologue
    .line 3252
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v0, :cond_1

    .line 3253
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->forget()V

    .line 3276
    :cond_0
    :goto_0
    return-void

    .line 3259
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 3269
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-nez v0, :cond_2

    .line 3270
    const-string v0, "WifiSettings"

    const-string v1, "onClick SUBMIT button but, mDialog is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3272
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiDialog;->getController()Lcom/android/settings_ex/wifi/WifiConfigController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V

    goto :goto_0

    .line 3273
    :cond_3
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 3274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 1166
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1167
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateOptionsMenuIcon(Z)V

    .line 1168
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1169
    return-void

    .line 1167
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 1397
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v2, :cond_1

    .line 1398
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    .line 1468
    :cond_0
    :goto_0
    return v1

    .line 1401
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1468
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0

    .line 1403
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    .line 1404
    const-string v2, "T wifi zone_secure"

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1405
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUsimUseable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1422
    :cond_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1423
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1408
    :cond_3
    const-string v2, "ollehWiFi"

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1409
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUsimUseable()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 1425
    :cond_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-nez v2, :cond_5

    .line 1427
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1428
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v2, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1430
    :cond_5
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v2, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1435
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1444
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v2, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1448
    :pswitch_4
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1449
    .local v0, selectedConfig:Landroid/net/wifi/WifiConfiguration;
    sget-boolean v2, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_AUTOJOIN:Z

    if-eqz v2, :cond_0

    .line 1450
    if-nez v0, :cond_6

    .line 1451
    const-string v2, "WifiSettings"

    const-string v3, "selectedConfig == null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1454
    :cond_6
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    invoke-interface {v2}, Landroid/view/MenuItem;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1455
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    .line 1456
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1457
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_0

    .line 1460
    :cond_7
    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    .line 1461
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 1462
    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_0

    .line 1401
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 451
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "firstRun"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardMode:Z

    .line 452
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiSecSetupActivity;

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSecSetupWizardMode:Z

    .line 453
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiPickerDialog;

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInPickerDialog:Z

    .line 454
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiPickerActivity;

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInPickerActivity:Z

    .line 455
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings_ex/wifi/WifiSecPickerActivity;

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInSecPickerActivity:Z

    .line 456
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIsLightTheme:Z

    .line 457
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIsTablet:Z

    .line 459
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 471
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 14
    .parameter "menu"
    .parameter "view"
    .parameter "info"

    .prologue
    .line 1323
    iget-boolean v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-eqz v10, :cond_1

    .line 1324
    const-string v10, "WifiSettings"

    const-string v11, "InSecPickerActivity : ignore context menu"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    .end local p3
    :cond_0
    :goto_0
    return-void

    .line 1327
    .restart local p3
    :cond_1
    move-object/from16 v0, p3

    instance-of v10, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    if-eqz v10, :cond_0

    .line 1328
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getListView()Landroid/widget/ListView;

    move-result-object v10

    check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .end local p3
    move-object/from16 v0, p3

    iget v11, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v10, v11}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/preference/Preference;

    .line 1331
    .local v7, preference:Landroid/preference/Preference;
    instance-of v10, v7, Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v10, :cond_0

    .line 1332
    check-cast v7, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local v7           #preference:Landroid/preference/Preference;
    iput-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 1337
    const/4 v1, 0x0

    .line 1338
    .local v1, connectable:Z
    const/4 v3, 0x0

    .line 1339
    .local v3, cwRetry:Z
    const/4 v2, 0x0

    .line 1351
    .local v2, cwForgetable:Z
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings_ex/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v5

    .line 1352
    .local v5, isSupportedSecurity:Z
    if-eqz v5, :cond_0

    .line 1354
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v10, v10, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-interface {p1, v10}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 1355
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 1358
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_0

    .line 1359
    sget-boolean v10, Lcom/android/settings_ex/wifi/WifiSettings;->WIFI_AUTOJOIN:Z

    if-eqz v10, :cond_3

    .line 1360
    const/4 v10, 0x0

    const/16 v11, 0xc

    const/4 v12, 0x0

    const v13, 0x7f0902b3

    invoke-interface {p1, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    .line 1361
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 1362
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 1363
    .local v8, selectedConfig:Landroid/net/wifi/WifiConfiguration;
    if-eqz v8, :cond_8

    .line 1364
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1365
    iget-object v11, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    iget v10, v8, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    const/4 v12, 0x1

    if-ne v10, v12, :cond_7

    const/4 v10, 0x1

    :goto_2
    invoke-interface {v11, v10}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 1372
    .end local v8           #selectedConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_3
    :goto_3
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v10, v10, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1373
    .local v9, ssid:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v10}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v10

    if-eqz v10, :cond_9

    :cond_4
    const/4 v4, 0x1

    .line 1376
    .local v4, edm:Z
    :goto_4
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v6

    .line 1377
    .local v6, isVendorAp:Z
    if-eqz v4, :cond_5

    if-nez v6, :cond_5

    .line 1380
    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    const v13, 0x7f0902b4

    invoke-interface {p1, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 1384
    :cond_5
    if-nez v6, :cond_0

    .line 1387
    const/4 v10, 0x0

    const/16 v11, 0x9

    const/4 v12, 0x0

    const v13, 0x7f0902b5

    invoke-interface {p1, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1356
    .end local v4           #edm:Z
    .end local v6           #isVendorAp:Z
    .end local v9           #ssid:Ljava/lang/String;
    :cond_6
    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    const v13, 0x7f0902b2

    invoke-interface {p1, v10, v11, v12, v13}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1365
    .restart local v8       #selectedConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_7
    const/4 v10, 0x0

    goto :goto_2

    .line 1367
    :cond_8
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1368
    iget-object v10, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAutojoinMenuItem:Landroid/view/MenuItem;

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_3

    .line 1373
    .end local v8           #selectedConfig:Landroid/net/wifi/WifiConfiguration;
    .restart local v9       #ssid:Ljava/lang/String;
    :cond_9
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "dialogId"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1697
    packed-switch p1, :pswitch_data_0

    .line 1747
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1700
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 1701
    .local v3, ap:Lcom/android/settings_ex/wifi/AccessPoint;
    if-nez v3, :cond_0

    .line 1702
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 1703
    new-instance v3, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local v3           #ap:Lcom/android/settings_ex/wifi/AccessPoint;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {v3, v0, v1}, Lcom/android/settings_ex/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 1705
    .restart local v3       #ap:Lcom/android/settings_ex/wifi/AccessPoint;
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 1709
    :cond_0
    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 1713
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 1714
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 1718
    new-instance v0, Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    .line 1726
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    iget v0, v3, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-eqz v0, :cond_1

    .line 1732
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings_ex/guide/GuideFragmentCallback;

    move-result-object v6

    .line 1734
    .local v6, guide:Lcom/android/settings_ex/guide/GuideFragmentCallback;
    if-eqz v6, :cond_1

    .line 1735
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-interface {v6}, Lcom/android/settings_ex/guide/GuideFragmentCallback;->getOnShowListener()Landroid/content/DialogInterface$OnShowListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 1736
    invoke-interface {v6}, Lcom/android/settings_ex/guide/GuideFragmentCallback;->getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1737
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-interface {v6}, Lcom/android/settings_ex/guide/GuideFragmentCallback;->getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1741
    .end local v6           #guide:Lcom/android/settings_ex/guide/GuideFragmentCallback;
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    goto :goto_0

    .line 1721
    :cond_2
    new-instance v0, Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    move-object v2, p0

    move v5, v7

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ex/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    goto :goto_1

    .line 1743
    .end local v3           #ap:Lcom/android/settings_ex/wifi/AccessPoint;
    :pswitch_2
    new-instance v0, Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v7}, Lcom/android/settings_ex/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    .line 1745
    :pswitch_3
    new-instance v0, Lcom/android/settings_ex/wifi/WpsDialog;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Lcom/android/settings_ex/wifi/WpsDialog;-><init>(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 1697
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 11
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/16 v10, 0xa

    const/4 v9, 0x2

    const/4 v8, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1048
    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInManageNetwork:Z

    if-nez v6, :cond_4

    sget-boolean v6, Lcom/android/settings_ex/wifi/WifiSettings;->mInOffloadDialog:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    if-nez v6, :cond_4

    .line 1049
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    .line 1050
    .local v3, wifiIsEnabled:Z
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    .line 1051
    .local v1, isSecTabletUI:Z
    const/4 v0, 0x0

    .line 1052
    .local v0, advancedActionFlag:I
    const/4 v2, 0x0

    .line 1054
    .local v2, p2pActionFlag:I
    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v6, :cond_0

    .line 1056
    const/4 v6, 0x6

    const v7, 0x7f0902b0

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    .line 1057
    if-eqz v1, :cond_5

    .line 1058
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    const v7, 0x7f0200d5

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1059
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1063
    :goto_0
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1067
    :cond_0
    const v6, 0x7f0902b1

    invoke-interface {p1, v5, v8, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    .line 1068
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    const v7, 0x7f0200cd

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1069
    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSecSetupWizardMode:Z

    if-nez v6, :cond_1

    .line 1070
    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v6, :cond_7

    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v6, :cond_7

    .line 1071
    const/4 v6, 0x3

    const v7, 0x7f0902af

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    .line 1072
    if-eqz v1, :cond_6

    .line 1073
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    const v7, 0x7f0200d9

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1074
    const/4 v2, 0x5

    .line 1078
    :goto_1
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1079
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1080
    const/4 v0, 0x0

    .line 1087
    :cond_1
    :goto_2
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1088
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1113
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v6

    if-ne v6, v4, :cond_9

    .line 1115
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    if-eqz v6, :cond_2

    .line 1116
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1120
    :cond_2
    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pSupported:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardMode:Z

    if-nez v6, :cond_8

    .line 1121
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    if-eqz v6, :cond_3

    .line 1122
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mP2pMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1123
    invoke-interface {p1, v8}, Landroid/view/Menu;->removeItem(I)V

    .line 1124
    invoke-interface {p1, v10}, Landroid/view/Menu;->removeItem(I)V

    .line 1156
    :cond_3
    :goto_3
    if-nez v1, :cond_4

    .line 1157
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v9, :cond_b

    :goto_4
    invoke-direct {p0, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->updateOptionsMenuIcon(Z)V

    .line 1161
    .end local v0           #advancedActionFlag:I
    .end local v1           #isSecTabletUI:Z
    .end local v2           #p2pActionFlag:I
    .end local v3           #wifiIsEnabled:Z
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 1162
    return-void

    .line 1061
    .restart local v0       #advancedActionFlag:I
    .restart local v1       #isSecTabletUI:Z
    .restart local v2       #p2pActionFlag:I
    .restart local v3       #wifiIsEnabled:Z
    :cond_5
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    .line 1076
    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    .line 1082
    :cond_7
    if-nez v1, :cond_1

    .line 1083
    const/4 v0, 0x1

    goto :goto_2

    .line 1127
    :cond_8
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    if-eqz v6, :cond_3

    if-ne v0, v4, :cond_3

    .line 1128
    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAdvancedMenuItem:Landroid/view/MenuItem;

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1129
    invoke-interface {p1, v10}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_3

    .line 1135
    :cond_9
    const v6, 0x7f0902ac

    invoke-interface {p1, v5, v4, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x7f0200da

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1139
    const v6, 0x7f0902ae

    invoke-interface {p1, v5, v9, v5, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x7f0200db

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1145
    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIsTablet:Z

    if-nez v6, :cond_a

    .line 1146
    :cond_a
    const-string v6, "com.samsung.helphub"

    invoke-virtual {p0, v6}, Lcom/android/settings_ex/wifi/WifiSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->helpMenuCheck:Z

    .line 1147
    iget-boolean v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->helpMenuCheck:Z

    if-eqz v6, :cond_3

    .line 1148
    const/16 v6, 0xb

    const v7, 0x7f090a11

    invoke-interface {p1, v5, v6, v5, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x7f0200d2

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->helpMenuCheck:Z

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v6

    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_3

    :cond_b
    move v4, v5

    .line 1157
    goto :goto_4
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 476
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 10
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v9, 0x1

    .line 1226
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1283
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v9

    :cond_0
    :goto_0
    return v9

    .line 1228
    :pswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 1231
    :pswitch_2
    invoke-direct {p0, v9}, Lcom/android/settings_ex/wifi/WifiSettings;->dismissDialog(I)V

    .line 1233
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/enterprise/RestrictionPolicy;->isWifiDirectAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1237
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_2

    .line 1238
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0903fb

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto :goto_0

    .line 1244
    :cond_2
    const-class v0, Lcom/android/settings_ex/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, p0, v0, v1, v2}, Lcom/android/settings_ex/SettingsPreferenceFragment;->startFragment(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 1248
    :pswitch_3
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->showDialog(I)V

    goto :goto_0

    .line 1251
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIsTablet:Z

    if-nez v0, :cond_3

    .line 1252
    :cond_3
    new-instance v8, Landroid/content/Intent;

    const-string v0, "com.samsung.helphub.HELP"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1253
    .local v8, intent:Landroid/content/Intent;
    const-string v0, "helphub:section"

    const-string v1, "wifi"

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1254
    const/high16 v0, 0x1000

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1255
    invoke-virtual {p0, v8}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1259
    .end local v8           #intent:Landroid/content/Intent;
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onScanMenuPressed()V

    .line 1262
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ex/guide/GuideFragment;->isInGuideMode(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_4

    move v6, v9

    :cond_4
    move v9, v6

    goto :goto_0

    .line 1267
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1269
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAddNetworkPressed()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1270
    :catch_0
    move-exception v7

    .line 1271
    .local v7, e:Ljava/lang/IllegalStateException;
    const-string v0, "WifiSettings"

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1276
    .end local v7           #e:Ljava/lang/IllegalStateException;
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAdvancedMenuPressed()V

    goto/16 :goto_0

    .line 1279
    :pswitch_8
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.WIFI_MANAGE_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 960
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 975
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 976
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiEnabler;->pause()V

    .line 978
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 979
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    .line 981
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v0, :cond_1

    .line 982
    sput-boolean v3, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 985
    :cond_1
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    if-eqz v0, :cond_2

    .line 987
    sget-object v0, Lcom/android/settings_ex/wifi/WifiSettings;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 988
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mIsRegisteredMotionListener:Z

    .line 991
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 992
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 993
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWatchdogDialog:Landroid/app/AlertDialog;

    .line 996
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 997
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 998
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialog:Landroid/app/AlertDialog;

    .line 1001
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 1002
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1003
    iput-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSccDiffDialog:Landroid/app/AlertDialog;

    .line 1005
    :cond_5
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v2, 0x1

    .line 1485
    instance-of v3, p2, Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v3, :cond_6

    .line 1486
    check-cast p2, Lcom/android/settings_ex/wifi/AccessPoint;

    .end local p2
    iput-object p2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    .line 1487
    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInSecPickerActivity:Z

    if-eqz v3, :cond_1

    .line 1488
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1489
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "ssid"

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1490
    const-string v3, "bssid"

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1491
    const-string v3, "security"

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1492
    const-string v3, "frequency"

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->frequency:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1493
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v5, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1494
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 1547
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v2

    .line 1501
    :cond_1
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v3, :cond_2

    .line 1503
    const-string v3, "T wifi zone_secure"

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1505
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUsimUseable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1516
    :cond_2
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v1

    .line 1517
    .local v1, isSupportedSecurity:Z
    if-eqz v1, :cond_0

    .line 1527
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings_ex/wifi/AccessPoint;->security:I

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-ne v3, v5, :cond_4

    .line 1529
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 1531
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v3, v6}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1508
    .end local v1           #isSupportedSecurity:Z
    :cond_3
    const-string v3, "ollehWiFi"

    iget-object v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1510
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->isUsimUseable()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1534
    .restart local v1       #isSupportedSecurity:Z
    :cond_4
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->isSupportedSecurityType()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1535
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0903e7

    invoke-static {v3, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1538
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v3, v6}, Lcom/android/settings_ex/wifi/WifiSettings;->showDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1541
    .end local v1           #isSupportedSecurity:Z
    .restart local p2
    :cond_6
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAddNetworkItem:Landroid/preference/Preference;

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1542
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1543
    invoke-virtual {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->onAddNetworkPressed()V

    goto/16 :goto_0

    .line 1545
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    goto/16 :goto_0
.end method

.method public onPreferenceTreeClickNewDialog(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)V
    .locals 6
    .parameter "screen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1551
    sget-boolean v1, Lcom/android/settings_ex/wifi/WifiSettings;->manageNetwork:Z

    if-eqz v1, :cond_3

    .line 1552
    const-string v1, "WifiSettings"

    const-string v2, "MangeNetwork show dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v2, :cond_0

    .line 1554
    const-string v1, "WifiSettings"

    const-string v2, "connected Network clicked in Manage Networks"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/settings_ex/wifi/WifiSettings;->showNewDialog(Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V

    .line 1556
    sput-boolean v4, Lcom/android/settings_ex/wifi/WifiSettings;->vzwViewFlag:Z

    .line 1557
    const-string v1, "WifiSettings"

    const-string v2, "vzwViewFlag sets to false, onPreferenceTreeClickNewDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    :goto_0
    return-void

    .line 1561
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getLevel()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 1562
    const/4 v0, 0x1

    .line 1567
    .local v0, ManageConnectable:Z
    :goto_1
    if-eqz v0, :cond_2

    .line 1568
    const-string v1, "WifiSettings"

    const-string v2, "MANAGE NETWORK REMBERED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    sput v5, Lcom/android/settings_ex/wifi/WifiNewDialog;->Remembered:I

    .line 1574
    :goto_2
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unconnected network clicked in Manage Networks and WifiNewDialog.Remembered = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings_ex/wifi/WifiNewDialog;->Remembered:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v1, v4, v5, v5}, Lcom/android/settings_ex/wifi/WifiSettings;->showNewDialog(Lcom/android/settings_ex/wifi/AccessPoint;ZZZ)V

    goto :goto_0

    .line 1564
    .end local v0           #ManageConnectable:Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #ManageConnectable:Z
    goto :goto_1

    .line 1571
    :cond_2
    const-string v1, "WifiSettings"

    const-string v2, "MANAGE NETWORK NOT DETECTED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1572
    sput v4, Lcom/android/settings_ex/wifi/WifiNewDialog;->Remembered:I

    goto :goto_2

    .line 1578
    .end local v0           #ManageConnectable:Z
    :cond_3
    sput-boolean v4, Lcom/android/settings_ex/wifi/WifiSettings;->vzwEditFlag:Z

    .line 1579
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v1, v2, :cond_4

    .line 1580
    const-string v1, "WifiSettings"

    const-string v2, "detected  NETWORK NOT connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v1, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->showConfigUi(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 1583
    :cond_4
    sget v1, Lcom/android/settings_ex/wifi/WifiSettings;->mManageNetworkConnected:I

    if-nez v1, :cond_5

    .line 1584
    const-string v1, "WifiSettings"

    const-string v2, "showing dialog for connected network clicked in normal wifi settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v1, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->showNewDialog(Lcom/android/settings_ex/wifi/AccessPoint;Z)V

    .line 1586
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connected NETWORK CONNECTED CLICKED> status ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1588
    :cond_5
    const-string v1, "WifiSettings"

    const-string v2, "showing dialog for detected network clicked in normal wifi settings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-direct {p0, v1, v4, v5}, Lcom/android/settings_ex/wifi/WifiSettings;->showNewDialog(Lcom/android/settings_ex/wifi/AccessPoint;ZZ)V

    .line 1590
    const-string v1, "WifiSettings"

    const-string v2, "DETECTED NETWORK CONNECTED CLICKED>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1591
    sput-boolean v4, Lcom/android/settings_ex/wifi/WifiSettings;->vzwViewFlag:Z

    .line 1592
    const-string v1, "WifiSettings"

    const-string v2, "vzwViewFlag sets to false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    .line 808
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 815
    invoke-static {}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->checkSecurityPopup()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 816
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v3, :cond_0

    .line 817
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v3, v5}, Lcom/android/settings_ex/wifi/WifiDialog;->setSoftKeyboardVisible(Z)V

    .line 821
    :cond_0
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 822
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 823
    .local v2, msg:Landroid/os/Message;
    const/16 v3, 0x1a

    iput v3, v2, Landroid/os/Message;->what:I

    .line 825
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 826
    .local v0, args:Landroid/os/Bundle;
    const-string v3, "enable"

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 827
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 829
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v3

    if-nez v3, :cond_1

    .line 830
    const-string v3, "WifiSettings"

    const-string v6, "Start scan, start assoc !!!!!!!!!!!!!!"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #msg:Landroid/os/Message;
    :cond_1
    const-string v3, "sys.edm.keystore_netid"

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 837
    .local v1, auxNetId:I
    if-eq v1, v8, :cond_2

    .line 838
    iput v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 839
    const-string v3, "sys.edm.keystore_netid"

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings_ex/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 877
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v3}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/WifiPolicy;->isWifiStateChangeAllowed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 878
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->finish()V

    .line 883
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    if-eqz v3, :cond_4

    .line 884
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings_ex/wifi/WifiEnabler;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiEnabler;->resume()V

    .line 887
    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v3, v6, v7}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 888
    iget v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mKeyStoreNetworkId:I

    if-eq v3, v8, :cond_5

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v3

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    sget-object v6, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v3, v6, :cond_5

    .line 890
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v6, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mKeyStoreNetworkId:I

    iget-object v7, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v3, v6, v7}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 892
    :cond_5
    iput v8, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mKeyStoreNetworkId:I

    .line 894
    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInPickerDialog:Z

    if-nez v3, :cond_6

    .line 895
    sput-boolean v4, Lcom/android/settings_ex/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 913
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ex/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "accessibility_enabled"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_b

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTalkBackEnabled:Z

    .line 915
    iget-boolean v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTalkBackEnabled:Z

    if-eqz v3, :cond_7

    .line 916
    new-instance v3, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v7, Lcom/android/settings_ex/wifi/WifiSettings$7;

    invoke-direct {v7, p0}, Lcom/android/settings_ex/wifi/WifiSettings$7;-><init>(Lcom/android/settings_ex/wifi/WifiSettings;)V

    invoke-direct {v3, v6, v7}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    .line 935
    :cond_7
    iput v5, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAllowUpdateScanList:I

    .line 938
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    instance-of v3, v3, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    if-eqz v3, :cond_8

    .line 939
    const-string v3, "WifiSettings"

    const-string v6, " SetupWizard Wifi Screen Instance Creation Goes Here !!! in OnResume"

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iput-boolean v4, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mInSetupWizardWifiScreen:Z

    .line 941
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    if-nez v3, :cond_8

    .line 942
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    iput-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSetupWizardWifiScreen:Lcom/android/settings_ex/wifi/SetupWizardWifiScreen;

    .line 946
    :cond_8
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    .line 948
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 949
    iget-object v3, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v3}, Lcom/android/settings_ex/wifi/WifiDialog;->dismissSpinnerPopup()V

    .line 952
    :cond_9
    sget v3, Lcom/android/settings_ex/wifi/WifiSettings;->mStartWith:I

    if-eqz v3, :cond_a

    .line 953
    sget v3, Lcom/android/settings_ex/wifi/WifiSettings;->mStartWith:I

    invoke-direct {p0, v3}, Lcom/android/settings_ex/wifi/WifiSettings;->startWith(I)V

    .line 954
    sput v5, Lcom/android/settings_ex/wifi/WifiSettings;->mStartWith:I

    .line 956
    :cond_a
    return-void

    :cond_b
    move v3, v5

    .line 913
    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1208
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1211
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1212
    const-string v0, "edit_mode"

    iget-boolean v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgEdit:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1213
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 1214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 1215
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 1216
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1218
    :cond_0
    invoke-static {}, Lcom/android/settings_ex/guide/WifiSettingsGuider;->checkSecurityPopup()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    const v1, 0x7f0b03de

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    const v1, 0x7f0b0420

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1219
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mDialog:Lcom/android/settings_ex/wifi/WifiDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ex/wifi/WifiDialog;->setSoftKeyboardVisible(Z)V

    .line 1222
    :cond_2
    return-void
.end method

.method public onScanMenuPressed()V
    .locals 3

    .prologue
    .line 1287
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1288
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->forceScan()V

    .line 1293
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTalkBackEnabled:Z

    if-eqz v0, :cond_0

    .line 1294
    iget v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSavedApCount:I

    if-eqz v0, :cond_2

    .line 1295
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAllowUpdateScanList:I

    .line 1300
    :cond_0
    :goto_1
    return-void

    .line 1290
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0903e5

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1297
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mAllowUpdateScanList:I

    goto :goto_1
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 1009
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onStop()V

    .line 1010
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 1011
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 1012
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1014
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mErrorDialogAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 1015
    return-void
.end method

.method pauseWifiScan()V
    .locals 1

    .prologue
    .line 3650
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3651
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->pause()V

    .line 3653
    :cond_0
    return-void
.end method

.method refreshAccessPoints()V
    .locals 1

    .prologue
    .line 3609
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3610
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    .line 3613
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 3618
    return-void
.end method

.method resumeWifiScan()V
    .locals 1

    .prologue
    .line 3659
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3660
    iget-object v0, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v0}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    .line 3662
    :cond_0
    return-void
.end method

.method public speakTTS()V
    .locals 4

    .prologue
    .line 3710
    const v1, 0x7f0903e6

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3711
    .local v0, str:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mTextToSpeech:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 3712
    return-void
.end method

.method submit(Lcom/android/settings_ex/wifi/WifiConfigController;)V
    .locals 5
    .parameter "configController"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 3314
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3316
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_5

    .line 3318
    iget v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastCWErrorReason:I

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/wifi/WifiManager;->checkCTCSsid(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mLastInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings_ex/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3321
    const/16 v1, 0xa

    invoke-direct {p0, v1, v4}, Lcom/android/settings_ex/wifi/WifiSettings;->CWHandleCommand(II)I

    .line 3324
    :cond_1
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    if-eq v1, v3, :cond_2

    .line 3327
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings_ex/wifi/AccessPoint;->networkId:I

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v1, v2}, Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 3370
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3371
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mScanner:Lcom/android/settings_ex/wifi/WifiSettings$Scanner;

    invoke-virtual {v1}, Lcom/android/settings_ex/wifi/WifiSettings$Scanner;->resume()V

    .line 3373
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ex/wifi/WifiSettings;->updateAccessPoints()V

    .line 3374
    :cond_4
    return-void

    .line 3329
    :cond_5
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v3, :cond_8

    .line 3330
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->isRetryDialog()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3331
    sget-boolean v1, Lcom/android/settings_ex/wifi/WifiSettings;->DEBUG:Z

    if-eqz v1, :cond_6

    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-connect ap id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    :cond_6
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3333
    :cond_7
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 3334
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2, v4}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 3335
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 3338
    :cond_8
    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-direct {p0, v0}, Lcom/android/settings_ex/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3354
    :cond_9
    const-string v1, ""

    const-string v2, "KTT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3355
    invoke-static {v0}, Lcom/android/settings_ex/wifi/AccessPoint;->isVendorAccessPoint(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3360
    :cond_a
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v0, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 3362
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings_ex/wifi/AccessPoint;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/settings_ex/wifi/WifiConfigController;->isEdit()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3363
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0

    .line 3366
    :cond_b
    iget-object v1, p0, Lcom/android/settings_ex/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ex/wifi/WifiSettings;->connectNetwork(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_0
.end method
