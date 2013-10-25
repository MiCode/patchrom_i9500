.class public Landroid/os/DVFSHelper;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DVFSHelper$PackageInfo;
    }
.end annotation


# static fields
.field public static final ACTION_AMS_RESUME:Ljava/lang/String; = "ActivityManager_resume"

.field public static final ACTION_GALLERY_TOUCH:Ljava/lang/String; = "Gallery_touch"

.field public static final ACTION_LAUNCHER_HOMEMENU:Ljava/lang/String; = "Launcher_homemenu"

.field public static final ACTION_LAUNCHER_TOUCH:Ljava/lang/String; = "Launcher_touch"

.field public static final ACTION_LISTVIEW_SCROLL:Ljava/lang/String; = "ListView_scroll"

.field public static final ACTION_PWM_ROTATION:Ljava/lang/String; = "PhoneWindowManager_rotation"

.field public static final ACTION_SHAREMUSIC_GROUPPLAY:Ljava/lang/String; = "ShareMusic_groupPlay"

.field private static final BASE_MODEL:Ljava/lang/String; = "ja"

.field private static final BOARD_PLATFORM:Ljava/lang/String; = null

.field private static final BOOST_PERMISSION:Ljava/lang/String; = "com.sec.android.app.twdvfs.DVFS_BOOSTER_PERMISSION"

.field public static final BOOST_TYPE_LCD_FRAME_RATE:I = 0x4

.field public static final BOOST_TYPE_TOUCH:I = 0x1

.field public static final BO_BUS_MAX:J = 0x8L

.field public static final BO_CPU_MAX:J = 0x2L

.field public static final BO_CUSTOM_VALUE:J = 0x20L

.field private static final CAMERA_BOOSTING_TIMEOUT:I = 0x7d0

.field private static final CAMERA_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.app.camera.Camera"

.field public static LIST_SCROLL_BOOSTER_CORE_NUM:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "DVFSHelper"

.field public static final OPTION_BUS_MAX:J = 0x8L

.field public static final OPTION_CPU_CORE_NUM_MAX:J = 0x4L

.field public static final OPTION_CPU_MAX:J = 0x2L

.field public static final OPTION_NONE:J = 0x0L

.field public static final PACKAGES_FOR_BOOST_ALL_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo; = null

.field public static final PACKAGES_FOR_LCD_FRAME_RATE_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo; = null

.field private static final ROTATION_BOOSTING_TIMEOUT:I = 0x1f4

.field public static final TYPE_BUS_MAX:I = 0x14

.field public static final TYPE_BUS_MIN:I = 0x13

.field public static final TYPE_CPU_CORE_NUM_MAX:I = 0xf

.field public static final TYPE_CPU_CORE_NUM_MIN:I = 0xe

.field public static final TYPE_CPU_MAX:I = 0xd

.field public static final TYPE_CPU_MIN:I = 0xc

.field public static final TYPE_EMMC_BURST_MODE:I = 0x12

.field public static final TYPE_GPU_MAX:I = 0x11

.field public static final TYPE_GPU_MIN:I = 0x10

.field public static final TYPE_NONE:I = 0xb

.field private static final isEngBinary:Z

.field private static mCPUCoreTable:[I

.field private static mCPUFrequencyTable:[I

.field private static mCameraCPUBooster:Landroid/os/DVFSHelper;

.field private static mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field private static mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field private static mToken:I


# instance fields
.field busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private cpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private mContext:Landroid/content/Context;

.field private mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field private mCustomValue:I

.field private mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentExtra:Landroid/content/Intent;

.field private volatile mIsAcquired:Z

.field private mOption:J

.field private mPermissionGranted:Z

.field private mPkgName:Ljava/lang/String;

.field private mRandom:Ljava/util/Random;

.field private mSupportedBUSFrequency:[I

.field private mSupportedCPUCoreNum:[I

.field private mSupportedCPUFrequency:[I

.field private mSupportedCPUFrequencyForSSRM:[I

.field private mSupportedGPUFrequency:[I

.field private mType:I

.field mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 50
    sput v4, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 53
    const-string v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    .line 56
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sput v6, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 87
    :cond_0
    sput v4, Landroid/os/DVFSHelper;->mToken:I

    .line 91
    new-array v0, v4, [Landroid/os/DVFSHelper$PackageInfo;

    sput-object v0, Landroid/os/DVFSHelper;->PACKAGES_FOR_LCD_FRAME_RATE_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo;

    .line 622
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    .line 624
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/os/DVFSHelper$PackageInfo;

    new-instance v1, Landroid/os/DVFSHelper$PackageInfo;

    const-string v2, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-direct {v1, v2, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v4

    const/4 v1, 0x1

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    new-instance v1, Landroid/os/DVFSHelper$PackageInfo;

    const-string v2, "com.aurorasoftworks.quadrant.ui.professional"

    invoke-direct {v1, v2, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v1, v0, v6

    const/4 v1, 0x3

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.redlicense.benchmark.sqlite"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.antutu.ABenchMark"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.greenecomputing.linpack"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.glbenchmark.glbenchmark25"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.glbenchmark.glbenchmark21"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "ca.primatelabs.geekbench2"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.eembc.coremark"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.flexycore.caffeinemark"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "eu.chainfire.cfbench"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "gr.androiddev.BenchmarkPi"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.smartbench.twelve"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "com.passmark.pt_mobile"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Landroid/os/DVFSHelper$PackageInfo;

    const-string v3, "se.nena.nenamark2"

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper$PackageInfo;-><init>(Ljava/lang/String;Z)V

    aput-object v2, v0, v1

    sput-object v0, Landroid/os/DVFSHelper;->PACKAGES_FOR_BOOST_ALL_ADJUSTMENT:[Landroid/os/DVFSHelper$PackageInfo;

    .line 682
    sput-object v5, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    .line 683
    sput-object v5, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 685
    sput-object v5, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 686
    sput-object v5, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 752
    sput-object v5, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "type"

    .prologue
    .line 96
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 6
    .parameter "context"
    .parameter "type"
    .parameter "option"

    .prologue
    .line 100
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 7
    .parameter "context"
    .parameter "packageName"
    .parameter "type"
    .parameter "option"

    .prologue
    .line 105
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJI)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJI)V
    .locals 4
    .parameter "context"
    .parameter "packageName"
    .parameter "type"
    .parameter "option"
    .parameter "customValue"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object v2, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 62
    iput-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 63
    iput-object v2, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 64
    iput-object v2, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 65
    const/16 v0, 0xb

    iput v0, p0, Landroid/os/DVFSHelper;->mType:I

    .line 66
    iput v3, p0, Landroid/os/DVFSHelper;->mId:I

    .line 67
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    .line 69
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    .line 71
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 72
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 74
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 75
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 76
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 77
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 78
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 80
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 81
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 82
    iput-object v2, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 83
    iput-object v2, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 84
    iput-object v2, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 86
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    .line 89
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    .line 109
    if-nez p1, :cond_0

    .line 110
    const-string v0, "DVFSHelper"

    const-string v1, "DVFSHelper:: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 113
    :cond_0
    iput-object p1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 115
    iget-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const-string v1, "CustomFrequencyManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 116
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_1

    .line 117
    const-string v0, "DVFSHelper"

    const-string v1, "DVFSHelper:: failed to load CFMS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_1
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DVFSHelper:: New instance is created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 124
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 125
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustCPUFreqTable()V

    .line 126
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 127
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 128
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedSysBusFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    .line 138
    sget v0, Landroid/os/DVFSHelper;->mToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/DVFSHelper;->mToken:I

    .line 139
    if-eqz p2, :cond_2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 145
    :goto_1
    iput p3, p0, Landroid/os/DVFSHelper;->mType:I

    .line 146
    iput-wide p4, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 147
    invoke-direct {p0}, Landroid/os/DVFSHelper;->getRandomNum()I

    move-result v0

    iput v0, p0, Landroid/os/DVFSHelper;->mId:I

    .line 148
    iput p6, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    goto/16 :goto_0

    .line 142
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/os/DVFSHelper;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/os/DVFSHelper;->sendProxyBenchMarkStatusToSSRM(Z)V

    return-void
.end method

.method private adjustCPUFreqTable()V
    .locals 4

    .prologue
    .line 153
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    const-string v2, "hf"

    const-string v3, "ja"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    new-array v1, v2, [I

    .line 158
    .local v1, newCPUFreqTable:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    .line 159
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 161
    :cond_2
    iput-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    goto :goto_0
.end method

.method private getRandomNum()I
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 654
    sget-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    if-eqz v0, :cond_0

    .line 655
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_0
    return-void
.end method

.method private sendProxyBenchMarkStatusToSSRM(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 743
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 744
    .local v0, benchmarkIntent:Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 745
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "BenchmarkBooster"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    const-string v1, "SSRM_STATUS_VALUE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 747
    const-string v1, "PackageName"

    const-string v2, "com.sec.android.app.camera.Camera.DvfsHelperProxy"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    iget-object v1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 749
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 246
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 247
    return-void
.end method

.method public acquire(I)V
    .locals 22
    .parameter "timeout"

    .prologue
    .line 254
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    if-nez v1, :cond_1

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    const-string v1, "DVFSHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire:: timeout = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mIsAcquired = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v1, :cond_2

    .line 261
    const-string v1, "DVFSHelper"

    const-string v2, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual/range {p0 .. p0}, Landroid/os/DVFSHelper;->release()V

    .line 266
    :cond_2
    const/16 v17, 0x0

    .line 267
    .local v17, bundle:Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-eqz v1, :cond_3

    .line 268
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v17

    .line 271
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v1, :pswitch_data_0

    .line 419
    const-string v1, "DVFSHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acquire:: the request type doesn\'t implemented yet. mType = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/os/DVFSHelper;->mType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_5

    .line 424
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 426
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_6

    .line 427
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 429
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_7

    .line 430
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 432
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_8

    .line 433
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 435
    :cond_8
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    goto/16 :goto_0

    .line 273
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v1, :cond_4

    .line 275
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v4, 0x4

    cmp-long v1, v1, v4

    if-nez v1, :cond_9

    .line 276
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    .line 282
    .local v3, coreNum:I
    :goto_2
    const/4 v1, 0x2

    if-lt v3, v1, :cond_4

    .line 283
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v2, 0x4

    move/from16 v0, p1

    int-to-long v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto :goto_1

    .line 278
    .end local v3           #coreNum:I
    :cond_9
    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 279
    .local v21, stringCoreNum:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .restart local v3       #coreNum:I
    goto :goto_2

    .line 289
    .end local v3           #coreNum:I
    .end local v21           #stringCoreNum:Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v1, :cond_4

    .line 290
    const-string v1, "CORE_NUM"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 291
    .restart local v21       #stringCoreNum:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 293
    .restart local v3       #coreNum:I
    if-lez v3, :cond_4

    .line 294
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v2, 0x5

    move/from16 v0, p1

    int-to-long v4, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v1 .. v7}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 300
    .end local v3           #coreNum:I
    .end local v21           #stringCoreNum:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v1, :cond_4

    .line 301
    const/4 v6, -0x1

    .line 302
    .local v6, freq:I
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v4, 0x2

    cmp-long v1, v1, v4

    if-nez v1, :cond_c

    .line 303
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v2, 0x0

    aget v6, v1, v2

    .line 312
    :cond_a
    :goto_3
    const-string v1, "ja"

    const-string v2, "ja"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const v1, 0x186a00

    if-le v6, v1, :cond_b

    .line 313
    const v1, 0x186a00

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v6

    .line 316
    :cond_b
    const/4 v1, -0x1

    if-eq v6, v1, :cond_4

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v5, 0x6

    move/from16 v0, p1

    int-to-long v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 304
    :cond_c
    if-eqz v17, :cond_a

    .line 305
    const-string v1, "CPU"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 306
    .local v19, cpuOption:Ljava/lang/String;
    if-eqz v19, :cond_a

    .line 307
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 323
    .end local v6           #freq:I
    .end local v19           #cpuOption:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v1, :cond_4

    .line 324
    const/4 v6, -0x1

    .line 325
    .restart local v6       #freq:I
    if-eqz v17, :cond_d

    .line 326
    const-string v1, "CPU"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 327
    .restart local v19       #cpuOption:Ljava/lang/String;
    if-eqz v19, :cond_d

    .line 328
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 332
    .end local v19           #cpuOption:Ljava/lang/String;
    :cond_d
    const/4 v1, -0x1

    if-eq v6, v1, :cond_4

    .line 333
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v5, 0x7

    move/from16 v0, p1

    int-to-long v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 339
    .end local v6           #freq:I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v1, :cond_4

    .line 340
    const/4 v6, -0x1

    .line 341
    .restart local v6       #freq:I
    if-eqz v17, :cond_e

    .line 342
    const-string v1, "GPU"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 343
    .local v20, gpuOption:Ljava/lang/String;
    if-eqz v20, :cond_e

    .line 344
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 348
    .end local v20           #gpuOption:Ljava/lang/String;
    :cond_e
    const/4 v1, -0x1

    if-eq v6, v1, :cond_4

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v5, 0x1

    move/from16 v0, p1

    int-to-long v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 355
    .end local v6           #freq:I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v1, :cond_4

    .line 356
    const/4 v6, -0x1

    .line 357
    .restart local v6       #freq:I
    if-eqz v17, :cond_f

    .line 358
    const-string v1, "GPU"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 359
    .restart local v20       #gpuOption:Ljava/lang/String;
    if-eqz v20, :cond_f

    .line 360
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 364
    .end local v20           #gpuOption:Ljava/lang/String;
    :cond_f
    const/4 v1, -0x1

    if-eq v6, v1, :cond_4

    .line 365
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v5, 0x9

    move/from16 v0, p1

    int-to-long v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 371
    .end local v6           #freq:I
    :pswitch_6
    const/4 v6, -0x1

    .line 373
    .restart local v6       #freq:I
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_10

    .line 374
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 375
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 378
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v5, 0x8

    move/from16 v0, p1

    int-to-long v7, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v4 .. v10}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 382
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v1, :cond_4

    .line 383
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v1}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    goto/16 :goto_1

    .line 387
    .end local v6           #freq:I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v1, :cond_4

    .line 388
    const/4 v9, -0x1

    .line 389
    .local v9, busMinfreq:I
    move-object/from16 v0, p0

    iget-wide v1, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v4, 0x8

    cmp-long v1, v1, v4

    if-nez v1, :cond_12

    .line 390
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    const/4 v2, 0x0

    aget v9, v1, v2

    .line 397
    :cond_11
    :goto_4
    const/4 v1, -0x1

    if-eq v9, v1, :cond_4

    .line 398
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v8, 0xa

    move/from16 v0, p1

    int-to-long v10, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v7 .. v13}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 391
    :cond_12
    if-eqz v17, :cond_11

    .line 392
    const-string v1, "BUS"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 393
    .local v18, busOption:Ljava/lang/String;
    if-eqz v18, :cond_11

    .line 394
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_4

    .line 404
    .end local v9           #busMinfreq:I
    .end local v18           #busOption:Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v1, :cond_4

    .line 405
    const/4 v12, -0x1

    .line 406
    .local v12, busMaxfreq:I
    if-eqz v17, :cond_13

    .line 407
    const-string v1, "BUS"

    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 408
    .restart local v18       #busOption:Ljava/lang/String;
    if-eqz v18, :cond_13

    .line 409
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 412
    .end local v18           #busOption:Ljava/lang/String;
    :cond_13
    const/4 v1, -0x1

    if-eq v12, v1, :cond_4

    .line 413
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v11, 0xb

    move/from16 v0, p1

    int-to-long v13, v0

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v10 .. v16}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 2
    .parameter "actionName"

    .prologue
    .line 229
    if-nez p1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    const-string v0, "Launcher_touch"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    :cond_2
    const/16 v0, 0xc8

    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0

    .line 236
    :cond_3
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_0
.end method

.method public addExtraOption(Ljava/lang/String;J)V
    .locals 3
    .parameter "name"
    .parameter "value"

    .prologue
    .line 494
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 495
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 497
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "value"

    .prologue
    .line 487
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 490
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    return-void
.end method

.method public addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V
    .locals 13
    .parameter "actionName"

    .prologue
    const v12, 0xf4240

    const/16 v11, 0x10

    const/4 v10, 0x2

    const v9, 0x16e360

    const-wide/16 v7, 0x0

    .line 506
    const-string v5, "ActivityManager_resume"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 507
    iget v5, p0, Landroid/os/DVFSHelper;->mType:I

    const/16 v6, 0xc

    if-ne v5, v6, :cond_3

    .line 508
    const v0, 0xf4240

    .line 509
    .local v0, AMS_BOOST_MIN_FREQ:I
    const-wide v5, 0x3fe6666666666666L

    invoke-virtual {p0, v5, v6}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyByPercentOfMaximum(D)I

    move-result v1

    .line 510
    .local v1, freq:I
    if-gtz v1, :cond_1

    .line 620
    .end local v0           #AMS_BOOST_MIN_FREQ:I
    .end local v1           #freq:I
    :cond_0
    :goto_0
    return-void

    .line 514
    .restart local v0       #AMS_BOOST_MIN_FREQ:I
    .restart local v1       #freq:I
    :cond_1
    if-le v1, v12, :cond_2

    .line 515
    const-string v5, "CPU"

    int-to-long v6, v1

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 517
    :cond_2
    invoke-virtual {p0, v12}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v1

    .line 518
    if-lez v1, :cond_0

    .line 519
    const-string v5, "CPU"

    int-to-long v6, v1

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 522
    .end local v0           #AMS_BOOST_MIN_FREQ:I
    .end local v1           #freq:I
    :cond_3
    iget v5, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v5, v11, :cond_0

    .line 523
    const-string v5, "ja"

    const-string v6, "ja"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 524
    const/4 v3, -0x1

    .line 525
    .local v3, gpufreq:I
    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v5, :cond_0

    .line 529
    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v4, v5

    .line 530
    .local v4, length:I
    if-lez v4, :cond_0

    .line 534
    if-lt v4, v10, :cond_4

    .line 535
    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int/lit8 v6, v4, -0x2

    aget v3, v5, v6

    .line 538
    :cond_4
    if-ltz v3, :cond_0

    .line 542
    const-string v5, "GPU"

    int-to-long v6, v3

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 545
    .end local v3           #gpufreq:I
    .end local v4           #length:I
    :cond_5
    const-string v5, "Gallery_touch"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 546
    const-wide/16 v1, 0x0

    .line 547
    .local v1, freq:J
    const-string v5, "ja"

    const-string v6, "ja"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 548
    const v5, 0x13d620

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    .line 554
    :goto_1
    cmp-long v5, v1, v7

    if-lez v5, :cond_0

    .line 555
    const-string v5, "CPU"

    invoke-virtual {p0, v5, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 549
    :cond_6
    const-string v5, "jf"

    const-string v6, "ja"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 550
    const v5, 0x155cc0

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    goto :goto_1

    .line 552
    :cond_7
    invoke-virtual {p0, v9}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    goto :goto_1

    .line 557
    .end local v1           #freq:J
    :cond_8
    const-string v5, "Launcher_touch"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 558
    const-wide/16 v1, 0x0

    .line 559
    .restart local v1       #freq:J
    const-string v5, "ja"

    const-string v6, "ja"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 560
    const v5, 0x13d620

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    .line 566
    :goto_2
    cmp-long v5, v1, v7

    if-lez v5, :cond_0

    .line 567
    const-string v5, "CPU"

    invoke-virtual {p0, v5, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 561
    :cond_9
    const-string v5, "jf"

    const-string v6, "ja"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 562
    const v5, 0x155cc0

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    goto :goto_2

    .line 564
    :cond_a
    invoke-virtual {p0, v9}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    goto :goto_2

    .line 569
    .end local v1           #freq:J
    :cond_b
    const-string v5, "ListView_scroll"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 570
    const-wide/16 v1, 0x0

    .line 571
    .restart local v1       #freq:J
    const-string v5, "jf"

    const-string v6, "ja"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 572
    invoke-virtual {p0, v9}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    .line 576
    :goto_3
    cmp-long v5, v1, v7

    if-lez v5, :cond_0

    .line 577
    const-string v5, "CPU"

    invoke-virtual {p0, v5, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 574
    :cond_c
    const v5, 0xc3500

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    goto :goto_3

    .line 579
    .end local v1           #freq:J
    :cond_d
    const-string v5, "PhoneWindowManager_rotation"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 580
    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v5, :cond_0

    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v5, v5

    if-lez v5, :cond_0

    .line 581
    const-string v5, "CPU"

    iget-object v6, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 583
    :cond_e
    const-string v5, "Launcher_homemenu"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 584
    iget v5, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v5, v11, :cond_0

    .line 585
    const-string v5, "ja"

    const-string v6, "ja"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 586
    const/4 v3, -0x1

    .line 587
    .restart local v3       #gpufreq:I
    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v5, :cond_0

    .line 591
    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v4, v5

    .line 592
    .restart local v4       #length:I
    if-lez v4, :cond_0

    .line 596
    if-lt v4, v10, :cond_f

    .line 597
    iget-object v5, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int/lit8 v6, v4, -0x2

    aget v3, v5, v6

    .line 600
    :cond_f
    if-ltz v3, :cond_0

    .line 604
    const-string v5, "GPU"

    int-to-long v6, v3

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 607
    .end local v3           #gpufreq:I
    .end local v4           #length:I
    :cond_10
    const-string v5, "ShareMusic_groupPlay"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 608
    const-wide/16 v1, 0x0

    .line 609
    .restart local v1       #freq:J
    const-string v5, "ja"

    const-string v6, "ja"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 610
    const v5, 0x927c0

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    .line 616
    :goto_4
    cmp-long v5, v1, v7

    if-lez v5, :cond_0

    .line 617
    const-string v5, "CPU"

    invoke-virtual {p0, v5, v1, v2}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 611
    :cond_11
    const-string v5, "jf"

    const-string v6, "ja"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 612
    const v5, 0x124f80

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    goto :goto_4

    .line 614
    :cond_12
    const v5, 0x124f80

    invoke-virtual {p0, v5}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v5

    int-to-long v1, v5

    goto :goto_4
.end method

.method public cancelExtraOptions()V
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 502
    return-void
.end method

.method public getApproximateCPUFrequency(I)I
    .locals 4
    .parameter "freq"

    .prologue
    const/4 v1, -0x1

    .line 177
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_1

    .line 194
    :cond_0
    :goto_0
    return v1

    .line 180
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 181
    .local v0, length:I
    if-lez v0, :cond_0

    .line 185
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 186
    .local v1, realFreq:I
    :goto_1
    if-lez v0, :cond_0

    .line 187
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_2

    .line 188
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 189
    goto :goto_0

    .line 191
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximum(D)I
    .locals 3
    .parameter "percent"

    .prologue
    const/4 v1, -0x1

    .line 201
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_1

    .line 209
    :cond_0
    :goto_0
    return v1

    .line 204
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 205
    .local v0, length:I
    if-lez v0, :cond_0

    .line 209
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v1

    goto :goto_0
.end method

.method public getSupportedBUSFrequency()[I
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUFrequencyForSSRM()[I
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public isAquired()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    return v0
.end method

.method public onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 7
    .parameter "context"
    .parameter "packageName"

    .prologue
    const-wide/16 v4, 0x0

    const/16 v6, 0x7d0

    .line 689
    if-nez p2, :cond_1

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 693
    :cond_1
    const-string v0, "jf"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 695
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 696
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CPU"

    const/16 v3, 0xc

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    .line 697
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 698
    sget-object v0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_7

    .line 699
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    sget-object v2, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    const v3, 0x186a00

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 706
    :cond_2
    :goto_1
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_3

    .line 707
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CORE"

    const/16 v3, 0xe

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    sput-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 708
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 709
    sget-object v0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_8

    .line 710
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    sget-object v2, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 716
    :cond_3
    :goto_2
    sget-object v0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_4

    .line 717
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 719
    :cond_4
    sget-object v0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_5

    .line 720
    sget-object v0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 724
    :cond_5
    const-string v0, "KOR"

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "CHN"

    const-string v1, "CHN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ja"

    const-string v1, "ja"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_6
    const-string v0, "com.sec.android.app.camera.Camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 727
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/os/DVFSHelper$1;

    invoke-direct {v1, p0}, Landroid/os/DVFSHelper$1;-><init>(Landroid/os/DVFSHelper;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 701
    :cond_7
    const-string v0, "DVFSHelper"

    const-string v1, "onAppLaunchEvent:: mCPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 712
    :cond_8
    const-string v0, "DVFSHelper"

    const-string v1, "onAppLaunchEvent:: mCPUCoreTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 755
    sget-object v1, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v1, :cond_0

    .line 756
    new-instance v1, Landroid/os/DVFSHelper;

    const/16 v2, 0xe

    invoke-direct {v1, p1, v2}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    sput-object v1, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 757
    sget-object v1, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v1}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    .line 758
    .local v0, coreTable:[I
    if-eqz v0, :cond_2

    .line 759
    sget-object v1, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v2, "CORE_NUM"

    const/4 v3, 0x0

    aget v3, v0, v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 764
    .end local v0           #coreTable:[I
    :cond_0
    :goto_0
    sget-object v1, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-eqz v1, :cond_1

    .line 765
    sget-object v1, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const/16 v2, 0x1f4

    invoke-virtual {v1, v2}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 767
    :cond_1
    return-void

    .line 761
    .restart local v0       #coreTable:[I
    :cond_2
    const-string v1, "DVFSHelper"

    const-string v2, "onWindowRotationEvent:: coreTable is null"

    invoke-static {v1, v2}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 447
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mPermissionGranted:Z

    if-nez v0, :cond_1

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release:: mIsAcquired = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_2

    .line 458
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 459
    const-string v0, "DVFSHelper"

    const-string v1, "release:: cpuRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 462
    :cond_2
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_3

    .line 463
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 464
    const-string v0, "DVFSHelper"

    const-string v1, "release:: cpuNumRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 467
    :cond_3
    iget-object v0, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_4

    .line 468
    iget-object v0, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 469
    const-string v0, "DVFSHelper"

    const-string v1, "release:: gpuRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    iput-object v3, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 472
    :cond_4
    iget-object v0, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_5

    .line 473
    iget-object v0, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 474
    const-string v0, "DVFSHelper"

    const-string v1, "release:: busRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    iput-object v3, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 477
    :cond_5
    iget-object v0, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_6

    .line 478
    iget-object v0, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 479
    const-string v0, "DVFSHelper"

    const-string v1, "release:: mmcRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iput-object v3, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 483
    :cond_6
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    goto :goto_0
.end method
