.class Lcom/android/server/power/FakeShutdown$Shutdown;
.super Ljava/lang/Thread;
.source "FakeShutdown.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/FakeShutdown;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Shutdown"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/FakeShutdown;


# direct methods
.method private constructor <init>(Lcom/android/server/power/FakeShutdown;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/FakeShutdown$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 358
    invoke-direct {p0, p1}, Lcom/android/server/power/FakeShutdown$Shutdown;-><init>(Lcom/android/server/power/FakeShutdown;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 361
    const-string v0, "FakeShutdown"

    const-string v1, "!@beginFakeShutdown, FAKE_STATE = DOWN_START"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->sFakeStateGuard:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$400(Lcom/android/server/power/FakeShutdown;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 363
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$502(I)I

    .line 364
    const-string v0, "sys.fakeShutdown.state"

    const-string v2, "power_off"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    #calls: Lcom/android/server/power/FakeShutdown;->prepareAutoPowerOffSound()V
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$1600(Lcom/android/server/power/FakeShutdown;)V

    .line 368
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    iget-object v1, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v1}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;

    move-result-object v1

    #calls: Lcom/android/server/power/FakeShutdown;->waitForAnimStart(Lcom/android/server/power/ShutdownDialog;)V
    invoke-static {v0, v1}, Lcom/android/server/power/FakeShutdown;->access$1700(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/ShutdownDialog;)V

    .line 369
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    #calls: Lcom/android/server/power/FakeShutdown;->killAllActivities()V
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$1800(Lcom/android/server/power/FakeShutdown;)V

    .line 372
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$1000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/server/power/FakeShutdown;->bluetoothOn:I
    invoke-static {v0, v1}, Lcom/android/server/power/FakeShutdown;->access$1302(Lcom/android/server/power/FakeShutdown;I)I

    .line 377
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$1000()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    #setter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v0, v1}, Lcom/android/server/power/FakeShutdown;->access$1102(Lcom/android/server/power/FakeShutdown;I)I

    .line 380
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$1000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oldAirplaneMode"

    iget-object v2, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$1100(Lcom/android/server/power/FakeShutdown;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 382
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$1100(Lcom/android/server/power/FakeShutdown;)I

    move-result v0

    if-eq v0, v3, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    #calls: Lcom/android/server/power/FakeShutdown;->changeAirplaneMode(I)V
    invoke-static {v0, v3}, Lcom/android/server/power/FakeShutdown;->access$1200(Lcom/android/server/power/FakeShutdown;I)V

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->bluetoothOn:I
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$1300(Lcom/android/server/power/FakeShutdown;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 388
    const-string v0, "FakeShutdown"

    const-string v1, "!@ [p9p9] Settings.Secure.putInt - BLUETOOTH_ON 1"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$1000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_on"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    iget-object v1, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->dlgAnimation:Lcom/android/server/power/ShutdownDialog;
    invoke-static {v1}, Lcom/android/server/power/FakeShutdown;->access$600(Lcom/android/server/power/FakeShutdown;)Lcom/android/server/power/ShutdownDialog;

    move-result-object v1

    #calls: Lcom/android/server/power/FakeShutdown;->waitForAnimEnd(Lcom/android/server/power/ShutdownDialog;)V
    invoke-static {v0, v1}, Lcom/android/server/power/FakeShutdown;->access$1900(Lcom/android/server/power/FakeShutdown;Lcom/android/server/power/ShutdownDialog;)V

    .line 396
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$1000()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->updateBatteryState(Landroid/content/Context;)V

    .line 398
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    const/16 v1, 0xa

    #calls: Lcom/android/server/power/FakeShutdown;->waitForPhoneOff(I)V
    invoke-static {v0, v1}, Lcom/android/server/power/FakeShutdown;->access$2000(Lcom/android/server/power/FakeShutdown;I)V

    .line 399
    invoke-static {}, Lcom/android/server/power/FakeShutdown;->access$1000()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    iget-object v2, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    #getter for: Lcom/android/server/power/FakeShutdown;->oldAirplaneMode:I
    invoke-static {v2}, Lcom/android/server/power/FakeShutdown;->access$1100(Lcom/android/server/power/FakeShutdown;)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 401
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    #calls: Lcom/android/server/power/FakeShutdown;->resetShutdownThread()V
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$2100(Lcom/android/server/power/FakeShutdown;)V

    .line 402
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    #calls: Lcom/android/server/power/FakeShutdown;->playAutoPowerOffSound()V
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$2200(Lcom/android/server/power/FakeShutdown;)V

    .line 404
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    const/16 v1, 0x1f4

    #calls: Lcom/android/server/power/FakeShutdown;->vibrate(IZ)V
    invoke-static {v0, v1, v3}, Lcom/android/server/power/FakeShutdown;->access$700(Lcom/android/server/power/FakeShutdown;IZ)V

    .line 405
    iget-object v0, p0, Lcom/android/server/power/FakeShutdown$Shutdown;->this$0:Lcom/android/server/power/FakeShutdown;

    #calls: Lcom/android/server/power/FakeShutdown;->gotoSleepMode()V
    invoke-static {v0}, Lcom/android/server/power/FakeShutdown;->access$2300(Lcom/android/server/power/FakeShutdown;)V

    .line 407
    const-string v0, "FakeShutdown"

    const-string v1, "!@shutdown finished"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void

    .line 365
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
