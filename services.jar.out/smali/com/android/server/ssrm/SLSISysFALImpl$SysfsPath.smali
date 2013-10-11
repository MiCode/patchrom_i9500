.class public Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;
.super Ljava/lang/Object;
.source "SLSISysFALImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/SLSISysFALImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SysfsPath"
.end annotation


# instance fields
.field public BUS_DEFAULT_FREQUENCY:I

.field public BUS_MAX_PATH:Ljava/lang/String;

.field public BUS_MIN_PATH:Ljava/lang/String;

.field public BUS_TABLE_PATH:Ljava/lang/String;

.field public CPU_CORE_MAX_PATH:Ljava/lang/String;

.field public CPU_CORE_MIN_PATH:Ljava/lang/String;

.field public CPU_CORE_TABLE_PATH:Ljava/lang/String;

.field public CPU_DEFAULT_CORE:I

.field public GPU_DEFAULT_FREQUENCY:I

.field public GPU_MAX_PATH:Ljava/lang/String;

.field public GPU_MIN_PATH:Ljava/lang/String;

.field public GPU_TABLE_PATH:Ljava/lang/String;

.field public LCD_FRAME_RATE_DEFAULT:I

.field public LCD_FRAME_RATE_PATH:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/SLSISysFALImpl$PlatformType;)V
    .locals 3
    .parameter "mPlatformType"

    .prologue
    const/4 v2, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 46
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_DEFAULT_FREQUENCY:I

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 49
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 51
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 54
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 59
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_DEFAULT_FREQUENCY:I

    .line 62
    sget-object v0, Lcom/android/server/ssrm/SLSISysFALImpl$1;->$SwitchMap$com$android$server$ssrm$SLSISysFALImpl$PlatformType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 64
    :pswitch_0
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_min_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 65
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_max_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 66
    const-string v0, "/sys/devices/platform/pvrsrvkm.0/sgx_dvfs_table"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 67
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_DEFAULT_FREQUENCY:I

    .line 68
    const-string v0, "/sys/class/graphics/fb0/lcdfreq/level"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 69
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 70
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 72
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 73
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 74
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 75
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/max_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 76
    const-string v0, "/sys/class/devfreq/exynos5-busfreq-mif/freq_table"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 77
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_DEFAULT_FREQUENCY:I

    goto :goto_0

    .line 80
    :pswitch_1
    const-string v0, "/sys/power/gpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 83
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_DEFAULT_FREQUENCY:I

    .line 84
    const-string v0, "/sys/class/graphics/fb0/lcdfreq/level"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 85
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 86
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/min_cpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 87
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/max_cpu_lock"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 88
    const-string v0, "/sys/devices/system/cpu/cpufreq/pegasusq/cpucore_table"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 89
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 90
    const-string v0, "/sys/devices/system/cpu/busfreq/min_freq"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 93
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_DEFAULT_FREQUENCY:I

    goto :goto_0

    .line 96
    :pswitch_2
    const-string v0, "/sys/class/kgsl/kgsl-3d0/min_pwrlevel"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 97
    const-string v0, "/sys/class/kgsl/kgsl-3d0/max_pwrlevel"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 98
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    .line 99
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->GPU_DEFAULT_FREQUENCY:I

    .line 100
    const-string v0, "/sys/class/lcd/panel/fps_change"

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->LCD_FRAME_RATE_PATH:Ljava/lang/String;

    .line 101
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->LCD_FRAME_RATE_DEFAULT:I

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_MIN_PATH:Ljava/lang/String;

    .line 103
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_MAX_PATH:Ljava/lang/String;

    .line 104
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    .line 105
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->CPU_DEFAULT_CORE:I

    .line 106
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 108
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_TABLE_PATH:Ljava/lang/String;

    .line 109
    iput v2, p0, Lcom/android/server/ssrm/SLSISysFALImpl$SysfsPath;->BUS_DEFAULT_FREQUENCY:I

    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
