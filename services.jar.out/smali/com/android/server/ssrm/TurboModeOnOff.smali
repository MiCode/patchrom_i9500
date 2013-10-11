.class public Lcom/android/server/ssrm/TurboModeOnOff;
.super Lcom/android/server/ssrm/FgAppListener;
.source "TurboModeOnOff.java"


# static fields
.field private static final BASE_MODEL:Ljava/lang/String; = "ja"

.field private static final FUSION_8064_TURBO_MODE_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/ondemand/enable_turbo_mode"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private mIsForeground:Z

.field private mLastTurboMode:Z

.field private mListScrollBoost:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "TurboModeOnOff"

    sput-object v0, Lcom/android/server/ssrm/TurboModeOnOff;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Lcom/android/server/ssrm/FgAppListener;-><init>()V

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mLastTurboMode:Z

    .line 58
    iput-boolean v1, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mIsForeground:Z

    .line 65
    iput-boolean v1, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mListScrollBoost:Z

    .line 22
    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 23
    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 24
    const-string v0, "com.samsung.everglades.video"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private calculateCurrentMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 47
    iget-boolean v1, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mIsForeground:Z

    if-eqz v1, :cond_1

    .line 53
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mListScrollBoost:Z

    if-nez v1, :cond_0

    .line 53
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private updateTurboMode()V
    .locals 4

    .prologue
    .line 30
    const-string v1, "jf"

    const-string v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 34
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ssrm/TurboModeOnOff;->calculateCurrentMode()Z

    move-result v0

    .line 35
    .local v0, newTurboMode:Z
    iget-boolean v1, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mLastTurboMode:Z

    if-eq v1, v0, :cond_0

    .line 36
    iput-boolean v0, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mLastTurboMode:Z

    .line 37
    if-eqz v0, :cond_2

    .line 38
    sget-object v1, Lcom/android/server/ssrm/TurboModeOnOff;->TAG:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/enable_turbo_mode"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/TurboModeOnOff;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 40
    :cond_2
    sget-object v1, Lcom/android/server/ssrm/TurboModeOnOff;->TAG:Ljava/lang/String;

    const-string v2, "/sys/devices/system/cpu/cpufreq/ondemand/enable_turbo_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/ssrm/TurboModeOnOff;->fileIntToSysfs(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onFgAppInPackageList(Z)V
    .locals 0
    .parameter "isForeground"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mIsForeground:Z

    .line 62
    invoke-direct {p0}, Lcom/android/server/ssrm/TurboModeOnOff;->updateTurboMode()V

    .line 63
    return-void
.end method

.method public declared-synchronized onListScrollBoost(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 67
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/ssrm/TurboModeOnOff;->mListScrollBoost:Z

    .line 68
    invoke-direct {p0}, Lcom/android/server/ssrm/TurboModeOnOff;->updateTurboMode()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
