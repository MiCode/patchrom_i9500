.class public Lorg/codeaurora/Performance;
.super Ljava/lang/Object;
.source "Performance.java"


# static fields
.field public static final ALL_CPUS_FREQ_NONTURBO_MAX:I = 0x90a

.field public static final ALL_CPUS_FREQ_TURBO_MAX:I = 0x90f

.field public static final ALL_CPUS_PWR_CLPS_DIS:I = 0x100

.field public static final CPU0_FREQ_NONTURBO_MAX:I = 0x20a

.field public static final CPU0_FREQ_TURBO_MAX:I = 0x20f

.field public static final CPU1_FREQ_NONTURBO_MAX:I = 0x30a

.field public static final CPU1_FREQ_TURBO_MAX:I = 0x30f

.field public static final CPU2_FREQ_NONTURBO_MAX:I = 0x40a

.field public static final CPU2_FREQ_TURBO_MAX:I = 0x40f

.field public static final CPU3_FREQ_NONTURBO_MAX:I = 0x50a

.field public static final CPU3_FREQ_TURBO_MAX:I = 0x50f

.field public static final CPUOPT_CPU0_FREQMIN:I = 0x2

.field public static final CPUOPT_CPU0_PWRCLSP:I = 0x1

.field public static final CPUOPT_CPU1_FREQMIN:I = 0x3

.field public static final CPUS_ON_2:I = 0x702

.field public static final CPUS_ON_3:I = 0x703

.field public static final CPUS_ON_MAX:I = 0x704

.field public static final REQUEST_FAILED:I = -0x1

.field public static final REQUEST_SUCCEEDED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Perf"


# instance fields
.field private handle:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput v0, p0, Lorg/codeaurora/Performance;->handle:I

    .line 40
    return-void
.end method

.method private native native_cpu_setoptions(II)I
.end method

.method private native native_deinit()V
.end method

.method private native native_perf_lock_acq(II[I)I
.end method

.method private native native_perf_lock_rel(I)I
.end method


# virtual methods
.method public cpuSetOptions(II)I
    .locals 1
    .parameter "reqType"
    .parameter "reqValue"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lorg/codeaurora/Performance;->native_cpu_setoptions(II)I

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lorg/codeaurora/Performance;->native_deinit()V

    .line 111
    return-void
.end method

.method public varargs perfLockAcquire(I[I)I
    .locals 2
    .parameter "duration"
    .parameter "list"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, rc:I
    iget v1, p0, Lorg/codeaurora/Performance;->handle:I

    invoke-direct {p0, v1, p1, p2}, Lorg/codeaurora/Performance;->native_perf_lock_acq(II[I)I

    move-result v1

    iput v1, p0, Lorg/codeaurora/Performance;->handle:I

    .line 75
    iget v1, p0, Lorg/codeaurora/Performance;->handle:I

    if-nez v1, :cond_0

    .line 76
    const/4 v0, -0x1

    .line 77
    :cond_0
    return v0
.end method

.method public perfLockRelease()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lorg/codeaurora/Performance;->handle:I

    invoke-direct {p0, v0}, Lorg/codeaurora/Performance;->native_perf_lock_rel(I)I

    move-result v0

    return v0
.end method

.method public setCpuBoost()V
    .locals 4

    .prologue
    .line 87
    const/4 v2, 0x4

    new-array v1, v2, [I

    .line 88
    .local v1, configPerfLock:[I
    const/16 v0, 0x7d0

    .line 90
    .local v0, DURATION_OF_PERFLOCK:I
    const/4 v2, 0x0

    const/16 v3, 0x100

    aput v3, v1, v2

    .line 91
    const/4 v2, 0x1

    const/16 v3, 0x704

    aput v3, v1, v2

    .line 92
    const/4 v2, 0x2

    const/16 v3, 0x20f

    aput v3, v1, v2

    .line 93
    const/4 v2, 0x3

    const/16 v3, 0x30f

    aput v3, v1, v2

    .line 95
    const/16 v2, 0x7d0

    invoke-virtual {p0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    .line 96
    return-void
.end method
