.class public Lcom/android/server/power/ShutdownThreadFeature;
.super Ljava/lang/Thread;
.source "ShutdownThreadFeature.java"


# static fields
.field protected static LedOffValue:I = 0x0

.field protected static LedOnValue:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ShutdownThread"

.field private static WiFiOff:Z


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x6

    .line 47
    sput v0, Lcom/android/server/power/ShutdownThreadFeature;->LedOnValue:I

    .line 48
    sput v0, Lcom/android/server/power/ShutdownThreadFeature;->LedOffValue:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "TAG"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static SituationVolume(Landroid/media/AudioManager;Landroid/media/MediaPlayer;)V
    .locals 2
    .parameter "audioManager"
    .parameter "mp"

    .prologue
    .line 68
    const-string v0, "ShutdownThread"

    const-string v1, "situation volume"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/server/power/ShutdownThreadFeature;->WiFiOff:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-boolean p0, Lcom/android/server/power/ShutdownThreadFeature;->WiFiOff:Z

    return p0
.end method

.method public static shutdownProperties()V
    .locals 2

    .prologue
    .line 60
    const-string v0, "ShutdownThread"

    const-string v1, "!@sys.deviceOffReq = 1"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v0, "sys.deviceOffReq"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string v0, "sys.radio.shutdown"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 295
    return-void
.end method

.method protected shutdownRadios(ILandroid/content/Context;Z)V
    .locals 11
    .parameter "timeout"
    .parameter "con"
    .parameter "reboot"

    .prologue
    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    int-to-long v9, p1

    add-long v3, v7, v9

    .line 75
    .local v3, endTime:J
    const/4 v1, 0x1

    new-array v5, v1, [Z

    .line 76
    .local v5, done:[Z
    const/16 v6, 0x1f4

    .line 77
    .local v6, PHONE_STATE_POLL_SLEEP_MSEC:I
    iput-object p2, p0, Lcom/android/server/power/ShutdownThreadFeature;->mContext:Landroid/content/Context;

    .line 78
    iget-object v1, p0, Lcom/android/server/power/ShutdownThreadFeature;->mContext:Landroid/content/Context;

    const-string v7, "wifi"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 79
    .local v2, mWifiManager:Landroid/net/wifi/WifiManager;
    new-instance v0, Lcom/android/server/power/ShutdownThreadFeature$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/power/ShutdownThreadFeature$1;-><init>(Lcom/android/server/power/ShutdownThreadFeature;Landroid/net/wifi/WifiManager;J[Z)V

    .line 282
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 284
    int-to-long v7, p1

    :try_start_0
    invoke-virtual {v0, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    :goto_0
    const/4 v1, 0x0

    aget-boolean v1, v5, v1

    if-nez v1, :cond_0

    .line 288
    const-string v1, "ShutdownThread"

    const-string v7, "Timed out waiting for NFC, Radio and Bluetooth shutdown."

    invoke-static {v1, v7}, Lcom/android/server/power/ShutdownThread$Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    return-void

    .line 285
    :catch_0
    move-exception v1

    goto :goto_0
.end method
