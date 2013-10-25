.class public Lcom/android/server/ssrm/DvfsUpThreshold;
.super Lcom/android/server/ssrm/FgAppListener;
.source "DvfsUpThreshold.java"


# static fields
.field private static final BASE_MODEL:Ljava/lang/String; = "ja"

.field private static final DVFS_UT_DEFAULT:I = 0x5a

.field private static final DVFS_UT_MAX:I = 0x63

.field private static final DVFS_UT_SYSFS_PATH:Ljava/lang/String; = "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_h"

.field private static TAG:Ljava/lang/String;

.field private static isFullScreenMode:Z

.field private static isJaUpthresholdAppFg:Z

.field private static mCurrentUpThreshold:I

.field private static mUpThresholdExceptionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBrowserBenchmarkOn:Z

.field private mFullScreenGPUMaxHelper:Landroid/os/DVFSHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    const-string v0, "DvfsUpThreshold"

    sput-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->TAG:Ljava/lang/String;

    .line 21
    sput-boolean v1, Lcom/android/server/ssrm/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    .line 22
    sput-boolean v1, Lcom/android/server/ssrm/DvfsUpThreshold;->isFullScreenMode:Z

    .line 25
    const/16 v0, 0x5a

    sput v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mCurrentUpThreshold:I

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/server/ssrm/FgAppListener;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/DvfsUpThreshold;->mFullScreenGPUMaxHelper:Landroid/os/DVFSHelper;

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/DvfsUpThreshold;->mBrowserBenchmarkOn:Z

    .line 30
    const-string v0, "com.alphacloud.castlemaster"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 31
    const-string v0, "com.sec.android.app.sbrowser"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 32
    const-string v0, "com.android.chrome"

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/FgAppListener;->addPackage(Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "Gallery"

    const-string v2, "com.sec.android.gallery3d"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "VideoPlayer"

    const-string v2, "com.samsung.everglades.video"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "Video(hidden)"

    const-string v2, "com.sec.android.app.videoplayer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "Camera"

    const-string v2, "com.sec.android.app.camera"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "QuadrantS"

    const-string v2, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "QuadrantA"

    const-string v2, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "QuadrantP"

    const-string v2, "com.aurorasoftworks.quadrant.ui.professional"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "Antutu"

    const-string v2, "com.antutu.ABenchMark"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "Antutu3D"

    const-string v2, "com.antutu.ABenchMark:remote"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "GLBench25"

    const-string v2, "com.glbenchmark.glbenchmark25"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    const-string v1, "GLBench21"

    const-string v2, "com.glbenchmark.glbenchmark21"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    return-void
.end method


# virtual methods
.method protected calculateCurrentThreshold()I
    .locals 5

    .prologue
    const/16 v2, 0x63

    const/16 v1, 0x5a

    .line 137
    const-string v3, "com.sec.android.app.sbrowser"

    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.chrome"

    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/ssrm/DvfsUpThreshold;->mBrowserBenchmarkOn:Z

    if-eqz v3, :cond_2

    .line 155
    :cond_1
    :goto_0
    return v1

    .line 143
    :cond_2
    sget-boolean v3, Lcom/android/server/ssrm/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    if-eqz v3, :cond_3

    move v1, v2

    .line 144
    goto :goto_0

    .line 147
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, fgPackageName:Ljava/lang/String;
    sget-boolean v3, Lcom/android/server/ssrm/DvfsUpThreshold;->isFullScreenMode:Z

    if-eqz v3, :cond_1

    .line 149
    sget-object v3, Lcom/android/server/ssrm/DvfsUpThreshold;->mUpThresholdExceptionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v2

    .line 152
    goto :goto_0
.end method

.method protected onFgAppChanged()V
    .locals 3

    .prologue
    .line 53
    const-string v1, "ja"

    const-string v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, newPackageName:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/FgAppListener;->isPackageExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 61
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/ssrm/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    .line 65
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/ssrm/DvfsUpThreshold;->updateThreshold()V

    goto :goto_0

    .line 63
    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/ssrm/DvfsUpThreshold;->isJaUpthresholdAppFg:Z

    goto :goto_1
.end method

.method protected onFgAppInPackageList(Z)V
    .locals 0
    .parameter "isForeground"

    .prologue
    .line 71
    return-void
.end method

.method protected onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .parameter "statusName"
    .parameter "statusValue"
    .parameter "packageName"

    .prologue
    .line 79
    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStatusNotiReceived:: FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/DvfsUpThreshold;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    sput-boolean p2, Lcom/android/server/ssrm/DvfsUpThreshold;->isFullScreenMode:Z

    .line 85
    invoke-virtual {p0}, Lcom/android/server/ssrm/DvfsUpThreshold;->updateThreshold()V

    goto :goto_0
.end method

.method public setBrowserBenchmark(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 160
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBrowserBenchmark:: on = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/DvfsUpThreshold;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iput-boolean p1, p0, Lcom/android/server/ssrm/DvfsUpThreshold;->mBrowserBenchmarkOn:Z

    .line 162
    invoke-virtual {p0}, Lcom/android/server/ssrm/DvfsUpThreshold;->updateThreshold()V

    .line 163
    return-void
.end method

.method protected updateThreshold()V
    .locals 1

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/android/server/ssrm/DvfsUpThreshold;->calculateCurrentThreshold()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/ssrm/DvfsUpThreshold;->updateThresholdSysFS(I)V

    .line 91
    return-void
.end method

.method protected updateThresholdSysFS(I)V
    .locals 10
    .parameter "value"

    .prologue
    const/16 v9, 0x5a

    .line 100
    sget v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mCurrentUpThreshold:I

    if-eq v0, p1, :cond_2

    .line 101
    sget-object v0, Lcom/android/server/ssrm/DvfsUpThreshold;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateThresholdSysFS :: new value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/DvfsUpThreshold;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/up_threshold_h"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/DvfsUpThreshold;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    sput p1, Lcom/android/server/ssrm/DvfsUpThreshold;->mCurrentUpThreshold:I

    .line 105
    const-string v0, "KOR"

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    const-string v6, "/sys/devices/system/cpu/cpufreq/ondemand/game_mode"

    .line 107
    .local v6, GAME_MODE_PATH:Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/game_mode"

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 108
    .local v8, file:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v8}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    sget v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mCurrentUpThreshold:I

    if-ne v0, v9, :cond_3

    .line 110
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/game_mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/DvfsUpThreshold;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .end local v6           #GAME_MODE_PATH:Ljava/lang/String;
    .end local v8           #file:Ljava/io/File;
    :cond_0
    :goto_0
    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    const/16 v7, 0x1e0

    .line 119
    .local v7, JA_FULL_SCREEN_GPU_MAX_LIMIT:I
    iget-object v0, p0, Lcom/android/server/ssrm/DvfsUpThreshold;->mFullScreenGPUMaxHelper:Landroid/os/DVFSHelper;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Landroid/os/DVFSHelper;

    sget-object v1, Lcom/android/server/ssrm/DvfsUpThreshold;->mContext:Landroid/content/Context;

    const-string v2, "FS_GPU_FREQ_MAX"

    const/16 v3, 0x11

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/DvfsUpThreshold;->mFullScreenGPUMaxHelper:Landroid/os/DVFSHelper;

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/DvfsUpThreshold;->mFullScreenGPUMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    const-wide/16 v2, 0x1e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 123
    sget v0, Lcom/android/server/ssrm/DvfsUpThreshold;->mCurrentUpThreshold:I

    if-ne v0, v9, :cond_4

    .line 124
    iget-object v0, p0, Lcom/android/server/ssrm/DvfsUpThreshold;->mFullScreenGPUMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 130
    .end local v7           #JA_FULL_SCREEN_GPU_MAX_LIMIT:I
    :cond_2
    :goto_1
    return-void

    .line 112
    .restart local v6       #GAME_MODE_PATH:Ljava/lang/String;
    .restart local v8       #file:Ljava/io/File;
    :cond_3
    const-string v0, "/sys/devices/system/cpu/cpufreq/ondemand/game_mode"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/DvfsUpThreshold;->writeStringToSysfs(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v6           #GAME_MODE_PATH:Ljava/lang/String;
    .end local v8           #file:Ljava/io/File;
    .restart local v7       #JA_FULL_SCREEN_GPU_MAX_LIMIT:I
    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/DvfsUpThreshold;->mFullScreenGPUMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_1
.end method
