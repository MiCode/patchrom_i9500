.class final Lcom/android/server/DockObserver;
.super Landroid/os/UEventObserver;
.source "DockObserver.java"


# static fields
.field private static final ACCESSORY_CONNECTED:I = 0xff

.field private static final DOCKSTATE_PROPERTY:Ljava/lang/String; = "sys.dockstate"

.field private static final DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/dock/state"

.field private static final DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/dock"

.field private static final MSG_DOCK_STATE_CHANGED:I

.field private static final TAG:Ljava/lang/String;

.field private static mTone:Landroid/media/Ringtone;


# instance fields
.field private final VIBRATION_DURATION:I

.field private final mContext:Landroid/content/Context;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviousDockState:I

.field private mSmartDockState:I

.field private mSystemReady:Z

.field private mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/android/server/DockObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 67
    iput v1, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 68
    iput v1, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 71
    iput v1, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    .line 81
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/DockObserver;->VIBRATION_DURATION:I

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

    .line 322
    new-instance v0, Lcom/android/server/DockObserver$1;

    invoke-direct {v0, p0, v2}, Lcom/android/server/DockObserver$1;-><init>(Lcom/android/server/DockObserver;Z)V

    iput-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    .line 91
    iput-object p1, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    .line 94
    iget-object v0, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 96
    invoke-direct {p0}, Lcom/android/server/DockObserver;->init()V

    .line 97
    const-string v0, "DEVPATH=/devices/virtual/switch/dock"

    invoke-virtual {p0, v0}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DockObserver;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/DockObserver;->handleDockStateChange()V

    return-void
.end method

.method private handleDockStateChange()V
    .locals 13

    .prologue
    .line 206
    iget-object v10, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 209
    :try_start_0
    sget-object v9, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dock state changed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/DockObserver;->mDockState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", mSmartDockState: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v9, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 215
    .local v2, cr:Landroid/content/ContentResolver;
    const-string v9, "device_provisioned"

    const/4 v11, 0x0

    invoke-static {v2, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-nez v9, :cond_0

    .line 220
    iget v9, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/16 v11, 0x9

    if-eq v9, v11, :cond_0

    iget v9, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/16 v11, 0x9

    if-eq v9, v11, :cond_0

    .line 221
    sget-object v9, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v11, "Device not provisioned, skipping dock broadcast"

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    monitor-exit v10

    .line 320
    :goto_0
    return-void

    .line 228
    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-string v9, "android.intent.action.DOCK_EVENT"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 229
    .local v3, intent:Landroid/content/Intent;
    const/high16 v9, 0x2000

    invoke-virtual {v3, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 230
    const-string v9, "android.intent.extra.DOCK_STATE"

    iget v11, p0, Lcom/android/server/DockObserver;->mDockState:I

    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 232
    const-string v9, "android.intent.extra.SMART_DOCK_STATE"

    iget v11, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    invoke-virtual {v3, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 237
    const-string v9, "dock_sounds_enabled"

    const/4 v11, 0x1

    invoke-static {v2, v9, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const/4 v11, 0x1

    if-ne v9, v11, :cond_c

    .line 239
    const/4 v8, 0x0

    .line 240
    .local v8, whichSound:Ljava/lang/String;
    iget v9, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-nez v9, :cond_5

    .line 241
    iget v9, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/4 v11, 0x1

    if-eq v9, v11, :cond_1

    iget v9, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/4 v11, 0x3

    if-eq v9, v11, :cond_1

    iget v9, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/4 v11, 0x4

    if-eq v9, v11, :cond_1

    iget v9, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/16 v11, 0x9

    if-ne v9, v11, :cond_4

    .line 248
    :cond_1
    const-string v8, "desk_undock_sound"

    .line 267
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    const-string v11, "audio"

    invoke-virtual {v9, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 268
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 269
    .local v4, ringerMode:I
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v1

    .line 271
    .local v1, callMode:I
    sget-object v9, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "whichSound is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    if-eqz v8, :cond_3

    .line 275
    const/4 v9, 0x1

    if-ne v4, v9, :cond_8

    iget v9, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/16 v11, 0x9

    if-ne v9, v11, :cond_8

    .line 277
    new-instance v7, Landroid/os/SystemVibrator;

    invoke-direct {v7}, Landroid/os/SystemVibrator;-><init>()V

    .line 278
    .local v7, vibrator:Landroid/os/Vibrator;
    const-wide/16 v11, 0x3e8

    invoke-virtual {v7, v11, v12}, Landroid/os/SystemVibrator;->vibrate(J)V

    .line 315
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #callMode:I
    .end local v4           #ringerMode:I
    .end local v7           #vibrator:Landroid/os/Vibrator;
    .end local v8           #whichSound:Ljava/lang/String;
    :cond_3
    :goto_2
    iget-object v9, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v9, v3, v11}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 318
    iget-object v9, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v9}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 319
    monitor-exit v10

    goto/16 :goto_0

    .end local v2           #cr:Landroid/content/ContentResolver;
    .end local v3           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .line 249
    .restart local v2       #cr:Landroid/content/ContentResolver;
    .restart local v3       #intent:Landroid/content/Intent;
    .restart local v8       #whichSound:Ljava/lang/String;
    :cond_4
    :try_start_1
    iget v9, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_2

    .line 250
    const-string v8, "car_undock_sound"

    goto :goto_1

    .line 253
    :cond_5
    iget v9, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/4 v11, 0x1

    if-eq v9, v11, :cond_6

    iget v9, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/4 v11, 0x3

    if-eq v9, v11, :cond_6

    iget v9, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/4 v11, 0x4

    if-eq v9, v11, :cond_6

    iget v9, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/16 v11, 0x9

    if-ne v9, v11, :cond_7

    .line 260
    :cond_6
    const-string v8, "desk_dock_sound"

    goto :goto_1

    .line 261
    :cond_7
    iget v9, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_2

    .line 262
    const-string v8, "car_dock_sound"

    goto :goto_1

    .line 279
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #callMode:I
    .restart local v4       #ringerMode:I
    :cond_8
    if-eqz v1, :cond_9

    .line 281
    sget-object v9, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v11, "Not normal mode, don\'t play dock sound"

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 284
    :cond_9
    invoke-static {v2, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 285
    .local v5, soundPath:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 286
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "file://"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 287
    .local v6, soundUri:Landroid/net/Uri;
    if-eqz v6, :cond_3

    .line 288
    sget-object v9, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    if-eqz v9, :cond_b

    .line 289
    sget-object v9, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    invoke-virtual {v9}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 290
    sget-object v9, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    invoke-virtual {v9}, Landroid/media/Ringtone;->stop()V

    .line 292
    :cond_a
    const/4 v9, 0x0

    sput-object v9, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    .line 294
    :cond_b
    iget-object v9, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    invoke-static {v9, v6}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v9

    sput-object v9, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    .line 295
    sget-object v9, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    if-eqz v9, :cond_3

    .line 296
    sget-object v9, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    const/4 v11, 0x7

    invoke-virtual {v9, v11}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 297
    sget-object v9, Lcom/android/server/DockObserver;->mTone:Landroid/media/Ringtone;

    invoke-virtual {v9}, Landroid/media/Ringtone;->play()V

    goto/16 :goto_2

    .line 308
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #callMode:I
    .end local v4           #ringerMode:I
    .end local v5           #soundPath:Ljava/lang/String;
    .end local v6           #soundUri:Landroid/net/Uri;
    .end local v8           #whichSound:Ljava/lang/String;
    :cond_c
    sget-object v9, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v11, "DOCK_SOUNDS_ENALBED is not"

    invoke-static {v9, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2
.end method

.method private init()V
    .locals 7

    .prologue
    .line 165
    iget-object v5, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 167
    const/16 v4, 0x400

    :try_start_0
    new-array v0, v4, [C

    .line 168
    .local v0, buffer:[C
    new-instance v2, Ljava/io/FileReader;

    const-string v4, "/sys/class/switch/dock/state"

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 170
    .local v2, file:Ljava/io/FileReader;
    const/4 v4, 0x0

    const/16 v6, 0x400

    :try_start_1
    invoke-virtual {v2, v0, v4, v6}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v3

    .line 171
    .local v3, len:I
    new-instance v4, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v4, v0, v6, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 172
    iget v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 174
    iget v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    const/16 v6, 0x8

    if-ne v4, v6, :cond_0

    .line 175
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    .line 176
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v4, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 187
    .end local v0           #buffer:[C
    .end local v2           #file:Ljava/io/FileReader;
    .end local v3           #len:I
    :goto_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 188
    return-void

    .line 180
    .restart local v0       #buffer:[C
    .restart local v2       #file:Ljava/io/FileReader;
    :catchall_0
    move-exception v4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 182
    .end local v0           #buffer:[C
    .end local v2           #file:Ljava/io/FileReader;
    :catch_0
    move-exception v1

    .line 183
    .local v1, e:Ljava/io/FileNotFoundException;
    :try_start_5
    sget-object v4, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v6, "This kernel does not have dock station support"

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 187
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4

    .line 184
    :catch_1
    move-exception v1

    .line 185
    .local v1, e:Ljava/lang/Exception;
    :try_start_6
    sget-object v4, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method private updateLocked()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 202
    iget-object v0, p0, Lcom/android/server/DockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 203
    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/16 v6, 0xff

    const/4 v7, 0x7

    .line 104
    sget-object v3, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dock UEVENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v4, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 110
    :try_start_0
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 112
    .local v1, newState:I
    const/16 v3, 0x8

    if-ne v1, v3, :cond_1

    .line 113
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/DockObserver;->mSmartDockState:I

    .line 114
    const/4 v1, 0x1

    .line 120
    :goto_0
    if-eq v1, v6, :cond_0

    if-nez v1, :cond_3

    .line 121
    :cond_0
    const-string v3, "sys.dockstate"

    const-string v5, "SWITCH_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    if-ne v1, v6, :cond_3

    .line 123
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    .end local v1           #newState:I
    :goto_1
    return-void

    .line 116
    .restart local v1       #newState:I
    :cond_1
    const/4 v3, 0x0

    :try_start_2
    iput v3, p0, Lcom/android/server/DockObserver;->mSmartDockState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 158
    .end local v1           #newState:I
    :catch_0
    move-exception v0

    .line 159
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_3
    sget-object v3, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not parse switch state from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_2
    :goto_2
    monitor-exit v4

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 127
    .restart local v1       #newState:I
    :cond_3
    :try_start_4
    iget v3, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eq v1, v3, :cond_2

    .line 128
    iget v3, p0, Lcom/android/server/DockObserver;->mDockState:I

    iput v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 129
    iput v1, p0, Lcom/android/server/DockObserver;->mDockState:I

    .line 130
    iget-boolean v3, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    if-eqz v3, :cond_2

    .line 132
    iget-object v3, p0, Lcom/android/server/DockObserver;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 135
    iget v3, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-ne v3, v7, :cond_5

    .line 137
    iget-object v3, p0, Lcom/android/server/DockObserver;->mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_4

    .line 138
    iget-object v3, p0, Lcom/android/server/DockObserver;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 139
    .local v2, pmAudio:Landroid/os/PowerManager;
    const/4 v3, 0x6

    const-string v5, "AudioDockLock"

    invoke-virtual {v2, v3, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/DockObserver;->mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

    .line 141
    iget-object v3, p0, Lcom/android/server/DockObserver;->mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 142
    sget-object v3, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v5, "acquire wakelock for audiodock"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .end local v2           #pmAudio:Landroid/os/PowerManager;
    :cond_4
    :goto_3
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    goto :goto_2

    .line 145
    :cond_5
    iget v3, p0, Lcom/android/server/DockObserver;->mPreviousDockState:I

    if-ne v3, v7, :cond_4

    iget v3, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-nez v3, :cond_4

    .line 147
    iget-object v3, p0, Lcom/android/server/DockObserver;->mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_4

    .line 148
    iget-object v3, p0, Lcom/android/server/DockObserver;->mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 149
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/DockObserver;->mWakeAudioLock:Landroid/os/PowerManager$WakeLock;

    .line 150
    sget-object v3, Lcom/android/server/DockObserver;->TAG:Ljava/lang/String;

    const-string v5, "release wakelock for audiodock"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3
.end method

.method systemReady()V
    .locals 2

    .prologue
    .line 191
    iget-object v1, p0, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_0
    iget v0, p0, Lcom/android/server/DockObserver;->mDockState:I

    if-eqz v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/server/DockObserver;->updateLocked()V

    .line 196
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DockObserver;->mSystemReady:Z

    .line 197
    monitor-exit v1

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
