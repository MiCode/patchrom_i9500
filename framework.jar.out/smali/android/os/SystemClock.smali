.class public final Landroid/os/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method private static native _setCurrentTimeMillis(J)Z
.end method

.method public static native currentThreadTimeMicro()J
.end method

.method public static native currentThreadTimeMillis()J
.end method

.method public static native currentTimeMicro()J
.end method

.method public static native elapsedRealtime()J
.end method

.method public static native elapsedRealtimeNanos()J
.end method

.method private static isEDMDateTimePolicyEnabled()Z
    .locals 4

    .prologue
    .line 142
    const/4 v1, 0x1

    .line 143
    .local v1, dateTimePolicyEnabled:Z
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/16 v3, 0x4e1f

    if-gt v2, v3, :cond_0

    .line 145
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getDateTimePolicy()Landroid/sec/enterprise/DateTimePolicy;

    move-result-object v0

    .line 146
    .local v0, dateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;
    invoke-virtual {v0}, Landroid/sec/enterprise/DateTimePolicy;->isDateTimeChangeEnabled()Z

    move-result v1

    .line 148
    .end local v0           #dateTimePolicy:Landroid/sec/enterprise/DateTimePolicy;
    :cond_0
    return v1
.end method

.method public static setCurrentTimeMillis(J)Z
    .locals 1
    .parameter "millis"

    .prologue
    .line 153
    invoke-static {}, Landroid/os/SystemClock;->isEDMDateTimePolicyEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Landroid/os/SystemClock;->_setCurrentTimeMillis(J)Z

    move-result v0

    goto :goto_0
.end method

.method public static sleep(J)V
    .locals 10
    .parameter "ms"

    .prologue
    .line 113
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 114
    .local v4, start:J
    move-wide v0, p0

    .line 115
    .local v0, duration:J
    const/4 v3, 0x0

    .line 118
    .local v3, interrupted:Z
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    add-long v6, v4, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 124
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-gtz v6, :cond_0

    .line 126
    if-eqz v3, :cond_1

    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 132
    :cond_1
    return-void

    .line 120
    :catch_0
    move-exception v2

    .line 121
    .local v2, e:Ljava/lang/InterruptedException;
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static native uptimeMillis()J
.end method
