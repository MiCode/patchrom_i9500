.class public Landroid/hardware/contextaware/utilbundle/CaAlarmManager;
.super Ljava/lang/Object;
.source "CaAlarmManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/utilbundle/CaAlarmManager;


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/utilbundle/CaAlarmManager;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->instance:Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    if-nez v0, :cond_1

    .line 41
    const-class v1, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->instance:Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->instance:Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->instance:Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final getCurrentHour()I
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 102
    .local v0, localCalendar:Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final getCurrentMinute()I
    .locals 2

    .prologue
    .line 111
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 112
    .local v0, localCalendar:Ljava/util/Calendar;
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final getCurrentSecond()I
    .locals 2

    .prologue
    .line 121
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 122
    .local v0, localCalendar:Ljava/util/Calendar;
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 59
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    .line 61
    return-void
.end method

.method public final terminateManager()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    .line 72
    return-void
.end method

.method public final vibrateAlarm(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 81
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "mVibrator is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 93
    :goto_0
    return-void

    .line 86
    :cond_0
    if-eqz p1, :cond_1

    .line 87
    const-string v0, "vibrate alarm"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    goto :goto_0

    .line 90
    :cond_1
    const-string v0, "vibrate Cancel"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method
