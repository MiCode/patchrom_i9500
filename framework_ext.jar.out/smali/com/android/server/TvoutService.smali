.class public Lcom/android/server/TvoutService;
.super Landroid/os/ITvoutService$Stub;
.source "TvoutService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/TvoutService$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ALLSHARE_CAST_EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final ALLSHARE_CAST_GETSTATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field public static final ANDROID_HDMI_SET_FORCE_MIRROR_MODE:Ljava/lang/String; = "samsung.intent.action.ANDROID_HDMI_SET_FORCE_MIRROR_MODE"

.field public static final ANDROID_HDMI_START_VFB:Ljava/lang/String; = "samsung.intent.action.ANDROID_HDMI_START_VFB"

.field public static final ANDROID_HDMI_STOP_VFB:Ljava/lang/String; = "samsung.intent.action.ANDROID_HDMI_STOP_VFB"

.field private static final CameraFrontStart:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

.field private static final CameraPosition:Ljava/lang/String; = "CameraPosition"

.field private static final CameraRearStart:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

.field private static final CameraStop:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_STOP_CAMERA"

.field public static final EXTRA_IS_FORCE_MIRROR:Ljava/lang/String; = "isForceMirror"

.field private static final LOG:Z = true

.field private static final PresentationStateInfo:Ljava/lang/String; = "android.app.presentation.ACTION_START_PRESENTATION_STATE"

.field private static final RemoteViewFinder:Ljava/lang/String; = "com.samsung.android.app.camera.RVF"

.field private static final SCREENRECORDER_NOTIFY_EVENT:Ljava/lang/String; = "android.intent.action.SCREENRECORDER_INFORMATION"

.field private static final SCREENRECORDER_STOP_EVENT:Ljava/lang/String; = "android.intent.action.SCREENRECORDER_HDMI"

.field private static final TAG:Ljava/lang/String; = "TvoutService_Java"


# instance fields
.field private ALLSHARE_CAST_CONNECT:Z

.field private CAMERA_FRONT_ON:Z

.field private CAMERA_ON:Z

.field private CAMERA_POSITION:I

.field private CAMERA_REAR_ON:Z

.field private HDMI_CONNECT:Z

.field private HOME_THEATER_CONNECTED:Z

.field private PRESENTATION_RUNNING:I

.field private RVF_CONNECT:Z

.field private SCREENRECORDER_STATE:Z

.field private SMART_DOCK_CONNECT:Z

.field private mContext:Landroid/content/Context;

.field private mDreamsEnabledByDefaultConfig:Z

.field private mDreamsEnabledSetting:Z

.field private mHDMIObserver:Landroid/os/UEventObserver;

.field private final mHTHandler:Landroid/os/Handler;

.field private mHandler:Landroid/os/Handler;

.field private mHandler1:Landroid/os/Handler;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lcom/android/server/TvoutService$SettingsObserver;

.field private mTvout:Landroid/hardware/Tvout;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private newOrientation:I

.field private sCameraConnect:J

.field private sTransform:J

.field private setOrientation:I

.field private vfbReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 187
    invoke-direct {p0}, Landroid/os/ITvoutService$Stub;-><init>()V

    .line 84
    iput-boolean v0, p0, Lcom/android/server/TvoutService;->HOME_THEATER_CONNECTED:Z

    .line 85
    iput-object v1, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 86
    iput-object v1, p0, Lcom/android/server/TvoutService;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 87
    iput-wide v2, p0, Lcom/android/server/TvoutService;->sCameraConnect:J

    .line 88
    iput-wide v2, p0, Lcom/android/server/TvoutService;->sTransform:J

    .line 91
    iput-boolean v0, p0, Lcom/android/server/TvoutService;->CAMERA_ON:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/server/TvoutService;->CAMERA_FRONT_ON:Z

    .line 93
    iput-boolean v0, p0, Lcom/android/server/TvoutService;->CAMERA_REAR_ON:Z

    .line 94
    iput v0, p0, Lcom/android/server/TvoutService;->newOrientation:I

    .line 95
    iput v0, p0, Lcom/android/server/TvoutService;->setOrientation:I

    .line 96
    iput v0, p0, Lcom/android/server/TvoutService;->CAMERA_POSITION:I

    .line 97
    iput-boolean v0, p0, Lcom/android/server/TvoutService;->HDMI_CONNECT:Z

    .line 98
    iput-boolean v0, p0, Lcom/android/server/TvoutService;->RVF_CONNECT:Z

    .line 99
    iput v0, p0, Lcom/android/server/TvoutService;->PRESENTATION_RUNNING:I

    .line 100
    iput-boolean v0, p0, Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z

    .line 136
    new-instance v0, Lcom/android/server/TvoutService$1;

    invoke-direct {v0, p0}, Lcom/android/server/TvoutService$1;-><init>(Lcom/android/server/TvoutService;)V

    iput-object v0, p0, Lcom/android/server/TvoutService;->mHandler:Landroid/os/Handler;

    .line 150
    new-instance v0, Lcom/android/server/TvoutService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TvoutService$2;-><init>(Lcom/android/server/TvoutService;)V

    iput-object v0, p0, Lcom/android/server/TvoutService;->mHTHandler:Landroid/os/Handler;

    .line 162
    new-instance v0, Lcom/android/server/TvoutService$3;

    invoke-direct {v0, p0}, Lcom/android/server/TvoutService$3;-><init>(Lcom/android/server/TvoutService;)V

    iput-object v0, p0, Lcom/android/server/TvoutService;->mHandler1:Landroid/os/Handler;

    .line 179
    new-instance v0, Lcom/android/server/TvoutService$4;

    invoke-direct {v0, p0}, Lcom/android/server/TvoutService$4;-><init>(Lcom/android/server/TvoutService;)V

    iput-object v0, p0, Lcom/android/server/TvoutService;->mHDMIObserver:Landroid/os/UEventObserver;

    .line 412
    new-instance v0, Lcom/android/server/TvoutService$6;

    invoke-direct {v0, p0}, Lcom/android/server/TvoutService$6;-><init>(Lcom/android/server/TvoutService;)V

    iput-object v0, p0, Lcom/android/server/TvoutService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1015
    new-instance v0, Lcom/android/server/TvoutService$8;

    invoke-direct {v0, p0}, Lcom/android/server/TvoutService$8;-><init>(Lcom/android/server/TvoutService;)V

    iput-object v0, p0, Lcom/android/server/TvoutService;->vfbReceiver:Landroid/content/BroadcastReceiver;

    .line 189
    const-string v0, "TvoutService_Java"

    const-string v1, "TvoutService +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Landroid/hardware/Tvout;

    invoke-direct {v0}, Landroid/hardware/Tvout;-><init>()V

    iput-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    .line 192
    iput-object p1, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    .line 193
    iget-object v0, p0, Lcom/android/server/TvoutService;->mHDMIObserver:Landroid/os/UEventObserver;

    const-string v1, "DEVPATH=/devices/virtual/switch/mhl_event_switch"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 194
    invoke-direct {p0}, Lcom/android/server/TvoutService;->TvoutRegistIntentReceiver()V

    .line 195
    iget-object v0, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lcom/android/server/TvoutService;->TvoutInitWakeMode(Landroid/content/Context;I)V

    .line 212
    iget-object v0, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/TvoutService;->setOrientationListener(Landroid/content/Context;)V

    .line 218
    const-string v0, "TvoutService_Java"

    const-string v1, "TvoutService -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    return-void
.end method

.method private TvoutInitWakeMode(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "nMode"

    .prologue
    .line 249
    const/4 v1, 0x0

    .line 250
    .local v1, wakelockHeld:Z
    iget-object v2, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_1

    .line 253
    const-string v2, "TvoutService_Java"

    const-string v3, "mWakeLock is not null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v2, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 256
    const/4 v1, 0x1

    .line 257
    iget-object v2, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 259
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 263
    :cond_1
    const-string v2, "TvoutService_Java"

    const-string v3, "TvoutInitWakeMode is called"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 266
    .local v0, pm:Landroid/os/PowerManager;
    const/high16 v2, 0x2000

    or-int/2addr v2, p2

    const-string v3, "TvoutService_Java"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 269
    const-string v2, "TvoutService_Java"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TvoutInitWakeMode set the mode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v2, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 273
    if-eqz v1, :cond_2

    .line 275
    iget-object v2, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 277
    :cond_2
    return-void
.end method

.method private TvoutRegistIntentReceiver()V
    .locals 4

    .prologue
    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 226
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 227
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 228
    const-string v2, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 229
    const-string v2, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 230
    const-string v2, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 231
    const-string v2, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 232
    const-string v2, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const-string v2, "android.intent.action.SCREENRECORDER_INFORMATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 234
    const-string v2, "com.samsung.android.app.camera.RVF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 235
    const-string v2, "android.app.presentation.ACTION_START_PRESENTATION_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 237
    iget-object v2, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/TvoutService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 240
    .local v1, vfbFilter:Landroid/content/IntentFilter;
    const-string v2, "samsung.intent.action.ANDROID_HDMI_START_VFB"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 241
    const-string v2, "samsung.intent.action.ANDROID_HDMI_STOP_VFB"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 242
    const-string v2, "samsung.intent.action.ANDROID_HDMI_SET_FORCE_MIRROR_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/TvoutService;->vfbReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 245
    return-void
.end method

.method private TvoutSetOrientationMode(Z)V
    .locals 1
    .parameter "bMode"

    .prologue
    .line 400
    if-eqz p1, :cond_1

    .line 402
    iget-object v0, p0, Lcom/android/server/TvoutService;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/server/TvoutService;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/server/TvoutService;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/android/server/TvoutService;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    goto :goto_0
.end method

.method private TvoutSetWakeLock(Z)V
    .locals 2
    .parameter "bStatus"

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    .line 292
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    const-string v0, "TvoutService_Java"

    const-string v1, "Acquire the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 310
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    const-string v0, "TvoutService_Java"

    const-string v1, "release the lock for Wake status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/server/TvoutService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 308
    :cond_2
    const-string v0, "TvoutService_Java"

    const-string v1, "mWakeLock is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/TvoutService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/TvoutService;->TvoutSetWakeLock(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/TvoutService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/TvoutService;->TvoutSetOrientationMode(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/TvoutService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/server/TvoutService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/TvoutService;->SCREENRECORDER_STATE:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/TvoutService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/TvoutService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/TvoutService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/TvoutService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/TvoutService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/TvoutService;->SMART_DOCK_CONNECT:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/server/TvoutService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/server/TvoutService;->sCameraConnect:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/server/TvoutService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/android/server/TvoutService;->sCameraConnect:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/server/TvoutService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/TvoutService;->CAMERA_REAR_ON:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/TvoutService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/TvoutService;->CAMERA_REAR_ON:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/TvoutService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/server/TvoutService;->setOrientation:I

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/TvoutService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/server/TvoutService;->setOrientation:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/TvoutService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/TvoutService;->CAMERA_FRONT_ON:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/TvoutService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/TvoutService;->CAMERA_FRONT_ON:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/TvoutService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/TvoutService;->HOME_THEATER_CONNECTED:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/TvoutService;)Landroid/hardware/Tvout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/TvoutService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/server/TvoutService;->CAMERA_POSITION:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/TvoutService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/TvoutService;->mDreamsEnabledByDefaultConfig:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/TvoutService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/TvoutService;->mDreamsEnabledByDefaultConfig:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/TvoutService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/server/TvoutService;->CAMERA_POSITION:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/TvoutService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/TvoutService;->mDreamsEnabledSetting:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/TvoutService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/TvoutService;->mDreamsEnabledSetting:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/TvoutService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/server/TvoutService;->newOrientation:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/TvoutService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/server/TvoutService;->newOrientation:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/TvoutService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/server/TvoutService;->sTransform:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/android/server/TvoutService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/android/server/TvoutService;->sTransform:J

    return-wide p1
.end method

.method static synthetic access$500(Lcom/android/server/TvoutService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/TvoutService;->CAMERA_ON:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/TvoutService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/TvoutService;->CAMERA_ON:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/TvoutService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/TvoutService;->HDMI_CONNECT:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/TvoutService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/TvoutService;->HDMI_CONNECT:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/TvoutService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/TvoutService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/TvoutService;->ALLSHARE_CAST_CONNECT:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/TvoutService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/server/TvoutService;->RVF_CONNECT:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/TvoutService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/android/server/TvoutService;->RVF_CONNECT:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/TvoutService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/android/server/TvoutService;->PRESENTATION_RUNNING:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/TvoutService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/android/server/TvoutService;->PRESENTATION_RUNNING:I

    return p1
.end method

.method private setOrientationListener(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/TvoutService;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    .line 316
    new-instance v0, Lcom/android/server/TvoutService$5;

    invoke-direct {v0, p0, p1}, Lcom/android/server/TvoutService$5;-><init>(Lcom/android/server/TvoutService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/TvoutService;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 393
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/TvoutService;->CAMERA_ON:Z

    if-nez v0, :cond_1

    .line 394
    const-string v0, "persist.sys.camera.transform"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/server/TvoutService;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 396
    return-void
.end method


# virtual methods
.method public IsExternalSupport3D()Z
    .locals 1

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->IsExternalSupport3D()Z

    move-result v0

    return v0
.end method

.method public SetExternal3DMode(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->SetExternal3DMode(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutCreateSmartDockSurface()Z
    .locals 1

    .prologue
    .line 998
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutCreateSmartDockSurface()Z

    move-result v0

    return v0
.end method

.method public TvoutDestroySmartDockSurface()Z
    .locals 1

    .prologue
    .line 1003
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutDestroySmartDockSurface()Z

    move-result v0

    return v0
.end method

.method public TvoutGetAudioChannel()I
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutGetAudioChannel()I

    move-result v0

    return v0
.end method

.method public TvoutGetCableStatus()Z
    .locals 1

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutGetCableStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutGetResolution()I
    .locals 1

    .prologue
    .line 862
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutGetResolution()I

    move-result v0

    return v0
.end method

.method public TvoutGetSmartDockSurfaceStatus()I
    .locals 1

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutGetSmartDockSurfaceStatus()I

    move-result v0

    return v0
.end method

.method public TvoutGetStatus()Z
    .locals 1

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutGetStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutGetSubtitleStatus()Z
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutGetSubtitleStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutGetSuspendStatus()Z
    .locals 1

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutGetSuspendStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutGetVideoMode()I
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutGetVideoMode()I

    move-result v0

    return v0
.end method

.method public TvoutGetVideoRotation()I
    .locals 1

    .prologue
    .line 945
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0}, Landroid/hardware/Tvout;->TvoutGetVideoRotation()I

    move-result v0

    return v0
.end method

.method public TvoutPostSubtitle(Ljava/lang/String;I)Z
    .locals 1
    .parameter "strSubtitle"
    .parameter "nFontSize"

    .prologue
    .line 892
    if-nez p1, :cond_0

    .line 893
    const/4 v0, 0x0

    .line 894
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Tvout;->TvoutPostSubtitle(Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0
.end method

.method public TvoutPostSuspend(Ljava/lang/String;)Z
    .locals 1
    .parameter "strSuspend"

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutPostSuspend(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public TvoutPostSuspendWithFontSize(Ljava/lang/String;I)Z
    .locals 1
    .parameter "strSuspend"
    .parameter "nFontSize"

    .prologue
    .line 914
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Tvout;->TvoutPostSuspendWithFontSize(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public TvoutRegisterEVF(Z)I
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutRegisterEVF(Z)I

    move-result v0

    return v0
.end method

.method public TvoutSetCableStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 852
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetCableStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetDefaultString()Z
    .locals 4

    .prologue
    .line 937
    const-string v0, "HDMI not available while application is running. Application will display on phone only"

    .line 939
    .local v0, strDefault:Ljava/lang/String;
    const-string v1, "TvoutService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TvoutSetDefaultString : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    iget-object v1, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v1, v0}, Landroid/hardware/Tvout;->TvoutSetDefaultString(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public TvoutSetEVFStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 924
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetEVFStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetForceMirrorMode(Z)Z
    .locals 1
    .parameter "bEnable"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetForceMirrorMode(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetFrontCameraRotation(I)Z
    .locals 1
    .parameter "nVideoRotation"

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetFrontCameraRotation(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetGpuLock(Ljava/lang/String;I)Z
    .locals 1
    .parameter "filePath"
    .parameter "value"

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1, p2}, Landroid/hardware/Tvout;->TvoutSetGpuLock(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetOrientation(I)Z
    .locals 1
    .parameter "nOrientation"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetOrientation(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetOutputMode(I)Z
    .locals 1
    .parameter "nOutputMode"

    .prologue
    .line 867
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetOutputMode(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetPause(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetPause(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetRearCameraRotation(I)Z
    .locals 1
    .parameter "nVideoRotation"

    .prologue
    .line 955
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetRearCameraRotation(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetResolution(I)Z
    .locals 1
    .parameter "nResolution"

    .prologue
    .line 857
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetResolution(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetSubtitleStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 887
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetSubtitleStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetSuspendStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetSuspendStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetVideoMode(I)Z
    .locals 1
    .parameter "videomode"

    .prologue
    .line 993
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetVideoMode(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetVideoRotation(I)Z
    .locals 1
    .parameter "nVideoRotation"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetVideoRotation(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetWFDStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    .line 980
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutSetWFDStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutTeminateWFD()Z
    .locals 3

    .prologue
    .line 826
    const-string v1, "TvoutService_Java"

    const-string v2, "WFD is running, send intent to terminate"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WIFI_DISPLAY_REQ"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 828
    .local v0, resSetActionIntent:Landroid/content/Intent;
    const-string v1, "Control"

    const-string v2, "terminate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    iget-object v1, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 831
    const/4 v1, 0x1

    return v1
.end method

.method public TvoutToast(I)V
    .locals 8
    .parameter "nIndex"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 756
    if-ne p1, v7, :cond_1

    .line 758
    iget-object v3, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    const v4, 0x104064e

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 762
    .local v0, strDefault:Ljava/lang/String;
    const-string v3, "TvoutService_Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TvoutToast : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    iget-object v3, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 807
    .end local v0           #strDefault:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 765
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    .line 767
    iget-object v3, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    const v4, 0x104064f

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 770
    .restart local v0       #strDefault:Ljava/lang/String;
    const-string v3, "TvoutService_Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TvoutToast : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    iget-object v3, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 773
    .end local v0           #strDefault:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 775
    iget-object v3, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    const v4, 0x1040650

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 778
    .restart local v0       #strDefault:Ljava/lang/String;
    const-string v3, "TvoutService_Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TvoutToast : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    iget-object v3, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 781
    .end local v0           #strDefault:Ljava/lang/String;
    :cond_3
    const/4 v3, 0x4

    if-ne p1, v3, :cond_4

    .line 783
    iget-object v3, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    const v4, 0x1040651

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 786
    .restart local v0       #strDefault:Ljava/lang/String;
    const-string v3, "TvoutService_Java"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TvoutToast : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    iget-object v3, p0, Lcom/android/server/TvoutService;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 788
    .local v2, test:Landroid/widget/Toast;
    invoke-virtual {v2, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 789
    iput-boolean v7, p0, Lcom/android/server/TvoutService;->HOME_THEATER_CONNECTED:Z

    .line 790
    new-instance v1, Lcom/android/server/TvoutService$7;

    invoke-direct {v1, p0, v2}, Lcom/android/server/TvoutService$7;-><init>(Lcom/android/server/TvoutService;Landroid/widget/Toast;)V

    .line 799
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 801
    .end local v0           #strDefault:Ljava/lang/String;
    .end local v1           #t:Ljava/lang/Thread;
    .end local v2           #test:Landroid/widget/Toast;
    :cond_4
    const/4 v3, 0x5

    if-ne p1, v3, :cond_0

    .line 803
    iput-boolean v6, p0, Lcom/android/server/TvoutService;->HOME_THEATER_CONNECTED:Z

    goto/16 :goto_0
.end method

.method public TvoutVideoPlayingStatus(Z)Z
    .locals 1
    .parameter "status"

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/server/TvoutService;->mTvout:Landroid/hardware/Tvout;

    invoke-virtual {v0, p1}, Landroid/hardware/Tvout;->TvoutVideoPlayingStatus(Z)Z

    move-result v0

    return v0
.end method

.method setTheaterPlugged(Z)V
    .locals 5
    .parameter "plugged"

    .prologue
    const/4 v4, 0x1

    .line 810
    const-string v1, "TvoutService_Java"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Event received as  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 812
    .local v0, msg:Landroid/os/Message;
    if-ne p1, v4, :cond_0

    .line 814
    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 815
    iget-object v1, p0, Lcom/android/server/TvoutService;->mHTHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 823
    :goto_0
    return-void

    .line 820
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 821
    iget-object v1, p0, Lcom/android/server/TvoutService;->mHTHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
