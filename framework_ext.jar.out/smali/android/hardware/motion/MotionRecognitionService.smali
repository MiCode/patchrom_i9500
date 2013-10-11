.class public Landroid/hardware/motion/MotionRecognitionService;
.super Landroid/hardware/motion/IMotionRecognitionService$Stub;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/motion/MotionRecognitionService$EventPool;,
        Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;,
        Landroid/hardware/motion/MotionRecognitionService$Listener;,
        Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;,
        Landroid/hardware/motion/MotionRecognitionService$PollIntThread;
    }
.end annotation


# static fields
.field private static final ACTION_MOTIONS_SETTINGS_CHANGED:Ljava/lang/String; = "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

.field private static final CONFIG_BROADCAST_INTENT:Z = false

.field private static final CONFIG_ENGINE_SEND_GYRO:Z = false

.field private static final CONFIG_READ_SETTINGS:Z = true

.field private static final CONFIG_USE_ALWAYS:Z = false

.field private static final EVENT_FROM_ENGINE:I = 0x55

.field public static final FILE_DIR:Ljava/lang/String; = "/data/log/acc_int"

.field private static final MOTION_COMMAND_ACC_SENSOR_DISABLE:I = 0x5

.field private static final MOTION_COMMAND_ACC_SENSOR_ENABLE:I = 0x4

.field private static final MOTION_COMMAND_CALIBRATE_GYRO:I = 0xf

.field private static final MOTION_COMMAND_GYRO_SENSOR_DISABLE:I = 0x7

.field private static final MOTION_COMMAND_GYRO_SENSOR_ENABLE:I = 0x6

.field private static final MOTION_COMMAND_LIGHT_SENSOR_DISABLE:I = 0xb

.field private static final MOTION_COMMAND_LIGHT_SENSOR_ENABLE:I = 0xa

.field private static final MOTION_COMMAND_MRENGINE_RESET:I = 0x1

.field private static final MOTION_COMMAND_PANNINGD_DISABLE:I = 0xd

.field private static final MOTION_COMMAND_PANNINGD_ENABLE:I = 0xc

.field private static final MOTION_COMMAND_PROX_SENSOR_DISABLE:I = 0x9

.field private static final MOTION_COMMAND_PROX_SENSOR_ENABLE:I = 0x8

.field private static final MOTION_COMMAND_SET_LIST_SCROLL_ANGLE_INTERVAL:I = 0x3

.field private static final MOTION_COMMAND_SET_WINSET_ANGLE_RESET:I = 0x2

.field private static final MOTION_COMMAND_SMART_SCROLL:I = 0x10

.field private static final MOTION_COMMAND_VOLUME_CHANGED:I = 0xe

.field private static final MSG_SEND_FLAT:I = 0x2d

.field private static final PANNING_ICON:I = 0x1

.field private static final PANNING_IMAGE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MotionRecognitionService"

.field static final TRANSMIT_POWER_DEFAULT:I = 0x0

.field static final TRANSMIT_POWER_WIFI_HOTSPOT:I = 0x1

.field private static final localLOGD:Z = false

.field private static final localLOGV:Z = false

.field private static final localLOGVV:Z = false

#the value of this static final field might be set in the static constructor
.field private static final mDefaultAppId:I = 0x0

.field private static final mSensitivityDef:I = 0x5

.field private static final mSensitivityMax:I = 0xa


# instance fields
.field private gripEnabled:Z

.field mBootCompeleted:Z

.field private final mContext:Landroid/content/Context;

.field private mEnListenerForYoutube:Z

.field mEnableAccINT:Z

.field mEngineInitialized:Z

.field mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

.field mFaceInfoListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

.field mFlatEvent:Z

.field mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

.field private mIntentValid:I

.field private mIsDockingDevice:Z

.field private mIsFlat:Z

.field private mIsrunningSmartFace:Z

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/motion/MotionRecognitionService$Listener;",
            ">;"
        }
    .end annotation
.end field

.field mLockEngine:Ljava/lang/Object;

.field mLogPW:Ljava/io/PrintWriter;

.field mLogPath:Ljava/lang/String;

.field mLogTime:J

.field mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

.field final mMotionSettingListener:Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;

.field mMsgHandler:Landroid/os/Handler;

.field private mOldFaceInfo:I

.field private mPM:Landroid/os/PowerManager;

.field private mPaused:I

.field private mPhoneService:Lcom/android/internal/telephony/ITelephony;

.field mPollThread:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

.field private mPostAccelVal:[D

.field private mPostGripVal:S

.field private mPostGyroVal:[D

.field private mPostLightVal:I

.field private mPostMotionVal:[I

.field private mPostProxVal:S

.field private mPostTouch:Z

.field mPowerTime:J

.field private mQuickPanelOpend:Z

.field private mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

.field final mReceiver:Landroid/content/BroadcastReceiver;

.field mResolver:Landroid/content/ContentResolver;

.field mRotate:I

.field mSContextManager:Landroid/hardware/scontext/SContextManager;

.field mScreenOn:Z

.field mSensorDelayInMsec:I

.field mSensorsEnabled:I

.field mSensorsUsed:I

.field private mSupportedAppCount:I

.field private mSupportedPackages:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTelManager:Landroid/telephony/TelephonyManager;

.field mThread:Landroid/os/HandlerThread;

.field private mWm:Landroid/view/WindowManager;

.field private mbmultiwindow:Z

.field mfdAccint:I

.field mrefCntEvents:[I

.field private mrefSmartScroll:I

.field private msspenabled:Z

.field private final mySContextFlipCoverListener:Landroid/hardware/scontext/SContextListener;

.field private observer:Landroid/os/FileObserver;

.field orientationListener:Landroid/view/WindowOrientationListener;

.field private refPanningDEnabled:I

.field private final sensorGripListener:Landroid/hardware/SensorEventListener;

.field sensorManager:Landroid/hardware/SensorManager;

.field private final sensorMotionListener:Landroid/hardware/SensorEventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 111
    sget-object v0, Landroid/hardware/motion/MotionRecognitionEngineAppId$eAPPID;->APPID_TEST:Landroid/hardware/motion/MotionRecognitionEngineAppId$eAPPID;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/motion/MotionRecognitionService;->mDefaultAppId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v8, 0x3

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 414
    invoke-direct {p0}, Landroid/hardware/motion/IMotionRecognitionService$Stub;-><init>()V

    .line 148
    iput v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I

    .line 149
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnListenerForYoutube:Z

    .line 150
    iput v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mPaused:I

    .line 151
    iput v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mIntentValid:I

    .line 152
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mQuickPanelOpend:Z

    .line 154
    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    .line 155
    const-string v2, ""

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    .line 156
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    .line 157
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J

    .line 159
    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    .line 160
    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    .line 161
    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mPollThread:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    .line 166
    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    .line 167
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    .line 170
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 171
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mBootCompeleted:Z

    .line 172
    iput-boolean v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    .line 173
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnableAccINT:Z

    .line 174
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mFlatEvent:Z

    .line 177
    const/16 v2, 0x1c

    iput v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    .line 178
    iput v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    .line 179
    iput v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 180
    const/16 v2, 0x14

    iput v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorDelayInMsec:I

    .line 181
    iput v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mfdAccint:I

    .line 186
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    .line 188
    iput-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    .line 191
    iput v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    .line 192
    iput v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mOldFaceInfo:I

    .line 194
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    .line 195
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsDockingDevice:Z

    .line 202
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mbmultiwindow:Z

    .line 203
    iput v5, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    .line 207
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$1;

    invoke-direct {v2, p0}, Landroid/hardware/motion/MotionRecognitionService$1;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettingListener:Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;

    .line 249
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$2;

    invoke-direct {v2, p0}, Landroid/hardware/motion/MotionRecognitionService$2;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 629
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$5;

    invoke-direct {v2, p0}, Landroid/hardware/motion/MotionRecognitionService$5;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mMsgHandler:Landroid/os/Handler;

    .line 2134
    new-array v2, v8, [D

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D

    .line 2135
    new-array v2, v8, [D

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D

    .line 2136
    const/4 v2, 0x5

    iput-short v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostProxVal:S

    .line 2137
    const/4 v2, 0x5

    iput-short v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGripVal:S

    .line 2141
    const/4 v2, 0x4

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I

    .line 2142
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsFlat:Z

    .line 2145
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostTouch:Z

    .line 2152
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$6;

    invoke-direct {v2, p0}, Landroid/hardware/motion/MotionRecognitionService$6;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorGripListener:Landroid/hardware/SensorEventListener;

    .line 2181
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$7;

    invoke-direct {v2, p0}, Landroid/hardware/motion/MotionRecognitionService$7;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    .line 2216
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$8;

    invoke-direct {v2, p0}, Landroid/hardware/motion/MotionRecognitionService$8;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mySContextFlipCoverListener:Landroid/hardware/scontext/SContextListener;

    .line 415
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    .line 417
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "motion_recognition"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    .line 418
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 419
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 420
    .local v1, looper_svchandler:Landroid/os/Looper;
    if-eqz v1, :cond_2

    .line 421
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-direct {v2, p0, v1}, Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    .line 427
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$EventPool;

    invoke-direct {v2, p0}, Landroid/hardware/motion/MotionRecognitionService$EventPool;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    .line 429
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mMsgHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPollThread:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    .line 431
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPollThread:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 434
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    .line 437
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.sensorhub"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    .line 438
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  SSP enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.multiwindow"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mbmultiwindow:Z

    .line 441
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Multi-Window enabled : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mbmultiwindow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 445
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 446
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 447
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 448
    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 449
    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 450
    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 451
    const-string v2, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 452
    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 453
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 454
    const-string v2, "android.intent.action.GRIPSENSOR_CP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 458
    const-string v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 459
    const-string v2, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 460
    const-string v2, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 463
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mSupportedPackages:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 464
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mSupportedPackages:Ljava/util/concurrent/CopyOnWriteArraySet;

    const-string v3, "com.google.android.youtube"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 466
    const/16 v2, 0x14

    new-array v2, v2, [I

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    .line 467
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mMotionSettingListener:Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;

    invoke-static {v2, v3}, Landroid/hardware/motion/MotionRecognitionService;->registerMotionSettingsListener(Landroid/content/Context;Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;)V

    .line 469
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPM:Landroid/os/PowerManager;

    .line 470
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mPM:Landroid/os/PowerManager;

    const-string v3, "reactive_alert"

    invoke-virtual {v2, v6, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    .line 471
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 472
    iput-boolean v5, p0, Landroid/hardware/motion/MotionRecognitionService;->gripEnabled:Z

    .line 475
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v3, "sensor"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    .line 476
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 478
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mWm:Landroid/view/WindowManager;

    .line 479
    iget-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    if-ne v2, v6, :cond_0

    .line 480
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v3, "scontext"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/scontext/SContextManager;

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    .line 482
    :cond_0
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v2, :cond_1

    .line 484
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mySContextFlipCoverListener:Landroid/hardware/scontext/SContextListener;

    const/16 v4, 0xd

    invoke-virtual {v2, v3, v4}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    .line 485
    const-string v2, "MotionRecognitionService"

    const-string v3, "mySContextFlipCoverListener registered"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_1
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$3;

    invoke-direct {v2, p0, p1}, Landroid/hardware/motion/MotionRecognitionService$3;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->orientationListener:Landroid/view/WindowOrientationListener;

    .line 503
    new-instance v2, Landroid/hardware/motion/MotionRecognitionService$4;

    invoke-direct {v2, p0}, Landroid/hardware/motion/MotionRecognitionService$4;-><init>(Landroid/hardware/motion/MotionRecognitionService;)V

    iput-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mFaceInfoListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    .line 521
    .end local v0           #filter:Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 423
    :cond_2
    const-string v2, "MotionRecognitionService"

    const-string v3, " failed getting looper for service handler "

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/motion/MotionRecognitionService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    return-void
.end method

.method static synthetic access$100(Landroid/hardware/motion/MotionRecognitionService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    return-void
.end method

.method static synthetic access$1000(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/SensorEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorGripListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/motion/MotionRecognitionService;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSupportedPackages:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I

    return v0
.end method

.method static synthetic access$1202(Landroid/hardware/motion/MotionRecognitionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I

    return p1
.end method

.method static synthetic access$1208(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I

    return v0
.end method

.method static synthetic access$1210(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mSupportedAppCount:I

    return v0
.end method

.method static synthetic access$1300(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mPaused:I

    return v0
.end method

.method static synthetic access$1302(Landroid/hardware/motion/MotionRecognitionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPaused:I

    return p1
.end method

.method static synthetic access$1400(Landroid/hardware/motion/MotionRecognitionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnListenerForYoutube:Z

    return v0
.end method

.method static synthetic access$1402(Landroid/hardware/motion/MotionRecognitionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnListenerForYoutube:Z

    return p1
.end method

.method static synthetic access$1500(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mIntentValid:I

    return v0
.end method

.method static synthetic access$1502(Landroid/hardware/motion/MotionRecognitionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mIntentValid:I

    return p1
.end method

.method static synthetic access$1602(Landroid/hardware/motion/MotionRecognitionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mQuickPanelOpend:Z

    return p1
.end method

.method static synthetic access$1700(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mOldFaceInfo:I

    return v0
.end method

.method static synthetic access$1702(Landroid/hardware/motion/MotionRecognitionService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mOldFaceInfo:I

    return p1
.end method

.method static synthetic access$1800(Landroid/hardware/motion/MotionRecognitionService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mReactiveAlert_Wakelock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/hardware/motion/MotionRecognitionService;Landroid/hardware/motion/MREvent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    return v0
.end method

.method static synthetic access$2000(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    return v0
.end method

.method static synthetic access$2010(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    return v0
.end method

.method static synthetic access$210(Landroid/hardware/motion/MotionRecognitionService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    return v0
.end method

.method static synthetic access$2100(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->disableUnusedSensors()V

    return-void
.end method

.method static synthetic access$2200(Landroid/hardware/motion/MotionRecognitionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mbmultiwindow:Z

    return v0
.end method

.method static synthetic access$2300(Landroid/hardware/motion/MotionRecognitionService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/hardware/motion/MotionRecognitionService;)S
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-short v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGripVal:S

    return v0
.end method

.method static synthetic access$2402(Landroid/hardware/motion/MotionRecognitionService;S)S
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-short p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGripVal:S

    return p1
.end method

.method static synthetic access$2500(Landroid/hardware/motion/MotionRecognitionService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostMotionVal:[I

    return-object v0
.end method

.method static synthetic access$2600(Landroid/hardware/motion/MotionRecognitionService;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(IIII)V

    return-void
.end method

.method static synthetic access$2702(Landroid/hardware/motion/MotionRecognitionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsFlat:Z

    return p1
.end method

.method static synthetic access$300(Landroid/hardware/motion/MotionRecognitionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    return v0
.end method

.method static synthetic access$302(Landroid/hardware/motion/MotionRecognitionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    return p1
.end method

.method static synthetic access$400(Landroid/hardware/motion/MotionRecognitionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsDockingDevice:Z

    return v0
.end method

.method static synthetic access$402(Landroid/hardware/motion/MotionRecognitionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsDockingDevice:Z

    return p1
.end method

.method static synthetic access$500(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V

    return-void
.end method

.method static synthetic access$600(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/scontext/SContextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mySContextFlipCoverListener:Landroid/hardware/scontext/SContextListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/hardware/motion/MotionRecognitionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V

    return-void
.end method

.method static synthetic access$800(Landroid/hardware/motion/MotionRecognitionService;)Lcom/android/internal/telephony/ITelephony;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    return-object v0
.end method

.method static synthetic access$802(Landroid/hardware/motion/MotionRecognitionService;Lcom/android/internal/telephony/ITelephony;)Lcom/android/internal/telephony/ITelephony;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPhoneService:Lcom/android/internal/telephony/ITelephony;

    return-object p1
.end method

.method static synthetic access$900(Landroid/hardware/motion/MotionRecognitionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->gripEnabled:Z

    return v0
.end method

.method static synthetic access$902(Landroid/hardware/motion/MotionRecognitionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-boolean p1, p0, Landroid/hardware/motion/MotionRecognitionService;->gripEnabled:Z

    return p1
.end method

.method private checkSettingEngineEnabled()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1014
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_engine"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "smart_scroll"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 1016
    .local v1, isEnabled:Z
    :cond_0
    :goto_0
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  .checkSettingEngineEnabled : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const-string v3, "debug.motion.enabled"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1018
    .local v0, debugEnabled:Z
    if-eqz v0, :cond_1

    .line 1019
    const-string v2, "MotionRecognitionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  .checkSettingEngineEnabled : isEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  debugEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    move v1, v0

    .line 1023
    :cond_1
    return v1

    .end local v0           #debugEnabled:Z
    .end local v1           #isEnabled:Z
    :cond_2
    move v1, v2

    .line 1014
    goto :goto_0
.end method

.method private checkSettingMotionEnabled(I)Z
    .locals 6
    .parameter "motion"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1030
    const-string v4, "debug.motion.enabled"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-ne v4, v2, :cond_1

    .line 1096
    :cond_0
    :goto_0
    return v2

    .line 1033
    :cond_1
    const/4 v1, 0x0

    .line 1034
    .local v1, setting:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1035
    .local v0, panningEvent:Z
    sparse-switch p1, :sswitch_data_0

    .line 1073
    :goto_1
    if-eqz v0, :cond_2

    .line 1074
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_panning"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_pan_to_browse_image"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    move v2, v3

    .line 1081
    goto :goto_0

    .line 1036
    :sswitch_0
    const-string v1, "motion_double_tap"

    goto :goto_1

    .line 1037
    :sswitch_1
    const-string v1, "motion_overturn"

    goto :goto_1

    .line 1039
    :sswitch_2
    const-string v1, "motion_shake"

    goto :goto_1

    .line 1040
    :sswitch_3
    const/4 v0, 0x1

    goto :goto_1

    .line 1041
    :sswitch_4
    const-string v1, "motion_zooming"

    goto :goto_1

    .line 1043
    :sswitch_5
    const-string v1, "motion_pick_up"

    goto :goto_1

    .line 1046
    :sswitch_6
    const-string v1, "motion_pick_up_to_call_out"

    goto :goto_1

    .line 1061
    :sswitch_7
    const-string v1, "motion_tilt_to_list_scrolling"

    goto :goto_1

    .line 1069
    :sswitch_8
    const-string v1, "smart_scroll"

    goto :goto_1

    .line 1085
    :cond_2
    if-eqz v1, :cond_0

    .line 1086
    const-string v4, "smart_scroll"

    if-ne v1, v4, :cond_3

    .line 1087
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    move v2, v3

    goto :goto_0

    .line 1089
    :cond_3
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_engine"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 1090
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_4
    move v2, v3

    .line 1092
    goto :goto_0

    .line 1035
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x23 -> :sswitch_2
        0x24 -> :sswitch_2
        0x3d -> :sswitch_3
        0x43 -> :sswitch_5
        0x44 -> :sswitch_6
        0x48 -> :sswitch_4
        0x4e -> :sswitch_7
        0x4f -> :sswitch_7
        0x50 -> :sswitch_7
        0x51 -> :sswitch_7
        0x52 -> :sswitch_7
        0x53 -> :sswitch_7
        0x54 -> :sswitch_7
        0x55 -> :sswitch_7
        0x57 -> :sswitch_7
        0x58 -> :sswitch_7
        0x59 -> :sswitch_7
        0x5a -> :sswitch_7
        0x5b -> :sswitch_7
        0x5c -> :sswitch_7
        0x5d -> :sswitch_7
        0x62 -> :sswitch_5
        0x65 -> :sswitch_6
        0x66 -> :sswitch_6
        0x67 -> :sswitch_8
        0x68 -> :sswitch_8
        0x69 -> :sswitch_8
        0x6a -> :sswitch_8
        0x6b -> :sswitch_8
        0x6c -> :sswitch_8
        0x6d -> :sswitch_8
        0x6e -> :sswitch_8
    .end sparse-switch
.end method

.method private disableUnusedSensors()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1756
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 1757
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_0

    .line 1758
    shl-int v2, v5, v1

    .line 1759
    .local v2, motion_sensor:I
    invoke-direct {p0, v2, v4}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    .line 1757
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1761
    .end local v2           #motion_sensor:I
    :cond_0
    invoke-direct {p0, v4}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 1781
    :cond_1
    return-void

    .line 1763
    .end local v1           #i:I
    :cond_2
    const/4 v0, 0x0

    .line 1769
    .local v0, bSensorsUsed:I
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionService;->getUsedSensorForEvents()I

    move-result v0

    .line 1771
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 1772
    shl-int v2, v5, v1

    .line 1773
    .restart local v2       #motion_sensor:I
    and-int v3, v0, v2

    if-nez v3, :cond_3

    .line 1774
    invoke-direct {p0, v2}, Landroid/hardware/motion/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1775
    invoke-direct {p0, v2, v4}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    .line 1776
    invoke-direct {p0, v2, v4}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    .line 1771
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private enableAllSensors(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1746
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    .line 1747
    const/4 v2, 0x1

    shl-int v1, v2, v0

    .line 1748
    .local v1, motion_sensor:I
    invoke-direct {p0, v1, p1}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    .line 1746
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1750
    .end local v1           #motion_sensor:I
    :cond_0
    return-void
.end method

.method private enableSensor(IZ)V
    .locals 6
    .parameter "motion_sensor"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1664
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1740
    :cond_0
    :goto_0
    return-void

    .line 1667
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorEnabled(I)Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 1669
    if-eqz p2, :cond_3

    .line 1670
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1674
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    if-nez v0, :cond_2

    .line 1675
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2}, Landroid/hardware/SensorManager;->getMotionSensor()Landroid/hardware/Sensor;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1676
    const-string v0, "MotionRecognitionService"

    const-string v1, "Fail to registerListener : MotionSensor !"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1682
    :cond_2
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 1687
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1689
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    goto :goto_0

    .line 1693
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    goto :goto_0

    .line 1697
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    goto :goto_0

    .line 1701
    :pswitch_4
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    goto :goto_0

    .line 1709
    :cond_3
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    .line 1714
    packed-switch p1, :pswitch_data_1

    .line 1735
    :goto_1
    :pswitch_5
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    if-nez v0, :cond_0

    .line 1736
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorMotionListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 1716
    :pswitch_6
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    goto :goto_1

    .line 1720
    :pswitch_7
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    goto :goto_1

    .line 1724
    :pswitch_8
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    goto :goto_1

    .line 1728
    :pswitch_9
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v4, v5}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    goto :goto_1

    .line 1687
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 1714
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_8
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_9
    .end packed-switch
.end method

.method private finalizeMotionEngine()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 738
    iget-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-nez v1, :cond_0

    .line 763
    :goto_0
    return-void

    .line 740
    :cond_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->orientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v1}, Landroid/view/WindowOrientationListener;->disable()V

    .line 741
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionService;->sensorLogEnd()V

    .line 742
    iget-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnableAccINT:Z

    if-ne v1, v5, :cond_1

    .line 744
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPollThread:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v1, v1, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 746
    :cond_1
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v2

    .line 747
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 748
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 749
    const-string v1, "MotionRecognitionService"

    const-string v3, "  .finalizeMotionEngine"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsFlat:Z

    .line 752
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    if-ne v1, v5, :cond_2

    .line 753
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    .line 754
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v1}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    .line 755
    const/4 v1, 0x0

    iput v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mOldFaceInfo:I

    .line 756
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 757
    .local v0, val:[I
    const/4 v1, 0x0

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 758
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v3, 0x10

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4, v0}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    .line 759
    const-string v1, "MotionRecognitionService"

    const-string v3, "SERVICETYPE_MOTION stop"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    .end local v0           #val:[I
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSettingMotionSensitivity(II)I
    .locals 3
    .parameter "motion"
    .parameter "type"

    .prologue
    const/4 v1, 0x5

    .line 1101
    const/4 v0, 0x0

    .line 1102
    .local v0, setting:Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 1111
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 1112
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1115
    :cond_1
    return v1

    .line 1103
    :sswitch_0
    const-string v0, "motion_zooming_sensitivity"

    goto :goto_0

    .line 1105
    :sswitch_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    const-string v0, "motion_panning_sensitivity"

    goto :goto_0

    .line 1106
    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const-string v0, "motion_pan_to_browse_image_sensitivity"

    goto :goto_0

    .line 1102
    nop

    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_1
        0x48 -> :sswitch_0
    .end sparse-switch
.end method

.method private getWindowRotation()I
    .locals 3

    .prologue
    .line 787
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mWm:Landroid/view/WindowManager;

    if-nez v1, :cond_0

    .line 788
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mWm:Landroid/view/WindowManager;

    .line 789
    :cond_0
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mWm:Landroid/view/WindowManager;

    if-eqz v1, :cond_1

    .line 790
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mWm:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 791
    .local v0, disp:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 793
    .end local v0           #disp:Landroid/view/Display;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private initializeMotionEngine()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 524
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    if-lez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsDockingDevice:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "smart_scroll"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 527
    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    .line 528
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Lcom/sec/android/smartface/SmartFaceManager;->start(I)V

    .line 529
    const-string v1, "MotionRecognitionService"

    const-string v2, "SERVICETYPE_MOTION start"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_0
    iget-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v1, :cond_2

    .line 548
    :cond_1
    :goto_0
    return-void

    .line 534
    :cond_2
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->checkSettingEngineEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 535
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    const-string v1, "MotionRecognitionService"

    const-string v2, "  .initializeMotionEngine"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->orientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v1}, Landroid/view/WindowOrientationListener;->enable()V

    .line 540
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->orientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v1}, Landroid/view/WindowOrientationListener;->getProposedRotation()I

    move-result v0

    .line 541
    .local v0, currRotate:I
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->orientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v1, v0}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 542
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionService;->sensorLogStart()V

    .line 544
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v2

    .line 545
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    .line 546
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/hardware/motion/MotionRecognitionService;->enableAllSensors(Z)V

    .line 547
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private isSensorEnabled(I)Z
    .locals 2
    .parameter "motion_sensor"

    .prologue
    const/4 v0, 0x0

    .line 1639
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isSensorUsed(I)Z
    .locals 2
    .parameter "motion_sensor"

    .prologue
    const/4 v0, 0x0

    .line 1630
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1632
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    and-int/2addr v1, p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static registerMotionSettingsListener(Landroid/content/Context;Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 1804
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/hardware/motion/MotionRecognitionService;->registerMotionSettingsListener(Landroid/content/Context;Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;I)V

    .line 1805
    return-void
.end method

.method public static registerMotionSettingsListener(Landroid/content/Context;Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;I)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "userHandle"

    .prologue
    const/4 v3, 0x0

    .line 1813
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_engine"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1816
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_shake"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1818
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_pick_up"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1820
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1822
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_zooming"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1824
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_tilt_to_list_scrolling"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1826
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_pan_to_browse_image"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1829
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_panning"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1831
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_double_tap"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1833
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_unlock_camera_short_cut"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1835
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "motion_pick_up_to_call_out"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1837
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_motion_tilt_to_unlock"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1839
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smart_scroll"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p1, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1851
    return-void
.end method

.method private sendBroadcastIntent(I)V
    .locals 0
    .parameter "motion"

    .prologue
    .line 1010
    return-void
.end method

.method private sendMotionEvent(I)V
    .locals 1
    .parameter "motion"

    .prologue
    const/4 v0, 0x0

    .line 797
    invoke-direct {p0, p1, v0, v0, v0}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(IIII)V

    .line 798
    return-void
.end method

.method private sendMotionEvent(IIII)V
    .locals 28
    .parameter "motion"
    .parameter "dataX"
    .parameter "dataY"
    .parameter "dataZ"

    .prologue
    .line 802
    move/from16 v6, p1

    .line 803
    .local v6, motionOrigin:I
    move/from16 v7, p2

    .line 804
    .local v7, panningDx:I
    move/from16 v9, p3

    .line 805
    .local v9, panningDy:I
    move/from16 v11, p4

    .line 806
    .local v11, panningDz:I
    const/16 v22, 0x0

    .line 807
    .local v22, walkingStatus:I
    const/4 v4, 0x1

    .line 808
    .local v4, bSendMotion:Z
    const/16 v23, 0x0

    .line 809
    .local v23, windowrotation:I
    if-lez p1, :cond_1

    const/16 v24, 0x71

    move/from16 v0, p1

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 811
    sparse-switch p1, :sswitch_data_0

    .line 928
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v5

    .line 930
    .local v5, motionEvent:Landroid/hardware/motion/MREvent;
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 939
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    .line 949
    .end local v5           #motionEvent:Landroid/hardware/motion/MREvent;
    :cond_1
    if-nez v7, :cond_2

    if-eqz v9, :cond_3

    .line 950
    :cond_2
    const/16 v17, 0x0

    .line 951
    .local v17, tilt:I
    move v8, v7

    .line 952
    .local v8, panningDxImage:I
    move v10, v9

    .line 953
    .local v10, panningDyImage:I
    move v12, v11

    .line 955
    .local v12, panningDzImage:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    move/from16 v24, v0

    packed-switch v24, :pswitch_data_0

    .line 960
    move/from16 v17, v9

    .line 965
    :goto_1
    const/16 v24, 0x3d

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionService;->getSettingMotionSensitivity(II)I

    move-result v14

    .line 966
    .local v14, sensitivityPanningIcon:I
    const/16 v24, 0x3d

    const/16 v25, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionService;->getSettingMotionSensitivity(II)I

    move-result v15

    .line 967
    .local v15, sensitivityPanningImage:I
    const/16 v24, 0x48

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionService;->getSettingMotionSensitivity(II)I

    move-result v16

    .line 969
    .local v16, sensitivityTilt:I
    add-int/lit8 v24, v14, -0x5

    mul-int v24, v24, v7

    div-int/lit8 v24, v24, 0xa

    add-int v7, v7, v24

    .line 970
    add-int/lit8 v24, v14, -0x5

    mul-int v24, v24, v9

    div-int/lit8 v24, v24, 0xa

    add-int v9, v9, v24

    .line 972
    add-int/lit8 v24, v15, -0x5

    mul-int v24, v24, v7

    div-int/lit8 v24, v24, 0xa

    add-int v8, v8, v24

    .line 973
    add-int/lit8 v24, v15, -0x5

    mul-int v24, v24, v9

    div-int/lit8 v24, v24, 0xa

    add-int v10, v10, v24

    .line 974
    add-int/lit8 v24, v15, -0x5

    mul-int v24, v24, v11

    div-int/lit8 v24, v24, 0xa

    add-int v12, v12, v24

    .line 975
    add-int/lit8 v24, v16, -0x5

    mul-int v24, v24, v17

    div-int/lit8 v24, v24, 0xa

    add-int v17, v17, v24

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v13

    .line 979
    .local v13, panningEvent:Landroid/hardware/motion/MREvent;
    const/16 v24, 0x3d

    move/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 980
    invoke-virtual {v13, v7}, Landroid/hardware/motion/MREvent;->setPanningDx(I)V

    .line 981
    invoke-virtual {v13, v9}, Landroid/hardware/motion/MREvent;->setPanningDy(I)V

    .line 982
    invoke-virtual {v13, v11}, Landroid/hardware/motion/MREvent;->setPanningDz(I)V

    .line 983
    invoke-virtual {v13, v8}, Landroid/hardware/motion/MREvent;->setPanningDxImage(I)V

    .line 984
    invoke-virtual {v13, v10}, Landroid/hardware/motion/MREvent;->setPanningDyImage(I)V

    .line 985
    invoke-virtual {v13, v12}, Landroid/hardware/motion/MREvent;->setPanningDzImage(I)V

    .line 988
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    .line 990
    if-eqz v17, :cond_3

    .line 991
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mEventPool:Landroid/hardware/motion/MotionRecognitionService$EventPool;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/hardware/motion/MotionRecognitionService$EventPool;->obtain()Landroid/hardware/motion/MREvent;

    move-result-object v18

    .line 992
    .local v18, tiltEvent:Landroid/hardware/motion/MREvent;
    const/16 v24, 0x48

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setMotion(I)V

    .line 993
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setTilt(I)V

    .line 994
    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MREvent;->setWalkingStatus(I)V

    .line 995
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/hardware/motion/MotionRecognitionService;->sendMotionEvent(Landroid/hardware/motion/MREvent;)V

    .line 1000
    .end local v8           #panningDxImage:I
    .end local v10           #panningDyImage:I
    .end local v12           #panningDzImage:I
    .end local v13           #panningEvent:Landroid/hardware/motion/MREvent;
    .end local v14           #sensitivityPanningIcon:I
    .end local v15           #sensitivityPanningImage:I
    .end local v16           #sensitivityTilt:I
    .end local v17           #tilt:I
    .end local v18           #tiltEvent:Landroid/hardware/motion/MREvent;
    :cond_3
    return-void

    .line 813
    :sswitch_0
    const/16 p1, 0x1

    .line 814
    goto/16 :goto_0

    .line 816
    :sswitch_1
    const/16 p1, 0x2

    .line 817
    goto/16 :goto_0

    .line 819
    :sswitch_2
    const/16 p1, 0x3

    .line 820
    goto/16 :goto_0

    .line 822
    :sswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mPowerTime:J

    move-wide/from16 v26, v0

    sub-long v19, v24, v26

    .line 823
    .local v19, time:J
    const-wide/16 v24, 0x0

    cmp-long v24, v19, v24

    if-lez v24, :cond_0

    const-wide/16 v24, 0x7d0

    cmp-long v24, v19, v24

    if-gez v24, :cond_0

    .line 825
    const-string v24, "MotionRecognitionService"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "  .sendMotionEvent : ignore TWO_TAPPING. (time="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ")"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    const/4 v4, 0x0

    .line 827
    goto/16 :goto_0

    .line 831
    .end local v19           #time:J
    :sswitch_4
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v23

    .line 832
    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_4

    .line 833
    const/16 p1, 0x68

    goto/16 :goto_0

    .line 834
    :cond_4
    if-nez v23, :cond_5

    .line 835
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 837
    :cond_5
    const/16 p1, 0x0

    .line 838
    goto/16 :goto_0

    .line 840
    :sswitch_5
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v23

    .line 841
    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 842
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 843
    :cond_6
    if-nez v23, :cond_7

    .line 844
    const/16 p1, 0x68

    goto/16 :goto_0

    .line 846
    :cond_7
    const/16 p1, 0x0

    .line 848
    goto/16 :goto_0

    .line 850
    :sswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v23

    .line 851
    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_8

    if-nez v23, :cond_9

    .line 852
    :cond_8
    const/16 p1, 0x69

    goto/16 :goto_0

    .line 854
    :cond_9
    const/16 p1, 0x0

    .line 856
    goto/16 :goto_0

    .line 858
    :sswitch_7
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v23

    .line 859
    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_a

    if-nez v23, :cond_b

    .line 860
    :cond_a
    const/16 p1, 0x6a

    goto/16 :goto_0

    .line 862
    :cond_b
    const/16 p1, 0x0

    .line 865
    goto/16 :goto_0

    .line 867
    :sswitch_8
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v23

    .line 868
    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_c

    .line 869
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 870
    :cond_c
    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    .line 871
    const/16 p1, 0x68

    goto/16 :goto_0

    .line 873
    :cond_d
    const/16 p1, 0x0

    .line 875
    goto/16 :goto_0

    .line 877
    :sswitch_9
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v23

    .line 878
    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_e

    .line 879
    const/16 p1, 0x68

    goto/16 :goto_0

    .line 880
    :cond_e
    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    .line 881
    const/16 p1, 0x67

    goto/16 :goto_0

    .line 883
    :cond_f
    const/16 p1, 0x0

    .line 884
    goto/16 :goto_0

    .line 886
    :sswitch_a
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v23

    .line 887
    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_10

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_11

    .line 888
    :cond_10
    const/16 p1, 0x69

    goto/16 :goto_0

    .line 890
    :cond_11
    const/16 p1, 0x0

    .line 891
    goto/16 :goto_0

    .line 893
    :sswitch_b
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getWindowRotation()I

    move-result v23

    .line 894
    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_12

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_13

    .line 895
    :cond_12
    const/16 p1, 0x6a

    goto/16 :goto_0

    .line 897
    :cond_13
    const/16 p1, 0x0

    .line 898
    goto/16 :goto_0

    .line 900
    :sswitch_c
    const/4 v4, 0x0

    .line 901
    const-string v24, "MotionRecognitionService"

    const-string v25, " .received : SMART_SCROLL_CAMERA_OFF"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 903
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    .line 905
    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/motion/MotionRecognitionService;->mOldFaceInfo:I

    .line 906
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 907
    .local v21, val:[I
    const/16 v24, 0x0

    const/16 v25, 0x0

    aput v25, v21, v24

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v24, v0

    const/16 v25, 0x10

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    .line 909
    const-string v24, "MotionRecognitionService"

    const-string v25, "SERVICETYPE_MOTION stop"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 913
    .end local v21           #val:[I
    :sswitch_d
    const/4 v4, 0x0

    .line 914
    const-string v24, "MotionRecognitionService"

    const-string v25, " .received : SMART_SCROLL_CAMERA_ON"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    move/from16 v24, v0

    if-lez v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    move-object/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mIsDockingDevice:Z

    move/from16 v24, v0

    if-nez v24, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v24, v0

    const-string v25, "smart_scroll"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 919
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    move-object/from16 v24, v0

    const/16 v25, 0x10

    invoke-virtual/range {v24 .. v25}, Lcom/sec/android/smartface/SmartFaceManager;->start(I)V

    .line 921
    const-string v24, "MotionRecognitionService"

    const-string v25, "SERVICETYPE_MOTION start"

    invoke-static/range {v24 .. v25}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 956
    .restart local v8       #panningDxImage:I
    .restart local v10       #panningDyImage:I
    .restart local v12       #panningDzImage:I
    .restart local v17       #tilt:I
    :pswitch_0
    move/from16 v17, v7

    goto/16 :goto_1

    .line 957
    :pswitch_1
    neg-int v0, v9

    move/from16 v17, v0

    goto/16 :goto_1

    .line 958
    :pswitch_2
    neg-int v0, v7

    move/from16 v17, v0

    goto/16 :goto_1

    .line 811
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2f -> :sswitch_1
        0x30 -> :sswitch_2
        0x3f -> :sswitch_0
        0x67 -> :sswitch_4
        0x68 -> :sswitch_5
        0x69 -> :sswitch_6
        0x6a -> :sswitch_7
        0x6b -> :sswitch_8
        0x6c -> :sswitch_9
        0x6d -> :sswitch_a
        0x6e -> :sswitch_b
        0x6f -> :sswitch_c
        0x70 -> :sswitch_d
    .end sparse-switch

    .line 955
    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private sendMotionEvent(Landroid/hardware/motion/MREvent;)V
    .locals 3
    .parameter "motionEvent"

    .prologue
    .line 766
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    .line 767
    .local v0, motion:I
    invoke-direct {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->checkSettingMotionEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 784
    :cond_0
    :goto_0
    return-void

    .line 775
    :cond_1
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 776
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 777
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x55

    iput v2, v1, Landroid/os/Message;->what:I

    .line 778
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 780
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mHandler:Landroid/hardware/motion/MotionRecognitionService$ServiceHandler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static unregisterMotionSettingsListener(Landroid/content/Context;Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 1858
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/motion/MotionRecognitionService$MotionSettingsListener;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1859
    return-void
.end method

.method private useSensor(IZ)V
    .locals 2
    .parameter "motion_sensor"
    .parameter "used"

    .prologue
    .line 1648
    invoke-static {p1}, Landroid/hardware/motion/MotionRecognitionManager;->isValidMotionSensor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1657
    :cond_0
    :goto_0
    return-void

    .line 1651
    :cond_1
    invoke-direct {p0, p1}, Landroid/hardware/motion/MotionRecognitionService;->isSensorUsed(I)Z

    move-result v0

    if-eq p2, v0, :cond_0

    .line 1652
    if-eqz p2, :cond_2

    .line 1653
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    goto :goto_0

    .line 1655
    :cond_2
    iget v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    goto :goto_0
.end method


# virtual methods
.method public disableAccINT()V
    .locals 2

    .prologue
    .line 725
    const-string v0, "MotionRecognitionService"

    const-string v1, "disableAccINT "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnableAccINT:Z

    if-nez v0, :cond_0

    .line 728
    const-string v0, "MotionRecognitionService"

    const-string v1, "AccINT is already disabled. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_0
    return-void

    .line 731
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/motion/MotionRecognitionService;->writeACCInt(I)V

    .line 732
    const-string v0, "MotionRecognitionService"

    const-string v1, "disableAccINT Complete!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1525
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    .line 1527
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Permission Denial: can\'t dump MotionService from from pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " without permission "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "android.permission.DUMP"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1553
    :goto_0
    return-void

    .line 1533
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1534
    .local v5, time:J
    const-string v7, "motion_recognition"

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " : mSensorsUsed="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsUsed:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", mSensorsEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mSensorsEnabled:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1537
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " : currentTimeMillis="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", lastSensorEventTime="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", diff="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    sub-long v8, v5, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1539
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1540
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " : listener count="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1542
    const/4 v1, 0x0

    .line 1543
    .local v1, i:I
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 1544
    .local v4, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "   mListeners["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "] = mMotionSensors="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v9, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", mUseAlways="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v9, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mUseAlways:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1546
    :try_start_1
    iget-object v7, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    invoke-static {v7}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 1547
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "                   "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_2
    move v2, v1

    .line 1549
    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 1551
    .end local v4           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_1
    :try_start_2
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/lang/Object;->notify()V

    .line 1552
    monitor-exit v8

    goto/16 :goto_0

    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1548
    .restart local v1       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catch_0
    move-exception v7

    goto :goto_2
.end method

.method public enableAccINT()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 714
    const-string v0, "MotionRecognitionService"

    const-string v1, "enableAccINT "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnableAccINT:Z

    if-ne v0, v2, :cond_0

    .line 717
    const-string v0, "MotionRecognitionService"

    const-string v1, "AccINT is already enabled. "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :goto_0
    return-void

    .line 720
    :cond_0
    invoke-virtual {p0, v2}, Landroid/hardware/motion/MotionRecognitionService;->writeACCInt(I)V

    .line 721
    const-string v0, "MotionRecognitionService"

    const-string v1, "enableAccINT Complete!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getMotionStatus()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1124
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v4, "motion_pick_up"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 1125
    .local v0, isEnabled:Z
    :goto_0
    const-string v3, "MotionRecognitionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " pick up status : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->checkSettingEngineEnabled()Z

    move-result v3

    if-ne v3, v1, :cond_1

    :goto_1
    return v1

    .end local v0           #isEnabled:Z
    :cond_0
    move v0, v2

    .line 1124
    goto :goto_0

    .restart local v0       #isEnabled:Z
    :cond_1
    move v1, v2

    .line 1126
    goto :goto_1
.end method

.method public getSSPstatus()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1118
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    .line 1119
    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ssp status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    iget-boolean v0, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    return v0
.end method

.method public getUsedSensorForEvents()I
    .locals 9

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1131
    const/4 v1, 0x0

    .line 1132
    .local v1, mRegisteredEvents:I
    const/4 v3, 0x0

    .line 1133
    .local v3, motion_sensors:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v8, :cond_1

    .line 1135
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    aget v4, v4, v0

    if-eqz v4, :cond_0

    .line 1136
    shl-int v4, v6, v0

    or-int/2addr v1, v4

    .line 1133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1138
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v8, :cond_6

    .line 1139
    shl-int v2, v6, v0

    .line 1140
    .local v2, motion_event:I
    and-int v4, v2, v1

    if-eqz v4, :cond_2

    .line 1141
    const/high16 v4, 0x8

    if-ne v2, v4, :cond_4

    .line 1142
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "smart_scroll"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_3

    .line 1138
    :cond_2
    :goto_2
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1144
    :cond_3
    or-int/lit8 v3, v3, 0x3

    goto :goto_2

    .line 1145
    :cond_4
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_engine"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1146
    sparse-switch v2, :sswitch_data_0

    goto :goto_2

    .line 1190
    :sswitch_1
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_overturn"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1192
    or-int/lit8 v3, v3, 0x3

    .line 1193
    goto :goto_2

    .line 1148
    :sswitch_2
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_shake"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1150
    or-int/lit8 v3, v3, 0x1

    .line 1151
    goto :goto_2

    .line 1153
    :sswitch_3
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_pick_up"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1155
    or-int/lit8 v3, v3, 0x1

    .line 1156
    goto :goto_2

    .line 1159
    :sswitch_4
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_overturn"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1161
    or-int/lit8 v3, v3, 0x1

    .line 1162
    goto :goto_2

    .line 1165
    :sswitch_5
    or-int/lit8 v3, v3, 0x1

    .line 1166
    goto :goto_2

    .line 1174
    :sswitch_6
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_zooming"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eq v4, v6, :cond_5

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_tilt_to_list_scrolling"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1176
    :cond_5
    or-int/lit8 v3, v3, 0x3

    goto :goto_2

    .line 1180
    :sswitch_7
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_pan_to_browse_image"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1182
    or-int/lit8 v3, v3, 0x3

    .line 1183
    goto :goto_2

    .line 1185
    :sswitch_8
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_panning"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1187
    or-int/lit8 v3, v3, 0x3

    .line 1188
    goto :goto_2

    .line 1195
    :sswitch_9
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_double_tap"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1197
    or-int/lit8 v3, v3, 0x3

    .line 1198
    goto/16 :goto_2

    .line 1200
    :sswitch_a
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_unlock_camera_short_cut"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1202
    or-int/lit8 v3, v3, 0x3

    .line 1203
    goto/16 :goto_2

    .line 1205
    :sswitch_b
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_unlock_camera_short_cut"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1207
    or-int/lit8 v3, v3, 0x3

    .line 1208
    goto/16 :goto_2

    .line 1210
    :sswitch_c
    or-int/lit8 v3, v3, 0x3

    .line 1211
    goto/16 :goto_2

    .line 1213
    :sswitch_d
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1215
    or-int/lit8 v3, v3, 0x7

    .line 1216
    goto/16 :goto_2

    .line 1218
    :sswitch_e
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "lock_motion_tilt_to_unlock"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 1220
    or-int/lit8 v3, v3, 0x7

    .line 1221
    goto/16 :goto_2

    .line 1231
    .end local v2           #motion_event:I
    :cond_6
    return v3

    .line 1146
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_0
        0x8 -> :sswitch_9
        0x10 -> :sswitch_6
        0x20 -> :sswitch_7
        0x40 -> :sswitch_8
        0x80 -> :sswitch_b
        0x100 -> :sswitch_a
        0x200 -> :sswitch_c
        0x400 -> :sswitch_d
        0x800 -> :sswitch_e
        0x1000 -> :sswitch_6
        0x2000 -> :sswitch_5
        0x4000 -> :sswitch_6
        0x8000 -> :sswitch_3
        0x10000 -> :sswitch_5
        0x20000 -> :sswitch_4
    .end sparse-switch
.end method

.method public readACCInt()I
    .locals 8

    .prologue
    .line 648
    const/4 v3, 0x0

    .line 649
    .local v3, fis:Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 650
    .local v0, data:I
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v6

    .line 653
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    const-string v5, "/sys/class/sensors/accelerometer_sensor/reactive_alert"

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3           #fis:Ljava/io/FileInputStream;
    .local v4, fis:Ljava/io/FileInputStream;
    move-object v3, v4

    .line 658
    .end local v4           #fis:Ljava/io/FileInputStream;
    .restart local v3       #fis:Ljava/io/FileInputStream;
    :goto_0
    if-nez v3, :cond_1

    .line 659
    :try_start_1
    const-string v5, "MotionRecognitionService"

    const-string v7, "Output file is null!"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 676
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 677
    return v0

    .line 654
    :catch_0
    move-exception v1

    .line 655
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v5, "MotionRecognitionService"

    const-string v7, "File not found!"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 665
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 666
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 667
    if-eqz v3, :cond_0

    .line 669
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 674
    :cond_0
    :goto_2
    :try_start_6
    const-string v5, "MotionRecognitionService"

    const-string v7, "File read fail!!"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 676
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v5

    .line 661
    :cond_1
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileInputStream;->read()I

    move-result v0

    .line 663
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_1

    .line 670
    .restart local v1       #e:Ljava/io/IOException;
    :catch_2
    move-exception v2

    .line 671
    .local v2, err:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method

.method public registerCallback(Landroid/os/IBinder;II)V
    .locals 20
    .parameter "binder"
    .parameter "motion_sensors"
    .parameter "motion_events"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1235
    const/4 v8, 0x0

    .line 1236
    .local v8, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    const/4 v13, 0x0

    .line 1237
    .local v13, onPanningD:Z
    const/4 v14, 0x0

    .line 1241
    .local v14, onSmartScroll:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1242
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 1243
    .local v10, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v15, v10, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    move-object/from16 v0, p1

    if-ne v0, v15, :cond_0

    .line 1244
    monitor-exit v16

    .line 1377
    .end local v10           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_1
    :goto_0
    return-void

    .line 1248
    :cond_2
    if-nez v8, :cond_c

    .line 1249
    if-nez p3, :cond_4

    and-int/lit8 v15, p2, 0x2

    if-eqz v15, :cond_4

    .line 1251
    move-object/from16 v0, p0

    iget v15, v0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    if-nez v15, :cond_3

    .line 1252
    const/4 v13, 0x1

    .line 1253
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    .line 1256
    :cond_4
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    const/16 v15, 0x14

    if-ge v6, v15, :cond_9

    .line 1257
    const/4 v15, 0x1

    shl-int v11, v15, v6

    .line 1258
    .local v11, motion_event:I
    and-int v15, v11, p3

    if-eqz v15, :cond_5

    .line 1259
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    aget v17, v15, v6

    add-int/lit8 v17, v17, 0x1

    aput v17, v15, v6

    .line 1260
    sparse-switch v11, :sswitch_data_0

    .line 1256
    :cond_5
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1266
    :sswitch_0
    or-int/lit8 p2, p2, 0x1

    .line 1267
    goto :goto_2

    .line 1269
    :sswitch_1
    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->checkSettingEngineEnabled()Z

    move-result v15

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    if-nez v15, :cond_6

    .line 1270
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->enableAccINT()V

    .line 1274
    :goto_3
    or-int/lit8 p2, p2, 0x1

    .line 1275
    goto :goto_2

    .line 1272
    :cond_6
    const-string v15, "MotionRecognitionService"

    const-string v17, " smart alert is disabled by setting or ssp is activated : "

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1335
    .end local v6           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #motion_event:I
    :catchall_0
    move-exception v15

    :goto_4
    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v15

    .line 1277
    .restart local v6       #i:I
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v11       #motion_event:I
    :sswitch_2
    :try_start_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    if-nez v15, :cond_7

    .line 1278
    const/4 v14, 0x1

    .line 1279
    :cond_7
    move-object/from16 v0, p0

    iget v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    .line 1284
    :sswitch_3
    or-int/lit8 p2, p2, 0x3

    .line 1285
    move-object/from16 v0, p0

    iget v15, v0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    if-nez v15, :cond_8

    .line 1286
    const/4 v13, 0x1

    .line 1287
    :cond_8
    move-object/from16 v0, p0

    iget v15, v0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    goto :goto_2

    .line 1297
    :sswitch_4
    or-int/lit8 p2, p2, 0x3

    .line 1298
    goto :goto_2

    .line 1301
    :sswitch_5
    or-int/lit8 p2, p2, 0x7

    .line 1302
    goto :goto_2

    .line 1304
    :sswitch_6
    const/16 p2, 0x1f

    .line 1305
    goto :goto_2

    .line 1313
    .end local v11           #motion_event:I
    :cond_9
    new-instance v9, Landroid/hardware/motion/MotionRecognitionService$Listener;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/hardware/motion/MotionRecognitionService$Listener;-><init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/os/IBinder;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1314
    .end local v8           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .local v9, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    if-nez p1, :cond_10

    .line 1315
    :try_start_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1319
    :goto_5
    const-string v5, ""

    .line 1320
    .local v5, client:Ljava/lang/String;
    if-eqz p1, :cond_a

    .line 1321
    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v9, v15}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1324
    :try_start_3
    invoke-static/range {p1 .. p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v4

    .line 1325
    .local v4, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v4}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    .line 1329
    .end local v4           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :cond_a
    :goto_6
    :try_start_4
    const-string v15, "MotionRecognitionService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "  .registerCallback : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", motion_sensors="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", client="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v5}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/lang/Object;->notify()V

    .line 1331
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mIsFlat:Z

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_b

    .line 1332
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mPollThread:Landroid/hardware/motion/MotionRecognitionService$PollIntThread;

    iget-object v15, v15, Landroid/hardware/motion/MotionRecognitionService$PollIntThread;->mHandler:Landroid/os/Handler;

    const/16 v17, 0x2d

    const-wide/16 v18, 0x0

    move/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v15, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_b
    move-object v8, v9

    .line 1335
    .end local v5           #client:Ljava/lang/String;
    .end local v6           #i:I
    .end local v9           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v8       #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_c
    :try_start_5
    monitor-exit v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1339
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-nez v15, :cond_d

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mScreenOn:Z

    if-eqz v15, :cond_d

    invoke-direct/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->initializeMotionEngine()V

    .line 1340
    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/motion/MotionRecognitionService;->getUsedSensorForEvents()I

    move-result p2

    .line 1341
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_7
    const/4 v15, 0x4

    if-ge v6, v15, :cond_11

    .line 1342
    const/4 v15, 0x1

    shl-int v12, v15, v6

    .line 1343
    .local v12, motion_sensor:I
    and-int v15, v12, p2

    if-eqz v15, :cond_f

    .line 1344
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V

    .line 1345
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1346
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v15, :cond_e

    .line 1347
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v15}, Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V

    .line 1348
    :cond_e
    monitor-exit v16
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1341
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 1317
    .end local v8           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .end local v12           #motion_sensor:I
    .restart local v9       #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_10
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_5

    .line 1335
    :catchall_1
    move-exception v15

    move-object v8, v9

    .end local v9           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v8       #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    goto/16 :goto_4

    .line 1348
    .restart local v12       #motion_sensor:I
    :catchall_2
    move-exception v15

    :try_start_8
    monitor-exit v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v15

    .line 1352
    .end local v12           #motion_sensor:I
    :cond_11
    const/4 v15, 0x1

    if-ne v13, v15, :cond_12

    .line 1353
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v16, 0xc

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v15 .. v18}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    .line 1355
    :cond_12
    const/4 v15, 0x1

    if-ne v14, v15, :cond_1

    .line 1356
    const-string v15, "MotionRecognitionService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mrefSmartScroll : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    if-nez v15, :cond_13

    .line 1359
    invoke-static {}, Lcom/sec/android/smartface/SmartFaceManager;->getSmartFaceManager()Lcom/sec/android/smartface/SmartFaceManager;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    .line 1361
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v15, :cond_14

    .line 1362
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/motion/MotionRecognitionService;->mFaceInfoListener:Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/smartface/SmartFaceManager;->setListener(Lcom/sec/android/smartface/SmartFaceManager$SmartFaceInfoListener;)V

    .line 1367
    :cond_13
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mResolver:Landroid/content/ContentResolver;

    const-string v16, "smart_scroll"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_15

    .line 1368
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mIsDockingDevice:Z

    if-nez v15, :cond_1

    .line 1369
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    .line 1370
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    const/16 v16, 0x10

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/smartface/SmartFaceManager;->start(I)V

    .line 1371
    const-string v15, "MotionRecognitionService"

    const-string v16, "SERVICETYPE_MOTION start"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1364
    :cond_14
    const-string v15, "MotionRecognitionService"

    const-string v16, "can not connect the fd service"

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 1375
    :cond_15
    const-string v15, "MotionRecognitionService"

    const-string v16, "did not start smartscrool, setting is off : "

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1326
    .end local v8           #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    .restart local v5       #client:Ljava/lang/String;
    .restart local v9       #l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :catch_0
    move-exception v15

    goto/16 :goto_6

    .line 1260
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_3
        0x40 -> :sswitch_3
        0x80 -> :sswitch_4
        0x100 -> :sswitch_4
        0x200 -> :sswitch_4
        0x400 -> :sswitch_5
        0x800 -> :sswitch_5
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_0
        0x4000 -> :sswitch_4
        0x8000 -> :sswitch_0
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_0
        0x80000 -> :sswitch_2
        0xfffff -> :sswitch_6
    .end sparse-switch
.end method

.method public resetMotionEngine()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1515
    const-string v0, "MotionRecognitionService"

    const-string v1, "  .resetMotionEngine"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    .line 1517
    const/4 v0, -0x1

    .line 1518
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    move-result v0

    goto :goto_0
.end method

.method public sendMediaPlayButton()V
    .locals 13

    .prologue
    .line 402
    iget v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mPaused:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mQuickPanelOpend:Z

    if-nez v1, :cond_0

    .line 403
    const-string v1, "MotionRecognitionService"

    const-string v2, "sendMediaPlayButton : Send.."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 405
    .local v11, timestamp:J
    new-instance v0, Landroid/view/KeyEvent;

    const-wide/16 v1, 0xa

    sub-long v1, v11, v1

    const-wide/16 v3, 0xa

    sub-long v3, v11, v3

    const/4 v5, 0x0

    const/16 v6, 0x55

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/16 v10, 0xa4

    invoke-direct/range {v0 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 406
    .local v0, key_evt:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 407
    new-instance v0, Landroid/view/KeyEvent;

    .end local v0           #key_evt:Landroid/view/KeyEvent;
    const/4 v5, 0x1

    const/16 v6, 0x55

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/16 v10, 0xa4

    move-wide v1, v11

    move-wide v3, v11

    invoke-direct/range {v0 .. v10}, Landroid/view/KeyEvent;-><init>(JJIIIIII)V

    .line 408
    .restart local v0       #key_evt:Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 412
    .end local v0           #key_evt:Landroid/view/KeyEvent;
    .end local v11           #timestamp:J
    :goto_0
    return-void

    .line 410
    :cond_0
    const-string v1, "MotionRecognitionService"

    const-string v2, "sendMediaPlayButton : Skip.."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sensorLogEnd()V
    .locals 2

    .prologue
    .line 1616
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    monitor-enter v1

    .line 1617
    :try_start_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    .line 1618
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 1619
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    .line 1621
    :cond_0
    monitor-exit v1

    .line 1622
    return-void

    .line 1621
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method sensorLogStart()V
    .locals 8

    .prologue
    .line 1565
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    .line 1566
    const-string v3, "log.path.motion.sensor"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    .line 1568
    :cond_0
    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    .line 1592
    :cond_1
    :goto_0
    return-void

    .line 1572
    :cond_2
    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    monitor-enter v4

    .line 1573
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1575
    .local v2, logFile:Ljava/io/File;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    .line 1576
    .local v1, logDir:Ljava/io/File;
    if-eqz v1, :cond_4

    .line 1577
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 1578
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1fd

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v3, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1581
    :cond_4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 1582
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 1583
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x1b6

    const/4 v6, -0x1

    const/4 v7, -0x1

    invoke-static {v3, v5, v6, v7}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 1585
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    .line 1586
    const-string v3, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .sensorLogStart : started - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1591
    .end local v1           #logDir:Ljava/io/File;
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v2           #logFile:Ljava/io/File;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1587
    .restart local v2       #logFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1588
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v3, "MotionRecognitionService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  .sensorLogStart : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method sensorLogWrite()V
    .locals 11

    .prologue
    .line 1595
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 1596
    .local v3, time:J
    iget-wide v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    sub-long v1, v3, v5

    .line 1597
    .local v1, t:J
    const-wide/16 v5, 0x0

    cmp-long v5, v1, v5

    if-ltz v5, :cond_0

    const-wide/16 v5, 0x3e8

    cmp-long v5, v1, v5

    if-lez v5, :cond_1

    .line 1598
    :cond_0
    const-wide/16 v1, 0x0

    .line 1599
    :cond_1
    iput-wide v3, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogTime:J

    .line 1601
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    monitor-enter v6

    .line 1602
    :try_start_0
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    if-eqz v5, :cond_2

    .line 1603
    const-string v5, "%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%.6f\t%h\t%d\t%B\t%d\r\n"

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D

    const/4 v10, 0x1

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostAccelVal:[D

    const/4 v10, 0x2

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D

    const/4 v10, 0x0

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x4

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D

    const/4 v10, 0x1

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x5

    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostGyroVal:[D

    const/4 v10, 0x2

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x6

    iget-short v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostProxVal:S

    invoke-static {v9}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x7

    iget v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostLightVal:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x8

    iget-boolean v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mPostTouch:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v7, v8

    const/16 v8, 0x9

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1610
    .local v0, logStr:Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPW:Ljava/io/PrintWriter;

    invoke-virtual {v5, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1612
    .end local v0           #logStr:Ljava/lang/String;
    :cond_2
    monitor-exit v6

    .line 1613
    return-void

    .line 1612
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public setLogPath(Ljava/lang/String;)V
    .locals 3
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1556
    if-nez p1, :cond_0

    .line 1557
    const-string v0, ""

    iput-object v0, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    .line 1561
    :goto_0
    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  .setLogPath : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    return-void

    .line 1559
    :cond_0
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService;->mLogPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setMotionAngle(Landroid/os/IBinder;I)V
    .locals 10
    .parameter "binder"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1468
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v6, :cond_0

    .line 1495
    :goto_0
    return-void

    .line 1469
    :cond_0
    const/4 v4, 0x0

    .line 1471
    .local v4, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v7, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v7

    .line 1472
    :try_start_0
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 1473
    .local v5, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v6, v5, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v6, :cond_1

    .line 1474
    move-object v4, v5

    .line 1479
    .end local v5           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_2
    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1481
    .local v1, client:Ljava/lang/String;
    :try_start_1
    invoke-static {p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 1482
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 1486
    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :goto_1
    if-eqz v4, :cond_3

    .line 1487
    const/4 v6, 0x1

    :try_start_2
    new-array v2, v6, [I

    .line 1488
    .local v2, data:[I
    const/4 v6, 0x0

    aput p2, v2, v6

    .line 1489
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9, v2}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    .line 1490
    const-string v6, "MotionRecognitionService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  .setMotionAngle : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", client="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    .end local v2           #data:[I
    :cond_3
    iget-object v6, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    .line 1494
    monitor-exit v7

    goto :goto_0

    .end local v1           #client:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 1483
    .restart local v1       #client:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public setMotionTiltLevel(IIIIII)V
    .locals 6
    .parameter "stopUp"
    .parameter "level1Up"
    .parameter "level2Up"
    .parameter "stopDown"
    .parameter "level1Down"
    .parameter "level2Down"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x3

    .line 1498
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_0

    .line 1512
    :goto_0
    return-void

    .line 1501
    :cond_0
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " @ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    new-array v0, v5, [I

    .line 1503
    .local v0, data:[I
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1504
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1505
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1506
    aput p4, v0, v4

    .line 1507
    const/4 v1, 0x4

    aput p5, v0, v1

    .line 1508
    const/4 v1, 0x5

    aput p6, v0, v1

    .line 1510
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v4, v5, v0}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    .line 1511
    const-string v1, "MotionRecognitionService"

    const-string v2, "  .setMotionTiltLevel : 2"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterCallback(Landroid/os/IBinder;)V
    .locals 14
    .parameter "binder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    .line 1381
    const/4 v4, 0x0

    .line 1382
    .local v4, l:Landroid/hardware/motion/MotionRecognitionService$Listener;
    const-string v1, ""

    .line 1384
    .local v1, client:Ljava/lang/String;
    iget-object v9, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    monitor-enter v9

    .line 1385
    :try_start_0
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/motion/MotionRecognitionService$Listener;

    .line 1386
    .local v5, listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    iget-object v8, v5, Landroid/hardware/motion/MotionRecognitionService$Listener;->mToken:Landroid/os/IBinder;

    if-ne p1, v8, :cond_0

    .line 1387
    move-object v4, v5

    .line 1392
    .end local v5           #listener:Landroid/hardware/motion/MotionRecognitionService$Listener;
    :cond_1
    if-eqz v4, :cond_8

    .line 1394
    iget v8, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionEvents:I

    if-nez v8, :cond_2

    iget v8, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionSensors:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_2

    .line 1395
    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    .line 1396
    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    if-nez v8, :cond_2

    .line 1397
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0xd

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v11, v12}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    .line 1400
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v8, 0x14

    if-ge v2, v8, :cond_6

    .line 1401
    shl-int v6, v13, v2

    .line 1402
    .local v6, motion_event:I
    iget v8, v4, Landroid/hardware/motion/MotionRecognitionService$Listener;->mMotionEvents:I

    and-int/2addr v8, v6

    if-eqz v8, :cond_3

    .line 1403
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefCntEvents:[I

    aget v10, v8, v2

    add-int/lit8 v10, v10, -0x1

    aput v10, v8, v2

    .line 1404
    sparse-switch v6, :sswitch_data_0

    .line 1400
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1406
    :sswitch_0
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->checkSettingEngineEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->msspenabled:Z

    if-nez v8, :cond_4

    .line 1407
    const-string v8, "MotionRecognitionService"

    const-string v10, " disable reactive alert mode "

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-virtual {p0}, Landroid/hardware/motion/MotionRecognitionService;->disableAccINT()V

    .line 1409
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mFlatEvent:Z

    goto :goto_1

    .line 1458
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #motion_event:I
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1411
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #motion_event:I
    :cond_4
    :try_start_1
    const-string v8, "MotionRecognitionService"

    const-string v10, " smart alert is disabled by setting or ssp is activated : "

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1415
    :sswitch_1
    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    .line 1416
    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mrefSmartScroll:I

    if-nez v8, :cond_5

    .line 1417
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    if-ne v8, v13, :cond_5

    iget-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsDockingDevice:Z

    if-nez v8, :cond_5

    .line 1418
    const/4 v8, 0x0

    iput-boolean v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mIsrunningSmartFace:Z

    .line 1419
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mManagerForPause:Lcom/sec/android/smartface/SmartFaceManager;

    invoke-virtual {v8}, Lcom/sec/android/smartface/SmartFaceManager;->stop()V

    .line 1420
    const/4 v8, 0x0

    iput v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mOldFaceInfo:I

    .line 1421
    const/4 v8, 0x1

    new-array v7, v8, [I

    .line 1422
    .local v7, val:[I
    const/4 v8, 0x0

    const/4 v10, 0x0

    aput v10, v7, v8

    .line 1423
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0x10

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11, v7}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    .line 1424
    const-string v8, "MotionRecognitionService"

    const-string v10, "SERVICETYPE_MOTION stop"

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    .end local v7           #val:[I
    :cond_5
    :sswitch_2
    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    add-int/lit8 v8, v8, -0x1

    iput v8, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    .line 1431
    iget v8, p0, Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I

    if-nez v8, :cond_3

    .line 1432
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->sensorManager:Landroid/hardware/SensorManager;

    const/16 v10, 0xd

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v8, v10, v11, v12}, Landroid/hardware/SensorManager;->controlMotionSensor(II[I)I

    goto :goto_1

    .line 1441
    .end local v6           #motion_event:I
    :cond_6
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1443
    if-eqz p1, :cond_7

    .line 1444
    const/4 v8, 0x0

    invoke-interface {p1, v4, v8}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1446
    :try_start_2
    invoke-static {p1}, Landroid/hardware/motion/IMotionRecognitionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/motion/IMotionRecognitionCallback;

    move-result-object v0

    .line 1447
    .local v0, cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    invoke-interface {v0}, Landroid/hardware/motion/IMotionRecognitionCallback;->getListenerInfo()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v1

    .line 1451
    .end local v0           #cb:Landroid/hardware/motion/IMotionRecognitionCallback;
    :cond_7
    :goto_2
    :try_start_3
    const-string v8, "MotionRecognitionService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  .unregisterCallback : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", client="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionManager;->EncodeLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/lang/Object;->notify()V

    .line 1455
    .end local v2           #i:I
    :cond_8
    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->disableUnusedSensors()V

    .line 1457
    iget-object v8, p0, Landroid/hardware/motion/MotionRecognitionService;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_9

    invoke-direct {p0}, Landroid/hardware/motion/MotionRecognitionService;->finalizeMotionEngine()V

    .line 1458
    :cond_9
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1459
    return-void

    .line 1448
    .restart local v2       #i:I
    :catch_0
    move-exception v8

    goto :goto_2

    .line 1404
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x10 -> :sswitch_2
        0x20 -> :sswitch_2
        0x40 -> :sswitch_2
        0x80000 -> :sswitch_1
    .end sparse-switch
.end method

.method public useMotionAlways(Landroid/os/IBinder;Z)V
    .locals 0
    .parameter "binder"
    .parameter "bUseAlways"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1463
    return-void
.end method

.method public writeACCInt(I)V
    .locals 8
    .parameter "en"

    .prologue
    const/4 v7, 0x1

    .line 681
    iget-object v5, p0, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v5

    .line 682
    const/4 v2, 0x0

    .line 685
    .local v2, out:Ljava/io/OutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    const-string v6, "/sys/class/sensors/accelerometer_sensor/reactive_alert"

    invoke-direct {v4, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v2           #out:Ljava/io/OutputStream;
    .local v3, out:Ljava/io/OutputStream;
    move-object v2, v3

    .line 690
    .end local v3           #out:Ljava/io/OutputStream;
    .restart local v2       #out:Ljava/io/OutputStream;
    :goto_0
    if-nez v2, :cond_1

    .line 691
    :try_start_1
    const-string v4, "MotionRecognitionService"

    const-string v6, "Output file is null!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 710
    :goto_1
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 711
    return-void

    .line 686
    :catch_0
    move-exception v0

    .line 687
    .local v0, e:Ljava/io/FileNotFoundException;
    :try_start_3
    const-string v4, "MotionRecognitionService"

    const-string v6, "File not found!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 699
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 700
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 701
    if-eqz v2, :cond_0

    .line 703
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 708
    :cond_0
    :goto_2
    :try_start_6
    const-string v4, "MotionRecognitionService"

    const-string v6, "File write fail!!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 710
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    .line 694
    :cond_1
    if-nez p1, :cond_3

    const/16 v4, 0x30

    :try_start_7
    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write(I)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnableAccINT:Z

    .line 697
    :cond_2
    :goto_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 695
    :cond_3
    if-ne p1, v7, :cond_2

    const/16 v4, 0x31

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write(I)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/hardware/motion/MotionRecognitionService;->mEnableAccINT:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 704
    .restart local v0       #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 705
    .local v1, err:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2
.end method
