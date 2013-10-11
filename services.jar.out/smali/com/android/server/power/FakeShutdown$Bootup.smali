.class Lcom/android/server/power/FakeShutdown$Bootup;
.super Ljava/lang/Thread;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FakeShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Bootup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/FakeShutdown;


# direct methods
.method private constructor <init>(Lcom/android/server/power/FakeShutdown;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/FakeShutdown$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 257
    invoke-direct {p0, p1}, Lcom/android/server/power/FakeShutdown$Bootup;-><init>(Lcom/android/server/power/FakeShutdown;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v10, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 260
    const-string v8, "FakeShutdown"

    const-string v9, "!@beginFastboot FAKE_STATE = UP_START"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$400(Lcom/android/server/power/FakeShutdown;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 262
    const/4 v8, 0x3

    :try_start_0
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$502(I)I

    .line 263
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    const-string v8, "FakeShutdown"

    const-string v9, "!@call powermanager wakep()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const-string v8, "power"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v7

    .line 269
    .local v7, powerManagerService:Landroid/os/IPowerManager;
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-interface {v7, v8, v9}, Landroid/os/IPowerManager;->wakeUp(J)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 274
    :goto_0
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    iget-object v9, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v9}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;

    move-result-object v9

    #setter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v8, v9}, Lcom/android/server/power/FakeShutdown;->access$602(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog;

    .line 281
    invoke-static {v12}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    .line 282
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    const/16 v9, 0x1f4

    #calls: Lcom/android/server/power/FakeShutdown;->vibrate(IZ)V
    invoke-static {v8, v9, v11}, Lcom/android/server/power/FakeShutdown;->access$700(Lcom/android/server/power/FakeShutdown;IZ)V

    .line 283
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->autoPowerOffObserver:Landroid/os/UEventObserver;
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$800(Lcom/android/server/power/FakeShutdown;)Landroid/os/UEventObserver;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UEventObserver;->stopObserving()V

    .line 285
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #calls: Lcom/android/server/power/FakeShutdown;->lauchCamera()Z
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$900(Lcom/android/server/power/FakeShutdown;)Z

    move-result v4

    .line 287
    .local v4, cameraMode:Z
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$1000()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "airplane_mode_on"

    invoke-static {v8, v9, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 290
    .local v0, airplaneMode:I
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$1100(Lcom/android/server/power/FakeShutdown;)I

    move-result v8

    if-eq v0, v8, :cond_0

    .line 291
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    iget-object v9, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v9}, Lcom/android/server/power/FakeShutdown;->access$1100(Lcom/android/server/power/FakeShutdown;)I

    move-result v9

    #calls: Lcom/android/server/power/FakeShutdown;->changeAirplaneMode(I)V
    invoke-static {v8, v9}, Lcom/android/server/power/FakeShutdown;->access$1200(Lcom/android/server/power/FakeShutdown;I)V

    .line 292
    :cond_0
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #setter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v8, v10}, Lcom/android/server/power/FakeShutdown;->access$1102(Lcom/android/server/power/FakeShutdown;I)I

    .line 293
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$1000()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "oldAirplaneMode"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 298
    const-string v8, "bluetooth_manager"

    invoke-static {v8}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    .line 300
    .local v3, bluetooth:Landroid/bluetooth/IBluetoothManager;
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$1000()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "bluetooth_on"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    #setter for: Lcom/android/server/power/FakeShutdown;->bluetoothOn:I
    invoke-static {v8, v9}, Lcom/android/server/power/FakeShutdown;->access$1302(Lcom/android/server/power/FakeShutdown;I)I

    .line 303
    :try_start_2
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->bluetoothOn:I
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$1300(Lcom/android/server/power/FakeShutdown;)I

    move-result v8

    if-ne v8, v12, :cond_1

    .line 304
    const-string v8, "FakeShutdown"

    const-string v9, "!@ [p9p9] bluetooth.enable();"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->enable()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 314
    :cond_1
    :goto_1
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$400(Lcom/android/server/power/FakeShutdown;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 315
    const/4 v8, 0x5

    :try_start_3
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$502(I)I

    .line 316
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 318
    if-eqz v4, :cond_2

    .line 319
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #calls: Lcom/android/server/power/FakeShutdown;->waitForCamera()V
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$1400(Lcom/android/server/power/FakeShutdown;)V

    .line 322
    :cond_2
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;

    move-result-object v8

    if-nez v8, :cond_3

    .line 323
    const-string v8, "FakeShutdown"

    const-string v9, "anim dialog not exist"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :goto_2
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->releaseWakeLocks()V

    .line 331
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$1000()Landroid/content/Context;

    move-result-object v8

    const-string v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 333
    .local v2, audioManager:Landroid/media/AudioManager;
    const-string v8, "shutdown"

    const-string v9, "0"

    invoke-virtual {v2, v8, v9}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :try_start_4
    const-string v8, "alarm"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v1

    .line 339
    .local v1, alarmManager:Landroid/app/IAlarmManager;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {v1, v8, v9}, Landroid/app/IAlarmManager;->shutdownTimeAfterFakeOff(ZI)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 344
    .end local v1           #alarmManager:Landroid/app/IAlarmManager;
    :goto_3
    const-string v8, "FakeShutdown"

    const-string v9, "!@FAKE_STATE = NOTHING"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$400(Lcom/android/server/power/FakeShutdown;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 346
    const/4 v8, 0x0

    :try_start_5
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$502(I)I

    .line 347
    const-string v8, "sys.fakeShutdown.state"

    const-string v10, "power_on"

    invoke-static {v8, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 350
    invoke-static {v11}, Lcom/android/server/power/ShutdownThread;->setInputKeysDisable(Z)V

    .line 352
    invoke-static {v13}, Lcom/android/server/power/FakeShutdown;->access$1502(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/FakeShutdown;

    .line 353
    invoke-static {v13}, Lcom/android/server/power/FakeShutdown;->access$1002(Landroid/content/Context;)Landroid/content/Context;

    .line 354
    return-void

    .line 263
    .end local v0           #airplaneMode:I
    .end local v2           #audioManager:Landroid/media/AudioManager;
    .end local v3           #bluetooth:Landroid/bluetooth/IBluetoothManager;
    .end local v4           #cameraMode:Z
    .end local v7           #powerManagerService:Landroid/os/IPowerManager;
    :catchall_0
    move-exception v8

    :try_start_6
    monitor-exit v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v8

    .line 270
    .restart local v7       #powerManagerService:Landroid/os/IPowerManager;
    :catch_0
    move-exception v5

    .line 271
    .local v5, e:Landroid/os/RemoteException;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 307
    .end local v5           #e:Landroid/os/RemoteException;
    .restart local v0       #airplaneMode:I
    .restart local v3       #bluetooth:Landroid/bluetooth/IBluetoothManager;
    .restart local v4       #cameraMode:Z
    :catch_1
    move-exception v6

    .line 308
    .local v6, ex:Landroid/os/RemoteException;
    const-string v8, "FakeShutdown"

    const-string v9, "!@RemoteException during bluetooth enable"

    invoke-static {v8, v9, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 316
    .end local v6           #ex:Landroid/os/RemoteException;
    :catchall_1
    move-exception v8

    :try_start_7
    monitor-exit v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v8

    .line 325
    :cond_3
    const-string v8, "FakeShutdown"

    const-string v9, "!@anim dlg cancel"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v8, p0, Lcom/android/server/power/FakeShutdown$Bootup;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v8}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Dialog;->cancel()V

    goto :goto_2

    .line 340
    .restart local v2       #audioManager:Landroid/media/AudioManager;
    :catch_2
    move-exception v5

    .line 341
    .restart local v5       #e:Landroid/os/RemoteException;
    const-string v8, "FakeShutdown"

    const-string v9, "!@is service dead?"

    invoke-static {v8, v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 348
    .end local v5           #e:Landroid/os/RemoteException;
    :catchall_2
    move-exception v8

    :try_start_8
    monitor-exit v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v8
.end method
