.class public Landroid/hardware/contextaware/ContextAwareManager;
.super Ljava/lang/Object;
.source "ContextAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field public static final ACCELEROMETER_SENSOR_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final APDR_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final AUTO_ROTATION_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final CALL_POSE_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final CMD_PROCESS_FAULT_DETECTION:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final CURRENT_STATUS_FOR_POSITIONING_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final DIRECT_CALL_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final FLIP_COVER_ACTION_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GESTURE_APPROACH_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GYROSCOPE_SENSOR_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final GYRO_TEMPERATURE_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOCATION_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_DEBUG:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_ERROR:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_INFO:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_TRACE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final LOG_LEVEL_WARN:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MAGNETIC_SENSOR_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MOTION_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MOVEMENT_FOR_POSITIONING_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MOVEMENT_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final MOVING_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final ORIENTATION_SENSOR_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final PEDOMETER_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final POWER_NOTI_SERVICE:I = 0x0

.field public static final PROPERTY_AUTOROTATION_DEVICETYPE:I = 0x8

.field public static final PROPERTY_ENVIRONMENT_SENSOR_INTERVAL:I = 0xd

.field public static final PROPERTY_LOCATION_ACCURACY:I = 0x1

.field public static final PROPERTY_LOCATION_HEIGHT:I = 0x3

.field public static final PROPERTY_LOCATION_WEIGHT:I = 0x2

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_DISTANCE:I = 0xc

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_DURATION:I = 0xa

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_MOVE_MIN_DURATION:I = 0xb

.field public static final PROPERTY_MOVEMENT_FOR_POSITIONING_NOMOVE_DURATION:I = 0x9

.field public static final PROPERTY_PEDOMETER_GENDER:I = 0x6

.field public static final PROPERTY_PEDOMETER_HEIGHT:I = 0x5

.field public static final PROPERTY_PEDOMETER_WEIGHT:I = 0x4

.field public static final PROPERTY_SHAKE_MOTION_DURATION:I = 0xf

.field public static final PROPERTY_SHAKE_MOTION_STRENGTH:I = 0xe

.field public static final PROPERTY_STEPCOUNTALERT_STEPCOUNT:I = 0x7

#the value of this static final field might be set in the static constructor
.field public static final PUT_DOWN_MOTION_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final RAW_BAROMETER_SENSOR_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final RAW_GPS_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final RAW_SATELLITE_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final RAW_TEMPERATURE_HUMIDITY_SENSOR_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final RAW_WPS_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final SHAKE_MOTION_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STEP_COUNT_ALERT_SERVICE:I = 0x0

#the value of this static final field might be set in the static constructor
.field public static final STOP_ALERT_SERVICE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CAE"

.field public static final TEMPERATURE_HUMIDITY_SERVICE:I


# instance fields
.field private final mCaListenerForTest:Landroid/hardware/contextaware/manager/ContextAwareListener;

.field private final mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_LOCATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOCATION_SERVICE:I

    .line 50
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_MOVING:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVING_SERVICE:I

    .line 54
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->TEMPERATURE_HUMIDITY_SERVICE:I

    .line 58
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->PEDOMETER_SERVICE:I

    .line 62
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_GPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->RAW_GPS_SERVICE:I

    .line 66
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_SATELLITE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->RAW_SATELLITE_SERVICE:I

    .line 70
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_RAW_WPS:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->RAW_WPS_SERVICE:I

    .line 74
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ACCELEROMETER_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->ACCELEROMETER_SENSOR_SERVICE:I

    .line 78
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_ORIENTATION_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->ORIENTATION_SENSOR_SERVICE:I

    .line 82
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_MAGNETIC_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->MAGNETIC_SENSOR_SERVICE:I

    .line 86
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_GYROSCOPE_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->GYROSCOPE_SENSOR_SERVICE:I

    .line 90
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GESTURE_APPROACH:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->GESTURE_APPROACH_SERVICE:I

    .line 94
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STEP_COUNT_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->STEP_COUNT_ALERT_SERVICE:I

    .line 98
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->MOTION_SERVICE:I

    .line 102
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_SERVICE:I

    .line 106
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_ROTATION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->AUTO_ROTATION_SERVICE:I

    .line 110
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_POWER_NOTI:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->POWER_NOTI_SERVICE:I

    .line 114
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->APDR_SERVICE:I

    .line 118
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_MOVEMENT_FOR_POSITIONING:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->MOVEMENT_FOR_POSITIONING_SERVICE:I

    .line 122
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CURRENT_STATUS_FOR_POSITIONING:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->CURRENT_STATUS_FOR_POSITIONING_SERVICE:I

    .line 126
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DIRECT_CALL:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->DIRECT_CALL_SERVICE:I

    .line 130
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_STOP_ALERT:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->STOP_ALERT_SERVICE:I

    .line 134
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_TEMPERATURE_HUMIDITY_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->RAW_TEMPERATURE_HUMIDITY_SENSOR_SERVICE:I

    .line 138
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->RAW_BAROMETER_SENSOR_SERVICE:I

    .line 142
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CALL_POSE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->CALL_POSE_SERVICE:I

    .line 146
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SHAKE_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->SHAKE_MOTION_SERVICE:I

    .line 150
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_FLIP_COVER_ACTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->FLIP_COVER_ACTION_SERVICE:I

    .line 154
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_GYRO_TEMPERATURE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->GYRO_TEMPERATURE_SERVICE:I

    .line 158
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PUT_DOWN_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->PUT_DOWN_MOTION_SERVICE:I

    .line 162
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->CMD_PROCESS_FAULT_DETECTION:I

    .line 211
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->TRACE:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_TRACE:I

    .line 214
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->DEBUG:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_DEBUG:I

    .line 217
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->INFO:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_INFO:I

    .line 220
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->WARN:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_WARN:I

    .line 223
    sget-object v0, Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;->ERROR:Landroid/hardware/contextaware/utilbundle/logger/CaLogger$Level;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Landroid/hardware/contextaware/ContextAwareManager;->LOG_LEVEL_ERROR:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .parameter "looper"

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 674
    new-instance v0, Landroid/hardware/contextaware/ContextAwareManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/ContextAwareManager$1;-><init>(Landroid/hardware/contextaware/ContextAwareManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCaListenerForTest:Landroid/hardware/contextaware/manager/ContextAwareListener;

    .line 241
    const-string v0, "context_aware"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/manager/IContextAwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/contextaware/manager/IContextAwareService;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    .line 244
    iput-object p1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;

    .line 245
    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/ContextAwareManager;)Landroid/os/Looper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/hardware/contextaware/ContextAwareManager;->mMainLooper:Landroid/os/Looper;

    return-object v0
.end method

.method private getListnerDelegate(Landroid/hardware/contextaware/manager/ContextAwareListener;)Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    .locals 4
    .parameter "listener"

    .prologue
    .line 316
    if-nez p1, :cond_1

    .line 317
    const/4 v0, 0x0

    .line 331
    :cond_0
    :goto_0
    return-object v0

    .line 320
    :cond_1
    const/4 v0, 0x0

    .line 322
    .local v0, caListener:Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    iget-object v3, p0, Landroid/hardware/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 323
    .local v2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

    .line 325
    .local v1, delegate:Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    invoke-virtual {v1}, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->getListener()Landroid/hardware/contextaware/manager/ContextAwareListener;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 326
    move-object v0, v1

    .line 327
    goto :goto_0
.end method

.method private setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)V
    .locals 2
    .parameter "service"
    .parameter "property"
    .parameter "propertyObj"

    .prologue
    .line 449
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/contextaware/manager/IContextAwareService;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :goto_0
    return-void

    .line 451
    :catch_0
    move-exception v0

    .line 452
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public final initializeAutoTest()V
    .locals 2

    .prologue
    .line 582
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Landroid/hardware/contextaware/manager/IContextAwareService;->initializeAutoTest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_0
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V
    .locals 4
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/ContextAwareManager;->getListnerDelegate(Landroid/hardware/contextaware/manager/ContextAwareListener;)Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 258
    .local v0, caListener:Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_0

    .line 259
    new-instance v0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

    .end local v0           #caListener:Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Landroid/hardware/contextaware/ContextAwareManager;Landroid/hardware/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V

    .line 260
    .restart local v0       #caListener:Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Landroid/hardware/contextaware/manager/IContextAwareService;->registerCallback(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v1

    .line 266
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "CAE"

    const-string v3, "RemoteException in registerListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public final resetCAService(I)V
    .locals 2
    .parameter "service"

    .prologue
    .line 464
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1}, Landroid/hardware/contextaware/manager/IContextAwareService;->resetCAService(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 468
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v0

    .line 466
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setCALogger(ZZIZ)V
    .locals 2
    .parameter "isConsole"
    .parameter "isFile"
    .parameter "level"
    .parameter "isCaller"

    .prologue
    .line 570
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/hardware/contextaware/manager/IContextAwareService;->setCALogger(ZZIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 575
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v0

    .line 573
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final setCAProperty(IID)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 414
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 415
    .local v0, propertyObj:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getDoubleTypeCode()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 416
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)V

    .line 417
    return-void
.end method

.method public final setCAProperty(IIF)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 397
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 398
    .local v0, propertyObj:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getFloatTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 399
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)V

    .line 400
    return-void
.end method

.method public final setCAProperty(III)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 363
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 364
    .local v0, propertyObj:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getIntegerTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 365
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)V

    .line 366
    return-void
.end method

.method public final setCAProperty(IIJ)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 380
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 381
    .local v0, propertyObj:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getLongTypeCode()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 382
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)V

    .line 383
    return-void
.end method

.method public final setCAProperty(IILjava/lang/String;)V
    .locals 2
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 431
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 432
    .local v0, propertyObj:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getStringTypeCode()I

    move-result v1

    invoke-virtual {v0, v1, p3}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 433
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)V

    .line 434
    return-void
.end method

.method public final setCAProperty(IIZ)V
    .locals 3
    .parameter "service"
    .parameter "property"
    .parameter "value"

    .prologue
    .line 346
    new-instance v0, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    invoke-direct {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;-><init>()V

    .line 347
    .local v0, propertyObj:Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getBooleanTypeCode()I

    move-result v1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->setValue(ILjava/lang/Object;)V

    .line 348
    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/ContextAwareManager;->setCAProperty(IILandroid/hardware/contextaware/manager/ContextAwarePropertyBundle;)V

    .line 349
    return-void
.end method

.method public final setScenarioForDebugging(IILjava/util/List;Ljava/util/List;)Z
    .locals 6
    .parameter "testType"
    .parameter "delayTime"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List",
            "<[B>;)Z"
        }
    .end annotation

    .prologue
    .line 647
    .local p3, enableService:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .local p4, packet:Ljava/util/List;,"Ljava/util/List<[B>;"
    const/4 v3, 0x1

    .line 649
    .local v3, result:Z
    if-eqz p3, :cond_0

    .line 650
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 651
    .local v1, i:I
    iget-object v4, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCaListenerForTest:Landroid/hardware/contextaware/manager/ContextAwareListener;

    invoke-virtual {p0, v4, v1}, Landroid/hardware/contextaware/ContextAwareManager;->registerListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    goto :goto_0

    .line 656
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_1
    :try_start_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 657
    iget-object v5, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-interface {v5, p1, p2, v4}, Landroid/hardware/contextaware/manager/IContextAwareService;->setScenarioForDebugging(II[B)Z

    move-result v3

    .line 659
    if-nez v3, :cond_2

    .line 660
    const-string v4, "CAE"

    const-string v5, "setScenarioForDebugging error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 661
    const/4 v3, 0x0

    .line 670
    :cond_1
    :goto_2
    return v3

    .line 656
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 667
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2
.end method

.method public final setScenarioForTest(II)Z
    .locals 3
    .parameter "testType"
    .parameter "delayTime"

    .prologue
    .line 621
    const/4 v1, 0x0

    .line 623
    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v2, p1, p2}, Landroid/hardware/contextaware/manager/IContextAwareService;->setScenarioForTest(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 628
    :goto_0
    return v1

    .line 625
    :catch_0
    move-exception v0

    .line 626
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final startAutoTest()V
    .locals 2

    .prologue
    .line 593
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Landroid/hardware/contextaware/manager/IContextAwareService;->startAutoTest()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :goto_0
    return-void

    .line 594
    :catch_0
    move-exception v0

    .line 595
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final stopAutoTest()V
    .locals 2

    .prologue
    .line 604
    :try_start_0
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v1}, Landroid/hardware/contextaware/manager/IContextAwareService;->stopAutoTest()V

    .line 605
    iget-object v1, p0, Landroid/hardware/contextaware/ContextAwareManager;->mCaListenerForTest:Landroid/hardware/contextaware/manager/ContextAwareListener;

    invoke-virtual {p0, v1}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    :goto_0
    return-void

    .line 606
    :catch_0
    move-exception v0

    .line 607
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public final unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 277
    invoke-static {}, Landroid/hardware/contextaware/ContextList$ContextType;->values()[Landroid/hardware/contextaware/ContextList$ContextType;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/contextaware/ContextList$ContextType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 278
    .local v1, i:Landroid/hardware/contextaware/ContextList$ContextType;
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/hardware/contextaware/ContextAwareManager;->unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 280
    .end local v1           #i:Landroid/hardware/contextaware/ContextList$ContextType;
    :cond_0
    return-void
.end method

.method public final unregisterListener(Landroid/hardware/contextaware/manager/ContextAwareListener;I)V
    .locals 4
    .parameter "listener"
    .parameter "service"

    .prologue
    .line 292
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/ContextAwareManager;->getListnerDelegate(Landroid/hardware/contextaware/manager/ContextAwareListener;)Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

    move-result-object v0

    .line 293
    .local v0, caListener:Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;
    if-nez v0, :cond_1

    .line 305
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager;->mContextAwareService:Landroid/hardware/contextaware/manager/IContextAwareService;

    invoke-interface {v2, v0, p2}, Landroid/hardware/contextaware/manager/IContextAwareService;->unregisterCallback(Landroid/os/IBinder;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 302
    :catch_0
    move-exception v1

    .line 303
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "CAE"

    const-string v3, "RemoteException in unregisterListener: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
