.class public final Lcom/android/server/ssrm/Monitor;
.super Ljava/lang/Thread;
.source "Monitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/Monitor$BoostedURLHandler;,
        Lcom/android/server/ssrm/Monitor$SysfsTable;,
        Lcom/android/server/ssrm/Monitor$TMUObserver;,
        Lcom/android/server/ssrm/Monitor$TmuState;,
        Lcom/android/server/ssrm/Monitor$SIPStatusInfo;,
        Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JA;,
        Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JF;,
        Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;,
        Lcom/android/server/ssrm/Monitor$SIOPLevel;,
        Lcom/android/server/ssrm/Monitor$AclObserver;,
        Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;,
        Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;,
        Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;
    }
.end annotation


# static fields
.field public static final ACTION_CP_SIOP_LEVEL:Ljava/lang/String; = "android.intent.action.CP_SIOP_LEVEL"

.field public static final ACTION_MAX_BRIGHTNESS_CHANGED:Ljava/lang/String; = "android.intent.action.MAX_BRIGHTNESS_CHANGED"

.field public static final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String; = "android.intent.action.SIOP_LEVEL_CHANGED"

.field private static final APP_STATUS_ADD_TRIGGER:I = 0x3

.field private static final APP_STATUS_REMOVE_TRIGGER:I = 0x4

.field private static final APP_STATUS_TRIGGER:I = 0x2

.field private static final BASE_MODEL:Ljava/lang/String; = "ja"

.field private static final BRIGHTNESS_LIMIT_VALUE:I = 0xe6

.field private static final BRIGHTNESS_NORMAL_VALUE:I = -0x1

.field private static final CREATE_SIOP_LEVEL:I = 0x6

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final EXTRA_CP_SIOP_LEVEL:Ljava/lang/String; = "cp_siop_level"

.field public static final EXTRA_MAX_BRIGHTNESS:Ljava/lang/String; = "max_brightness"

.field private static final FOREGROUND_TRIGGER:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final IS_KOR_MODEL:Z = false

.field private static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field public static final LCD_FPS_HIGH:I = 0x0

.field public static final LCD_FPS_IDLE:I = 0x2

.field public static final LCD_FPS_LOW:I = 0x1

.field public static final LCD_FPS_NONE:I = 0x3

.field private static final NA:I = -0x1

.field private static final PROCESS_STATE_BACKGROUND:Ljava/lang/String; = "BACKGROUND"

.field private static final PROCESS_STATE_FOREGROUND:Ljava/lang/String; = "FOREGROUND"

.field private static final READ_POLICY_XML:I = 0x5

.field private static final REMOVE_BOOST_REQUEST:I = 0x0

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SIOPFileName:Ljava/lang/String; = "siop_ja_xx"

.field private static final SIOP_SCENARIO_BENCHMARK:Ljava/lang/String; = "BenchmarkBooster"

.field private static final SIOP_SCENARIO_DEFAULT:Ljava/lang/String; = "default"

.field private static final SIOP_TYPE_AP:I = 0x6f

.field private static final SIOP_TYPE_CP:I = 0x70

.field private static final SSRM_NOTIFICATION_PERMISSION:Ljava/lang/String; = "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

.field private static final SSRM_STATUS_NAME:Ljava/lang/String; = "SSRM_STATUS_NAME"

.field private static final SSRM_STATUS_NOTIFY:Ljava/lang/String; = "com.sec.android.intent.action.SSRM_REQUEST"

.field private static final SSRM_STATUS_VALUE:Ljava/lang/String; = "SSRM_STATUS_VALUE"

.field public static final SystemIntentReceiver:Landroid/content/BroadcastReceiver; = null

.field private static TAG:Ljava/lang/String; = null

.field private static THERMISTOR_TIMER_DURATION:J = 0x0L

.field private static final THERMISTOR_TIMER_DURATION_DEFAULT_VALUE:J = 0x2710L

.field private static final THERMISTOR_TIMER_DURATION_MIN_VALUE:J = 0x3e8L

.field private static final TMU_UEVENT_MATCH:Ljava/lang/String; = "TMUSTATE"

.field private static final UPDATE_TO_LATEST_SIOP_LEVEL:I = 0x7

.field static isBootCompleted:Z

.field private static mAclEnabled:Z

.field private static mAclObserver:Lcom/android/server/ssrm/Monitor$AclObserver;

.field private static mActivityManager:Landroid/app/IActivityManager;

.field static mAirplanemode:Z

.field private static mAutoBrightnessEnabled:Z

.field private static mAutoBrightnessObserver:Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

.field static mBatteryCharging:Z

.field static mBatteryFull:Z

.field static mBatteyRemaining:I

.field static mBluetoothConnected:Z

.field static mBluetoothEnabled:Z

.field private static mBootMaxFreqHelper:Landroid/os/DVFSHelper;

.field private static mBootMinFreqHelper:Landroid/os/DVFSHelper;

.field private static mBrightnessAdjustedForBrowser:Z

.field static mBrowserIntentLowFps:Z

.field static mBrowserLowFps:Z

.field static final mBrowserTemp:[I

.field private static mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

.field private static mCPUFreqExceptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mContext:Landroid/content/Context;

.field private static volatile mCurrentCPTemp:I

.field private static mCurrentChargingPercent:I

.field private static mCurrentForegroundPackageName:Ljava/lang/String;

.field private static volatile mCurrentSIOPLevelsAP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/Monitor$SIOPLevel;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile mCurrentSIOPLevelsCP:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/Monitor$SIOPLevel;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static volatile mCurrentThermistorTemp:I

.field private static mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

.field static mDynamicFpsPackage:Z

.field private static mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

.field private static mFilter:Landroid/content/IntentFilter;

.field static mForceSIOPUpdate:Z

.field static mFpsFullScreenMode:Z

.field private static mGLBenchExceptionOn:Z

.field private static mGPUMaxFreqHelper:Landroid/os/DVFSHelper;

.field private static mGoogleNaviOn:Z

.field private static mGroupPlayGPUMaxHelper:Landroid/os/DVFSHelper;

.field private static mHandler:Landroid/os/Handler;

.field private static mInit:Z

.field private static mIntCurrentSIOPLevelAP:I

.field private static mIntCurrentSIOPLevelCP:I

.field private static mIntentMaxBrightnessChanged:Landroid/content/Intent;

.field private static mIntentSIOPLevelChanged:Landroid/content/Intent;

.field private static mLastBrightnessBySIOP:I

.field private static volatile mLastCPTemp:I

.field private static mLastCameraDualRecording:Z

.field private static mLastCameraRecording:Z

.field private static mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static volatile mLastThermistorTemp:I

.field private static mLatestMaxBrightness:I

.field private static mLimitCameraFlash:Z

.field private static mLimitCameraFlash_:Z

.field private static mLimitCameraRecording:Z

.field private static mLimitCameraRecording_:Z

.field private static mLimitDualRecordingToSingle:Z

.field private static mLimitDualRecordingToSingle_:Z

.field private static mLimitInputChargingCurrent:Z

.field private static mMonitor:Lcom/android/server/ssrm/Monitor;

.field static mMultiWindowRunning:Z

.field private static mPMS:Lcom/android/server/power/PowerManagerService;

.field static mPermanentAppPID:I

.field private static mPkgAddedFilter:Landroid/content/IntentFilter;

.field static mPowerConnected:Z

.field public static mPowerSavingMode:Z

.field static mPrevBrowserLowFps:Z

.field static mPrevFpsFullScreen:Z

.field static mPrevFpsPackage:Z

.field private static mSIOPControlForBrowser:Z

.field private static mSIOPControlForCameraShooting:Z

.field private static volatile mSIOPObjectsBrowser:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static volatile mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

.field private static volatile mSIOPTablesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/Monitor$SIOPLevel;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

.field private static mSSRMStatusFilter:Landroid/content/IntentFilter;

.field static mScreenOn:Z

.field private static mSupportedCpuCoreNum:[I

.field private static mSupportedCpuFreq:[I

.field private static mSupportedGpuFreqTable:[I

.field private static mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

.field private static mTMapOn:Z

.field private static mURLHandler:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

.field static mUsbConnected:Z

.field private static mWifiApOn:Z

.field static mWifiConnected:Z

.field private static mXmlRetryCount:I

.field static wifiEnabled:Z

.field private static xmlPolicyCreator:Lcom/android/server/ssrm/PolicyCreator;


# instance fields
.field private final THERMISTOR_TIMER_START:J

.field private final VAL_FOR_LATEST_TEMPERATURE:I

.field mBatteryStatus:I

.field private mGLBGPUMaxHelper:Landroid/os/DVFSHelper;

.field private mPM:Landroid/os/PowerManager;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mSIOPTablesReady:Z

.field private thermistorObeserver:Ljava/util/Timer;

.field private thermistorObeserverTask:Ljava/util/TimerTask;

.field private xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 117
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    .line 119
    sput-object v3, Lcom/android/server/ssrm/Monitor;->xmlPolicyCreator:Lcom/android/server/ssrm/PolicyCreator;

    .line 120
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    .line 122
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    .line 123
    const-string v0, "Monitor"

    sput-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    .line 134
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    .line 139
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Z

    .line 141
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    .line 144
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mFpsFullScreenMode:Z

    .line 145
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mDynamicFpsPackage:Z

    .line 146
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mBrowserLowFps:Z

    .line 147
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mBrowserIntentLowFps:Z

    .line 148
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mPrevBrowserLowFps:Z

    .line 149
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mPrevFpsFullScreen:Z

    .line 150
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mPrevFpsPackage:Z

    .line 152
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    .line 157
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    .line 162
    sput v2, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    .line 163
    sput v2, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    .line 164
    sput v2, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    .line 165
    sput v2, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    .line 166
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPTablesMap:Ljava/util/HashMap;

    .line 167
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    .line 168
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsCP:Ljava/util/ArrayList;

    .line 171
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 172
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsBrowser:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 173
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 174
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 175
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 176
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 177
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 185
    sput v4, Lcom/android/server/ssrm/Monitor;->mLastBrightnessBySIOP:I

    .line 203
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    .line 213
    sput v4, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    .line 218
    const-string v0, "KOR"

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->IS_KOR_MODEL:Z

    .line 237
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    .line 238
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    .line 247
    sput v2, Lcom/android/server/ssrm/Monitor;->mXmlRetryCount:I

    .line 249
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mURLHandler:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    .line 253
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessEnabled:Z

    .line 254
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mBrightnessAdjustedForBrowser:Z

    .line 255
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mSIOPControlForCameraShooting:Z

    .line 256
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mSIOPControlForBrowser:Z

    .line 257
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessObserver:Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

    .line 473
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mAclEnabled:Z

    .line 474
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mAclObserver:Lcom/android/server/ssrm/Monitor$AclObserver;

    .line 493
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mInit:Z

    .line 758
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mBrowserTemp:[I

    .line 824
    sput v4, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    .line 825
    sput v4, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    .line 1025
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mGLBenchExceptionOn:Z

    .line 1268
    const/16 v0, 0x64

    sput v0, Lcom/android/server/ssrm/Monitor;->mCurrentChargingPercent:I

    .line 1286
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mGPUMaxFreqHelper:Landroid/os/DVFSHelper;

    .line 1287
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSupportedGpuFreqTable:[I

    .line 1326
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitInputChargingCurrent:Z

    .line 1344
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    .line 1345
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    .line 1366
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    .line 1372
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    .line 1378
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitDualRecordingToSingle:Z

    .line 1385
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    .line 1387
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash_:Z

    .line 1388
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording_:Z

    .line 1389
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLimitDualRecordingToSingle_:Z

    .line 1558
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    .line 1559
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    .line 1560
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSSRMStatusFilter:Landroid/content/IntentFilter;

    .line 1602
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mTMapOn:Z

    .line 1603
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mGoogleNaviOn:Z

    .line 1604
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    .line 1606
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mBootMinFreqHelper:Landroid/os/DVFSHelper;

    .line 1607
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mBootMaxFreqHelper:Landroid/os/DVFSHelper;

    .line 1608
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLastCameraRecording:Z

    .line 1609
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->mLastCameraDualRecording:Z

    .line 1610
    new-instance v0, Lcom/android/server/ssrm/Monitor$3;

    invoke-direct {v0}, Lcom/android/server/ssrm/Monitor$3;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 2253
    const-string v0, "1"

    const-string v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->mMultiWindowRunning:Z

    .line 2405
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    .line 2512
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    .line 2758
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mCPUFreqExceptionMap:Ljava/util/HashMap;

    .line 2793
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mCurrentForegroundPackageName:Ljava/lang/String;

    .line 2822
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mGroupPlayGPUMaxHelper:Landroid/os/DVFSHelper;

    return-void

    .line 758
    :array_0
    .array-data 0x4
        0x7ct 0x1t 0x0t 0x0t
        0x90t 0x1t 0x0t 0x0t
        0xb8t 0x1t 0x0t 0x0t
        0xcct 0x1t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0x30t 0x2t 0x0t 0x0t
        0x44t 0x2t 0x0t 0x0t
        0xc6t 0x2t 0x0t 0x0t
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Landroid/app/IActivityManager;)V
    .locals 8
    .parameter "ctxt"
    .parameter "pms"
    .parameter "activityManager"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 385
    const-string v1, "Monitor"

    invoke-direct {p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 118
    iput-object v7, p0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    .line 159
    const-wide/16 v1, 0x2710

    iput-wide v1, p0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_START:J

    .line 160
    new-instance v1, Ljava/util/Timer;

    const-string v2, "Thermistor timer"

    invoke-direct {v1, v2, v6}, Ljava/util/Timer;-><init>(Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->thermistorObeserver:Ljava/util/Timer;

    .line 161
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/ssrm/Monitor;->VAL_FOR_LATEST_TEMPERATURE:I

    .line 207
    iput-object v7, p0, Lcom/android/server/ssrm/Monitor;->mPM:Landroid/os/PowerManager;

    .line 532
    new-instance v1, Lcom/android/server/ssrm/Monitor$2;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/Monitor$2;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->thermistorObeserverTask:Ljava/util/TimerTask;

    .line 642
    iput-boolean v6, p0, Lcom/android/server/ssrm/Monitor;->mSIOPTablesReady:Z

    .line 1053
    iput-object v7, p0, Lcom/android/server/ssrm/Monitor;->mGLBGPUMaxHelper:Landroid/os/DVFSHelper;

    .line 2361
    new-instance v1, Lcom/android/server/ssrm/Monitor$4;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/Monitor$4;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 386
    sput-object p1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    .line 387
    sput-object p2, Lcom/android/server/ssrm/Monitor;->mPMS:Lcom/android/server/power/PowerManagerService;

    .line 388
    sput-object p3, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/IActivityManager;

    .line 389
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->createDynamicLCDFPS()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    .line 391
    new-instance v1, Lcom/android/server/ssrm/Monitor$SysfsTable;

    const-string v2, "/sys/devices/platform/sec-thermistor/temperature"

    const-string v3, "/sys/class/sensors/temphumidity_sensor/cp_temperature"

    const-string v4, "/sys/class/power_supply/battery/siop_level"

    const-string v5, "/sys/class/lcd/panel/siop_enable"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/ssrm/Monitor$SysfsTable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    .line 397
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    invoke-static {}, Lcom/android/server/ssrm/Monitor$SysfsTable;->checkCpSysfsAccesible()V

    .line 399
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->initFeatureAndParameter()V

    .line 401
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    if-eqz v1, :cond_0

    .line 402
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    invoke-virtual {v1}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->initialize()V

    .line 405
    :cond_0
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 406
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "In Monitor:: Constructor"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->initHandler()V

    .line 412
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/Controller;->setContext(Landroid/content/Context;)V

    .line 415
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->registerIntentFilters()V

    .line 418
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mPM:Landroid/os/PowerManager;

    if-nez v1, :cond_2

    .line 419
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mPM:Landroid/os/PowerManager;

    .line 423
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 426
    invoke-static {}, Lcom/android/server/ssrm/PolicyReader;->getInstance()Lcom/android/server/ssrm/PolicyReader;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    .line 427
    invoke-static {}, Lcom/android/server/ssrm/PolicyCreator;->getInstance()Lcom/android/server/ssrm/PolicyCreator;

    move-result-object v1

    sput-object v1, Lcom/android/server/ssrm/Monitor;->xmlPolicyCreator:Lcom/android/server/ssrm/PolicyCreator;

    .line 431
    :try_start_0
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    :cond_3
    :goto_0
    new-instance v1, Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;-><init>(Lcom/android/server/ssrm/Monitor;)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessObserver:Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

    .line 439
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessObserver:Lcom/android/server/ssrm/Monitor$AutoBrightnessObserver;

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 442
    new-instance v1, Lcom/android/server/ssrm/Monitor$AclObserver;

    invoke-direct {v1, p0}, Lcom/android/server/ssrm/Monitor$AclObserver;-><init>(Lcom/android/server/ssrm/Monitor;)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mAclObserver:Lcom/android/server/ssrm/Monitor$AclObserver;

    .line 443
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_saving_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mAclObserver:Lcom/android/server/ssrm/Monitor$AclObserver;

    invoke-virtual {v1, v2, v6, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 446
    new-instance v1, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p1, v2, v7}, Lcom/android/server/ssrm/Monitor$BoostedURLHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/ssrm/Monitor$1;)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mURLHandler:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    .line 447
    return-void

    .line 432
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Landroid/os/RemoteException;
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v1, :cond_3

    .line 434
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000()Lcom/android/server/ssrm/PolicyCreator;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/ssrm/Monitor;->xmlPolicyCreator:Lcom/android/server/ssrm/PolicyCreator;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 67
    sget v0, Lcom/android/server/ssrm/Monitor;->mXmlRetryCount:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/ssrm/Monitor;Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->checkException(Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$108()I
    .locals 2

    .prologue
    .line 67
    sget v0, Lcom/android/server/ssrm/Monitor;->mXmlRetryCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/server/ssrm/Monitor;->mXmlRetryCount:I

    return v0
.end method

.method static synthetic access$1100()Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    return v0
.end method

.method static synthetic access$1400()Landroid/content/Context;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessEnabled:Z

    return p0
.end method

.method static synthetic access$1600()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mBrightnessAdjustedForBrowser:Z

    return v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mBrightnessAdjustedForBrowser:Z

    return p0
.end method

.method static synthetic access$1700(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->sendSIOPUpdateMessage(Z)V

    return-void
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mAclEnabled:Z

    return v0
.end method

.method static synthetic access$1802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mAclEnabled:Z

    return p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/ssrm/Monitor;)Lcom/android/server/ssrm/PolicyReader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    return-object v0
.end method

.method static synthetic access$3300()Landroid/os/DVFSHelper;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mBootMinFreqHelper:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$3302(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-object p0, Lcom/android/server/ssrm/Monitor;->mBootMinFreqHelper:Landroid/os/DVFSHelper;

    return-object p0
.end method

.method static synthetic access$3400()Landroid/os/DVFSHelper;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mBootMaxFreqHelper:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$3402(Landroid/os/DVFSHelper;)Landroid/os/DVFSHelper;
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-object p0, Lcom/android/server/ssrm/Monitor;->mBootMaxFreqHelper:Landroid/os/DVFSHelper;

    return-object p0
.end method

.method static synthetic access$3500()[I
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    return-object v0
.end method

.method static synthetic access$3502([I)[I
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-object p0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    return-object p0
.end method

.method static synthetic access$3600(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->onPowerSavingModeChanged(Z)V

    return-void
.end method

.method static synthetic access$3700()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    return-object v0
.end method

.method static synthetic access$3800()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mSIOPControlForCameraShooting:Z

    return v0
.end method

.method static synthetic access$3802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mSIOPControlForCameraShooting:Z

    return p0
.end method

.method static synthetic access$3902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mTMapOn:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/server/ssrm/Monitor;)Ljava/util/TimerTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->thermistorObeserverTask:Ljava/util/TimerTask;

    return-object v0
.end method

.method static synthetic access$4002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mGoogleNaviOn:Z

    return p0
.end method

.method static synthetic access$4100(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->applyGroupPlayGPULock(Z)V

    return-void
.end method

.method static synthetic access$4200()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mLastCameraDualRecording:Z

    return v0
.end method

.method static synthetic access$4202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mLastCameraDualRecording:Z

    return p0
.end method

.method static synthetic access$4300()Lcom/android/server/ssrm/Monitor$BoostedURLHandler;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mURLHandler:Lcom/android/server/ssrm/Monitor$BoostedURLHandler;

    return-object v0
.end method

.method static synthetic access$4400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->setCurrentSIOPTable(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4500()V
    .locals 0

    .prologue
    .line 67
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->initDVFSHelperMaxCpuFreq()V

    return-void
.end method

.method static synthetic access$4600()Landroid/os/DVFSHelper;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    return-object v0
.end method

.method static synthetic access$4700(Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-static {p0, p1}, Lcom/android/server/ssrm/Monitor;->insertMinCPUFreqRequirement(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$4800(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->deleteMinCPUFreqRequirement(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->onSIPIntentReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/ssrm/Monitor;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->thermistorObeserver:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$5000()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mSIOPControlForBrowser:Z

    return v0
.end method

.method static synthetic access$5002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mSIOPControlForBrowser:Z

    return p0
.end method

.method static synthetic access$5100(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->setCurrentForegroundPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    return p0
.end method

.method static synthetic access$5300(I)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->isFPSValid(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    return-object v0
.end method

.method static synthetic access$5402(Lcom/android/server/ssrm/Monitor$SIPStatusInfo;)Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-object p0, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    return-object p0
.end method

.method static synthetic access$5600()Lcom/android/server/ssrm/Monitor$SysfsTable;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/ssrm/Monitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->createSIOPLevels()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/ssrm/Monitor;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->readThermistorFile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/ssrm/Monitor;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->setCurrentLevelfromTemp()V

    return-void
.end method

.method static synthetic access$900()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final aclOn(Z)V
    .locals 2
    .parameter "bOn"

    .prologue
    .line 1441
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-boolean v0, v0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isAclOnOffValid:Z

    if-eqz v0, :cond_0

    .line 1442
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-object v1, v0, Lcom/android/server/ssrm/Monitor$SysfsTable;->aclOnOffPath:Ljava/lang/String;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    .line 1444
    :cond_0
    return-void

    .line 1442
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applyConstaintsForGLBench(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    .line 1055
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyConstaintsForGLBench:: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    sput-boolean p1, Lcom/android/server/ssrm/Monitor;->mGLBenchExceptionOn:Z

    .line 1057
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGLBGPUMaxHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 1058
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_GLB_GPU_FREQ_MAX"

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGLBGPUMaxHelper:Landroid/os/DVFSHelper;

    .line 1060
    :cond_0
    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1061
    const/16 v6, 0x10a

    .line 1062
    .local v6, JA_GPU_LIMIT:I
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGLBGPUMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    const-wide/16 v2, 0x10a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1067
    .end local v6           #JA_GPU_LIMIT:I
    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    .line 1068
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGLBGPUMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 1072
    :goto_1
    return-void

    .line 1063
    :cond_2
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1064
    const/16 v7, 0x140

    .line 1065
    .local v7, JF_GPU_LIMIT:I
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGLBGPUMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    const-wide/16 v2, 0x140

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 1070
    .end local v7           #JF_GPU_LIMIT:I
    :cond_3
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGLBGPUMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_1
.end method

.method private applyGLBenchmarkExceptionScenario()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1027
    const-string v3, "ja"

    const-string v4, "ja"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "jf"

    const-string v4, "ja"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1051
    :cond_0
    :goto_0
    return-void

    .line 1031
    :cond_1
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getCurrentForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1032
    .local v2, fgPkgName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1036
    const-string v0, "com.glbenchmark.glbenchmark"

    .line 1037
    .local v0, GL_BENCHMARK_PREFIX:Ljava/lang/String;
    const-string v3, "com.glbenchmark.glbenchmark"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1038
    const/4 v1, 0x5

    .line 1039
    .local v1, GL_BENCH_TRIGGER_LEVEL:I
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mGLBenchExceptionOn:Z

    if-eqz v3, :cond_2

    .line 1040
    sget v3, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 1041
    invoke-direct {p0, v5}, Lcom/android/server/ssrm/Monitor;->applyConstaintsForGLBench(Z)V

    goto :goto_0

    .line 1044
    :cond_2
    sget v3, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_0

    .line 1045
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/server/ssrm/Monitor;->applyConstaintsForGLBench(Z)V

    goto :goto_0

    .line 1048
    .end local v1           #GL_BENCH_TRIGGER_LEVEL:I
    :cond_3
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mGLBenchExceptionOn:Z

    if-eqz v3, :cond_0

    .line 1049
    invoke-direct {p0, v5}, Lcom/android/server/ssrm/Monitor;->applyConstaintsForGLBench(Z)V

    goto :goto_0
.end method

.method private static applyGroupPlayGPULock(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    .line 2805
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyGroupPlayGPULock:: enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2806
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mGroupPlayGPUMaxHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 2807
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_GROUPPLAY_GPU_FREQ_MAX"

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mGroupPlayGPUMaxHelper:Landroid/os/DVFSHelper;

    .line 2809
    :cond_0
    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2810
    const/16 v6, 0x10a

    .line 2811
    .local v6, JA_GPU_LIMIT:I
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mGroupPlayGPUMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    const-wide/16 v2, 0x10a

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 2816
    .end local v6           #JA_GPU_LIMIT:I
    :cond_1
    :goto_0
    if-eqz p0, :cond_3

    .line 2817
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mGroupPlayGPUMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 2821
    :goto_1
    return-void

    .line 2812
    :cond_2
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2813
    const/16 v7, 0x80

    .line 2814
    .local v7, JF_GPU_LIMIT:I
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mGroupPlayGPUMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    const-wide/16 v2, 0x80

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 2819
    .end local v7           #JF_GPU_LIMIT:I
    :cond_3
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mGroupPlayGPUMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_1
.end method

.method public static declared-synchronized boostRequestfromAMS(Ljava/lang/String;)V
    .locals 6
    .parameter "packageName"

    .prologue
    .line 2141
    const-class v3, Lcom/android/server/ssrm/Monitor;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 2142
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "In Monitor:: boostRequestfromAMS"

    invoke-static {v2, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2145
    :cond_0
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 2146
    .local v1, msg1:Landroid/os/Message;
    const/4 v2, 0x7

    iput v2, v1, Landroid/os/Message;->what:I

    .line 2147
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2149
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2150
    .local v0, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 2151
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2152
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2154
    monitor-exit v3

    return-void

    .line 2141
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #msg1:Landroid/os/Message;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private checkException(Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;)Z
    .locals 8
    .parameter "attr"

    .prologue
    .line 2175
    const/4 v2, 0x1

    .line 2176
    .local v2, doBoost:Z
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package Name in Check Exception :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2177
    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getCommonExceptionList()Ljava/util/ArrayList;

    move-result-object v1

    .line 2178
    .local v1, commonExceptionList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;>;"
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 2184
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v6, "attr.getCommonExceptionList()!= null : "

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;

    .line 2187
    .local v0, attrException:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;
    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2188
    .local v4, packageName:Ljava/lang/String;
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception Name is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2189
    const-string v5, "USB"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2190
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mUsbConnected : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2191
    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->getStatusName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IsConnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->isValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2192
    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mUsbConnected:Z

    if-eqz v5, :cond_1

    .line 2193
    and-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2195
    :cond_1
    and-int/lit8 v2, v2, 0x0

    goto :goto_0

    .line 2198
    :cond_2
    const-string v5, "WIFI"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2199
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mWifiConnected : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/ssrm/Monitor;->mWifiConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2200
    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->getStatusName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IsConnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->isValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2201
    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mWifiConnected:Z

    if-eqz v5, :cond_3

    .line 2202
    and-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2204
    :cond_3
    and-int/lit8 v2, v2, 0x0

    goto/16 :goto_0

    .line 2206
    :cond_4
    const-string v5, "AIRPLANE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2207
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mAirplanemode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2208
    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->getStatusName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IsConnected"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;->isValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2209
    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mAirplanemode:Z

    if-eqz v5, :cond_5

    .line 2210
    and-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2212
    :cond_5
    and-int/lit8 v2, v2, 0x0

    goto/16 :goto_0

    .line 2217
    .end local v0           #attrException:Lcom/android/server/ssrm/PolicyReader$ExceptionalCondition;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #packageName:Ljava/lang/String;
    :cond_6
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception List is Empty for package Name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/ssrm/PolicyReader$CommonTriggerAttributeClass;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    const/4 v2, 0x0

    .line 2220
    :cond_7
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception with doBoost : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    return v2
.end method

.method private createDynamicLCDFPS()Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;
    .locals 2

    .prologue
    .line 2340
    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "m0"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "t03g"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "t0lte"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2344
    :cond_0
    new-instance v0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JA;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JA;-><init>(Lcom/android/server/ssrm/Monitor;)V

    .line 2348
    :goto_0
    return-object v0

    .line 2345
    :cond_1
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2346
    new-instance v0, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JF;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS_JF;-><init>(Lcom/android/server/ssrm/Monitor;)V

    goto :goto_0

    .line 2348
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createSIOPLevels()V
    .locals 29

    .prologue
    .line 644
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/ssrm/Monitor;->mSIOPTablesReady:Z

    if-eqz v3, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 649
    :cond_1
    const/4 v3, 0x3

    new-array v3, v3, [Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 651
    const-string v3, "siop_ja_xx"

    if-eqz v3, :cond_3

    const-string v3, "siop_ja_xx"

    const-string v5, "j6"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 652
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x0

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "CamLevel-1"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0xc8

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 653
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x1

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "CamLevel-2"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0xa0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 654
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x2

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "CamLevel-3"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0x78

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 666
    :goto_1
    const/16 v3, 0x8

    new-array v3, v3, [Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsBrowser:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 667
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsBrowser:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x0

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "BrowserLevel-1"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 668
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsBrowser:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x1

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "BrowserLevel-2"

    const/4 v5, -0x1

    const v6, 0x13d620

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0xfa

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 669
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsBrowser:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x2

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "BrowserLevel-3"

    const/4 v5, -0x1

    const v6, 0xf4240

    const/4 v7, -0x1

    const/16 v8, 0x32

    const/16 v9, 0xe6

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 670
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsBrowser:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x3

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "BrowserLevel-4"

    const/4 v5, -0x1

    const v6, 0xf4240

    const/4 v7, -0x1

    const/16 v8, 0x32

    const/16 v9, 0xe6

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 671
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsBrowser:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x4

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "BrowserLevel-5"

    const/4 v5, -0x1

    const v6, 0xf4240

    const/4 v7, -0x1

    const/16 v8, 0x1e

    const/16 v9, 0xc8

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 672
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsBrowser:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x5

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "BrowserLevel-6"

    const/4 v5, -0x1

    const v6, 0x927c0

    const/4 v7, -0x1

    const/16 v8, 0x1e

    const/16 v9, 0xc8

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 673
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsBrowser:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x6

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "BrowserLevel-7"

    const/4 v5, -0x1

    const v6, 0x927c0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/16 v9, 0xc8

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 674
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsBrowser:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x7

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "BrowserLevel-8"

    const/4 v5, -0x1

    const v6, 0x927c0

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/16 v9, 0xc8

    const/4 v10, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 676
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    iget-object v3, v3, Lcom/android/server/ssrm/PolicyReader;->tempratureTables:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v22

    .line 677
    .local v22, keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 678
    .local v20, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPTablesMap:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 679
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPTablesMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 682
    :cond_2
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPTablesMap:Ljava/util/HashMap;

    .line 683
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 684
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 685
    .local v21, key:Ljava/lang/String;
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Creating SIOP Table for :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/ssrm/Monitor;->xmlPolicyReader:Lcom/android/server/ssrm/PolicyReader;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/server/ssrm/PolicyReader;->getTempratureTable(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    .line 687
    .local v26, tempDataSetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;>;"
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 688
    .local v24, siopLevelObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/Monitor$SIOPLevel;>;"
    const/16 v19, 0x0

    .local v19, i:I
    :goto_3
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v19

    if-ge v0, v3, :cond_5

    .line 689
    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;

    .line 690
    .local v25, tempDataSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Level-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 691
    .local v4, strTag:Ljava/lang/String;
    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getSurfaceTemp()I

    move-result v5

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getArmFreq()I

    move-result v6

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getArmCore()I

    move-result v7

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getChargeCurrent()I

    move-result v8

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getLcdBrightness()I

    move-result v9

    const/4 v10, -0x1

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getFlashState()Z

    move-result v11

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getAclState()Z

    move-result v12

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->isRecordingStop()Z

    move-result v13

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->isDualRecordingToSingle()Z

    move-result v14

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->isCPPowerBackOut()Z

    move-result v15

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;->getGPUFreq()I

    move-result v16

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    .line 695
    .local v2, tempSIOPObj:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 688
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 655
    .end local v2           #tempSIOPObj:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .end local v4           #strTag:Ljava/lang/String;
    .end local v19           #i:I
    .end local v20           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v21           #key:Ljava/lang/String;
    .end local v22           #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v24           #siopLevelObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/Monitor$SIOPLevel;>;"
    .end local v25           #tempDataSet:Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;
    .end local v26           #tempDataSetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;>;"
    :cond_3
    const-string v3, "siop_ja_xx"

    if-eqz v3, :cond_4

    const-string v3, "siop_ja_xx"

    const-string v5, "jactive"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 656
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x0

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "CamLevel-1"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 657
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x1

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "CamLevel-2"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0xb9

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 658
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x2

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "CamLevel-3"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0xa5

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    goto/16 :goto_1

    .line 660
    :cond_4
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x0

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "CamLevel-1"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0xf9

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 661
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x1

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "CamLevel-2"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0xc8

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    .line 662
    sget-object v27, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v28, 0x2

    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const-string v4, "CamLevel-2"

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/16 v9, 0x96

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, -0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    aput-object v2, v27, v28

    goto/16 :goto_1

    .line 697
    .restart local v19       #i:I
    .restart local v20       #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v21       #key:Ljava/lang/String;
    .restart local v22       #keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v24       #siopLevelObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/Monitor$SIOPLevel;>;"
    .restart local v26       #tempDataSetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;>;"
    :cond_5
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPTablesMap:Ljava/util/HashMap;

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No of SIOP Levels for KEY :: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " are ::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 702
    .end local v19           #i:I
    .end local v21           #key:Ljava/lang/String;
    .end local v24           #siopLevelObjects:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/Monitor$SIOPLevel;>;"
    .end local v26           #tempDataSetList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/PolicyReader$ThermistorDataSets;>;"
    :cond_6
    const-string v3, "default"

    invoke-static {v3}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelForKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    .line 703
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v5, "Assigned mCurrentSIOPLevelsAP as Default Scenario"

    invoke-static {v3, v5}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    if-eqz v3, :cond_7

    .line 705
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/server/ssrm/Monitor;->mSIOPTablesReady:Z

    .line 709
    :cond_7
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    const-string v3, "BenchmarkBooster"

    invoke-static {v3}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelForKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_0

    .line 710
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v5, "createSIOPLevels:: create SIOP table for Benchmark tool."

    invoke-static {v3, v5}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 713
    .local v17, SIOPTableForBenchmark:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ssrm/Monitor$SIOPLevel;>;"
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v23

    .line 714
    .local v23, lengh:I
    const/16 v19, 0x0

    .restart local v19       #i:I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    .line 715
    const/4 v2, 0x0

    .line 717
    .restart local v2       #tempSIOPObj:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    :try_start_0
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    invoke-virtual {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :goto_5
    if-eqz v2, :cond_8

    .line 722
    const/4 v3, -0x1

    #setter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v2, v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1902(Lcom/android/server/ssrm/Monitor$SIOPLevel;I)I

    .line 723
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 714
    :cond_8
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 718
    :catch_0
    move-exception v18

    .line 719
    .local v18, e:Ljava/lang/CloneNotSupportedException;
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createSIOPLevels:: CloneNotSupportedException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 726
    .end local v2           #tempSIOPObj:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .end local v18           #e:Ljava/lang/CloneNotSupportedException;
    :cond_9
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPTablesMap:Ljava/util/HashMap;

    const-string v5, "BenchmarkBooster"

    move-object/from16 v0, v17

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private static deleteMinCPUFreqRequirement(Ljava/lang/String;)V
    .locals 3
    .parameter "statusName"

    .prologue
    .line 2789
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteMinCPUFreqRequirement:: statusName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2790
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUFreqExceptionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2791
    return-void
.end method

.method public static fileWriteInt(Ljava/lang/String;I)V
    .locals 7
    .parameter "filePath"
    .parameter "value"

    .prologue
    .line 1520
    const/4 v2, 0x0

    .line 1522
    .local v2, out:Ljava/io/FileOutputStream;
    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1547
    :cond_0
    :goto_0
    return-void

    .line 1527
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1533
    .end local v2           #out:Ljava/io/FileOutputStream;
    .local v3, out:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1534
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 1546
    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1528
    :catch_0
    move-exception v0

    .line 1529
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_2
    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v5, "fileWriteInt : file not found"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1535
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 1536
    .local v0, e:Ljava/io/IOException;
    :goto_1
    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1537
    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileWriteInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is failed. IOException occured."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_2
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 1541
    :catch_2
    move-exception v1

    .line 1542
    .local v1, err:Ljava/io/IOException;
    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1543
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 1535
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #err:Ljava/io/IOException;
    .end local v2           #out:Ljava/io/FileOutputStream;
    .restart local v3       #out:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #out:Ljava/io/FileOutputStream;
    .restart local v2       #out:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private generateMergedSIOPLevel()Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .locals 25

    .prologue
    .line 1075
    const/16 v22, 0x0

    .line 1079
    .local v22, tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    sget v23, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    move/from16 v0, v23

    if-gt v3, v0, :cond_0

    .line 1080
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    const/16 v23, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v20

    .line 1081
    .local v20, prevSIOPLevelAP:I
    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    const/16 v23, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v18

    .line 1088
    .local v18, nextSIOPLevelAP:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 1089
    add-int/lit8 v3, v18, 0x1

    sput v3, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    .line 1096
    :goto_1
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    sget v23, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    move/from16 v0, v23

    if-gt v3, v0, :cond_2

    .line 1097
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    const/16 v23, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v21

    .line 1098
    .local v21, prevSIOPLevelCP:I
    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    const/16 v23, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v19

    .line 1105
    .local v19, nextSIOPLevelCP:I
    :goto_2
    move/from16 v0, v21

    move/from16 v1, v19

    if-le v0, v1, :cond_3

    .line 1106
    add-int/lit8 v3, v19, 0x1

    sput v3, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    .line 1110
    :goto_3
    move/from16 v0, v20

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    move/from16 v0, v21

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 1111
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v23, "No change in Both AP and CP SIOP Level, will Return!!!"

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "setCurrentLevelfromTemp:: current AP temp = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", last AP temp = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", AP SIOP level = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "setCurrentLevelfromTemp:: current CP temp = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", last CP temp = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", CP SIOP level = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    sget v24, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v22

    .line 1207
    .end local v22           #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    :goto_4
    return-object v22

    .line 1083
    .end local v18           #nextSIOPLevelAP:I
    .end local v19           #nextSIOPLevelCP:I
    .end local v20           #prevSIOPLevelAP:I
    .end local v21           #prevSIOPLevelCP:I
    .restart local v22       #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    :cond_0
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    const/16 v23, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v20

    .line 1084
    .restart local v20       #prevSIOPLevelAP:I
    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    add-int/lit8 v3, v3, -0x1

    const/16 v23, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v18

    .restart local v18       #nextSIOPLevelAP:I
    goto/16 :goto_0

    .line 1091
    :cond_1
    sput v18, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    goto/16 :goto_1

    .line 1100
    :cond_2
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    const/16 v23, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v21

    .line 1101
    .restart local v21       #prevSIOPLevelCP:I
    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    add-int/lit8 v3, v3, -0x1

    const/16 v23, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v19

    .restart local v19       #nextSIOPLevelCP:I
    goto/16 :goto_2

    .line 1108
    :cond_3
    sput v19, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    goto/16 :goto_3

    .line 1125
    :cond_4
    :try_start_0
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-nez v3, :cond_6

    :cond_5
    move-object/from16 v2, v22

    .line 1126
    .end local v22           #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .local v2, tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    goto :goto_4

    .line 1128
    .end local v2           #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .restart local v22       #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    :cond_6
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    sget v23, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 1129
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsCP:Ljava/util/ArrayList;

    sget v23, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelCP:I

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 1132
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v4

    .line 1133
    .local v4, name:Ljava/lang/String;
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v23, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v23

    move/from16 v0, v23

    if-ge v3, v0, :cond_12

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    .line 1135
    .local v5, temperatureThreshold:I
    :goto_5
    const/4 v6, -0x1

    .line 1136
    .local v6, lockFrequency:I
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_14

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_14

    .line 1137
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v23, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v23

    move/from16 v0, v23

    if-ge v3, v0, :cond_13

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    .line 1144
    :cond_7
    :goto_6
    const/4 v7, -0x1

    .line 1145
    .local v7, cpuMaxCore:I
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_17

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_17

    .line 1146
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v23, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v23

    move/from16 v0, v23

    if-ge v3, v0, :cond_16

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    .line 1154
    :cond_8
    :goto_7
    const/4 v8, -0x1

    .line 1155
    .local v8, limitChargingCurrent:I
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_1a

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_1a

    .line 1156
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v23, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v23

    move/from16 v0, v23

    if-ge v3, v0, :cond_19

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    .line 1163
    :cond_9
    :goto_8
    const/4 v10, -0x1

    .line 1164
    .local v10, LcdFPS:I
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_1d

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_1d

    .line 1165
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v23, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v23

    move/from16 v0, v23

    if-ge v3, v0, :cond_1c

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v10

    .line 1172
    :cond_a
    :goto_9
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-nez v3, :cond_b

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-eqz v3, :cond_1f

    :cond_b
    const/4 v11, 0x1

    .line 1174
    .local v11, flashLedDisable:Z
    :goto_a
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-nez v3, :cond_c

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_c
    const/4 v12, 0x1

    .line 1176
    .local v12, aclOn:Z
    :goto_b
    const/4 v9, -0x1

    .line 1177
    .local v9, displayBrightness:I
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_22

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_22

    .line 1178
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v23, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v23

    move/from16 v0, v23

    if-ge v3, v0, :cond_21

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    .line 1185
    :cond_d
    :goto_c
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-nez v3, :cond_e

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-eqz v3, :cond_24

    :cond_e
    const/4 v13, 0x1

    .line 1187
    .local v13, recordingStop:Z
    :goto_d
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->dualRecordingToSingle:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-nez v3, :cond_f

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->dualRecordingToSingle:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_f
    const/4 v14, 0x1

    .line 1189
    .local v14, dualRecordingToSingle:Z
    :goto_e
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpPowerBackOut:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-nez v3, :cond_10

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpPowerBackOut:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-eqz v3, :cond_26

    :cond_10
    const/4 v15, 0x1

    .line 1191
    .local v15, cpPowerBackOut:Z
    :goto_f
    const/16 v16, -0x1

    .line 1192
    .local v16, gpuFrequency:I
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_28

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_28

    .line 1193
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v23, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static/range {v23 .. v23}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v23

    move/from16 v0, v23

    if-ge v3, v0, :cond_27

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v16

    .line 1200
    :cond_11
    :goto_10
    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    .end local v4           #name:Ljava/lang/String;
    .end local v5           #temperatureThreshold:I
    .end local v6           #lockFrequency:I
    .end local v7           #cpuMaxCore:I
    .end local v8           #limitChargingCurrent:I
    .end local v9           #displayBrightness:I
    .end local v10           #LcdFPS:I
    .end local v11           #flashLedDisable:Z
    .end local v12           #aclOn:Z
    .end local v13           #recordingStop:Z
    .end local v14           #dualRecordingToSingle:Z
    .end local v15           #cpPowerBackOut:Z
    .end local v16           #gpuFrequency:I
    .end local v22           #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .restart local v2       #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    :goto_11
    move-object/from16 v22, v2

    .line 1207
    .end local v2           #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .restart local v22       #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    goto/16 :goto_4

    .line 1133
    .restart local v4       #name:Ljava/lang/String;
    :cond_12
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    goto/16 :goto_5

    .line 1137
    .restart local v5       #temperatureThreshold:I
    .restart local v6       #lockFrequency:I
    :cond_13
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    goto/16 :goto_6

    .line 1138
    :cond_14
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_15

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_15

    .line 1139
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    goto/16 :goto_6

    .line 1140
    :cond_15
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_7

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_7

    .line 1141
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    goto/16 :goto_6

    .line 1146
    .restart local v7       #cpuMaxCore:I
    :cond_16
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    goto/16 :goto_7

    .line 1147
    :cond_17
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_18

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_18

    .line 1148
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    goto/16 :goto_7

    .line 1149
    :cond_18
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_8

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_8

    .line 1150
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    goto/16 :goto_7

    .line 1156
    .restart local v8       #limitChargingCurrent:I
    :cond_19
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    goto/16 :goto_8

    .line 1157
    :cond_1a
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_1b

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_1b

    .line 1158
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    goto/16 :goto_8

    .line 1159
    :cond_1b
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_9

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_9

    .line 1160
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    goto/16 :goto_8

    .line 1165
    .restart local v10       #LcdFPS:I
    :cond_1c
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v10

    goto/16 :goto_9

    .line 1166
    :cond_1d
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_1e

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_1e

    .line 1167
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v10

    goto/16 :goto_9

    .line 1168
    :cond_1e
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_a

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_a

    .line 1169
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v10

    goto/16 :goto_9

    .line 1172
    :cond_1f
    const/4 v11, 0x0

    goto/16 :goto_a

    .line 1174
    .restart local v11       #flashLedDisable:Z
    :cond_20
    const/4 v12, 0x0

    goto/16 :goto_b

    .line 1178
    .restart local v9       #displayBrightness:I
    .restart local v12       #aclOn:Z
    :cond_21
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    goto/16 :goto_c

    .line 1179
    :cond_22
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_23

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_23

    .line 1180
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    goto/16 :goto_c

    .line 1181
    :cond_23
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_d

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_d

    .line 1182
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    goto/16 :goto_c

    .line 1185
    :cond_24
    const/4 v13, 0x0

    goto/16 :goto_d

    .line 1187
    .restart local v13       #recordingStop:Z
    :cond_25
    const/4 v14, 0x0

    goto/16 :goto_e

    .line 1189
    .restart local v14       #dualRecordingToSingle:Z
    :cond_26
    const/4 v15, 0x0

    goto/16 :goto_f

    .line 1193
    .restart local v15       #cpPowerBackOut:Z
    .restart local v16       #gpuFrequency:I
    :cond_27
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v16

    goto/16 :goto_10

    .line 1194
    :cond_28
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_29

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_29

    .line 1195
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v16

    goto/16 :goto_10

    .line 1196
    :cond_29
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v3, v0, :cond_11

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v3, v0, :cond_11

    .line 1197
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectAP:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    goto/16 :goto_10

    .line 1203
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #temperatureThreshold:I
    .end local v6           #lockFrequency:I
    .end local v7           #cpuMaxCore:I
    .end local v8           #limitChargingCurrent:I
    .end local v9           #displayBrightness:I
    .end local v10           #LcdFPS:I
    .end local v11           #flashLedDisable:Z
    .end local v12           #aclOn:Z
    .end local v13           #recordingStop:Z
    .end local v14           #dualRecordingToSingle:Z
    .end local v15           #cpPowerBackOut:Z
    .end local v16           #gpuFrequency:I
    :catch_0
    move-exception v17

    .line 1204
    .local v17, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Exception in setCurrentLevelfromTemp ::"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, v22

    .end local v22           #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .restart local v2       #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    goto/16 :goto_11
.end method

.method private static getCurrentForegroundPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2798
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCurrentForegroundPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private static getMinCPUFreqRequirement()I
    .locals 7

    .prologue
    .line 2762
    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCPUFreqExceptionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2763
    const/4 v2, -0x1

    .line 2773
    .local v0, i$:Ljava/util/Iterator;
    .local v2, maxFreqRequirement:I
    :goto_0
    return v2

    .line 2765
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #maxFreqRequirement:I
    :cond_0
    const/4 v2, -0x1

    .line 2766
    .restart local v2       #maxFreqRequirement:I
    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCPUFreqExceptionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2767
    .local v1, key:Ljava/lang/String;
    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCPUFreqExceptionMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 2768
    .local v3, value:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v2, :cond_1

    .line 2769
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    .line 2772
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/Integer;
    :cond_2
    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMinCPUFreqRequirement:: maxFreqRequirement = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMonitorInstance()Lcom/android/server/ssrm/Monitor;
    .locals 1

    .prologue
    .line 517
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    return-object v0
.end method

.method public static getMonitorInstance(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Landroid/app/IActivityManager;)Lcom/android/server/ssrm/Monitor;
    .locals 1
    .parameter "ctx"
    .parameter "pms"
    .parameter "activityManager"

    .prologue
    .line 510
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Lcom/android/server/ssrm/Monitor;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/ssrm/Monitor;-><init>(Landroid/content/Context;Lcom/android/server/power/PowerManagerService;Landroid/app/IActivityManager;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    .line 513
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    return-object v0
.end method

.method private static getSIOPLevelForKey(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ssrm/Monitor$SIOPLevel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 636
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIOPTablesMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 637
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIOPTablesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 639
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getThermistorTimerDuration()J
    .locals 2

    .prologue
    .line 2238
    sget-wide v0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    return-wide v0
.end method

.method private static initDVFSHelperMaxCpuFreq()V
    .locals 6

    .prologue
    .line 240
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_ARM_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    .line 244
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    goto :goto_0
.end method

.method private static initFeatureAndParameter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CAMERA_DRAMA_SHOT:Z

    .line 90
    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CAMERA_DUAL_RECORD:Z

    .line 91
    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_BROWSER_BRIGHTNESS:Z

    .line 92
    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    .line 93
    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_SCREEN_MIRRORING_BOOSTER:Z

    .line 94
    const/16 v0, 0xf9

    sput v0, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    .line 95
    const v0, 0x124f80

    sput v0, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MIN_CPU_FREQ_FOR_SCREEN_MIRRORING:I

    .line 96
    const-string v0, "siop_ja_xx"

    if-eqz v0, :cond_1

    const-string v0, "siop_ja_xx"

    const-string v1, "j6"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const/16 v0, 0xc8

    sput v0, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    .line 100
    :cond_1
    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SSRM_BROWSER_BOOSTER:Z

    .line 102
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->IS_KOR_MODEL:Z

    if-eqz v0, :cond_2

    .line 103
    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_BROWSER:Z

    .line 105
    :cond_2
    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "ha"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "hf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    :cond_3
    sput-boolean v2, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CHARGING_LIMITATION:Z

    .line 108
    :cond_4
    return-void
.end method

.method private static insertMinCPUFreqRequirement(Ljava/lang/String;I)V
    .locals 3
    .parameter "statusName"
    .parameter "freq"

    .prologue
    .line 2778
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertMinCPUFreqRequirement:: statusName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->initDVFSHelperMaxCpuFreq()V

    .line 2780
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    array-length v0, v0

    if-lez v0, :cond_0

    .line 2781
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUFreqExceptionMap:Ljava/util/HashMap;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2785
    :goto_0
    return-void

    .line 2783
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUFreqExceptionMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static isFPSValid(I)Z
    .locals 1
    .parameter "fps"

    .prologue
    .line 2352
    packed-switch p0, :pswitch_data_0

    .line 2358
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 2356
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2352
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isSIOPTableReady()Z
    .locals 1

    .prologue
    .line 814
    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor;->mSIOPTablesReady:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 815
    :cond_0
    const/4 v0, 0x0

    .line 817
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSupportedGPUFreq(I)Z
    .locals 8
    .parameter "freq"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1309
    sget-object v6, Lcom/android/server/ssrm/Monitor;->mSupportedGpuFreqTable:[I

    if-nez v6, :cond_0

    .line 1310
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSupportedGPUFreq:: return false, freq = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1323
    :goto_0
    return v4

    .line 1313
    :cond_0
    const/4 v6, -0x1

    if-ne p0, v6, :cond_1

    move v4, v5

    .line 1314
    goto :goto_0

    .line 1316
    :cond_1
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mSupportedGpuFreqTable:[I

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_3

    aget v0, v1, v2

    .line 1317
    .local v0, _freq:I
    if-ne v0, p0, :cond_2

    .line 1318
    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSupportedGPUFreq:: return true, freq = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1319
    goto :goto_0

    .line 1316
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1322
    .end local v0           #_freq:I
    :cond_3
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isSupportedGPUFreq:: return false, freq = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static final limitBrightness(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 1421
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitBrightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mPMS:Lcom/android/server/power/PowerManagerService;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/power/PowerManagerService;->setMasterBrightnessLimit(II)V

    .line 1425
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    if-eqz v0, :cond_0

    .line 1426
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/ssrm/Monitor;->notifyLimitBrightness(IZ)V

    .line 1428
    :cond_0
    return-void
.end method

.method private final limitCPUCore(I)V
    .locals 6
    .parameter "activeCore"

    .prologue
    .line 1347
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 1348
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_CORE_NUM_MAX"

    const/16 v3, 0xf

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    .line 1349
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    .line 1350
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    if-eqz v0, :cond_3

    .line 1351
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCPUCore:: mSupportedCpuCoreNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 1357
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedCpuCoreNum:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 1358
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1364
    :cond_2
    :goto_1
    return-void

    .line 1353
    :cond_3
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "limitCPUCore:: mSupportedCpuCoreNum = null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1360
    :cond_4
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1361
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_1
.end method

.method private static limitCPUFreq(I)V
    .locals 6
    .parameter "freq"

    .prologue
    .line 1238
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "limitCPUFreq:: freq = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->initDVFSHelperMaxCpuFreq()V

    .line 1241
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    if-nez v2, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return-void

    .line 1245
    :cond_1
    const/4 v2, -0x1

    if-ne p0, v2, :cond_2

    .line 1246
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "limitCPUFreq:: SIOP CPU freq max lock is released."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    .line 1251
    :cond_2
    const/4 v0, 0x0

    .line 1252
    .local v0, curFreq:I
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    array-length v1, v2

    .line 1253
    .local v1, length:I
    :goto_1
    if-lez v1, :cond_3

    .line 1254
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    if-lt v2, p0, :cond_4

    .line 1255
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    add-int/lit8 v3, v1, -0x1

    aget v0, v2, v3

    .line 1261
    :cond_3
    if-eqz v0, :cond_0

    .line 1262
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    .line 1263
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1264
    sget-object v2, Lcom/android/server/ssrm/Monitor;->mDVFSHelperMaxCpuFreq:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0

    .line 1258
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private static limitChargingCurrent(I)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 1270
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitChargingCurrent:: percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1271
    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-le p0, v0, :cond_1

    .line 1272
    :cond_0
    const/16 p0, 0x64

    .line 1274
    :cond_1
    sget v0, Lcom/android/server/ssrm/Monitor;->mCurrentChargingPercent:I

    if-ne p0, v0, :cond_3

    .line 1281
    :cond_2
    :goto_0
    return-void

    .line 1277
    :cond_3
    sput p0, Lcom/android/server/ssrm/Monitor;->mCurrentChargingPercent:I

    .line 1278
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-boolean v0, v0, Lcom/android/server/ssrm/Monitor$SysfsTable;->isChargingCurrentValid:Z

    if-eqz v0, :cond_2

    .line 1279
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor$SysfsTable;->chargingCurrentPath:Ljava/lang/String;

    sget v1, Lcom/android/server/ssrm/Monitor;->mCurrentChargingPercent:I

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private static limitChargingInputCurrent(Z)V
    .locals 3
    .parameter "limitInput"

    .prologue
    .line 1328
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mLimitInputChargingCurrent:Z

    if-ne v0, p0, :cond_0

    .line 1339
    :goto_0
    return-void

    .line 1332
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitChargingInputCurrent:: limitInput = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1333
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mLimitInputChargingCurrent:Z

    .line 1334
    if-eqz p0, :cond_1

    .line 1335
    const-string v0, "/sys/class/power_supply/sec-charger/siop_input_limit"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 1337
    :cond_1
    const-string v0, "/sys/class/power_supply/sec-charger/siop_input_limit"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private final limitDualRecordingToSingle(Z)V
    .locals 3
    .parameter "dualRecordingToSingle"

    .prologue
    .line 1380
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitDualRecordingToSingle:: dualRecordingToSingle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1381
    sput-boolean p1, Lcom/android/server/ssrm/Monitor;->mLimitDualRecordingToSingle:Z

    .line 1382
    return-void
.end method

.method private final limitFlashLed(Z)V
    .locals 3
    .parameter "bLimit"

    .prologue
    .line 1368
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitFlashLed:: bLimit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    sput-boolean p1, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    .line 1370
    return-void
.end method

.method private final limitGPUFreq(I)V
    .locals 6
    .parameter "freq"

    .prologue
    .line 1289
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitGPUFreq:: freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1290
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mGPUMaxFreqHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 1291
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_GPU_FREQ_MAX"

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mGPUMaxFreqHelper:Landroid/os/DVFSHelper;

    .line 1292
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mGPUMaxFreqHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedGpuFreqTable:[I

    .line 1293
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedGpuFreqTable:[I

    if-eqz v0, :cond_3

    .line 1294
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitGPUFreq:: mSupportedGpuFreqTable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSupportedGpuFreqTable:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1299
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor;->isSupportedGPUFreq(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1300
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSupportedGpuFreqTable:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    .line 1301
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mGPUMaxFreqHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1307
    :cond_2
    :goto_1
    return-void

    .line 1296
    :cond_3
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "limitGPUFreq:: mSupportedGpuFreqTable = null"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1303
    :cond_4
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mGPUMaxFreqHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1304
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mGPUMaxFreqHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_1
.end method

.method private final limitRecording(Z)V
    .locals 3
    .parameter "recordingStop"

    .prologue
    .line 1374
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitRecording:: recordingStop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    sput-boolean p1, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    .line 1376
    return-void
.end method

.method public static logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 2242
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    return-void
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 2246
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 2247
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    :cond_0
    return-void
.end method

.method private static final notifyLimitBrightness(IZ)V
    .locals 3
    .parameter "brightness"
    .parameter "bForce"

    .prologue
    .line 1431
    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    if-ne v0, p0, :cond_0

    if-eqz p1, :cond_1

    .line 1432
    :cond_0
    sput p0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    .line 1434
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyLimitBrightness() : brightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isBootCompleted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v1, "max_brightness"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1436
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1438
    :cond_1
    return-void
.end method

.method private static onCameraDualRecording(Z)V
    .locals 3
    .parameter "statusValue"

    .prologue
    const/4 v2, 0x0

    .line 2116
    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2117
    :cond_0
    if-eqz p0, :cond_4

    .line 2118
    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    aget-object v1, v1, v2

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v1

    if-gt v0, v1, :cond_1

    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2119
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    aget-object v0, v0, v2

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    .line 2127
    :cond_2
    :goto_0
    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2128
    if-eqz p0, :cond_5

    .line 2129
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    const/16 v1, 0x15e

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    .line 2134
    :cond_3
    :goto_1
    return-void

    .line 2123
    :cond_4
    sget v0, Lcom/android/server/ssrm/Monitor;->mLastBrightnessBySIOP:I

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    goto :goto_0

    .line 2131
    :cond_5
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    invoke-static {v0, v2}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private static onCameraRecording(Z)V
    .locals 3
    .parameter "statusValue"

    .prologue
    const/4 v2, 0x0

    .line 2103
    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ja"

    const-string v1, "jf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2104
    :cond_0
    if-eqz p0, :cond_3

    .line 2105
    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    aget-object v1, v1, v2

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v1

    if-gt v0, v1, :cond_1

    sget v0, Lcom/android/server/ssrm/Monitor;->mLatestMaxBrightness:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 2106
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    aget-object v0, v0, v2

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v0}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    .line 2113
    :cond_2
    :goto_0
    return-void

    .line 2110
    :cond_3
    sget v0, Lcom/android/server/ssrm/Monitor;->mLastBrightnessBySIOP:I

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    goto :goto_0
.end method

.method private static onPowerSavingModeChanged(Z)V
    .locals 5
    .parameter "powerSavingMode"

    .prologue
    .line 2384
    const-string v0, "/sys/class/power_supply/battery/test_charge_current"

    .line 2385
    .local v0, CHARGING_CURRENT_PATH:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/class/power_supply/battery/test_charge_current"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2386
    .local v1, ccpFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 2388
    .local v2, charingCurrentPathExist:Z
    :goto_0
    sput-boolean p0, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Z

    .line 2390
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 2391
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Z

    if-eqz v3, :cond_3

    .line 2392
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "POWERSAVING_CHANGED:: test_charge_current = 530"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2393
    const-string v3, "/sys/class/power_supply/battery/test_charge_current"

    const/16 v4, 0x212

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    .line 2400
    :cond_0
    :goto_1
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    if-eqz v3, :cond_1

    .line 2401
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mDynamicLCDFPS:Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;

    invoke-virtual {v3}, Lcom/android/server/ssrm/Monitor$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 2403
    :cond_1
    return-void

    .line 2386
    .end local v2           #charingCurrentPathExist:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 2395
    .restart local v2       #charingCurrentPathExist:Z
    :cond_3
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "POWERSAVING_CHANGED:: test_charge_current = 460"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2396
    const-string v3, "/sys/class/power_supply/battery/test_charge_current"

    const/16 v4, 0x1cc

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->fileWriteInt(Ljava/lang/String;I)V

    goto :goto_1
.end method

.method private static onSIPIntentReceived(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 2426
    invoke-static {}, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->getInstance()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    move-result-object v0

    .line 2427
    .local v0, sipStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    if-nez v0, :cond_0

    .line 2466
    :goto_0
    return-void

    .line 2431
    :cond_0
    monitor-enter v0

    .line 2432
    :try_start_0
    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    .line 2433
    const-string v1, "PID"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPPidReport:I

    .line 2435
    iget-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    if-eqz v1, :cond_1

    .line 2436
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "onSIPIntentReceived:: SIP visility was updated more than two times in 100ms."

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2465
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2438
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    .line 2439
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/ssrm/Monitor$5;

    invoke-direct {v2}, Lcom/android/server/ssrm/Monitor$5;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized readThermistorFile()Z
    .locals 11

    .prologue
    .line 1452
    monitor-enter p0

    const/4 v5, 0x0

    .line 1453
    .local v5, mAPTempUpdated:Z
    const/4 v6, 0x0

    .line 1455
    .local v6, mCPTempUpdated:Z
    :try_start_0
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-boolean v8, v8, Lcom/android/server/ssrm/Monitor$SysfsTable;->isApTemperatureValid:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    .line 1456
    const/4 v0, 0x0

    .line 1459
    .local v0, buf:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-object v9, v9, Lcom/android/server/ssrm/Monitor$SysfsTable;->apTemperaturePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1460
    .end local v0           #buf:Ljava/io/BufferedReader;
    .local v1, buf:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 1461
    .local v7, strTemp:Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 1462
    sget v8, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    sput v8, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    .line 1463
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    .line 1464
    sget v8, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    sget v9, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_9

    if-eq v8, v9, :cond_0

    .line 1465
    const/4 v5, 0x1

    .line 1472
    :cond_0
    if-eqz v1, :cond_1

    .line 1473
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    .line 1480
    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v7           #strTemp:Ljava/lang/String;
    :cond_1
    :goto_0
    :try_start_4
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-boolean v8, v8, Lcom/android/server/ssrm/Monitor$SysfsTable;->isCpTemperatureValid:Z

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsCP:Ljava/util/ArrayList;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v8, :cond_3

    .line 1481
    const/4 v2, 0x0

    .line 1484
    .local v2, bufCP:Ljava/io/BufferedReader;
    :try_start_5
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    sget-object v9, Lcom/android/server/ssrm/Monitor;->mSysfsTable:Lcom/android/server/ssrm/Monitor$SysfsTable;

    iget-object v9, v9, Lcom/android/server/ssrm/Monitor$SysfsTable;->cpTemperaturePath:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1485
    .end local v2           #bufCP:Ljava/io/BufferedReader;
    .local v3, bufCP:Ljava/io/BufferedReader;
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 1486
    .restart local v7       #strTemp:Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 1487
    sget v8, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    sput v8, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    .line 1488
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    sput v8, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    .line 1489
    sget v8, Lcom/android/server/ssrm/Monitor;->mLastCPTemp:I

    sget v9, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    if-eq v8, v9, :cond_2

    .line 1490
    const/4 v6, 0x1

    .line 1497
    :cond_2
    if-eqz v3, :cond_3

    .line 1498
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 1506
    .end local v3           #bufCP:Ljava/io/BufferedReader;
    .end local v7           #strTemp:Ljava/lang/String;
    :cond_3
    :goto_1
    :try_start_8
    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIOP:: Current AP = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", CP = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget v10, Lcom/android/server/ssrm/Monitor;->mCurrentCPTemp:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1508
    if-nez v5, :cond_4

    if-eqz v6, :cond_7

    .line 1509
    :cond_4
    const/4 v8, 0x1

    .line 1511
    :goto_2
    monitor-exit p0

    return v8

    .line 1468
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 1469
    .local v4, e:Ljava/io/IOException;
    :goto_3
    :try_start_9
    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading current temperature : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1472
    if-eqz v0, :cond_1

    .line 1473
    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_0

    .line 1475
    :catch_1
    move-exception v4

    .line 1476
    :try_start_b
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_0

    .line 1452
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 1471
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    .line 1472
    :goto_4
    if-eqz v0, :cond_5

    .line 1473
    :try_start_c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 1471
    :cond_5
    :goto_5
    :try_start_d
    throw v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 1493
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v2       #bufCP:Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    .line 1494
    .restart local v4       #e:Ljava/io/IOException;
    :goto_6
    :try_start_e
    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error reading current temperature : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1497
    if-eqz v2, :cond_3

    .line 1498
    :try_start_f
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_3

    goto/16 :goto_1

    .line 1500
    :catch_3
    move-exception v4

    .line 1501
    :try_start_10
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto/16 :goto_1

    .line 1496
    .end local v4           #e:Ljava/io/IOException;
    :catchall_2
    move-exception v8

    .line 1497
    :goto_7
    if-eqz v2, :cond_6

    .line 1498
    :try_start_11
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    .line 1496
    :cond_6
    :goto_8
    :try_start_12
    throw v8

    .line 1511
    .end local v2           #bufCP:Ljava/io/BufferedReader;
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 1475
    .restart local v0       #buf:Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    .line 1476
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 1500
    .end local v0           #buf:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v2       #bufCP:Ljava/io/BufferedReader;
    :catch_5
    move-exception v4

    .line 1501
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 1500
    .end local v2           #bufCP:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #bufCP:Ljava/io/BufferedReader;
    .restart local v7       #strTemp:Ljava/lang/String;
    :catch_6
    move-exception v4

    .line 1501
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 1475
    .end local v3           #bufCP:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_7
    move-exception v4

    .line 1476
    .restart local v4       #e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    goto/16 :goto_0

    .line 1496
    .end local v1           #buf:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #strTemp:Ljava/lang/String;
    .restart local v3       #bufCP:Ljava/io/BufferedReader;
    :catchall_3
    move-exception v8

    move-object v2, v3

    .end local v3           #bufCP:Ljava/io/BufferedReader;
    .restart local v2       #bufCP:Ljava/io/BufferedReader;
    goto :goto_7

    .line 1493
    .end local v2           #bufCP:Ljava/io/BufferedReader;
    .restart local v3       #bufCP:Ljava/io/BufferedReader;
    :catch_8
    move-exception v4

    move-object v2, v3

    .end local v3           #bufCP:Ljava/io/BufferedReader;
    .restart local v2       #bufCP:Ljava/io/BufferedReader;
    goto :goto_6

    .line 1471
    .end local v2           #bufCP:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catchall_4
    move-exception v8

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto :goto_4

    .line 1468
    .end local v0           #buf:Ljava/io/BufferedReader;
    .restart local v1       #buf:Ljava/io/BufferedReader;
    :catch_9
    move-exception v4

    move-object v0, v1

    .end local v1           #buf:Ljava/io/BufferedReader;
    .restart local v0       #buf:Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public static declared-synchronized removeboostRequestfromAMS(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 2166
    const-class v2, Lcom/android/server/ssrm/Monitor;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2167
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2168
    iput-object p0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2169
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2172
    monitor-exit v2

    return-void

    .line 2166
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static sendSIOPChangedStickyIntent()V
    .locals 6

    .prologue
    .line 1391
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->isBootCompleted:Z

    if-nez v3, :cond_1

    .line 1418
    .local v0, EXTRA_CAMERA_RECORDING_DISABLE:Ljava/lang/String;
    .local v1, EXTRA_DUAL_RECORDING_TO_SINGLE:Ljava/lang/String;
    .local v2, EXTRA_FLASH_LED_DISABLE:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1395
    .end local v0           #EXTRA_CAMERA_RECORDING_DISABLE:Ljava/lang/String;
    .end local v1           #EXTRA_DUAL_RECORDING_TO_SINGLE:Ljava/lang/String;
    .end local v2           #EXTRA_FLASH_LED_DISABLE:Ljava/lang/String;
    :cond_1
    const-string v2, "flash_led_disable"

    .line 1396
    .restart local v2       #EXTRA_FLASH_LED_DISABLE:Ljava/lang/String;
    const-string v0, "camera_recording_disable"

    .line 1397
    .restart local v0       #EXTRA_CAMERA_RECORDING_DISABLE:Ljava/lang/String;
    const-string v1, "dual_recording_to_single"

    .line 1399
    .restart local v1       #EXTRA_DUAL_RECORDING_TO_SINGLE:Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash_:Z

    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    if-ne v3, v4, :cond_2

    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording_:Z

    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    if-ne v3, v4, :cond_2

    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mLimitDualRecordingToSingle_:Z

    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mLimitDualRecordingToSingle:Z

    if-eq v3, v4, :cond_0

    .line 1405
    :cond_2
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    sput-boolean v3, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash_:Z

    .line 1406
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    sput-boolean v3, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording_:Z

    .line 1407
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mLimitDualRecordingToSingle:Z

    sput-boolean v3, Lcom/android/server/ssrm/Monitor;->mLimitDualRecordingToSingle_:Z

    .line 1409
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendSIOPChangedStickyIntent:: EXTRA_FLASH_LED_DISABLE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", EXTRA_CAMERA_RECORDING_DISABLE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", EXTRA_DUAL_RECORDING_TO_SINGLE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mLimitDualRecordingToSingle:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    const-string v4, "flash_led_disable"

    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mLimitCameraFlash:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1414
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    const-string v4, "camera_recording_disable"

    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mLimitCameraRecording:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1415
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    const-string v4, "dual_recording_to_single"

    sget-boolean v5, Lcom/android/server/ssrm/Monitor;->mLimitDualRecordingToSingle:Z

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1417
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mIntentSIOPLevelChanged:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private static sendSIOPUpdateMessage(Z)V
    .locals 2
    .parameter "forceUpdate"

    .prologue
    .line 2593
    if-eqz p0, :cond_0

    .line 2594
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    .line 2596
    :cond_0
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 2597
    .local v0, msg1:Landroid/os/Message;
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 2598
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2599
    return-void
.end method

.method private static setCurrentForegroundPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "pkgName"

    .prologue
    .line 2795
    sput-object p0, Lcom/android/server/ssrm/Monitor;->mCurrentForegroundPackageName:Ljava/lang/String;

    .line 2796
    return-void
.end method

.method private declared-synchronized setCurrentLevelfromTemp()V
    .locals 29

    .prologue
    .line 827
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/Monitor;->isSIOPTableReady()Z

    move-result v3

    if-nez v3, :cond_1

    .line 828
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "setCurrentLevelfromTemp:: SIOP tables aren\'t ready yet."

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1023
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 832
    :cond_1
    :try_start_1
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    if-eqz v3, :cond_14

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsCP:Ljava/util/ArrayList;

    if-eqz v3, :cond_14

    .line 833
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/Monitor;->generateMergedSIOPLevel()Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-result-object v3

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 876
    :cond_2
    :goto_1
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mSIOPControlForBrowser:Z

    if-eqz v3, :cond_3

    .line 877
    const-string v3, "ja"

    const-string v4, "ja"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 878
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->IS_KOR_MODEL:Z

    if-eqz v3, :cond_3

    .line 879
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ssrm/Monitor;->updateSIOPLevelForBrowser()V

    .line 883
    :cond_3
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-eqz v3, :cond_0

    .line 887
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sput v3, Lcom/android/server/ssrm/Monitor;->mLastBrightnessBySIOP:I

    .line 891
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mLastCameraDualRecording:Z

    if-eqz v3, :cond_9

    .line 892
    const-string v3, "ja"

    const-string v4, "ja"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "jf"

    const-string v4, "ja"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 893
    :cond_4
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "Camera Dual Recording running!!!"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const/16 v27, 0x0

    .line 895
    .local v27, tempOne:I
    const/16 v28, 0x0

    .line 896
    .local v28, tempTwo:I
    const-string v3, "ja"

    const-string v4, "ja"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 897
    const/16 v27, 0x1b8

    .line 898
    const/16 v28, 0x1e0

    .line 908
    :cond_5
    :goto_2
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tempOne :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , tempTwo :: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    move/from16 v0, v27

    if-ge v3, v0, :cond_1b

    .line 910
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 919
    :cond_6
    :goto_3
    const/4 v9, -0x1

    .line 920
    .local v9, tempBrightness:I
    const/4 v12, 0x0

    .line 922
    .local v12, tempAcl:Z
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-eqz v3, :cond_9

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    if-eqz v3, :cond_9

    .line 923
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1e

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1e

    .line 924
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v4

    if-ge v3, v4, :cond_1d

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    .line 931
    :cond_7
    :goto_4
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v3

    if-eqz v3, :cond_20

    :cond_8
    const/4 v12, 0x1

    .line 933
    :goto_5
    new-instance v2, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v4

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v6

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v7

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v8

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->LcdFPS:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2600(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v10

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v11

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v13

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->dualRecordingToSingle:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v14

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpPowerBackOut:Z
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v15

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v16

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v16}, Lcom/android/server/ssrm/Monitor$SIOPLevel;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;IIIIIIZZZZZI)V

    .line 939
    .local v2, tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    sput-object v2, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 940
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "Modified mCurrentSIOPObject\'s brightness and ACL as per camera\'s SIOP level"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    .end local v2           #tempSIOPLevel:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    .end local v9           #tempBrightness:I
    .end local v12           #tempAcl:Z
    .end local v27           #tempOne:I
    .end local v28           #tempTwo:I
    :cond_9
    const/16 v17, 0x1e

    .line 946
    .local v17, LIMITTED_CHARGING_LOW:I
    const/16 v19, 0x46

    .line 947
    .local v19, LIMITTED_CHARGING_MID:I
    const/16 v18, 0x64

    .line 948
    .local v18, LIMITTED_CHARGING_MAX:I
    sget-boolean v3, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_CHARGING_LIMITATION:Z

    if-eqz v3, :cond_23

    .line 950
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    if-eqz v3, :cond_22

    .line 952
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mGoogleNaviOn:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mTMapOn:Z

    if-nez v3, :cond_a

    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    if-eqz v3, :cond_21

    .line 953
    :cond_a
    const/16 v21, 0x1e

    .line 957
    .local v21, expectedChargingCurrent:I
    :goto_6
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_b

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    move/from16 v0, v21

    if-le v3, v0, :cond_c

    .line 959
    :cond_b
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move/from16 v0, v21

    #setter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2502(Lcom/android/server/ssrm/Monitor$SIOPLevel;I)I

    .line 970
    .end local v21           #expectedChargingCurrent:I
    :cond_c
    :goto_7
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Merged SIOPLevel Object :: Name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ArmFreq = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v5}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->realOPFreq:I
    invoke-static {v5}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ArmCoreNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {v5}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ChargeCurrent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v5}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", LCDBrightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v5}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Flash = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {v5}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ACL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {v5}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Temp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->temperatureThreshold:I
    invoke-static {v5}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2300(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", recordingStop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {v5}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dualRecordingToSingle = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->dualRecordingToSingle:Z
    invoke-static {v5}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", cpPowerBackOut = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpPowerBackOut:Z
    invoke-static {v5}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", gpuFrequency = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static {v5}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mMultiWindowRunning:Z

    if-nez v3, :cond_e

    sget-boolean v3, Lcom/android/server/ssrm/Monitor$SSRM_FEATURE;->SIOP_FOR_BROWSER_BRIGHTNESS:Z

    if-eqz v3, :cond_e

    sget v3, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_e

    .line 985
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mBrightnessAdjustedForBrowser:Z

    if-eqz v3, :cond_e

    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mAutoBrightnessEnabled:Z

    if-nez v3, :cond_e

    .line 986
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    sget v4, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    if-gt v3, v4, :cond_d

    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_e

    .line 988
    :cond_d
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "setCurrentLevelfromTemp:: displayBrightness = 250cd"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget v4, Lcom/android/server/ssrm/Monitor$SSRM_PARAMETER;->MAX_BRIGHTNESS_FOR_BROWSER:I

    #setter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2002(Lcom/android/server/ssrm/Monitor$SIOPLevel;I)I

    .line 994
    :cond_e
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mForceSIOPUpdate:Z

    if-eqz v3, :cond_f

    .line 995
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    invoke-static {v3}, Lcom/android/server/ssrm/Monitor;->limitChargingCurrent(I)V

    .line 998
    :cond_f
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->getMinCPUFreqRequirement()I

    move-result v22

    .line 999
    .local v22, minCPUFreqReq:I
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    if-eqz v3, :cond_12

    const/4 v3, -0x1

    move/from16 v0, v22

    if-eq v0, v3, :cond_12

    .line 1001
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_24

    .line 1002
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    const/4 v4, 0x0

    aget v26, v3, v4

    .line 1006
    .local v26, siopCPUFreqReq:I
    :goto_8
    move/from16 v0, v22

    move/from16 v1, v26

    if-le v0, v1, :cond_10

    .line 1007
    move/from16 v26, v22

    .line 1009
    :cond_10
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mSupportedCpuFreq:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move/from16 v0, v26

    if-ne v0, v3, :cond_11

    .line 1010
    const/16 v26, -0x1

    .line 1012
    :cond_11
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move/from16 v0, v26

    #setter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1902(Lcom/android/server/ssrm/Monitor$SIOPLevel;I)I

    .line 1015
    .end local v26           #siopCPUFreqReq:I
    :cond_12
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    invoke-virtual {v3, v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1016
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sget-object v4, Lcom/android/server/ssrm/Monitor;->mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/ssrm/Monitor;->changeState(Lcom/android/server/ssrm/Monitor$SIOPLevel;Lcom/android/server/ssrm/Monitor$SIOPLevel;)V

    .line 1017
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mLastSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 1020
    :cond_13
    const-string v3, "sys.siop.curlevel"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    invoke-direct/range {p0 .. p0}, Lcom/android/server/ssrm/Monitor;->applyGLBenchmarkExceptionScenario()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 827
    .end local v17           #LIMITTED_CHARGING_LOW:I
    .end local v18           #LIMITTED_CHARGING_MAX:I
    .end local v19           #LIMITTED_CHARGING_MID:I
    .end local v22           #minCPUFreqReq:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 837
    :cond_14
    :try_start_2
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    sget v4, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    if-gt v3, v4, :cond_17

    .line 838
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    const/16 v4, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v25

    .line 839
    .local v25, prevSIOPLevelAP:I
    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    const/16 v4, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v24

    .line 846
    .local v24, nextSIOPLevelAP:I
    :goto_9
    move/from16 v0, v25

    move/from16 v1, v24

    if-le v0, v1, :cond_18

    .line 847
    add-int/lit8 v3, v24, 0x1

    sput v3, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    .line 853
    :goto_a
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mSIOPControlForCameraShooting:Z

    if-eqz v3, :cond_16

    .line 854
    const/16 v23, 0x3

    .line 856
    .local v23, minSIOPLevelhasCpuFreqLock:I
    const-string v3, "ja"

    const-string v4, "ja"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->IS_KOR_MODEL:Z

    if-eqz v3, :cond_15

    .line 857
    const/16 v23, 0x2

    .line 860
    :cond_15
    sget v3, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    move/from16 v0, v23

    if-le v3, v0, :cond_16

    sget v3, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    const/4 v4, 0x7

    if-ge v3, v4, :cond_16

    .line 861
    sput v23, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    .line 862
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIOPControlForCameraShooting:: mIntCurrentSIOPLevelAP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 868
    .end local v23           #minSIOPLevelhasCpuFreqLock:I
    :cond_16
    :try_start_3
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 869
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    sget v4, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    invoke-virtual {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 871
    :catch_0
    move-exception v20

    .line 872
    .local v20, e:Ljava/lang/CloneNotSupportedException;
    :try_start_4
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setCurrentLevelfromTemp :: Unable to clone"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 841
    .end local v20           #e:Ljava/lang/CloneNotSupportedException;
    .end local v24           #nextSIOPLevelAP:I
    .end local v25           #prevSIOPLevelAP:I
    :cond_17
    sget v3, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    const/16 v4, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v25

    .line 842
    .restart local v25       #prevSIOPLevelAP:I
    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    add-int/lit8 v3, v3, -0x1

    const/16 v4, 0x6f

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelByTemp(II)I

    move-result v24

    .restart local v24       #nextSIOPLevelAP:I
    goto/16 :goto_9

    .line 849
    :cond_18
    sput v24, Lcom/android/server/ssrm/Monitor;->mIntCurrentSIOPLevelAP:I

    goto/16 :goto_a

    .line 899
    .end local v24           #nextSIOPLevelAP:I
    .end local v25           #prevSIOPLevelAP:I
    .restart local v27       #tempOne:I
    .restart local v28       #tempTwo:I
    :cond_19
    const-string v3, "jf"

    const-string v4, "ja"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 900
    const-string v3, "siop_ja_xx"

    if-eqz v3, :cond_1a

    const-string v3, "siop_ja_xx"

    const-string v4, "j6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 901
    const/16 v27, 0x1b8

    .line 902
    const/16 v28, 0x1e0

    goto/16 :goto_2

    .line 904
    :cond_1a
    const/16 v27, 0x1fe

    .line 905
    const/16 v28, 0x226

    goto/16 :goto_2

    .line 911
    :cond_1b
    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    move/from16 v0, v27

    if-lt v3, v0, :cond_1c

    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    move/from16 v0, v28

    if-ge v3, v0, :cond_1c

    .line 912
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 913
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "mCurrentSIOPObjectCamera :: index 1"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 914
    :cond_1c
    sget v3, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    move/from16 v0, v28

    if-lt v3, v0, :cond_6

    .line 915
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsCamera:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    sput-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    .line 916
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v4, "mCurrentSIOPObjectCamera :: index 2"

    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 924
    .restart local v9       #tempBrightness:I
    .restart local v12       #tempAcl:Z
    :cond_1d
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    goto/16 :goto_4

    .line 925
    :cond_1e
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1f

    .line 926
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObjectCamera:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    goto/16 :goto_4

    .line 927
    :cond_1f
    const/4 v3, -0x1

    if-ne v9, v3, :cond_7

    .line 928
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v9

    goto/16 :goto_4

    .line 931
    :cond_20
    const/4 v12, 0x0

    goto/16 :goto_5

    .line 955
    .end local v9           #tempBrightness:I
    .end local v12           #tempAcl:Z
    .end local v27           #tempOne:I
    .end local v28           #tempTwo:I
    .restart local v17       #LIMITTED_CHARGING_LOW:I
    .restart local v18       #LIMITTED_CHARGING_MAX:I
    .restart local v19       #LIMITTED_CHARGING_MID:I
    :cond_21
    const/16 v21, 0x46

    .restart local v21       #expectedChargingCurrent:I
    goto/16 :goto_6

    .line 962
    .end local v21           #expectedChargingCurrent:I
    :cond_22
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v4, 0x64

    #setter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2502(Lcom/android/server/ssrm/Monitor$SIOPLevel;I)I

    goto/16 :goto_7

    .line 965
    :cond_23
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    if-nez v3, :cond_c

    .line 966
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    const/16 v4, 0x64

    #setter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {v3, v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2502(Lcom/android/server/ssrm/Monitor$SIOPLevel;I)I

    goto/16 :goto_7

    .line 1004
    .restart local v22       #minCPUFreqReq:I
    :cond_24
    sget-object v3, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {v3}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v26

    .restart local v26       #siopCPUFreqReq:I
    goto/16 :goto_8
.end method

.method private static setCurrentSIOPTable(Ljava/lang/String;)V
    .locals 3
    .parameter "tag"

    .prologue
    .line 2089
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIOPTablesMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 2099
    :goto_0
    return-void

    .line 2092
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentSIOPTable:: tag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSIOPTablesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2094
    invoke-static {p0}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelForKey(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    .line 2095
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentSIOPTable:: table for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is reloaded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2097
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentSIOPTable:: table for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setThermistorTimerDuration(J)V
    .locals 4
    .parameter "duration"

    .prologue
    const-wide/16 v2, 0x3e8

    .line 2228
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    .line 2229
    const-wide/16 v0, 0x2710

    sput-wide v0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    .line 2235
    :goto_0
    return-void

    .line 2230
    :cond_0
    cmp-long v0, p0, v2

    if-lez v0, :cond_1

    .line 2231
    sput-wide p0, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    goto :goto_0

    .line 2233
    :cond_1
    sput-wide v2, Lcom/android/server/ssrm/Monitor;->THERMISTOR_TIMER_DURATION:J

    goto :goto_0
.end method


# virtual methods
.method changeState(Lcom/android/server/ssrm/Monitor$SIOPLevel;Lcom/android/server/ssrm/Monitor$SIOPLevel;)V
    .locals 3
    .parameter "currLevel"
    .parameter "lastLevel"

    .prologue
    .line 1214
    if-nez p1, :cond_0

    .line 1215
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState : currLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  lastLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    :goto_0
    return-void

    .line 1219
    :cond_0
    if-eqz p2, :cond_1

    .line 1220
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState : Name :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->name:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2200(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState : freq : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getLockFrequency()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :cond_1
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->lockFrequency:I
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$1900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitCPUFreq(I)V

    .line 1225
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->cpuMaxCore:I
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2400(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/Monitor;->limitCPUCore(I)V

    .line 1226
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->gpuFrequency:I
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$3100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/Monitor;->limitGPUFreq(I)V

    .line 1227
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->limitChargingCurrent:I
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2500(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitChargingCurrent(I)V

    .line 1228
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->flashLedDisable:Z
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2700(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/Monitor;->limitFlashLed(Z)V

    .line 1229
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->recordingStop:Z
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2800(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/Monitor;->limitRecording(Z)V

    .line 1230
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->displayBrightness:I
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2000(Lcom/android/server/ssrm/Monitor$SIOPLevel;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->limitBrightness(I)V

    .line 1231
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->dualRecordingToSingle:Z
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2900(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/Monitor;->limitDualRecordingToSingle(Z)V

    .line 1232
    #getter for: Lcom/android/server/ssrm/Monitor$SIOPLevel;->aclOn:Z
    invoke-static {p1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->access$2100(Lcom/android/server/ssrm/Monitor$SIOPLevel;)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/Monitor;->aclOn(Z)V

    .line 1234
    invoke-static {}, Lcom/android/server/ssrm/Monitor;->sendSIOPChangedStickyIntent()V

    goto/16 :goto_0
.end method

.method getSIOPLevelByTemp(II)I
    .locals 2
    .parameter "temp"
    .parameter "type"

    .prologue
    .line 732
    packed-switch p2, :pswitch_data_0

    .line 755
    const/4 v0, -0x1

    :cond_0
    :goto_0
    return v0

    .line 734
    :pswitch_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 735
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    invoke-virtual {v1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getTemperatureThreshold()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 736
    if-eqz v0, :cond_0

    .line 739
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 734
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 742
    :cond_2
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 744
    .end local v0           #i:I
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsCP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 745
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsCP:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    invoke-virtual {v1}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->getTemperatureThreshold()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 746
    if-eqz v0, :cond_0

    .line 749
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 744
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 752
    :cond_4
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsCP:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_0

    .line 732
    nop

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getSIOPLevelForBrowserByTemp(I)I
    .locals 2
    .parameter "temp"

    .prologue
    .line 765
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mBrowserTemp:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 766
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mBrowserTemp:[I

    aget v1, v1, v0

    if-ge p1, v1, :cond_1

    .line 767
    if-nez v0, :cond_0

    .line 773
    .end local v0           #i:I
    :goto_1
    return v0

    .line 770
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 765
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    :cond_2
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mBrowserTemp:[I

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    goto :goto_1
.end method

.method public init()V
    .locals 3

    .prologue
    .line 495
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mInit:Z

    if-eqz v1, :cond_0

    .line 507
    :goto_0
    return-void

    .line 498
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/ssrm/Monitor;->mInit:Z

    .line 501
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->initHandler()V

    .line 503
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "init:: let\'s read SSRM policy XML"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 505
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 506
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public initHandler()V
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 382
    :goto_0
    return-void

    .line 270
    :cond_0
    new-instance v0, Lcom/android/server/ssrm/Monitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/ssrm/Monitor$1;-><init>(Lcom/android/server/ssrm/Monitor;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public registerIntentFilters()V
    .locals 5

    .prologue
    .line 1564
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    .line 1565
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1566
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1567
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1568
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1569
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1570
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1571
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CP_SIOP_LEVEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1572
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1573
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1574
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.intent.action.DVFS_FG_PROCESS_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1575
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1576
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1577
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1578
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1579
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1580
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1581
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1582
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1583
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SECURE_PLAYBACK_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1584
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SECURE_PLAYBACK_STOP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1585
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1586
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1588
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    .line 1589
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1590
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1591
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mPkgAddedFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1593
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mSSRMStatusFilter:Landroid/content/IntentFilter;

    .line 1594
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mSSRMStatusFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1595
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1596
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSSRMStatusFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1600
    :goto_0
    return-void

    .line 1598
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->SystemIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mSSRMStatusFilter:Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 524
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 525
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "In Monitor:: Thread"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 527
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->initHandler()V

    .line 529
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 530
    return-void
.end method

.method public systemReady()V
    .locals 3

    .prologue
    .line 2469
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "Startng TMU Observer"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    new-instance v0, Lcom/android/server/ssrm/Monitor$TMUObserver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/ssrm/Monitor$TMUObserver;-><init>(Lcom/android/server/ssrm/Monitor$1;)V

    .line 2471
    .local v0, tmuObserv:Lcom/android/server/ssrm/Monitor$TMUObserver;
    const-string v1, "TMUSTATE"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 2472
    return-void
.end method

.method updateSIOPLevelForBrowser()V
    .locals 7

    .prologue
    .line 781
    sget v4, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    sget v5, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    if-gt v4, v5, :cond_2

    .line 782
    sget v4, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    invoke-virtual {p0, v4}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelForBrowserByTemp(I)I

    move-result v3

    .line 783
    .local v3, prevSIOPLevelAP:I
    sget v4, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    invoke-virtual {p0, v4}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelForBrowserByTemp(I)I

    move-result v2

    .line 789
    .local v2, nextSIOPLevelAP:I
    :goto_0
    if-le v3, v2, :cond_3

    .line 790
    add-int/lit8 v0, v2, 0x1

    .line 795
    .local v0, currentSIOPLevelBrowser:I
    :goto_1
    sget-object v4, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsBrowser:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    array-length v4, v4

    if-lt v0, v4, :cond_0

    .line 796
    sget-object v4, Lcom/android/server/ssrm/Monitor;->mSIOPObjectsBrowser:[Lcom/android/server/ssrm/Monitor$SIOPLevel;

    array-length v4, v4

    add-int/lit8 v0, v4, -0x1

    .line 798
    :cond_0
    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSIOPLevelForBrowser:: lastTemp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " currentTemp="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSIOPLevelForBrowser:: prevLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " nextLevel="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    :try_start_0
    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 806
    sget-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPLevelsAP:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    invoke-virtual {v4}, Lcom/android/server/ssrm/Monitor$SIOPLevel;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ssrm/Monitor$SIOPLevel;

    sput-object v4, Lcom/android/server/ssrm/Monitor;->mCurrentSIOPObject:Lcom/android/server/ssrm/Monitor$SIOPLevel;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 811
    :cond_1
    :goto_2
    return-void

    .line 785
    .end local v0           #currentSIOPLevelBrowser:I
    .end local v2           #nextSIOPLevelAP:I
    .end local v3           #prevSIOPLevelAP:I
    :cond_2
    sget v4, Lcom/android/server/ssrm/Monitor;->mLastThermistorTemp:I

    invoke-virtual {p0, v4}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelForBrowserByTemp(I)I

    move-result v3

    .line 786
    .restart local v3       #prevSIOPLevelAP:I
    sget v4, Lcom/android/server/ssrm/Monitor;->mCurrentThermistorTemp:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p0, v4}, Lcom/android/server/ssrm/Monitor;->getSIOPLevelForBrowserByTemp(I)I

    move-result v2

    .restart local v2       #nextSIOPLevelAP:I
    goto :goto_0

    .line 792
    :cond_3
    move v0, v2

    .restart local v0       #currentSIOPLevelBrowser:I
    goto :goto_1

    .line 808
    :catch_0
    move-exception v1

    .line 809
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateSIOPLevelForBrowser :: Unable to clone"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method
