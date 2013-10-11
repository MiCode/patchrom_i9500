.class public Landroid/hardware/contextaware/utilbundle/CaPowerManager;
.super Ljava/lang/Object;
.source "CaPowerManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/IApPowerObservable;
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;


# instance fields
.field private mAPWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/IApPowerObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 103
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaPowerManager$1;-><init>(Landroid/hardware/contextaware/utilbundle/CaPowerManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/utilbundle/CaPowerManager;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->sendApStatusToSensorHub(I)V

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/utilbundle/CaPowerManager;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    if-nez v0, :cond_1

    .line 54
    const-class v1, Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    monitor-enter v1

    .line 55
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    .line 58
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    return-object v0

    .line 58
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendApStatusToSensorHub(I)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 153
    const/4 v1, 0x2

    new-array v0, v1, [B

    .line 154
    .local v0, dataPacket:[B
    int-to-byte v1, p1

    aput-byte v1, v0, v2

    .line 155
    const/4 v1, 0x1

    aput-byte v2, v0, v1

    .line 157
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v1

    const/16 v2, -0x4c

    const/16 v3, 0xd

    invoke-virtual {v1, v2, v3, v0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub(BB[B)I

    .line 160
    return-void
.end method


# virtual methods
.method public final acquireAPWakeLock()V
    .locals 3

    .prologue
    .line 166
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 167
    const-string v1, "mContext is null"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 174
    .local v0, pm:Landroid/os/PowerManager;
    if-nez v0, :cond_1

    .line 175
    const-string v1, "pm is null"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    const-string v1, "WakeLock is already held."

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_2
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 186
    const/4 v1, 0x1

    const-string v2, "CA_WAKELOCK"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 189
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 72
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, apSleepIntent:Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-direct {v1, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, apWakeupIntent:Landroid/content/IntentFilter;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 80
    .local v2, powConnectedIntent:Landroid/content/IntentFilter;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    .local v3, powDisconnectedIntent:Landroid/content/IntentFilter;
    iget-object v4, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 84
    iget-object v4, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 85
    iget-object v4, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 86
    iget-object v4, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 87
    return-void
.end method

.method public final isScreenOn()Z
    .locals 3

    .prologue
    .line 259
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    .line 260
    const-string v1, "mContext is null"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 261
    const/4 v0, 0x0

    .line 273
    :goto_0
    return v0

    .line 264
    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .line 267
    .local v0, result:Z
    if-eqz v0, :cond_1

    .line 268
    const-string v1, "Screen On."

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_1
    const-string v1, "Screen Off."

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final notifyApPowerObserver(IJ)V
    .locals 3
    .parameter "status"
    .parameter "timeStamp"

    .prologue
    .line 243
    iget-object v2, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 244
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/contextaware/manager/IApPowerObserver;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 245
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/IApPowerObserver;

    .line 246
    .local v1, observer:Landroid/hardware/contextaware/manager/IApPowerObserver;
    if-eqz v1, :cond_0

    .line 247
    invoke-interface {v1}, Landroid/hardware/contextaware/manager/IApPowerObserver;->initializePreparedSubCollection()V

    .line 248
    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/contextaware/manager/IApPowerObserver;->updateApPowerStatus(IJ)V

    goto :goto_0

    .line 251
    .end local v1           #observer:Landroid/hardware/contextaware/manager/IApPowerObserver;
    :cond_1
    return-void
.end method

.method public final registerApPowerObserver(Landroid/hardware/contextaware/manager/IApPowerObserver;)V
    .locals 1
    .parameter "obaerver"

    .prologue
    .line 216
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    :cond_0
    return-void
.end method

.method public final releaseAPWakeLock()V
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    :cond_0
    const-string v0, "WakeLock is not held."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 203
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 204
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method

.method public final terminateManager()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 100
    :cond_0
    return-void
.end method

.method public final unregisterApPowerObserver(Landroid/hardware/contextaware/manager/IApPowerObserver;)V
    .locals 1
    .parameter "obaerver"

    .prologue
    .line 230
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 233
    :cond_0
    return-void
.end method
